// Created by Crowbar 0.58

$modelname "weapons\VGOSkins\v_pist_glock18.mdl"

$bodygroup "studio"
{
	studio "v_pist_glock18_glock18_model.smd"
}

$texturegroup "skins"
{
	{ "pist_glock18" }
	{ "glock_18_aero_base_color" }
	{ "glock_18_ancestral_base_color" }
	{ "glock_18_cardboard_warfare_base_color" }
	{ "glock_18_ice_chamber_base_color" }
	{ "glock_18_toxificated_base_color" }	
}


$surfaceprop "default"

$contents "solid"

$illumposition 7.691 -7.715 -11.556

$cdmaterials "models\weapons\V_models\pist_glock18\"
$cdmaterials "models\weapons\VGOSkins\glock-18\"

$attachment "1" "v_weapon.flash" 0 0 0 rotate 0 0 0
$attachment "2" "v_weapon.shelleject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -6.332 -5.268 -24.111 21.762 20.649 1

$definebone "v_weapon" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Forearm" "" -6.26774 2.074219 -8.580584 -11.576956 -76.831002 -117.945251 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Hand" "v_weapon.Bip01_R_Forearm" 10.295582 0.000001 0.000001 30.216416 5.025984 101.045232 0 0 0 0 0 0
$definebone "v_weapon.glock_parent" "v_weapon.Bip01_R_Hand" -5.637817 -0.0513 9.243799 -15.186248 107.05448 106.05829 0 0 0 0 0 0
$definebone "v_weapon.glock_magazine" "v_weapon.glock_parent" 0 -1.750466 -0.527623 0 0 16.929298 0 0 0 0 0 0
$definebone "v_weapon.flash" "v_weapon.glock_parent" -0.005366 2.359196 6.160232 -89.999983 -89.999983 0 0 0 0 0 0 0
$definebone "v_weapon.shelleject" "v_weapon.glock_parent" 0.00051 2.694982 0.799762 0 160.00001 0 0 0 0 0 0 0
$definebone "v_weapon.stattrack" "v_weapon.glock_parent" 0.294306 1.336129 5.05637 0 0 -89.999983 0 0 0 0 0 0
$definebone "v_weapon.uid" "v_weapon.glock_parent" 0.53588 -1.027979 -0.42191 0 0 -72.204656 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Forearm" "" 3.688166 -0.918726 -9.193838 -12.239239 -125.857862 -41.189593 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Hand" "v_weapon.Bip01_L_Forearm" 10.295584 0.000002 -0.000001 -11.156233 27.900814 -147.522716 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger0" "v_weapon.Bip01_L_Hand" 1.231168 0.348996 -1.249109 11.28561 2.783719 91.021622 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger01" "v_weapon.Bip01_L_Finger0" 1.611107 0.000001 0 0.000003 7.123469 0.000003 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger02" "v_weapon.Bip01_L_Finger01" 1.188946 0.000001 0.000001 0.037417 5.225147 -0.660158 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger1" "v_weapon.Bip01_L_Hand" 4.068592 0.143193 -0.892418 2.208296 73.064153 1.084952 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger11" "v_weapon.Bip01_L_Finger1" 1.433459 0.000001 0 1.541659 33.252633 -3.409386 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger12" "v_weapon.Bip01_L_Finger11" 1.019161 0 0 1.54166 33.252636 -3.409385 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger2" "v_weapon.Bip01_L_Hand" 3.939286 0.020628 0.014987 6.012852 75.94441 -0.900462 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger21" "v_weapon.Bip01_L_Finger2" 1.691286 0 0 1.259023 33.029641 -3.221454 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger22" "v_weapon.Bip01_L_Finger21" 1.039842 0 -0.000001 1.259022 33.029757 -3.221451 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger3" "v_weapon.Bip01_L_Hand" 3.582008 0.056835 0.735422 8.960606 77.104592 -4.289049 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger31" "v_weapon.Bip01_L_Finger3" 1.583913 -0.000001 0 -1.466653 32.996074 -4.192563 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger32" "v_weapon.Bip01_L_Finger31" 1.006699 0.000001 0 -2.609476 16.314298 -3.59508 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger4" "v_weapon.Bip01_L_Hand" 3.126524 0.227896 1.440079 11.857022 73.028335 -6.425265 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger41" "v_weapon.Bip01_L_Finger4" 1.246395 0 0 -0.157617 25.540282 -5.082595 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Finger42" "v_weapon.Bip01_L_Finger41" 0.682894 0 0 -0.157615 25.54028 -5.082594 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_ForeTwist" "" 3.688166 -0.918726 -9.193838 -12.239271 -125.857834 -94.018231 0 0 0 0 0 0
$definebone "v_weapon.glock_trigger" "v_weapon.glock_parent" 0.000705 1.222975 1.546635 0 0 0 0 0 0 0 0 0
$definebone "v_weapon.glock_slide" "v_weapon.glock_parent" 0 2.215909 -1.777301 0 0 0 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger0" "v_weapon.Bip01_R_Hand" 1.231171 0.348996 1.249108 -6.949749 36.059957 -111.881478 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger01" "v_weapon.Bip01_R_Finger0" 1.611105 0.000001 0 3.675867 14.233247 11.249632 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger02" "v_weapon.Bip01_R_Finger01" 1.188945 0.000001 0 -0.15006 15.099844 0.643951 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger1" "v_weapon.Bip01_R_Hand" 4.068595 0.143193 0.892418 8.773932 16.108711 -10.016334 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger11" "v_weapon.Bip01_R_Finger1" 1.433458 -0.000001 0 -2.210643 33.05216 5.728542 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger12" "v_weapon.Bip01_R_Finger11" 1.019162 0.000001 0.000001 -3.430926 45.895801 5.093822 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger2" "v_weapon.Bip01_R_Hand" 3.939286 0.020628 -0.014986 17.071682 57.938282 23.824731 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger21" "v_weapon.Bip01_R_Finger2" 1.691287 -0.000001 0.000001 -4.082036 70.708742 3.623042 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger22" "v_weapon.Bip01_R_Finger21" 1.039843 0.000002 0 -2.960872 55.149133 4.584639 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger3" "v_weapon.Bip01_R_Hand" 3.582011 0.056836 -0.735422 11.737386 63.506464 28.011277 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger31" "v_weapon.Bip01_R_Finger3" 1.583913 0 0.000001 -4.002624 68.934566 5.498389 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger32" "v_weapon.Bip01_R_Finger31" 1.0067 0.000002 0 -2.142804 51.282304 6.452309 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger4" "v_weapon.Bip01_R_Hand" 3.126526 0.227896 -1.440079 6.374043 61.123131 36.131407 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger41" "v_weapon.Bip01_R_Finger4" 1.246394 -0.000001 0 -1.922045 74.915216 4.607378 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Finger42" "v_weapon.Bip01_R_Finger41" 0.682896 0 0 0.408347 21.891974 4.305546 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_ForeTwist" "" -6.26774 2.074219 -8.580584 -11.576956 -76.831002 -109.011009 0 0 0 0 0 0
$definebone "v_weapon.Bip01" "" 3.130765 20.426886 -24.111179 11.136322 -118.110036 4.129297 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Pelvis" "v_weapon.Bip01" 0.000001 -0.000001 0.000002 -90.000003 -89.999921 0 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Spine" "v_weapon.Bip01_Pelvis" 3.562681 -0.816624 -0.000022 -1.722199 4.641184 0.388042 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Spine1" "v_weapon.Bip01_Spine" 4.004215 -0.003153 -0.000185 -2.569479 8.148583 3.287552 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Spine2" "v_weapon.Bip01_Spine1" 4.004213 -0.003148 -0.000187 -2.308445 8.214641 3.334253 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Spine3" "v_weapon.Bip01_Spine2" 4.00375 -0.00319 -0.000001 0.000014 -0.000002 -0.000014 0 0 0 0 0 0
$definebone "v_weapon.Bip01_Neck" "v_weapon.Bip01_Spine3" 5.028796 -0.7637 -0.000244 0.96911 16.530325 3.946598 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_Clavicle" "v_weapon.Bip01_Neck" -1.017834 0.327161 1.186798 -55.933058 62.272556 98.209877 0 0 0 0 0 0
$definebone "v_weapon.Bip01_L_UpperArm" "v_weapon.Bip01_L_Clavicle" 5.773738 0.000001 0.000001 -11.603557 -45.299663 -55.085466 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_Clavicle" "v_weapon.Bip01_Neck" -0.976454 0.158801 -1.253652 50.536225 39.456979 -118.787523 0 0 0 0 0 0
$definebone "v_weapon.Bip01_R_UpperArm" "v_weapon.Bip01_R_Clavicle" 5.773737 0 -0.000002 10.45193 -68.545409 68.352524 0 0 0 0 0 0
$definebone "v_weapon.v_weapon" "" 0 0 0 0 0 90.00001 0 0 0 0 0 0

$bonemerge "v_weapon"
$bonemerge "v_weapon.Bip01_R_Forearm"
$bonemerge "v_weapon.Bip01_R_Hand"
$bonemerge "v_weapon.glock_parent"
$bonemerge "v_weapon.stattrack"
$bonemerge "v_weapon.uid"
$bonemerge "v_weapon.Bip01_L_Forearm"
$bonemerge "v_weapon.Bip01_L_Hand"
$bonemerge "v_weapon.Bip01_L_Finger0"
$bonemerge "v_weapon.Bip01_L_Finger01"
$bonemerge "v_weapon.Bip01_L_Finger02"
$bonemerge "v_weapon.Bip01_L_Finger1"
$bonemerge "v_weapon.Bip01_L_Finger11"
$bonemerge "v_weapon.Bip01_L_Finger12"
$bonemerge "v_weapon.Bip01_L_Finger2"
$bonemerge "v_weapon.Bip01_L_Finger21"
$bonemerge "v_weapon.Bip01_L_Finger22"
$bonemerge "v_weapon.Bip01_L_Finger3"
$bonemerge "v_weapon.Bip01_L_Finger31"
$bonemerge "v_weapon.Bip01_L_Finger32"
$bonemerge "v_weapon.Bip01_L_Finger4"
$bonemerge "v_weapon.Bip01_L_Finger41"
$bonemerge "v_weapon.Bip01_L_Finger42"
$bonemerge "v_weapon.Bip01_L_ForeTwist"
$bonemerge "v_weapon.Bip01_R_Finger0"
$bonemerge "v_weapon.Bip01_R_Finger01"
$bonemerge "v_weapon.Bip01_R_Finger02"
$bonemerge "v_weapon.Bip01_R_Finger1"
$bonemerge "v_weapon.Bip01_R_Finger11"
$bonemerge "v_weapon.Bip01_R_Finger12"
$bonemerge "v_weapon.Bip01_R_Finger2"
$bonemerge "v_weapon.Bip01_R_Finger21"
$bonemerge "v_weapon.Bip01_R_Finger22"
$bonemerge "v_weapon.Bip01_R_Finger3"
$bonemerge "v_weapon.Bip01_R_Finger31"
$bonemerge "v_weapon.Bip01_R_Finger32"
$bonemerge "v_weapon.Bip01_R_Finger4"
$bonemerge "v_weapon.Bip01_R_Finger41"
$bonemerge "v_weapon.Bip01_R_Finger42"
$bonemerge "v_weapon.Bip01_R_ForeTwist"


// The 32 below is a guess until further is known about the format.
$animblocksize 32 nostall

$bonesaveframe "v_weapon" position
$bonesaveframe "v_weapon.Bip01_R_Forearm" position
$bonesaveframe "v_weapon.glock_parent" position
$bonesaveframe "v_weapon.glock_magazine" position
$bonesaveframe "v_weapon.Bip01_L_Forearm" position
$bonesaveframe "v_weapon.Bip01_L_ForeTwist" position
$bonesaveframe "v_weapon.Bip01_R_ForeTwist" position
$bonesaveframe "v_weapon.Bip01" position
$bonesaveframe "v_weapon.v_weapon" position

$sectionframes 30 33

$sequence "glock_idle" {
	"v_pist_glock18_anims\glock_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "glock_firesingle" {
	"v_pist_glock18_anims\glock_firesingle.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EJECT_BRASS 0 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "glock_firelast" {
	"v_pist_glock18_anims\glock_firelast.smd"
	activity "ACT_VM_DRYFIRE" 1
	{ event 5001 0 "21" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "glock_draw" {
	"v_pist_glock18_anims\glock_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "Weapon_Glock.Draw" }
	{ event 5004 12 "Weapon_Glock.Slideback" }
	{ event 5004 17 "Weapon_Glock.Sliderelease" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "glock_reload" {
	"v_pist_glock18_anims\glock_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "Weapon_Glock.Clipout" }
	{ event 5004 25 "Weapon_Glock.Clipin" }
	{ event 5004 44 "Weapon_Glock.Slideback" }
	{ event 5004 50 "Weapon_Glock.Sliderelease" }
	{ event AE_WPN_COMPLETE_RELOAD 28 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "lookat01" {
	"v_pist_glock18_anims\lookat01.smd"
	{ event AE_CL_SET_STATTRAK_GLOW 0 "1" }
	{ event AE_CL_SET_STATTRAK_GLOW 92 "0" }
	{ event AE_BEGIN_TAUNT_LOOP 91 "0.23834" }
	{ event 5004 2 "Weapon.WeaponMove1" }
	{ event 5004 175 "Weapon.WeaponMove3" }
	fadein 0.3
	fadeout 0.3
	fps 30
}

$KeyValues
{
	qc_path 
	{
		"value" "models\weapons\v_models\pist_glock18\v_glock18.qc"
	}
}
