;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FFQ01_TIF_PunishmentFirstTask2 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
APPS_FFQ02.Start()
APPS_FFQ02_Funcs.PunishmentLeadIn = 2
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_FFQ02_Functions Property APPS_FFQ02_Funcs Auto
Quest Property APPS_FFQ02  Auto  
