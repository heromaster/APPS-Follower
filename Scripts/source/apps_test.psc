Scriptname APPS_Test extends ReferenceAlias  

Event OnActivate(ObjectReference akActor)
	If(akActor == Game.GetPlayer())
		Debug.Notification("Nope.")
		Self.GetRef().BlockActivation()
		Return
	Else
		Self.GetRef().BlockActivation(False)
		Self.GetRef().Activate(akActor)
	Endif
EndEvent