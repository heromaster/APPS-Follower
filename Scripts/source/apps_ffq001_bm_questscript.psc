;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname APPS_FFQ001_BM_QuestScript Extends Quest Hidden

;BEGIN ALIAS PROPERTY Chair1Group4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair1Group4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair2Group5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair2Group5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair3Group1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair3Group1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair2Group2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair2Group2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair1Group2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair1Group2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair1Group3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair1Group3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair2Group1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair2Group1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair2Group4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair2Group4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair1Group1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair1Group1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BenchGroup1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BenchGroup1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair3Group2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair3Group2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair1Group5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair1Group5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Chair2Group3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Chair2Group3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TableGroup1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TableGroup1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TableGroup3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TableGroup3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TableGroup2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TableGroup2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TableGroup4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TableGroup4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BenchGroup2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BenchGroup2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Int i = 0

While(i < ChairGroups.Length)
	StorageUtil.UnsetIntValue(ChairGroups[i], "APPS.Follower.FFQ001.FreeChairs")
	i += 1
EndWhile

Int BlockedChairs = StorageUtil.FormListCount(None, "APPS.Follower.FFQ001.UnblockChairs")
i = 0

While(i < BlockedChairs)
	(StorageUtil.FormListGet(None, "APPS.Follower.FFQ001.UnblockChairs", i) As ObjectReference).BlockActivation(False)
EndWhile

StorageUtil.FormListClear(None, "APPS.Follower.FFQ001.UnblockChairs")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
Keyword[] Property ChairGroups  Auto  
