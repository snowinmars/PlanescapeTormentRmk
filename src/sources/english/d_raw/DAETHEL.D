// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one is missing a tooth on its right side. It sees Annah and Fall-from-Grace standing near you, and rasps, hissing, "Take the Abyssal vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #3059 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, bat wings tucked against themselves. This one is missing a tooth on its right side. It sees Annah standing near you, and rasps, hissing, "Take the little fiendling vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #12343 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one is missing a tooth on its right side. It sees Fall-from-Grace standing near you, and rasps, hissing, "Take the Abyssal vermin away and we'll talk. Till then, we say nothing." It spits again for good measure.~ */
  IF ~~ THEN REPLY #12345 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~You see a scaled fiend who looks very similar to the one standing next to him - in addition to the pierced left ears, both are black-hued and reptilian, with bat wings tucked against themselves. This one is missing a tooth on its right side. "Ah, Tegar'in," it says, "our old friend has returned to pay us a visit."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~The abishai rears back as you approach. "Take the little chaos rats," indicating Fall-from-Grace and Annah, "away from us and we shall bargain. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12348 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~The abishai rears back as you approach. "Take the little chaos rat," indicating Annah, "away from us and we shall bargain. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12350 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~The abishai rears back as you approach. "Take the little chaos rat," indicating Fall-from-Grace, "away from us and we shall bargain. Until then, we'll have no words with you."~ */
  IF ~~ THEN REPLY #12352 /* ~"Farewell, then."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"The prodigal returns, eh?" The fiend hisses a smile at you, noxious vapors coiling from the corner of its mouth. "Have your memories returned to you, old friend?"~ */
  IF ~~ THEN REPLY #12354 /* ~"What do you mean?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"Some questions? Perhaps we have answers. We are certainly eager to aid you, old friend."~ */
  IF ~~ THEN REPLY #12358 /* ~"Who are you?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"What are you doing?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"What is this place?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"Tell me about fiends."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"Do you know a Collector named Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"I'm looking for a journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"I'm considering the bargain you spoke of, earlier."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"Would you know of a Collector who has dealings with fiends?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"Where is this Collector hiding, again?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"What sort of 'power' is it that the pendant will give me?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"I failed to get the pendant from the erinyes, and now she's gone."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Lie: "I could not find the erinyes; she was not in the alley you told me about."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"Here is the pendant."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"As am I, Tegar'in, truly aggrieved. Yet I rest easy. It has, after all, been many hundreds of years, and we know how the minds of mortals tend to dissipate with age."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Aethelgrin ignores you as it responds to its companion: "And once again, Tegar'in, you have cut straight to the truth of the matter. Though perhaps it is best not to have earned the sort of notice one bearing the name 'Thrice-Damned' must surely have incurred."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"I had some other questions..."~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"I had some other questions..."~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"Why, is that a little floating skull I see? There's a lovely sweet scent of Baatorian decay about you, my pretty. Perhaps we should discuss this... later." The abishai returns its attentions to you. "Now, then... you said you had some questions?"~ */
  IF ~~ THEN REPLY #12370 /* ~"Who are you?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"What are you doing?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"What is this place?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"Tell me about fiends."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"Do you know a Collector named Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"I'm looking for a journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"I'm considering the bargain you spoke of, earlier."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"Would you know of a Collector who has dealings with fiends?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"Where is this Collector hiding, again?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"What sort of 'power' is it that the pendant will give me?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"I failed to get the pendant from the erinyes, and now she's gone."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Lie: "I could not find the erinyes; she was not in the alley you told me about."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"Here is the pendant."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"What are we doing? Why, is it not perfectly clear, old friend? We are on leave from our beloved assignment, taking for ourselves some much-needed rest and perhaps inducing some additional recruitment for our glorious cause. Our superiors fully support our presence, to be sure."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"As we see it, there are two kinds of fiends: Those who are correct, and those who are not. Our side - that of the baatezu - is correct. The other side, that of the cursed, hated, chaotic tanar'ri, is incorrect and must be exterminated."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"I keep no journals, friend, and I counsel that you should not either. Ask my dear comrade Tegar'in why, and you shall receive enlightenment."~ */
  IF ~~ THEN REPLY #12380 /* ~"Very well. Tegar'in, why should I not keep a journal?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"Perhaps later. I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"Yes, yes, he does. Does he know?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"Yes, of course, you're all too right." The fiend turns to you. "What do you know of this Collector, friend of long years?"~ */
  IF ~~ THEN REPLY #14741 /* ~"Little, only that he has strange habits and has been seen conversing with fiends."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"Nothing, really. I was hoping you could enlighten me."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"Very little. I'll ask you about him another time, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"I would tell you, companion, but alas, I've sworn not to speak of it!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"Did you not swear, Tegar'in?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"Lovely!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~The other fiend interrupts before Tegar'in can speak: "The pendant! Do not forget!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"...perhaps you'd be willing to work out a deal with us? Like old times revisited..."~ */
  IF ~~ THEN REPLY #14743 /* ~"No. No deal."~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"What did you have in mind?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"We'll tell you everything we know of the 'Collector'..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"...his weakness, and how to defeat him, thereby securing his pendant - which we could use to make you much stronger. In return..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"Yes, the pendant. It is shaped like a human's skull, with six crystals radiating from its crown."~ */
  IF ~~ THEN REPLY #14745 /* ~"Why don't you seize it yourself?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"What does this pendant do?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"Agreed."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"No. No deal."~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"We are forbidden to even approach the 'Collector,' let alone harass or harm him."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"Nothing, for you."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"It has no powers beyond that; it's quite a passive thing, in fact."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"Surely, though, one can see our use for such an item."~ */
  IF ~~ THEN REPLY #14749 /* ~"Why don't you seize it yourself?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"Agreed."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"No. No deal."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"Too bad, too bad."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"Excellent."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"She was cursed, you see, into the form you see her in. Much of her strength was wasted away, withered by the priest's holy power."~ */
  IF ~~ THEN REPLY #14752 /* ~"Interesting..."~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"Flitting, cooing things, they are."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"Simply remove the pendant from her corpse and return it to fulfill our bargain, friend. We shall use what power she's managed to capture within it to strengthen you, and then keep the emptied device for ourselves."~ */
  IF ~~ THEN REPLY #14753 /* ~"I understand."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"I won't do this. No deal."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"How wonderful! Return here when the deed is done."~ */
  IF ~~ THEN REPLY #14755 /* ~"Before I leave, I had some questions..."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"Farewell, then."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"How cruel!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"*Much* stronger, yes!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"Tegar'in! What has happened?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"Shall we slay him now, drag him to Baator?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"Ha! See how he whimpers, Tegar'in?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"How excellent!" Aethelgrin snatches the Pendant of Yemeth away from you, tossing it to Tegar'in.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Aethelgrin looks away, his attention suddenly drawn to something on the bar beside him.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"Mmm? Oh, no, I did not."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"Not possible, I'm afraid. It's ours, now, and it means too much to us to lose it. Please, return when you've rid yourself of whatever magic prevents us from aiding you."~ */
  IF ~~ THEN REPLY #14757 /* ~Attack the fiends.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"Hmph. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"What? No! You can't!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"Kill him?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"Indignant wretch! Off with you!"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"Wait... I have the pendant."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Leave.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"Look, he has returned, and with the pendant!"~ */
  IF ~~ THEN REPLY #14761 /* ~"Wait - what sort of power will you be giving me?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"Here is the pendant."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"I have decided to keep the pendant."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"Ah, look who has returned. So sorry, friend, but we won't be speaking to you until you've got our pendant. Farewell."~ */
  IF ~~ THEN REPLY #14764 /* ~Leave.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"Look who it is, Tegar'in..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"She should be hidden and alone in alley just north of this very establishment, between two buildings. Seek her out there, late in the evening."~ */
  IF ~~ THEN REPLY #14765 /* ~"I had other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END
