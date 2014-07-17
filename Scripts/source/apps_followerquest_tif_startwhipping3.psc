;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FollowerQuest_TIF_StartWhipping3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Domina.IsConsensual = True
WhipScene.SendStoryEvent(None, Alias_PC.GetRef(), akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_Domina_Functions Property Domina Auto
Keyword Property WhipScene  Auto  
ReferenceAlias Property Alias_PC  Auto  


