;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FFQ1001_QuestScript Extends Quest Hidden

;BEGIN ALIAS PROPERTY Dom
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Dom Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PC
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PC Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
If(Alias_PC.GetActorRef().GetGoldAmount() < 750)
	SetStage(20)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
