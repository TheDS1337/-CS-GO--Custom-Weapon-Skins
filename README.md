# [CS:GO] Custom Weapon Skins


IMPORTANT: This plugin was written for test purposes only, I do not in any way take responsibility if you get your server BANNED!

The models were decompiled and then recompiled using CrowbarTool (https://steamcommunity.com/groups/CrowbarTool for info/download). I suggest using it.

	Each collection has various skins for different weapons, for each weapon there are skins. 
The model used is merely just an "array" that contains atmost 32 skins, for the game to read.
So basically, we decompile the default CS:GO models and just edit the QC file adding the new textures and paths to vmt files, and also the path of our new recompiled model.


Example with the Desert Eagle:
	When you first decompile the default deagle model, you get something like this in the begining of the QC file: 

	<
		$modelname "weapons\VGOSkins\v_pist_deagle.mdl"

		$bodygroup "studio"
		{
			studio "v_pist_deagle_deagle_model.smd"
		}

		$texturegroup "skins"
		{
			{ "pist_deagle" }
			{ "desert_eagle_carbon_slash_base_color" }
			{ "desert_eagle_golden_dragon_base_color" }
			{ "desert_eagle_red_viper_base_color" }
			{ "desert_eagle_urban_orange_base_color" }		
		}


		$surfaceprop "default"

		$contents "solid"

		$illumposition 7.191 -8.941 -11.556

		$cdmaterials "models\weapons\V_models\pist_deagle\"
		$cdmaterials "models\weapons\VGOSkins\deserteagle\"
	>

	What I did was changing it to this:

	<
		$modelname "weapons\VGOSkins\v_pist_deagle.mdl"			// Where our new skin is going to be 

		$bodygroup "studio"
		{
			studio "v_pist_deagle_deagle_model.smd"
		}

		$texturegroup "skins"									// Our list of different skins, each skin has a vmt file that basically locates where the textures are (vtf of the skin and other accesoires like scopes for snipers, mags etc...)
		{
			{ "pist_deagle" }
			{ "desert_eagle_carbon_slash_base_color" }
			{ "desert_eagle_golden_dragon_base_color" }
			{ "desert_eagle_red_viper_base_color" }
			{ "desert_eagle_urban_orange_base_color" }		
		}

		// Always remember two things:
		//					1st		The names on the list are the names of the vmt files
		//					2nd		You do need remove the default vmt file (pist_deagle in our case), it is always the first one. You also do not change its name, or the file name because if you do, you'll have to edit other stuff too, and not only the QC file, it's basically a waste of time and you'll probably make a big mess (because I tried and I did, you can't just use the "Replace all" feature, you would have to do the checking manually and there are a lot of words to be replaced etc... just DONT DO IT)


		$surfaceprop "default"

		$contents "solid"

		$illumposition 7.191 -8.941 -11.556

		$cdmaterials "models\weapons\V_models\pist_deagle\"		// Keep the older folder too, because some models require materials for scopes etc...
		$cdmaterials "models\weapons\VGOSkins\deserteagle\"		// Add the folder of our new VMT files
	>

	Then you just recompile the model and voila!

This is all when it comes to making models, bear in mind of the skins limit (32 skins for a single model). Each collection can have at most 1 model for each of the different weapons, if you have a collection that has for example 40 skins for the AK-47 alone, then you can put 20 in a collection named Collection1 (1st model) and the other 20 in the Collection2 (2nd model). I mean this is all theoretically speaking, I don't see anyone putting more than 32 skins for a single weapon, unless you really like skins and expect all of your players to have some extremely fast connection speed (I don't, so I can't imagine myself downloading GBytes of skins).



Every VMT file needs to be in place like you refered to it in the model, each VMT file has a path to the skin VTF file (usually they're in the same folder).

One more thing, by default you have the VTF because it contains the texture, but how do you get the VMT? well, simple. you just use the weapon's default VMT and modify its name. open it and modify the path to $BaseTexture param. and don't forget to put it where it's supposed to be.





	Lastly, the SourceMod plugin side of things. Well, you just go to addons/sourcemod/configs/skins and create a .kv (KeyValues) file for your collection.
For the VGOSkins collection, I already provided a structure that I made for some skins, I think everything is self-explanatory