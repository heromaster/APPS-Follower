;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FollowerQuest_TIF_StartWhipping1 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
kmyQuest.IsConsensual = True
WhipScene.SendStoryEvent(None, Alias_PC.GetRef(), akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_Follower_Functions Property kmyQuest Auto
Keyword Property WhipScene  Auto
ReferenceAlias Property Alias_PC  Auto    
