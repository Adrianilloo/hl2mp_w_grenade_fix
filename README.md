# hl2mp_w_grenade_fix

This repository provides few fixes and/or enhancements to the HL2:DM grenade worldmodel (used by `weapon_frag`):

- Switches surface type to the one used in HL2 SP, restoring proper contact sounds
- Restores the "fuse" attachment from HL2 SP, which causes the throw indicator sprite to be created at the ring/top rather than at model's bottom

The above edits only work when the model is installed in the game's client (not from server, by default).

Then, an optional fix is added to the `corners_pass_fix` branch (working server-side). There, the grenade's origin is changed to the center (instead of the bottom), matching the HL2 SP model. This fixes the classic HL2:DM bug of grenades going through solids when thrown into nearby three-plane intersection corners (e.g. when crouching and facing a lower one).

However, if you will run a server based on Source SDK 2013 MP, the [following patch](https://github.com/ValveSoftware/source-sdk-2013/pull/437#issuecomment-665960411) is greatly recommended to fix the corner's passthrough bug. After trying to deal with it periodically for years, I came with a very suitable solution that seems to be the most logical way to fix it from the game's SDK (even if the VPhysics implementation is arguably the culprit).
