;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_Evaenne_LevelUp_QuestScript Extends Quest Hidden

;BEGIN ALIAS PROPERTY Evaenne
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Evaenne Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE APPS_Evaenne_LevelUp_Functions
Quest __temp = self as Quest
APPS_Evaenne_LevelUp_Functions kmyQuest = __temp as APPS_Evaenne_LevelUp_Functions
;END AUTOCAST
;BEGIN CODE
kmyQuest.LevelUp()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
