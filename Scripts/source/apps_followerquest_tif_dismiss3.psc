;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FollowerQuest_TIF_Dismiss3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
If(!akspeaker.IsInFaction(DismissedFollowerFaction))
	kmyQuest.DismissFollower()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_Follower_Functions Property kmyQuest Auto
Faction Property DismissedFollowerFaction  Auto  
