Scriptname APPS_FFQ001_Functions extends Quest  Conditional
Bool Property IsChairInUse Auto Conditional Hidden
FormList Property AllowedDrinks  Auto
Keyword Property IsChair Auto
Package Property SelectedChairPackage Auto
ReferenceAlias Property Alias_Dom Auto
ReferenceAlias Property Alias_FreeChair1 Auto
ReferenceAlias Property Alias_FreeChair2 Auto
ReferenceAlias Property Alias_FreeChair3 Auto
ReferenceAlias Property Alias_FreeChair4 Auto
ReferenceAlias Property Alias_FreeChair5 Auto
ReferenceAlias Property Alias_PointedChair Auto
Bool Property IsAskingForDrinkAgain Auto Conditional Hidden
Int Property Drink Auto Conditional Hidden

Event OnInit()
	Int i = 0
	Int FavoredDrink = 0

	While(i < AllowedDrinks.GetSize())
		Form TempDrink = AllowedDrinks.GetAt(i)
		Int TempDrinks = StorageUtil.GetIntValue(TempDrink, "APPS.Follower.TotalDrinks")

		If(TempDrinks > FavoredDrink)
			Drink = i + 1
			FavoredDrink = TempDrinks
		EndIf

		i += 1
	EndWhile
EndEvent

Event OnCrosshairRefChange(ObjectReference akTarget)
	If(akTarget.HasKeyWord(IsChair))
		Alias_PointedChair.ForceRefTo(akTarget)
	Else
		Alias_PointedChair.Clear()
	EndIf
EndEvent

Event OnKeyUp(Int akKey, Float afTime)
	ObjectReference Chair = Alias_PointedChair.GetRef()

	If(akKey == 47 && Self.GetStage() == 30 && Chair)
		If(Chair.IsFurnitureInUse())
			IsChairInUse = True

			;If(
		EndIf
		ActorUtil.AddPackageOverride(Alias_Dom.GetActorRef(), SelectedChairPackage)
	EndIf
EndEvent

Function CountDrinks(Int aiDrink)
	If(aiDrink < 1 || aiDrink > AllowedDrinks.GetSize())
		Return
	EndIf

	Form ThisDrink = AllowedDrinks.GetAt(aiDrink - 1)
	Int DrinkCounter = StorageUtil.GetIntValue(ThisDrink, "APPS.Follower.TotalDrinks") + 1

	StorageUtil.SetIntValue(ThisDrink, "APPS.Follower.TotalDrinks", DrinkCounter)
	Drink = aiDrink
EndFunction

Function BeginSelectChairEvents()
	RegisterForCrosshairRef()
	RegisterForKey(47)
EndFunction

Function EndSelectChairEvents()
	UnregisterForCrosshairRef()
	UnregisterForKey(47)
EndFunction
