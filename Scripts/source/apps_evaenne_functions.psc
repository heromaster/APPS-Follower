Scriptname APPS_Evaenne_Functions extends Quest  Conditional
Bool Property IsCanDualCasting Auto Conditional Hidden
Actor Property Brenuin Auto
Actor Property Evaenne Auto
Location Property BanneredMare Auto
Outfit Property Lvl1Outfit Auto
Outfit Property Lvl4Outfit Auto
Outfit Property Lvl9Outfit Auto
Outfit Property Lvl12Outfit Auto
Outfit Property Lvl19Outfit Auto
Outfit Property Lvl27Outfit Auto
Outfit Property Lvl36Outfit Auto
Outfit Property Lvl46Outfit Auto
Outfit Property Lvl56Outfit Auto
ObjectReference Property Room1BedDH Auto
ObjectReference Property Room3BedDH Auto
Quest Property BanneredMareHelper Auto

Event OnInit()
	;Store the level when the follower should change her outfit
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 1)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 4)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 9)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 12)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 19)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 27)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 36)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 46)
	StorageUtil.IntListAdd(Evaenne, "APPS.Follower.Armors", 56)
	;Store the outfit which the follower should use
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl1Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl4Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl9Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl12Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl19Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl27Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl36Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl46Outfit)
	StorageUtil.FormListAdd(Evaenne, "APPS.Follower.Armors", Lvl56Outfit)
	;Add tasks to the taskplaner
	StorageUtil.IntListAdd(None, "APPS.Follower.Tasks.Stage0", 0)
	StorageUtil.IntListAdd(None, "APPS.Follower.Tasks.Stage0", 1)
	StorageUtil.IntListAdd(None, "APPS.Follower.ExcludedTasks", 1001)
	;Set up the room owners in the Drunken Huntsman Lodge
	StorageUtil.SetFormValue(Room1BedDH, "APPS.Follower.DrunkenHuntsman.RoomGuest", Brenuin)
	StorageUtil.SetFormValue(Room3BedDH, "APPS.Follower.DrunkenHuntsman.RoomGuest", Evaenne)
	StorageUtil.SetFormValue(BanneredMare, "APPS.Follower.FFQ001Helper", BanneredMareHelper)
EndEvent