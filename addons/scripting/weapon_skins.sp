#include <sourcemod>
#include <sdktools>
#include <sdkhooks>

#pragma newdecls required

#define SKINS_COLLECTION "configs/skins/"

#define MAX_WEAPON_RARITIES 5

public Plugin myinfo =
{
    name = "Weapon skins",
    author = "DS",
    description = "A plugin that allows additional weapon skins to CS:GO.",
    version = "0.0.1a",
    url = "https://steamcommunity.com/id/TheDS1337/"
};


char WEAPON_RARITIES[MAX_WEAPON_RARITIES][] = 
{
	"",
	"Common",
	"Uncommon",
	"Rare",
	"Epic"
}

enum struct SkinData
{
	char collection[32];
	char name[32];	
	int skin;	// -1 for default skin 
	int quality;	// 0 for default
	int modelIndex;
}

StringMap g_PlayerWeapons[MAXPLAYERS]
int g_PlayerViewmodel[MAXPLAYERS];

StringMap g_WeaponsTrie;

public void OnPluginStart()
{
	HookEvent("player_spawn", Event_PostPlayerSpawn);	

	g_WeaponsTrie = new StringMap();

	for( int i = 1; i <= MaxClients; i++ )
	{
		g_PlayerWeapons[i] = new StringMap();
	}
}

public void OnPluginEnd()
{
	delete g_WeaponsTrie;

	for( int i = 1; i <= MaxClients; i++ )
	{
		delete g_PlayerWeapons[i];
	}
}

public void OnMapEnd()
{
	StringMapSnapshot weaponsSnapshot = g_WeaponsTrie.Snapshot();

	char key[32];
	int length = weaponsSnapshot.Length;

	ArrayList skins;

	for( int i = 0; i < length; i++ )
	{
		weaponsSnapshot.GetKey(i, key, sizeof(key));

		if( !g_WeaponsTrie.GetValue(key, skins) )
		{
			continue;
		}

		delete skins;
	}

	delete weaponsSnapshot;
}

public void OnMapStart()
{
	// Load our skins
	char path[256];
	BuildPath(Path_SM, path, sizeof(path), SKINS_COLLECTION);

	DirectoryListing dir = view_as<DirectoryListing> (INVALID_HANDLE);
	
	if( !DirExists(path) || (dir = OpenDirectory(path)) == INVALID_HANDLE )
	{
		SetFailState("No skin collection was loaded!");
	}

	FileType fileType = FileType_Unknown;

	SkinData skinData;
	int skin = 0, modelIndex = -1, weaponsCount = 0;

	char collection[256], classname[32], buffer[256];	

	while( dir.GetNext(collection, sizeof(collection), fileType) )
	{
		if( fileType != FileType_File )
		{
			continue;
		}

		Format(collection, sizeof(collection), "%s%s", path, collection);

		KeyValues kv = new KeyValues("Skins");

		if( !kv.ImportFromFile(collection) ) 
		{
			PrintToServer("Couldn't load KeyValues from file");
			continue;
		}

		kv.GetString("Collection", collection, sizeof(collection));
		PrintToServer("Loading collection: %s", collection);

		if( !kv.GotoFirstSubKey() )
		{
			PrintToServer("Collection: %s is empty", collection);
			delete kv;
			continue;
		}

		do
		{
			kv.GetSectionName(classname, sizeof(classname));
			PrintToServer("Added Weapon #%d: %s", weaponsCount + 1, classname);

			kv.GetString("Model", buffer, sizeof(buffer));		
			PrintToServer("Loading models: %s", buffer);	

			modelIndex = PrecacheModel(buffer, true);
			AddFileToDownloadsTable(buffer);			

			// Dive deeper
			if( !kv.GotoFirstSubKey() )
			{
				PrintToServer("No skins for weapon: %s", classname);
				
				// Go back and check on other weapons
				kv.GoBack();

				weaponsCount++; skin = 0;
				continue;
			}

			PrintToServer("Exploring for %s", classname);			
			ArrayList skins = new ArrayList(sizeof(SkinData));
			g_WeaponsTrie.SetValue(classname, skins);

			do
			{
				kv.GetSectionName(skinData.name, sizeof(skinData.name));

				if( StrEqual(skinData.name, "DefaultMaterials", false) )
				{
					if( !kv.GotoFirstSubKey(false) )
					{
						continue;
					}

					do
					{						
						kv.GetSectionName(buffer, sizeof(buffer));

						PrintToServer("Precaching default material: %s", buffer);
						AddFileToDownloadsTable(buffer);
					} while( kv.GotoNextKey(false) );

					kv.GoBack();
					continue;
				}				

				// If no skin is available, then this surely doesn't interest us!
				if( !kv.GotoFirstSubKey() )
				{
					continue;
				}

				kv.GetSectionName(buffer, sizeof(buffer));

				// Not what we're searching for, or empty?
				if( !StrEqual(buffer, "Materials", false) )
				{
					kv.GoBack();
					continue;
				}	

				if( kv.GotoFirstSubKey(false) )
				{			
					do
					{
						kv.GetSectionName(buffer, sizeof(buffer));

						PrintToServer("Precaching material: %s", buffer);
						AddFileToDownloadsTable(buffer);
					} while( kv.GotoNextKey(false) );

					// Go back to the old tree and read the quality
					kv.GoBack();

					strcopy(skinData.collection, sizeof(skinData.collection), collection);

					skinData.skin = ++skin;
					skinData.quality = kv.GetNum("Quality");
					skinData.modelIndex = modelIndex;			

					PrintToServer("Collection: %s", skinData.collection);				
					PrintToServer("Name: %s", skinData.name);			
					PrintToServer("Skin: %d", skinData.skin);
					PrintToServer("Quality: %d", skinData.quality);
					PrintToServer("Model Index: %d", skinData.modelIndex);				

					// Add it to our skin collection
					skins.PushArray(skinData);														
				}

				// The KV structure is really confusing at times
				kv.GoBack();	
			} while( kv.GotoNextKey() );
			
			PrintToServer("%d skins for %s", skins.Length, classname);

			// Go back and check on other weapons
			kv.GoBack();

			weaponsCount++; skin = 0;
		} while( kv.GotoNextKey() );	
		
		delete kv;

		PrintToServer("Total weapons: %d", weaponsCount);
	}	
}

public void OnClientSayCommand_Post(int client, const char[] command, const char[] sArgs)
{
    if( !IsPlayerAlive(client) )
    {
        return;
    }
    
    if( StrEqual(sArgs, "skins", false) )
    {      	
    }
}

public void OnClientPutInServer(int client)
{
	if( IsFakeClient(client) )
	{
		return;
	}

	SDKHook(client, SDKHook_WeaponSwitchPost, OnPostClientWeaponSwitch);
}

public void Event_PostPlayerSpawn(Handle event, const char[] name, bool dontBroadcast)
{
    int client = GetClientOfUserId(GetEventInt(event, "userid"));
    g_PlayerViewmodel[client] = Weapon_GetViewModelIndex(client, -1);
    
} 

public void OnPostClientWeaponSwitch(int client, int weapon)
{
	if( IsFakeClient(client) )
	{
		return;
	}

	ArrayList skins;

	char classname[32];
	GetEntityClassname(weapon, classname, sizeof(classname));

	PrintToChat(client, "Getting skins for: %s", classname);

	// If we don't have any skins for this classname then don't even bother
	if( !g_WeaponsTrie.GetValue(classname, skins) )		
	{
		return;
	}

	SetEntProp(weapon, Prop_Send, "m_nModelIndex", 0);

	// Just here to keep choosing random skins
	g_PlayerWeapons[client].SetValue(classname, skins.Length == 0 ? -1 : GetRandomInt(0, skins.Length - 1));

	// Select a random skin just for the purpose of testing
	int skin = -1;

	if( g_PlayerWeapons[client].GetValue(classname, skin) && skin != -1 )
	{
		SkinData skinData;
		skins.GetArray(skin, skinData);

		SetEntProp(g_PlayerViewmodel[client], Prop_Send, "m_nModelIndex", skinData.modelIndex);
		SetEntProp(g_PlayerViewmodel[client], Prop_Send, "m_nSkin", skinData.skin);	

		PrintToChat(client, "Changed skin to %s", skinData.name);		
	}
	else
	{
		g_PlayerWeapons[client].SetValue(classname, skins.Length == 0 ? -1 : GetRandomInt(0, skins.Length - 1));
	}
}

int Weapon_GetViewModelIndex(int client, int sIndex)
{
    while ((sIndex = FindEntityByClassname2(sIndex, "predicted_viewmodel")) != -1)
    {
        int Owner = GetEntPropEnt(sIndex, Prop_Send, "m_hOwner");
     	if (Owner != client)
    	     continue;
        
     	return sIndex;
   	}

    return -1;
}

int FindEntityByClassname2(int sStartEnt, const char[] szClassname)
{
    while (sStartEnt > -1 && !IsValidEntity(sStartEnt)) sStartEnt--;
    return FindEntityByClassname(sStartEnt, szClassname);
}
