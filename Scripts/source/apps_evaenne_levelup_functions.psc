Scriptname APPS_Evaenne_LevelUp_Functions extends Quest Conditional
APPS_Follower_Functions Property FollowerFunctions Auto
Book Property SpellTomeCloseWounds Auto
Book Property SpellTomeFastHealing Auto
Book Property SpellTomeGrandHealing Auto
Book Property SpellTomeHealingHands Auto
Book Property SpellTomeHealOther Auto
FormList Property OverrideCombatList Auto
ReferenceAlias Property Alias_Evaenne Auto
Spell Property CloseWounds Auto
Spell Property FastHealing Auto
Spell Property GrandHealing Auto
Spell Property HealingHands Auto
Spell Property HealOther Auto
Spell Property PerkAbQuickShot Auto
Spell Property PerkMagickaRecovery1 Auto
Spell Property PerkMagickaRecovery2 Auto
Spell Property PerkMuffledMovement Auto
Spell Property PerkPowerShot Auto
Spell Property PerkSilence Auto
Spell Property PerkWindWalkerStamina Auto

Event OnInit()
	If(Game.GetModByName("no-helmet armor perk fix.esp") < 255)
		FollowerFunctions.IsArmorPerkFixInstalled = True
	Else
		FollowerFunctions.IsArmorPerkFixInstalled = False
	EndIf
EndEvent

Function LevelUp()
	Actor Evaenne = Alias_Evaenne.GetActorRef()
	Int CurrentLevel = Evaenne.GetLevel()

	If(CurrentLevel >= 4)
		If(!Evaenne.HasSpell(FastHealing) && Evaenne.GetBaseActorValue("Restoration") >= 25 && Evaenne.GetItemCount(SpellTomeFastHealing) > 0)
			Evaenne.AddSpell(FastHealing)
			Evaenne.RemoveItem(SpellTomeFastHealing, 1)
		EndIf

		If(!Evaenne.HasSpell(HealingHands) && Evaenne.GetBaseActorValue("Restoration") >= 25 && Evaenne.GetItemCount(SpellTomeHealingHands) > 0)
			Evaenne.AddSpell(HealingHands)
			Evaenne.RemoveItem(SpellTomeHealingHands, 1)
		EndIf
	EndIf

	If(CurrentLevel >= 7)
		If(!Evaenne.HasSpell(PerkMagickaRecovery1) && Evaenne.GetBaseActorValue("Restoration") >= 30)
			PerkMagickaRecovery1.Cast(Evaenne)
		EndIf
	EndIf
				
	If(CurrentLevel >= 19)
		If(!Evaenne.HasSpell(CloseWounds) && Evaenne.GetBaseActorValue("Restoration") >= 50 && Evaenne.GetItemCount(SpellTomeCloseWounds) > 0)
			Evaenne.AddSpell(CloseWounds)
			Evaenne.RemoveItem(SpellTomeCloseWounds, 1)
		EndIf

		If(!Evaenne.HasSpell(HealOther) && Evaenne.GetBaseActorValue("Restoration") >= 50 && Evaenne.GetItemCount(SpellTomeHealOther) > 0)
			Evaenne.AddSpell(HealOther)
			Evaenne.RemoveItem(SpellTomeHealOther, 1)
		EndIf
	EndIf

	If(CurrentLevel >= 22)
		If(!Evaenne.HasSpell(PerkPowerShot) && Evaenne.GetBaseActorValue("Marksman") >= 50)
			PerkPowerShot.Cast(Evaenne)
		EndIf
	EndIf

	If(CurrentLevel >= 23)
		If(!Evaenne.HasSpell(PerkMuffledMovement) && Evaenne.GetBaseActorValue("Sneak") >= 30)
			PerkMuffledMovement.Cast(Evaenne)
		EndIf
	EndIf

	If(CurrentLevel >= 26)
		If(!Evaenne.HasSpell(PerkMagickaRecovery2) && Evaenne.GetBaseActorValue("Restoration") >= 60)
			PerkMagickaRecovery2.Cast(Evaenne)
		EndIf
	EndIf

	If(CurrentLevel >= 33)
		If(!Evaenne.HasSpell(GrandHealing)  && Evaenne.GetBaseActorValue("Restoration") >= 75 && Evaenne.GetItemCount(SpellTomeGrandHealing) > 0)
			Evaenne.AddSpell(GrandHealing)
			Evaenne.RemoveItem(SpellTomeGrandHealing, 1)
		EndIf
	EndIf
	
	If(CurrentLevel >= 34)
		If(!Evaenne.HasSpell(PerkAbQuickShot) && Evaenne.GetBaseActorValue("Marksman") >= 70)
			PerkAbQuickShot.Cast(Evaenne)
		EndIf
	EndIf

	If(CurrentLevel >= 36)
		If(!Evaenne.HasSpell(PerkWindWalkerStamina) && Evaenne.GetBaseActorValue("LightArmor") >= 60)
			PerkWindWalkerStamina.Cast(Evaenne)
		EndIf
	EndIf

	If(CurrentLevel >= 68)
		If(!Evaenne.HasSpell(PerkSilence) && Evaenne.GetBaseActorValue("Sneak") >= 70)
			PerkSilence.Cast(Evaenne)
		EndIf
	EndIf
EndFunction