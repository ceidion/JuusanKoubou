@_FILE "debug_as00300.dat"
@_INCLUDE "as_def.txt"

@UnknownFlag_0x04 0

(CraftOffsetTable:s)
(CraftOffsetTableEnd:s)
(UnknownFlag_0x04:s)

; Char chip pattern info  CH_Index, CH_DAT_Index, CP_Index, CP_DAT_Index
 (0x0350:s, 0x0070:s) (0x0351:s, 0x0070:s)
 (0x0353:s, 0x0070:s) (0x0354:s, 0x0070:s)

[FF FF FF FF]

; 3d model file
""

#CraftOffsetTable
 (SysCraft_MagicEffect:s)
 (SysCraft_Stand:s)
 (SysCraft_Move:s)
 (SysCraft_UnderAttack:s)
 (SysCraft_Dead:s)
 (SysCraft_NormalAttack:s)
 (SysCraft_MagicChant:s)
 (SysCraft_MagicCast:s)
 (SysCraft_Win:s)
 (SysCraft_EnterBattle:s)
 (SysCraft_UseItem:s)
 (SysCraft_Stun:s)
 (SysCraft_Unknown2:s)
 [FF FF]
 [FF FF]
 (SysCraft_Counter:s)
 (Craft_10:s) (Craft_11:s) (Craft_12:s) (Craft_13:s) (Craft_14:s)
 [FF FF] [FF FF] [FF FF] [FF FF] [FF FF]
 (Craft_1A:s) (Craft_1B:s) [FF FF] [FF FF] (Craft_1E:s)
 (Craft_1F:s) [FF FF] [FF FF] (Craft_22:s) [FF FF]
 [FF FF] [FF FF] [FF FF] [FF FF] [FF FF]
 [FF FF] [FF FF] [FF FF] [FF FF] [00 00]

#CraftOffsetTableEnd

[80 B0 80 B0 80 B0 80 B0 80 B0 80 B0 80 B0 80 B0]



@_MOD 16
#SysCraft_Stand
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x82:i)
Update
Goto(SysCraft_Stand:s)
Goto(SysCraft_Stand:s)


@_MOD 16
#SysCraft_Move
SelectChip(Self, 0x1:b)
SubChip(Self, 0x0:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x28:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x28:i)
Update
Goto(SysCraft_Move:s)
Goto(SysCraft_Move:s)


@_MOD 16
#SysCraft_UnderAttack
SelectChip(Self, 0x2:b)
SubChip(Self, 0x0:b)
Sleep(0x28:i)
Update
Call(loc_0217:s)
End


@_MOD 16
#SysCraft_Stun
SelectChip(Self, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
End


@_MOD 16
#SysCraft_Unknown2
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
End

#loc_01FE
ResetLoopTarget

#loc_01FF
LoopTargetBegin(loc_0216:s)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_01FF:s)

#loc_0216
End

#loc_0217
ShakeChar(Self, 0xFFFFFF38:i, 0x0:i, 0xFFFFFF38:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xC8:i, 0x0:i, 0xC8:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF38:i, 0x0:i, 0xFFFFFF38:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xC8:i, 0x0:i, 0xC8:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF6A:i, 0x0:i, 0xFFFFFF6A:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x96:i, 0x0:i, 0x96:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFF9C:i, 0x0:i, 0xFFFFFF9C:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x64:i, 0x0:i, 0x64:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFFCE:i, 0x0:i, 0xFFFFFFCE:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x32:i, 0x0:i, 0x32:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0xFFFFFFCE:i, 0x0:i, 0xFFFFFFCE:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x32:i, 0x0:i, 0x32:i)
Sleep(0x32:i)
Update
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
Sleep(0x32:i)
Update
Ret


@_MOD 16
#SysCraft_MagicEffect
AddEff(0x100:s, "battle/mgaria0.eff")
AddEff(0x101:s, "battle/mgaria1.eff")
AddEff(0x102:s, "eff\\sysatk03.eff")
Call(loc_036D:s)
End


@_MOD 16
#SysCraft_EnterBattle
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
Call(loc_036D:s)
SuspendThread(Self, Thread1)
End

#loc_036D
Condition(0x1:b, 0x1:b, 0x0:i, loc_03E9:s)
Condition(0x25:b, 0x1:b, 0x4:i, loc_038D:s)
Voice(0x3:b, 0x53B:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_03FA:s)

#loc_03FA
Ret

#loc_038D
Condition(0x25:b, 0x1:b, 0x3:i, loc_03A4:s)
Voice(0x3:b, 0x53E:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_03FA:s)
Goto(loc_03FA:s)

#loc_03E9
Sleep(0x3E8:i)
Update
Voice(0x2:b, 0x53F:s, 0x540:s, 0x541:s, 0x541:s, 0xFE:b)
Goto(loc_03FA:s)

#loc_03A4
Condition(0x25:b, 0x1:b, 0x2:i, loc_03BB:s)
Voice(0x3:b, 0x53D:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_03FA:s)
Goto(loc_03FA:s)

#loc_03BB
Condition(0x25:b, 0x1:b, 0x1:i, loc_03D2:s)
Voice(0x3:b, 0x53C:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_03FA:s)
Goto(loc_03FA:s)

#loc_03D2
Condition(0x25:b, 0x1:b, 0x0:i, loc_03FA:s)
Voice(0x3:b, 0x538:s, 0x539:s, 0x53A:s, 0x0:s, 0xFE:b)
Goto(loc_03FA:s)
Goto(loc_03FA:s)


@_MOD 16
#SysCraft_Dead
Die
Condition(0x2:b, 0x2:b, 0x10:i, loc_0408:s)
Goto(loc_016E:s)

#loc_016E
SelectChip(Self, 0x2:b)
SubChip(Self, 0x3:b)
Sleep(0xB4:i)
Update
End

#loc_0408
Condition(0xA:b, 0x1:b, 0x2:i, loc_041D:s)
Condition(0xB:b, 0x1:b, 0x3:i, loc_041D:s)
Goto(loc_0441:s)

#loc_0441
SelectChip(Self, 0x2:b)
SubChip(Self, 0x3:b)
Sleep(0x12C:i)
Update
End

#loc_041D
Voice(0x0:b, 0x524:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SelectChip(Self, 0x2:b)
SubChip(Self, 0x1:b)
Sleep(0x12C:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x12C:i)
Update
SeEx(0x202:s, 0x0:b)
Goto(loc_0441:s)


@_MOD 16
#SysCraft_NormalAttack
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
Voice(0x0:b, 0x50D:s, 0x50E:s, 0x50F:s, 0x0:s, 0xFE:b)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
SelectChip(Self, 0x7:b)
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x190:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x102:s, 0xC0:s, 0x0:i, 0x1F4:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x190:i)
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
SeEx(0x214:s, 0x0:b)
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
SubChip(Self, 0x4:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x12C:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x64:i)
Update
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x78:i)
Update
ResetSCraftChip
End


@_MOD 16
#SysCraft_MagicChant
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
Condition(0x8:b, 0x1:b, 0x0:i, loc_059C:s)
ShowEff(0xFF:b, 0xFF:b, 0x100:s, 0x40:s, 0x0:i, 0x32:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0xFFFF:s, 0xFFFF:s, 0xFFFF:s, 0x0:b)
Voice(0x0:b, 0x520:s, 0x521:s, 0x0:s, 0x0:s, 0xFE:b)
SeEx(0x1FD:s, 0x0:b)

#loc_059C
OP_54(0x1:b)
SelectChip(Self, 0x3:b)

#loc_05A1
SubChip(Self, 0x0:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x82:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x82:i)
Update
Goto(loc_05A1:s)
Goto(loc_05A1:s)


@_MOD 16
#SysCraft_MagicCast
ShowEff(0xFF:b, 0xF9:b, 0x101:s, 0x0:s, 0x0:i, 0x32:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0xFFFF:s, 0xFFFF:s, 0xFFFF:s, 0xFF:b)
SeEx(0x1FE:s, 0x0:b)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
Sleep(0xC8:i)
Update
SelectChip(Self, 0x3:b)
SubChip(Self, 0x3:b)
Sleep(0x12C:i)
Update
Voice(0x0:b, 0x522:s, 0x523:s, 0x0:s, 0x0:s, 0xFE:b)
SubChip(Self, 0x4:b)
Sleep(0x0:i)
Update
MagicCastBegin(0xFFFF:s)
MagicCastEnd
End


@_MOD 16
#SysCraft_Win
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700355:i, 0xFF:b)
OP_78(0x0:b)
Voice(0x1:b, 0x542:s, 0x543:s, 0x544:s, 0x545:s, 0xFE:b)
SetChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x6:b)
Sleep(0x43:i)
Update
SeEx(0x215:s, 0x0:b)
SubChip(Self, 0x7:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x8:b)
Sleep(0x43:i)
Update
SubChip(Self, 0x9:b)
Sleep(0x43:i)
Update
SubChip(Self, 0xA:b)
Sleep(0x43:i)
Update
SubChip(Self, 0xB:b)
Sleep(0x43:i)
Update
End


@_MOD 16
#SysCraft_UseItem
SelectChip(Self, 0x3:b)
SubChip(Self, 0x0:b)
Sleep(0x12C:i)
Update
Voice(0x0:b, 0x523:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SubChip(Self, 0x4:b)
Sleep(0x12C:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x18:s, 0x80:s, 0x0:i, 0x3E8:i, 0x1F4:i, 0x0:s, 0x0:s, 0x0:s, 0xFFFF:s, 0xFFFF:s, 0xFFFF:s, 0xFF:b)
Sleep(0x1F4:i)
Update
UseItemBegin
UseItemEnd
End


@_MOD 16
#SysCraft_Counter
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(Target, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Target, 0x0:s, 0x0:s, 0x0:b)
Voice(0x0:b, 0x528:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0xC8:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x102:s, 0xC0:s, 0x0:i, 0x1F4:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x15E:i)
SeEx(0x214:s, 0x0:b)
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
SubChip(Self, 0x4:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x12C:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x64:i)
Update
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
OP_8F(0x0:b)
SuspendThread(Self, Thread1)
ResetSCraftChip
End


@_MOD 16
#Craft_10
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003000.eff")
AddEff(0x1:s, "battle\\cr003001.eff")
AddEff(0x2:s, "battle\\cr003002.eff")
OP_78(0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_1E(0xFFFFFFFF:i)
SuspendThread(Self, Thread1)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
Voice(0x0:b, 0x510:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x5:b)
Sleep(0x4B:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
OP_5A(0x0:b, 0x2:b, 0x7D0:i)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0x0:i, 0xC8:i, 0xFFFFFA24:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x2:b)
SubChip(Self, 0x1:b)
SeEx(0xC4:s, 0x0:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
Sleep(0x3B6:i)
Update
CancelEff(Self, 0x2:b)
Sleep(0x64:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
OP_95
Voice(0x0:b, 0x511:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0xC0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x214:s, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x4B:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x4B:i)
Update
ShakeScreen(0x190:i, 0x190:i, 0x190:i, 0x190:i)
ShowEff(0xFF:b, 0xFE:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x14C:s, 0x0:b)
SubChip(Self, 0x3:b)
SeEx(0x121:s, 0x0:b)
BeginThread(Self, Thread1, loc_01FE:s, 0x0:b)
Sleep(0x320:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x3C:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x3C:i)
Update
BeginThread(Self, Thread2, SysCraft_Stand:s, 0x0:b)
OP_8F(0x0:b)
SuspendThread(Self, Thread2)
OP_5B(0x3E8:i)
OP_14(0x0:s)
OP_14(0x1:s)
OP_14(0x2:s)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
ResetSCraftChip
End

#loc_09A6
ShakeChar(Self, 0xFFFFFFF6:i, 0x0:i, 0xFFFFFFF6:i)
Sleep(0x1E:i)
Update
ShakeChar(Self, 0xA:i, 0x0:i, 0xA:i)
Sleep(0x1E:i)
Update
Goto(loc_09A6:s)
Goto(loc_09A6:s)


@_MOD 16
#Craft_11
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003000.eff")
AddEff(0x1:s, "battle\\cr003001.eff")
AddEff(0x2:s, "battle\\cr003100.eff")
OP_78(0x0:b)
OP_8D(0x1F:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i)
SortTarget(0x0:b)
TurnDirection(Self, 0xF2:b, 0x0:s, 0x1F4:s, 0x0:b)
OP_3F(Self)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
SelectChip(Self, 0x7:b)
SubChip(Self, 0x5:b)
Sleep(0x4B:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
OP_5A(0x0:b, 0x2:b, 0x7D0:i)
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x80:s, 0x0:i, 0xC8:i, 0xFFFFFA24:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x2:b)
SeEx(0x11E:s, 0x0:b)
SubChip(Self, 0x1:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
Sleep(0x190:i)
Update
Voice(0x0:b, 0x513:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
Sleep(0x190:i)
Update
Sleep(0xC8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0xC0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SubChip(Self, 0x0:b)
Sleep(0x4B:i)
Update
ShowEff(0xFF:b, 0xF9:b, 0x2:s, 0x140:s, 0x0:i, 0x320:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x320:s, 0x320:s, 0x320:s, 0xFF:b)
SeEx(0x100:s, 0x0:b)
ShakeScreen(0x32:i, 0x32:i, 0x32:i, 0x2710:i)
SubChip(Self, 0x2:b)
Sleep(0x4B:i)
Update
OP_95
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0xC8:i, 0x4E20:s, 0x7530:s)
SeEx(0x214:s, 0x0:b)
SubChip(Self, 0x3:b)
BeginThread(Self, Thread1, loc_0BA1:s, 0x0:b)
Sleep(0x12C:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x3C:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x3C:i)
Update
BeginThread(Self, Thread2, SysCraft_Stand:s, 0x0:b)
SeEx(0xC5:s, 0x0:b)
WaitThread(Self, Thread1)
SuspendThread(Self, Thread2)
OP_14(0x0:s)
OP_14(0x1:s)
OP_14(0x2:s)
ShakeScreen(0x0:i, 0x0:i, 0x0:i, 0x0:i)
OP_5B(0x3E8:i)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
ResetSCraftChip
End

#loc_0BA1
Sleep(0xC8:i)
Update

#loc_0BA7
LoopTargetBegin(loc_0BDE:s)
Sleep(0xC8:i)
Update
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x40:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x7D0:s, 0x7D0:s, 0x7D0:s, 0xFF:b)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
LoopTargetEnd
Goto(loc_0BA7:s)

#loc_0BDE
OP_14(0xA:s)
End


@_MOD 16
#Craft_12
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x70035B:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003200.eff")
AddEff(0x1:s, "battle\\cr003201.eff")
AddEff(0x2:s, "battle/cr006101.eff")
OP_78(0x0:b)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
ShowEff(0xFF:b, 0xF9:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
Sleep(0x12C:i)
Update
SeEx(0x232:s, 0x0:b)
SubChip(Self, 0x1:b)
Sleep(0x12C:i)
Update
Voice(0x0:b, 0x512:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
Sleep(0x190:i)
Update
OP_14(0x2:s)
SubChip(Self, 0x2:b)
Sleep(0x78:i)
Update
SeEx(0xF1:s, 0x0:b)
OP_34
OP_95
KeepAngle(Dest, 0x0:i, 0x0:i, 0x0:i, 0x7D0:i)
ShowEff(0xFF:b, 0xFF:b, 0x0:s, 0x0:s, 0x0:i, 0x64:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SubChip(Self, 0x3:b)
Sleep(0x4B0:i)
Update
SeEx(0x22B:s, 0x0:b)
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
BeginThread(Self, Thread2, SysCraft_Stand:s, 0x0:b)
Sleep(0x1F4:i)
Update
SeEx(0x22B:s, 0x0:b)
OP_14(0x0:s)
SeEx(0x22C:s, 0x0:b)
ShowEff(0xFF:b, 0xFB:b, 0x1:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
BeginThread(Self, Thread1, loc_0D37:s, 0x0:b)
WaitThread(Self, Thread1)
OP_8F(0x0:b)
OP_14(0x0:s)
OP_14(0x1:s)
OP_14(0x2:s)
SuspendThread(Self, Thread2)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
End

#loc_0D37
OP_8D(0x1F:b, Self:i, 0xFB:i, 0x0:i, 0x0:i)
ResetLoopTarget

#loc_0D4A
LoopTargetBegin(loc_0D5B:s)
DamageAnime(Target, 0x1:b, 0x32:i)
Damage(Target, 0x64:b)
LoopTargetEnd
Goto(loc_0D4A:s)

#loc_0D5B
End


@_MOD 16
#Craft_13
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700357:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003300.eff")
AddEff(0x1:s, "battle\\cr003301.eff")
OP_78(0x0:b)
OP_5A(0x0:b, 0x2:b, 0x7D0:i)
OP_34
OP_95
KeepAngle(Self, 0x0:i, 0xC8:i, 0x0:i, 0x514:i)
Voice(0x0:b, 0x514:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
RotationAngleHorz(0x4268:i, 0x514:i)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x0:b)
Sleep(0x12C:i)
Update
ShowEff(0xFF:b, 0xF9:b, 0x0:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0xC5:s, 0x0:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
Sleep(0x578:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
Voice(0x0:b, 0x515:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
RotationAngleHorz(0x5208:i, 0x64:i)
ShakeScreen(0xC8:i, 0xC8:i, 0xC8:i, 0x3E8:i)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0x0:s, 0x0:i, 0x32:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x103:s, 0x0:b)
SubChip(Self, 0x1:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
Sleep(0x190:i)
Update
SeEx(0x100:s, 0x0:b)
Damage(Target, 0x64:b)
OP_14(0x1:s)
Sleep(0xC8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
OP_5B(0x3E8:i)
OP_14(0x0:s)
OP_14(0x1:s)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ResetSCraftChip
End


@_MOD 16
#Craft_14
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x6:b, 0x700352:i, 0xFF:b)
LoadSChip(0x7:b, 0x700358:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003400.eff")
AddEff(0x1:s, "battle\\cr003401.eff")
AddEff(0x2:s, "battle\\cr003402.eff")
AddEff(0x7:s, "battle\\sc003103.eff")
OP_78(0x0:b)
SortTarget(0x0:b)
OP_26(0x2:b, 0xFF:b, 0x10:s)
OP_95
SetAngleTarget(Self, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
TurnDirection(Self, Dest, 0x0:s, 0x1F4:s, 0x0:b)
OP_5A(0x0:b, 0x2:b, 0x7D0:i)
SelectChip(Self, 0x6:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
Voice(0x0:b, 0x516:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
SeEx(0x11E:s, 0x0:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
ShowEff(0xFF:b, 0xFF:b, 0x0:s, 0xC0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x2:b)
Sleep(0x3E8:i)
Update
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
Voice(0x0:b, 0x517:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
Sleep(0x1F4:i)
Update
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x2710:i)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0xC0:s, 0x0:i, 0x4B0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x3:b)
BeginThread(Self, Thread1, loc_1060:s, 0x0:b)
BeginThread(Self, Thread2, loc_10A0:s, 0x0:b)
ShadowBegin(Self, 0x64:s, 0x1F4:s)
SeEx(0x25B:s, 0x0:b)
OP_20(0x0:b, MainThread, 0xFB:b, 0x0:i, 0x3C8C:i)
ShadowEnd(Self)
SuspendThread(Self, Thread2)
SuspendThread(Self, Thread1)
CancelEff(Self, 0x3:b)
SelectChip(Self, 0x6:b)
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
ShakeScreen(0x0:i, 0x0:i, 0x0:i, 0x0:i)
CancelEff(Self, 0x2:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread1)
Sleep(0x64:i)
Update
BeginThread(Self, Thread2, loc_1102:s, 0x0:b)
Sleep(0x1F4:i)
Update
OP_8F(0x0:b)
OP_5B(0x3E8:i)
OP_27(0x2:b, 0xFF:b, 0x10:s)
OP_14(0x0:s)
OP_14(0x1:s)
OP_14(0x2:s)
OP_14(0x7:s)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
ReleaseEff(0x7:s)
ResetSCraftChip
End

#loc_1060
SelectChip(Self, 0x7:b)
SeEx(0x239:s, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x64:i)
Update
Goto(loc_1060:s)
Goto(loc_1060:s)

#loc_10A0
Condition(0x16:b, 0x1:b, 0x0:i, loc_10AA:s)
End

#loc_1102
Condition(0x16:b, 0x1:b, 0x0:i, loc_110C:s)
End

#loc_10AA
ResetLoopTarget

#loc_10AB
LoopTargetBegin(loc_10FE:s)
OP_8D(0x10:b, 0x5DC:i, 0xFE:i, 0x0:i, 0x0:i)
Condition(0x11:b, 0x1:b, 0x1:i, loc_10F4:s)
ShowEff(0xFF:b, 0xF8:b, 0x2:s, 0x40:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x239:s, 0x0:b)
DamageAnime(Target, 0x0:b, 0x32:i)

#loc_10F4
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_10AB:s)

#loc_10FE
ResetLoopTarget
Goto(loc_10AB:s)
Goto(loc_10AB:s)

#loc_110C
Voice(0x0:b, 0x518:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
Sleep(0xC8:i)
Update
ZoomAngle(0x1:b, 0x64:i, 0x0:i)
SetBkColor(0x0:b, 0x0:i, 0x400000:i)
ZoomAngle(0x0:b, 0x64:i, 0x400000:i)
OP_95
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x0:i, 0x4E20:s, 0xC350:s)
SeEx(0x120:s, 0x0:b)
OP_A0(0x2:b, 0x400:i)
ResetLoopTarget

#loc_1155
LoopTargetBegin(loc_118A:s)
ShowEff(0xFF:b, 0xF8:b, 0x7:s, 0x40:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x14A:s, 0x0:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
LoopTargetEnd
Goto(loc_1155:s)

#loc_118A
SetBattleSpeed(0x64:i)
Sleep(0x96:i)
Update
SetBattleSpeed(0x3E8:i)
OP_A0(0x3:b, 0x400:i)
End


@_MOD 16
#Craft_1A
OP_8D(0x4C:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i)
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x7:b, 0x700359:i, 0xFF:b)
AddEff(0x0:s, "eff/cutin03.eff")
AddEff(0x1:s, "battle/sc003000.eff")
OP_78(0x0:b)
OP_5A(0x0:b, 0x0:b, 0x0:i)
OP_60(0xF7:b)
Teleport(Self, Target, 0x0:i, 0x0:i, 0xFFFFE890:i)
TurnDirection(Self, Target, 0x0:s, 0x0:s, 0x0:b)
SetChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x7:b)
SubChip(Self, 0xB:b)
Hide(0xFC:b, 0x0:i)
ResetLoopTarget

#loc_126E
LoopTargetBegin(loc_127D:s)
TurnDirection(Target, Self, 0x0:s, 0x0:s, 0x0:b)
LoopTargetEnd
Goto(loc_126E:s)

#loc_127D
OP_34
KeepAngle(Self, 0xFFFFFE0C:i, 0x3E8:i, 0x0:i, 0x0:i)
RotationAngleHorz(0x32C8:i, 0x0:i)
SetAngle(0xB4:s, 0x14:s, 0x0:s, 0x0:i)
OP_5F(Self, 0x0:b)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x0:i, 0x5DC:i)
RotationAngleHorz(0x2EE0:i, 0xBB8:i)
ShowEff(0xFD:b, 0xFD:b, 0x0:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
Sleep(0x2BC:i)
Update
Voice(0x0:b, 0x519:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
Sleep(0x514:i)
Update
SubChip(Self, 0xC:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xD:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xE:b)
Sleep(0x64:i)
Update
Voice(0x0:b, 0x51A:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
SubChip(Self, 0xF:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x10:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x11:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x12:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x13:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x14:b)
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
SeEx(0x100:s, 0x0:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
Voice(0x0:b, 0x51B:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
SubChip(Self, 0x15:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x16:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x17:b)
Sleep(0x64:i)
Update
SeEx(0x21A:s, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x64:i)
Update
SeEx(0x239:s, 0x0:b)
ResetLoopTarget
KeepAngle(Target, 0x0:i, 0x3E8:i, 0x0:i, 0xC8:i)
OP_3C(0xA:s, 0xC8:i)
RotationAngleHorz(0x3A98:i, 0xC8:i)
SubChip(Self, 0x6:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x7:b)
Sleep(0x64:i)
Update
SeEx(0xC4:s, 0x0:b)
OP_5F(0xFC:b, 0x0:b)
Show(0xFC:b, 0xC8:i)
SetBattleSpeed(0x12C:i)
RotationAngleHorz(0x4E20:i, 0x7D0:i)
BeginThread(Self, Thread1, loc_14B8:s, 0x0:b)
SubChip(Self, 0x8:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x9:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xA:b)
Sleep(0x64:i)
Update
Sleep(0xC8:i)
Update
SuspendThread(Self, Thread1)
SetBattleSpeed(0x3E8:i)
Sleep(0x12C:i)
Update
ZoomAngle(0x1:b, 0x1F4:i, 0x0:i)
CraftEnd(0x1:b)
Show(Self, 0x0:i)
OP_5F(0xF7:b, 0x0:b)
OP_31(0x17:b, 0x0:i)
OP_31(0x6:b, 0x0:i)
OP_5B(0x0:i)
ClearChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
OP_14(0x0:s)
OP_14(0x1:s)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ResetSCraftChip
End

#loc_14B8
ResetLoopTarget

#loc_14B9
LoopTargetBegin(loc_14EA:s)
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x40:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
LoopTargetEnd
Goto(loc_14B9:s)

#loc_14EA
End


@_MOD 16
#Craft_1B
OP_8D(0x4C:b, 0x0:i, 0x0:i, 0x0:i, 0x0:i)
ResetLoopTarget
SortTarget(0x0:b)
OP_78(0x1:b)
LoadSChip(0x7:b, 0x70035A:i, 0xFF:b)
AddEff(0x0:s, "eff/cutin03.eff")
AddEff(0x1:s, "battle/sc003100.eff")
AddEff(0x2:s, "battle/sc003101.eff")
AddEff(0x3:s, "battle/sc003102.eff")
AddEff(0x4:s, "battle/sc003103.eff")
AddEff(0x5:s, "battle/sc003104.eff")
AddEff(0x7:s, "battle/sc009001.eff")
OP_78(0x0:b)
OP_5A(0x0:b, 0x0:b, 0x0:i)
OP_60(0xF7:b)
Teleport(Self, 0xF2:b, 0x0:i, 0x0:i, 0xFFFFE890:i)
TurnDirection(Self, 0xF2:b, 0x0:s, 0x0:s, 0x0:b)
SetChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x7:b)
BeginThread(Self, Thread1, loc_1B76:s, 0x0:b)
Hide(0xFC:b, 0x0:i)
ResetLoopTarget

#loc_15DD
LoopTargetBegin(loc_15EC:s)
TurnDirection(Target, Self, 0x0:s, 0x0:s, 0x0:b)
LoopTargetEnd
Goto(loc_15DD:s)

#loc_15EC
OP_34
KeepAngle(Self, 0x0:i, 0x5DC:i, 0x0:i, 0x0:i)
RotationAngleHorz(0x3A98:i, 0x0:i)
SetAngle(0xB4:s, 0xA:s, 0x0:s, 0x0:i)
OP_5F(Self, 0x0:b)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x0:i, 0x5DC:i)
RotationAngleHorz(0x2EE0:i, 0xBB8:i)
OP_5F(Self, 0x0:b)
ShowEff(0xFF:b, 0xFD:b, 0x5:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
Sleep(0x1F4:i)
Update
ShowEff(0xFD:b, 0xFD:b, 0x0:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
Sleep(0x1F4:i)
Update
Voice(0x0:b, 0x51C:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
Sleep(0x514:i)
Update
Sleep(0x320:i)
Update
Voice(0x0:b, 0x51D:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
Sleep(0x258:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x1:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0xD7:s, 0x0:b)
Sleep(0x7D0:i)
Update
Sleep(0x244:i)
Update
SuspendThread(Self, Thread1)
Voice(0x0:b, 0x51E:s, 0x0:s, 0x0:s, 0x0:s, 0x0:b)
SubChip(Self, 0x8:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x9:b)
Sleep(0x64:i)
Update
SeEx(0x11E:s, 0x0:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
SubChip(Self, 0xA:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
SubChip(Self, 0xB:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xC:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xD:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xE:b)
Sleep(0x64:i)
Update
SubChip(Self, 0xF:b)
Sleep(0x12C:i)
Update
SeEx(0x214:s, 0x0:b)
SubChip(Self, 0xF:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x10:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x11:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x12:b)
Sleep(0x32:i)
Update
SeEx(0x122:s, 0x0:b)
SubChip(Self, 0x13:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x14:b)
Sleep(0x3E8:i)
Update
SubChip(Self, 0x15:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x18:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x19:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1A:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1B:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1C:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1D:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1E:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1F:b)
Sleep(0xC8:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x11E:s, 0x0:b)
BeginThread(Self, Thread1, loc_09A6:s, 0x0:b)
Sleep(0x3E8:i)
Update
SuspendThread(Self, Thread1)
ShakeChar(Self, 0x0:i, 0x0:i, 0x0:i)
SubChip(Self, 0x1F:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x20:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x21:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x22:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x28:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x29:b)
Sleep(0x64:i)
Update
SeEx(0x214:s, 0x0:b)
SubChip(Self, 0x2A:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2B:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2C:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2D:b)
Sleep(0x64:i)
Update
ResetLoopTarget
KeepAngle(0xF2:b, 0x0:i, 0x3E8:i, 0x0:i, 0xC8:i)
OP_3C(0xA:s, 0xC8:i)
RotationAngleHorz(0x4E20:i, 0xC8:i)
SubChip(Self, 0x2E:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x2F:b)
Sleep(0x64:i)
Update
OP_5F(0xFC:b, 0x0:b)
Show(0xFC:b, 0x32:i)
SetBattleSpeed(0x64:i)
RotationAngleHorz(0x5208:i, 0x7D0:i)
ResetLoopTarget

#loc_18B6
LoopTargetBegin(loc_18D5:s)
OP_5(Target, 0x2:b, 0x0:i)
OP_5(Target, 0x1:b, 0xFFFFFF9C:i)
BeginThread(Target, CurThread, loc_1BC8:s, 0x0:b)
SeEx(0x15F:s, 0x0:b)
LoopTargetEnd
Goto(loc_18B6:s)

#loc_18D5
SubChip(Self, 0x30:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x31:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x32:b)
SetBattleSpeed(0x3E8:i)
ResetLoopTarget
Hide(0xFC:b, 0xC8:i)
Sleep(0x1F4:i)
Update
ShowEff(0xFF:b, 0xF9:b, 0x7:s, 0x80:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0xFB:s, 0x0:b)
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x3E8:i)
SubChip(Self, 0x3A:b)
Hide(Self, 0x258:i)
Move(Self, Self, 0x0:i, 0x1A90:i, 0xC350:i, 0x2EE:i, 0x0:b)
DamageVoice(0x0:b, 0x7:s)
OP_A(Self, 0x1:b, 0x0:b, 0x0:i)
OP_A(0xFC:b, 0x1:b, 0x0:b, 0x0:i)
ResetLoopTarget
SortTarget(0x0:b)
Hide(Self, 0x0:i)
Teleport(Self, 0xF2:b, 0x0:i, 0x0:i, 0xFFFFD8F0:i)
TurnDirection(Self, 0xF2:b, 0x0:s, 0x1F4:s, 0x0:b)
SubChip(Self, 0x38:b)

#loc_1985
LoopTargetBegin(loc_1994:s)
TurnDirection(Target, Self, 0x0:s, 0x0:s, 0x0:b)
LoopTargetEnd
Goto(loc_1985:s)

#loc_1994
ResetLoopTarget
SortTarget(0x0:b)
SeEx(0x140:s, 0x0:b)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x1388:i, 0x0:i)
SetAngle(0x5A:s, 0x14:s, 0x0:s, 0x0:i)
RotationAngleHorz(0x3A98:i, 0x0:i)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0xFFFFFC18:i, 0x1F4:i)
RotationAngleHorz(0x2EE0:i, 0x1F4:i)
Show(Self, 0x64:i)
OP_6D(0x40000:i)
ShowEff(0xFF:b, 0xF9:b, 0x3:s, 0xC0:s, 0x0:i, 0x190:i, 0xFFFFFC18:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x2:b)
OP_1A(0xFF:b, 0x2:b, 0x64:s)
Sleep(0x1F4:i)
Update
Voice(0x0:b, 0x51F:s, 0x0:s, 0x0:s, 0x0:s, 0x1:b)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x0:i, 0x1F4:i)
Sleep(0x1F4:i)
Update
Show(0xFC:b, 0xC8:i)
KeepAngle(0xF2:b, 0x0:i, 0x3E8:i, 0x5DC:i, 0x1F4:i)
RotationAngleHorz(0x55F0:i, 0xC8:i)
Move(Self, 0xF2:b, 0x0:i, 0x0:i, 0xBB8:i, 0x1F4:i, 0x0:b)
BeginThread(Self, Thread1, loc_1BE0:s, 0x0:b)
SeEx(0x121:s, 0x0:b)
SetBattleSpeed(0x64:i)
SubChip(Self, 0x39:b)
FinishEff(Self, 0x2:b)
ShowEff(0xFF:b, 0xF9:b, 0x3:s, 0xC0:s, 0x0:i, 0x0:i, 0x1F4:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0x2:b)
OP_1A(0xFF:b, 0x2:b, 0x578:s)
SeEx(0x100:s, 0x0:b)
Move(Self, Self, 0x0:i, 0x0:i, 0x1F4:i, 0x96:i, 0x0:b)
SetBattleSpeed(0x3E8:i)
Move(Self, Self, 0x0:i, 0x0:i, 0x2710:i, 0xC8:i, 0x0:b)
SeEx(0x141:s, 0x0:b)
OP_95
Hide(Self, 0x0:i)
OP_A(Self, 0x1:b, 0x0:b, 0x0:i)
SuspendThread(Self, Thread1)
ResetLoopTarget
SortTarget(0x0:b)

#loc_1AEE
LoopTargetBegin(loc_1B05:s)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_1AEE:s)

#loc_1B05
Sleep(0x258:i)
Update
OP_8F(0x0:b)
ZoomAngle(0x1:b, 0x1F4:i, 0x0:i)
CraftEnd(0x1:b)
Show(Self, 0x0:i)
OP_5F(0xF7:b, 0x0:b)
OP_31(0x17:b, 0x0:i)
OP_31(0x6:b, 0x0:i)
OP_5B(0x0:i)
OP_6E(0x40000:i)
ClearChipModeFlag(0x0:b, Self, 0x2:s)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
DamageVoice(0x0:b, 0x0:s)
DamageVoice(0x0:b, 0x1:s)
DamageVoice(0x0:b, 0x2:s)
DamageVoice(0x0:b, 0x3:s)
DamageVoice(0x0:b, 0x4:s)
DamageVoice(0x0:b, 0x5:s)
DamageVoice(0x0:b, 0x7:s)
ReleaseEff(0x0:s)
ReleaseEff(0x1:s)
ReleaseEff(0x2:s)
ReleaseEff(0x3:s)
ReleaseEff(0x4:s)
ReleaseEff(0x5:s)
ReleaseEff(0x7:s)
ResetSCraftChip
End

#loc_1B76
SubChip(Self, 0x0:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x3:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x2:b)
Sleep(0x78:i)
Update
SubChip(Self, 0x1:b)
Sleep(0x78:i)
Update
Goto(loc_1B76:s)
Goto(loc_1B76:s)

#loc_1BC8
SelectChip(Self, 0x2:b)
SubChip(Self, 0x0:b)
Sleep(0x0:i)
Update
OP_21(0x1:b, MainThread, 0xFFFF8AD0:i, 0x9470:i)
End

#loc_1BE0
ResetLoopTarget
SortTarget(0x0:b)

#loc_1BE3
LoopTargetBegin(loc_1C1B:s)
ShowEff(0xFF:b, 0xF8:b, 0x4:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x239:s, 0x0:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Sleep(0x14:i)
Update
LoopTargetEnd
Goto(loc_1BE3:s)

#loc_1C1B
End


@_MOD 16
#Craft_1E
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
OP_9E(0x0:b, "effect/texture/cti00300.itp")
End


@_MOD 16
#Craft_1F
Call(loc_1DCC:s)
SaveCurPos(Self)
SortTarget(0x0:b)
TurnDirection(Self, Target, 0x0:s, 0x1F4:s, 0x0:b)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_5(Self, 0x0:b, 0x0:i)
OP_21(0x1:b, MainThread, 0xFA0:i, 0x2EE0:i)
SuspendThread(Self, Thread1)
Condition(0x10:b, 0x1:b, 0xFFFFFFFF:i, loc_1C9E:s)
OP_95
OP_36(0xD:s)
KeepAngle(0xFD:b, 0x1F40:i, 0x0:i, 0x1F40:i, 0xBB8:i)
OP_B0(0xF:s, 0xBB8:i)
RotationAngleHorz(0x4650:i, 0xBB8:i)
Goto(loc_1CB2:s)

#loc_1C9E
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(0xFC:b, "", 0x0:s)
MoveAngle(0x1F4:i, 0x1F40:s, 0x3A98:s)
Goto(loc_1CB2:s)

#loc_1CB2
OP_54(0x2:b)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
SelectChip(Self, 0x7:b)
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x0:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x1:b)
Sleep(0xC8:i)
Update
Voice(0x0:b, 0x50D:s, 0x50E:s, 0x50F:s, 0x0:s, 0xFE:b)
SubChip(Self, 0x0:b)
Sleep(0x32:i)
Update
ShowEff(0xFF:b, 0xFF:b, 0x102:s, 0xC0:s, 0x0:i, 0x1F4:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0x214:s, 0x0:b)
ShakeScreen(0x64:i, 0x64:i, 0x64:i, 0x190:i)
SubChip(Self, 0x2:b)
Sleep(0x32:i)
Update
BeginThread(Self, Thread2, loc_1D82:s, 0x0:b)
SubChip(Self, 0x4:b)
Sleep(0x32:i)
Update
SubChip(Self, 0x3:b)
Sleep(0xC8:i)
Update
SeEx(0xFA:s, 0x0:b)
SubChip(Self, 0x4:b)
Sleep(0x64:i)
Update
SubChip(Self, 0x5:b)
Sleep(0x64:i)
Update
SelectChip(Self, 0x1:b)
SubChip(Self, 0x1:b)
JumpBack(0x3E8:s, 0x1388:s)
SelectChip(Self, 0x0:b)
SubChip(Self, 0x0:b)
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
Sleep(0x1F4:i)
Update
SuspendThread(Self, Thread1)
WaitThread(Self, Thread2)
End

#loc_1D82
ResetLoopTarget

#loc_1D83
LoopTargetBegin(loc_1DCB:s)
ShakeScreen(0xC8:i, 0x12C:i, 0xC8:i, 0x190:i)
ShowEff(0xFF:b, 0xF8:b, 0xA:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
DamageAnime(Target, 0x0:b, 0x32:i)
Damage(Target, 0x64:b)
Sleep(0x32:i)
Update
LoopTargetEnd
Goto(loc_1D83:s)

#loc_1DCB
End

#loc_1DCC
ResetLoopTarget
Condition(0x10:b, 0x1:b, 0x0:i, loc_1DE4:s)
Voice(0x0:b, 0x535:s, 0x0:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_1DEF:s)

#loc_1DEF
DropDown(0x1:b)
SelectChip(Self, 0x7:b)
SubChip(Self, 0x5:b)
Sleep(0x50:i)
Update
SubChip(Self, 0x4:b)
Sleep(0x50:i)
Update
SeEx(0x166:s, 0x0:b)
SubChip(Self, 0x3:b)
Sleep(0xC8:i)
Update
DropDown(0x2:b)
ClearChipModeFlag(0x0:b, Self, 0x2:s)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
Hide(Self, 0x1F4:i)
Move(Self, 0xFD:b, 0x1F40:i, 0x0:i, 0x3E80:i, 0x1F4:i, 0x0:b)
SuspendThread(Self, Thread1)
DropDown(0x3:b)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
Show(Self, 0x1F4:i)

#loc_1E4B
OP_5(Self, 0x4:b, 0x0:i)
OP_21(0x1:b, MainThread, 0x3E8:i, 0x1D4C:i)
Condition(0x1:b, 0x4:b, 0x4:i, loc_1E4B:s)
Goto(loc_1E69:s)

#loc_1E69
SuspendThread(Self, Thread1)
BeginThread(Self, Thread1, SysCraft_Stand:s, 0x0:b)
TurnDirection(Self, Target, 0x0:s, 0x0:s, 0x0:b)
DropDown(0x5:b)
SuspendThread(Self, Thread1)
Condition(0x10:b, 0x1:b, 0xFFFFFFFF:i, loc_1EB8:s)
Sleep(0xC8:i)
Update
ShowEff(0xFF:b, 0xF9:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x3E8:s, 0x3E8:s, 0x3E8:s, 0xFF:b)
SeEx(0xB7:s, 0x0:b)
Sleep(0x320:i)
Update

#loc_1EB8
Ret

#loc_1DE4
Voice(0x0:b, 0x540:s, 0x53F:s, 0x0:s, 0x0:s, 0xFE:b)
Goto(loc_1DEF:s)


@_MOD 16
#Craft_22
ResetLoopTarget
OP_78(0x1:b)
LoadSChip(0x1:b, 0x700351:i, 0xFF:b)
LoadSChip(0x7:b, 0x700352:i, 0xFF:b)
AddEff(0x0:s, "battle\\cr003001.eff")
AddEff(0x1:s, "battle\\cr003002.eff")
AddEff(0x2:s, "battle/sp000000.eff")
OP_78(0x0:b)
Voice(0x0:b, 0x536:s, 0x537:s, 0x0:s, 0x0:s, 0xFE:b)
Call(loc_207D:s)
ShowEff(0xFF:b, 0xFB:b, 0x2:s, 0x0:s, 0x0:i, 0x0:i, 0x0:i, 0x0:s, 0x0:s, 0x0:s, 0x1770:s, 0x3E8:s, 0x1770:s, 0x4:b)
Sleep(0x32:i)
Update
OP_95
SelectChip(Self, 0x7:b)
ShadowBegin(Self, 0x64:s, 0x12C:s)
SubChip(Self, 0x1:b)
KeepAngle(Self, 0x0:i, 0x3E8:i, 0x0:i, 0x190:i)
SeEx(0x216:s, 0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
SetAngleTarget(Target, "", 0x0:s)
MoveAngle(0x12C:i, 0x4E20:s, 0x7530:s)
OP_AE(0xFF:b, 0x1:b, 0x5:b)
JumpToTarget(0x1B58:s, 0xFA0:s)
End

#loc_207D
Condition(0x23:b, 0x2:b, 0x4000:i, loc_2098:s)
Teleport(Self, 0xFD:b, 0x1F40:i, 0x0:i, 0x59D8:i)
Goto(loc_20A7:s)

#loc_20A7
SaveCurPos(Self)
BeginThread(Self, Thread1, SysCraft_Move:s, 0x0:b)
OP_95
SetAngleTarget(Self, "", 0x0:s)
MoveAngle(0x64:i, 0x4E20:s, 0x7530:s)
Show(Self, 0x1F4:i)
OP_5(Self, 0x4:b, 0x0:i)
OP_21(0x1:b, MainThread, 0x1388:i, 0x1770:i)
SuspendThread(Self, Thread1)
Ret

#loc_2098
Teleport(Self, 0xFD:b, 0x1F40:i, 0x0:i, 0xFFFFE890:i)
Goto(loc_20A7:s)
