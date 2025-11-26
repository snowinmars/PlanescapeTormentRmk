// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one has a small scar under its left eye. It sees Annah and Fall-from-Grace standing near you, and rasps, hissing, "Take the Abyssal vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #12396 /* ~"Farewell, then."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, bat wings tucked against themselves. This one has a small scar under its left eye. It sees Annah standing near you, and rasps, hissing, "Take the little fiendling vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #12397 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one has a small scar under its left eye. It sees Fall-from-Grace standing near you, and rasps, hissing, "Take the Abyssal vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #12399 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one has a small scar under its left eye. "Greetings, old comrade. 'Tis truly a joy to see you again."~ */
  IF ~~ THEN REPLY #12401 /* ~"Again?"~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~The abishai rears back as you approach. "Take the little chaos rats," indicating Fall-from-Grace and Annah, "away from us and we shall bargain with you. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12403 /* ~"Farewell, then."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~The abishai rears back as you approach. "Take the little chaos rat," indicating Annah, "away from us and we shall bargain with you. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12405 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~The abishai rears back as you approach. "Take the little chaos rat," indicating Fall-from-Grace, "away from us and we shall bargain with you. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12407 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"The prodigal returns, eh?" The fiend hisses a smile at you, noxious vapors coiling from the corner of its mouth. "Have your memories returned to you, old friend?"~ */
  IF ~~ THEN REPLY #12409 /* ~"What do you mean?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"I had some questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"So he has, Aethelgrin, so he has. Yet his eyes do not gleam as once they did. What do you suppose brings him back to us? What DOES bring you back to us, friend?"~ */
  IF ~~ THEN REPLY #12411 /* ~"Who are you?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"What are you doing?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"What is this place?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"Tell me about fiends."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"Do you know a Collector named Pharod?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"I'm looking for a journal."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"Ah, Aethelgrin, time has robbed our companion's memory! You honestly do not recall us, do you? Truly, I am aggrieved."~ */
  IF ~~ THEN REPLY #12419 /* ~"But..."~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"What I mean, dear man, is that time, our old enemy, has performed a vicious disservice on you. It robs your memories and steals your recollections. If you do not recall us, why, it is because you have fallen prey to one of mortality's weaknesses. We are old friends of yours, old indeed. What can we do for you?" ~ */
  IF ~~ THEN REPLY #12421 /* ~"I had some questions..." ~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"Ahh, well spoken. Old friend, we are a pair of abishai on leave from our current assignments in Baator. I am Tegar'in the Thrice Damned, so named for my ability to find the best in every situation. This is Aethelgrin, who has earned himself no special name, though not for lack of trying."~ */
  IF ~~ THEN REPLY #12424 /* ~"Lack of trying? What do you mean?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~In its turn, Tegar'in ignores you as it replies to its comrade. "Once again, I maintain that any notice is better than no notice at all." The abishai turns back to you. "Old friend, does this answer your question as to our identities?"~ */
  IF ~~ THEN REPLY #12426 /* ~"I suppose it will have to. I had some other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"I suppose it will have to. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"In a more immediate sense, we are taking our entertainment in this... delightful... establishment. And, of course, we are celebrating the return of our old friend. However, the stench of the breezes - which occasionally waft the scent of goodness in the door - debases us, somewhat, leaving us physically, mentally, and spiritually weaker. Fortunately, the air in this ward of the city carries a delicious tang of pain and supplication. Wouldn't you agree?" Again, the fiend smiles broadly at you. ~ */
  IF ~~ THEN REPLY #12429 /* ~"I had some other questions."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"Indeed. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"This is the Smoldering Corpse tavern, one of the more entertaining taverns your kind has seen fit to erect in this city - the poetic justice of the burning fellow at the front of the establishment is really quite a fine touch. Was there something else you wished to ask?"~ */
  IF ~~ THEN REPLY #12432 /* ~"Yes, I had some other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"We hold the tanar'ri directly responsible for the Blood War! Were it not for them, we could have settled the Lower Planes in peace, and wouldn't have all the bother of fighting this wretched war, nor would the... unfortunate... spill-overs into other planes be such a cause for concern among the namby-pambying do-gooders. The tanar'ri are directly to blame for the multiverse's sad state of affairs."~ */
  IF ~~ THEN REPLY #12435 /* ~"That's not really what I was asking. I wanted to know what differentiates you from them."~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"I see. I had some other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~The fiend pauses a moment, and then brightens. "Ah, yes. You see, we represent law and order. Those who break the law must be punished. If we have no law, we have only anarchy, and surely you can see what anarchy has done for the Abyss - it has spawned horrors beyond imagining. Any excesses the baatezu state may have indulged in are simply to counter the rising tide of chaos represented by the tanar'ri. We mean no harm to anyone - we just prefer to understand where the boundaries are."~ */
  IF ~~ THEN REPLY #12439 /* ~"I see. I had some other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"Pharod? I have heard the name. Is he not a sage of some sort? A necromancer? Or is he a diviner of rubbish? I have heard of him, friend, but do not have the pleasure of his company. Perhaps one of the other... patrons... here can help you."~ */
  IF ~~ THEN REPLY #12442 /* ~"Perhaps. I had some other questions."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"Perhaps. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"Because, friend, it is easy to make the mistake of committing a true word to posterity, and easier still for someone you once trusted," and here he shoots a glance full of venom at Aethelgrin, "to find that word and use it against you. Indeed, it can even lead to actions tantamount to desertion... leaving or losing a journal can cost you your very existence."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"I see. I had some other questions..."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"I see. I had some questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"I see. Farewell."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"He refers to Rake-Chaser, does he not?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"He asks of him... would our friend inquire of us, did he not know? Or was suspicious, at the very least."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"And yet you wonder, Aethelgrin, why your name has yet no appellation?" The fiend turns back to you. "I would be happy to enlighten you."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"Swear I did, but not as you! To no tanar'ri may I talk of the matter. But it seems to me that our friend, here, remains outside that particular group."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"And how so!" The fiend once more addresses you. "This collector, my friend, is a devil, though one cursed by a holy man. The handsome young gentleman you may have seen near him is in the Collector's thrall, though he does not realize it as such."~ */
  IF ~~ THEN REPLY #14767 /* ~"Go on..."~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"Would I, Aethelgrin? I think not."~ */
  IF ~~ THEN REPLY #14768 /* ~"What pendant?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"I'll have to hear this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"The fiend has a pendant, a magical artifact, that we'd be most pleased to find ourselves in possession of. I can guarantee it's of little or no use to you, friend, so perhaps..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"...*everything*..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"...we ask only for the pendant. It is the pendant which will allow us to bestow the promised power upon you."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"Alas, even I could not avoid the ruling. Our hands are bound in this matter, friend."~ */
  IF ~~ THEN REPLY #14770 /* ~"What does the pendant do?"~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"Agreed."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"No. No deal."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"Nothing at all, friend."~ */
  IF ~~ THEN REPLY #14773 /* ~"Tell me, or there'll be no deal."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"Why don't you seize it yourself?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"Agreed."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"No. No deal."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"It catches souls as they leave their shells."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"What would you do with such a thing? Sell it for a modicum of wealth? Decorate a mantelpiece?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"Yes, Aethelgrin, it is a shame. We shall remain here, old friend, should you wisely reconsider."~ */
  IF ~~ THEN REPLY #14777 /* ~"I some other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"The 'Collector' was an erinyes. She overstepped her bounds; overcome with ambition she tried to seduce one well beyond such things."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"Now, no erinyes is much a fighter, you see."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~The fiend turns to his companion. "Yes, indeed." Looking back at you, he hisses: "As I was saying, without the magical rope that all her Sisters carry and usual fiendish resistances, she should be quite easily slain - without her dashing young rake nearby, of course."~ */
  IF ~~ THEN REPLY #14779 /* ~"How would I get her alone?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"Ah, I was just getting to that, my old friend. You may find her hidden and alone in alley just north of this very establishment, between two buildings. Seek her out there, near anti-peak."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"Oh, but the deal's been made, friend. You've already agreed, remember? We've fulfilled our part of the bargain; would you be so callous and uncaring of our ancient friendship to default on yours?"~ */
  IF ~~ THEN REPLY #14780 /* ~"No, you're right."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"Yes."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"Indeed, Aethelgrin." The devil turns to you, a look of great concern upon him. "And have you already forgotten the power we've promised? The talisman in our hands could make you stronger, friend..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"Are you certain you would dismiss us so easily?"~ */
  IF ~~ THEN REPLY #14782 /* ~"No, you're right."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"Yes, I just can't do this."~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"I was a fool, Aethelgrin. I should have drawn a contract, but I made the gross error of factoring our friendship into the bargain." He turns to you, sneering. "Curse you, wretched human... you'll regret this. Know that from this day forth that Tegar'in Thrice-Damned seeks not simply your doom, but your soul. You're to be a camp follower in the Blood War when I have my way, slave to to the whims of the basest of fiends!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"No, not now. Let him be on his way. We've all eternity to plot against him, after all..." The two fiends smile wickedly at each other, then wave you away.~ */
  IF ~~ THEN REPLY #14784 /* ~"Wait! Wait! I've reconsidered!"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~Leave.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"Silence, Aethelgrin! We've all made mistakes." Tegar'in faces you, sneering disdainfully. "You know what we require of you, now. Most all wounds heal with time... perhaps once you've fulfilled your end of the bargain, our friendship will be as it once was. Farewell."~ */
  IF ~~ THEN REPLY #14786 /* ~Leave.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"We shall use what power it holds to invigorate you... you should find that it makes you both physically stronger and hardier. The effect should be permanent... until you die, of course, but let's not speak of such things, old friend."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"Here is the pendant, then."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"I had other questions..."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"I had other questions..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"That's all I wished to know. Farewell."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"Wait... we require the pendant, first."~ */
  IF ~~ THEN REPLY #14792 /* ~"Here is the pendant, then."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"I have decided to keep the pendant."~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"Yes, Aethelgrin, it is. And now to bestow the pendant's stolen might upon you, companion of old..." The fiend clutches the pendant in his claws, and his eyes alight with a fiery glow. A nimbus of power surrounds the pendant for a moment - then nothing.~ */
  IF ~~ THEN REPLY #14794 /* ~"What happened?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"I... I don't not know, old friend!" Tegar'in looks genuinely shocked, but beside him Aethelgrin smiles evilly. "It appears... it appears that some sort of strange magic has been worked upon you, sorcery that somehow prevents the pendant from empowering you."~ */
  IF ~~ THEN REPLY #14795 /* ~"What?! Did you know of this beforehand?"~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"No, my old friend! I most certainly did not. Aethelgrin?" The fiend tosses the pendant back to his companion.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"I'm truly sorry, dearest friend, I am. Perhaps when you have this magic - removed - we may use the pendant to your benefit. You know where to find us, should you succeed in this." The devil smiles at you.~ */
  IF ~~ THEN REPLY #14796 /* ~"Give the pendant back, then. I'll return it when the magic has been removed."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~Attack the fiends.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"Hmph. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~Tegar'in shakes his head sadly.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"It is ours, now, by right. Remember the bargain, friend of long years."~ */
  IF ~~ THEN REPLY #14799 /* ~"Very well. Here is the pendant."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"No, I think I'll keep it for now."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"Oh, so sad... would you truly throw our friendship away in such a thoughtless manner? Please, I beg of you... do not betray such an ancient camaraderie. Return the pendant."~ */
  IF ~~ THEN REPLY #14801 /* ~"Very well. Here it is."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"No. Not going to happen."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"Yes, let's."~ */
  IF ~~ THEN REPLY #14803 /* ~Meet their attack.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~Flee with the pendant.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"Well..." The two fiends smile at one another, then nod. "In that case..."~ */
  IF ~~ THEN REPLY #14805 /* ~"Wait - what sort of power will you be giving me?"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"Here is the pendant."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"I have decided to keep the pendant."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"Look, he has returned, and with the pendant!"~ */
  IF ~~ THEN REPLY #14808 /* ~"Wait - what sort of power will you be giving me?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"Here is the pendant."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"I have decided to keep the pendant."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"Ah, look who has returned. So sorry, friend, but we won't be speaking to you until you've got our pendant. Farewell."~ */
  IF ~~ THEN REPLY #14811 /* ~Leave.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"Well, well... Betrayer of Friends!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~The devils stare at you coldly during the long, uncomfortable silence that follows your words. Finally, Tegar'in speaks: "Very well. 'Tis a shame... friend."~ */
  IF ~~ THEN REPLY #14812 /* ~"I had some other questions..."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"That's all. Farewell."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
