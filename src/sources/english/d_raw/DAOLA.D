// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"Welcome to the cathedral of Aoskar. Have you come to worship Aoskar with me? You can be his second disciple." ~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"I come seeking counsel concerning a box and a fiend."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"I come seeking counsel concerning a box and a fiend."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"Why are there no other disciples of Aoskar?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"Tell me more about Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"I'm interested in becoming a disciple of Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"Maybe some other time. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"The lost soul has returned. Come; let us give thanks to Aoskar and celebrate your return. I assume you have reconsidered about joining my congregation."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"I come seeking counsel concerning a box and a demon."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"I come seeking counsel concerning a box and a demon."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"What congregation? The only people I see here are you."~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"Tell me more about Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"I'm interested in becoming a disciple of Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"Maybe some other time. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"May Aoskar grant you safe passage. How may I help you?" ~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"I'd like to purchase that gem you took from Moridor's Box."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"Tell me more about Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"Why are there no other disciples of Aoskar?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"I'm interested in becoming a disciple of Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"What happened? One minute I was becoming a disciple and then the next thing I know I'm stuck in some kind of 'maze'." ~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"Nothing for now. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"You have returned! Excuse my surprise, it is just that you are the first disciple to ever return. Most seem to disappear. How may I help you?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"I come seeking counsel concerning a box and a demon."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"I come seeking counsel concerning a box and a demon."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"I would like to purchase that gem you took from Moridor's Box."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"Tell me more about Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"What happened? One minute I was becoming a disciple and then the next thing I know I'm stuck in some kind of 'maze'." ~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"Nothing for now. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Aola seems to have fallen into a deep trance. Every so often you hear him sing praises to Aoskar.~ */
  IF ~~ THEN REPLY #45605 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~You explain to him your predicament. Aola seems to consider things for a moment and then speaks to you. "I, a humble disciple to the great Aoskar, can indeed help you. First you must relinquish the box to me."~ */
  IF ~~ THEN REPLY #45607 /* ~Give him the box.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Aola places Moridor's Box within a wire pyramid-shaped structure and then mutters a prayer to Aoskar. The familiar shimmering of a portal soon fills in the sides of the pyramid. Aola then casually reaches through the portal and flips open Moridor's Box.~ */
  IF ~~ THEN REPLY #45609 /* ~Continue.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~You scream in an attempt to stop him, but are too late. Almost instantly the box begins to disintegrate as a sickly smoke begins to fill the interior of the pyramid. A feeling of immense dread fills the room, and it is all you can do to keep yourself from bolting from the tent. ~ */
  IF ~~ THEN REPLY #45611 /* ~Continue.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~You notice that as the tendrils of smoke touch the sides of the pyramid they are drawn into the swirling vortex of the portals. As the last tendril of smoke disappears the feeling of dread passes. Aola smiles a bit nervously at you. "Witness the power of Aoskar, the Keeper of Gateways!"~ */
  IF ~~ THEN REPLY #45613 /* ~"I'm sure a fiend of such power that it required so many spells to contain it will have no problems making its way back here. And when it does it's going to be looking for you..." ~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"I have taken that into consideration. You see, each side of the pyramid contained a portal to a different plane. In effect, I scattered its essence far and wide across the multiverse. Did you know there are races out there that consider demons a sort of delicacy?" He begins to chuckle softly as he reaches into the pyramid and sifts through the ashes of the box, removing the gem that was attached to it. "Payment for my services. I will use this to help rebuild my beautiful cathedral."~ */
  IF ~~ THEN REPLY #45617 /* ~"Keep the gem; you have more than earned it. Farewell."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~Moridor's Box has been put to rest, thanks to the help of a priest of Aoskar. In payment, the priest has taken the gem that was mounted atop Moridor's Box. The gem is of exceptional quality, as one would expect... after all, it was used to bind a demon. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"Over the years I have had many disciples. Unfortunately, they have all disappeared. It's quite frustrating, actually. As soon as they become initiates I never see them again. Lately, there has been a rumor going around that the Lady herself is the cause. Now no one comes by any more. You are the first soul I've seen stop by in a long while." ~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"I'm not afraid; I wish to become a disciple of Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"Tell me more about Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"The Lady... I have no wish to cross her. I'd best be on my way. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Aola's voice takes on a tone of adulation. "Aoskar is the Keeper of Gateways. Within Aoskar lies the power of portals, doorways and opportunity. Sigil, also known as the City of Doors, used to be the home of Aoskar, until he was 'cast' out by that accursed Lady. Now there are few worshippers of Aoskar here because the Lady forbids it. That will soon change, however, as I help the people to see the greatness of Aoskar. She cannot stand against the will of the people!" ~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"I wish to become a disciple of Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"Why are there no other disciples of Aoskar?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"The Lady... I have no wish to cross her. I best be on my way. Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"Wonderful! It's been so long since the last person asked." Aola makes you perform a series of complex rituals and then says, "You are now a disciple of Aoskar; go now and spread the word to the denizens of Sigil, so that all may know the glory of Aoskar!"~ */
  IF ~~ THEN REPLY #45634 /* ~"Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"Luckily for you I haven't had the time to sell it yet. I'll let you have it for the bargain price of three hundred coppers."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"I'll take it."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"How about one hundred coppers?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"I can't afford that much."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"That's robbery... I won't pay it."~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"May Aoskar, the god of portals, doors and 'opportunity,' smile upon you."~ */
  IF ~~ THEN REPLY #45643 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"That is truly unfortunate. I cannot go any lower. Maybe you can earn some jink and come back. I'll be more than happy to hold onto the gem for you."~ */
  IF ~~ THEN REPLY #45646 /* ~"Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"I really need the money to help rebuild my cathedral. Are you sure you won't reconsider? ...because I know I can get at least that much at the market."~ */
  IF ~~ THEN REPLY #45649 /* ~"I'll take it."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"Forget it."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"It sounds as if you were portaled somewhere. Only experienced followers of Aoskar and the Lady could do such a thing. This might explain the disappearances of my other disciples. I must contemplate on this. Please leave."~ */
  IF ~~ THEN REPLY #45657 /* ~"Farewell."~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~After you explain your predicament, Aola examines the box briefly before handing it back to you. "I sense nothing out of the ordinary with this box. Now if you don't mind I'm busy."~ */
  IF ~~ THEN REPLY #60925 /* ~"Farewell."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"I don't know what it is, but I like you. I'll let you have the gem for two hundred and not a copper less. What do you say?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"I'll take it."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"I can't afford that much."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"Forget it."~ */ GOTO 15
END
