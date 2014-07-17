Scriptname APPS_ForceChairRef extends ReferenceAlias
Keyword Property ChairGroup1 Auto
Keyword Property ChairGroup2 Auto
Keyword Property ChairGroup3 Auto
Keyword Property ChairGroup4 Auto
Keyword Property ChairGroup5 Auto
ReferenceAlias Property ForcedChairRef Auto

Event OnInit()
	ObjectReference Chair = Self.GetRef()

	If(Chair && !Chair.IsFurnitureInUse())
		ForcedChairRef.ForceRefIfEmpty(Chair)
		Chair.BlockActivation()
		StorageUtil.FormListAdd(None, "APPS.Follower.FFQ001.UnblockChairs", Chair)

		If(Chair.HasKeyword(ChairGroup1))
			StorageUtil.SetIntValue(ChairGroup1, "APPS.Follower.FFQ001.FreeChairs", StorageUtil.GetIntValue(ChairGroup1, "APPS.Follower.FFQ001.FreeChairs") + 1)
		ElseIf(Chair.HasKeyword(ChairGroup2))
			StorageUtil.SetIntValue(ChairGroup2, "APPS.Follower.FFQ001.FreeChairs", StorageUtil.GetIntValue(ChairGroup2, "APPS.Follower.FFQ001.FreeChairs") + 1)
		ElseIf(Chair.HasKeyword(ChairGroup3))
			StorageUtil.SetIntValue(ChairGroup3, "APPS.Follower.FFQ001.FreeChairs", StorageUtil.GetIntValue(ChairGroup3, "APPS.Follower.FFQ001.FreeChairs") + 1)
		ElseIf(Chair.HasKeyword(ChairGroup4))
			StorageUtil.SetIntValue(ChairGroup4, "APPS.Follower.FFQ001.FreeChairs", StorageUtil.GetIntValue(ChairGroup4, "APPS.Follower.FFQ001.FreeChairs") + 1)
		ElseIf(Chair.HasKeyword(ChairGroup5))
			StorageUtil.SetIntValue(ChairGroup5, "APPS.Follower.FFQ001.FreeChairs", StorageUtil.GetIntValue(ChairGroup5, "APPS.Follower.FFQ001.FreeChairs") + 1)
		EndIf
	EndIf
EndEvent