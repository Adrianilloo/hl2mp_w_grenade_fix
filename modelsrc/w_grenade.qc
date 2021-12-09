$modelname "weapons\w_grenade.mdl"

$cdmaterials "models\weapons\w_grenade"

$bodygroup "studio"
{
	studio "HL2DM_grenade_reference"
}

$lod 35
{
	replacemodel "HL2DM_grenade_reference" "HL2DM_grenade_reference_lod1"
	nofacial
}

$surfaceprop "grenade"

$contents "solid"

$illumposition -0.356 0.216 4.342

$definebone "ValveBiped.Bip01_R_Hand" "" -2.297683 2.858665 3.432065 -16.457353 -85.080279 -177.499801
$definebone "ValveBiped.bone" "ValveBiped.Bip01_R_Hand" 1.047174 -1.639375 -1.296265 10.480143 -65.386699 -79.597242
$definebone "static_prop" "" 0 0 0 0 0 0

$attachment "fuse" "static_prop" 0 0 9

$sequence "idle" {
	"anims\idle"
	activity "ACT_VM_IDLE" 1
	loop
}

$collisionmodel "HL2DM_grenade_reference"
{
	$mass 10
}
