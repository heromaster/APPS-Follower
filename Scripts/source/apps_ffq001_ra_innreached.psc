Scriptname APPS_FFQ001_RA_InnReached extends ReferenceAlias  
LocationAlias Property Alias_Inn  Auto
Quest Property FFQ001_Helper Auto

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	If(akNewLoc == Alias_Inn.GetLocation() && GetOwningQuest().GetStage() == 10)
		If((StorageUtil.GetFormValue(akNewLoc, "APPS.Follower.FFQ001Helper") As Quest).Start())
			GetOwningQuest().SetStage(20)
		EndIf
	EndIf
EndEvent 
