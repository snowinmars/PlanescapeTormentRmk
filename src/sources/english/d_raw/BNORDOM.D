// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BNORDOM~

IF ~  LastPersonTalkedTo("Morte")
Global("Nordom_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31490 /* ~"Attention: Morte. Did you know I have six sides?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #63630 /* ~"A question, Morte. How do you stay aloft?"~ [NOR286A] */
  IF ~~ THEN EXTERN ~DMORTE~ 624
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63631 /* ~"I will consider this."~ [NOR286B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",3)
InParty("Dakkon")
~ THEN BEGIN 3 // from:
  SAY #63632 /* ~"Dak'kon's silence seems to be a most efficient use of language."~ [NOR287] */
  IF ~~ THEN EXTERN ~DMORTE~ 625
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",4)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 4 // from:
  SAY #63633 /* ~"Morte, explain to me again why you would 'love to bite Annah.' Would this not provoke an attack?"~ [NOR288] */
  IF ~~ THEN EXTERN ~DMORTE~ 626
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",5)
InParty("Annah")
~ THEN BEGIN 5 // from:
  SAY #63634 /* ~"Attention: Morte. I have a question. Do you have a destiny? A purpose?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 627
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63635 /* ~"Affirmatory."~ [NOR313B] */
  IF ~~ THEN EXTERN ~DMORTE~ 628
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 7 // from:
  SAY #63636 /* ~"Attention: Morte. Did you know I have eighteen points of articulation?"~ [NOR312] */
  IF ~~ THEN EXTERN ~DMORTE~ 629
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY #63637 /* ~"Attention: Morte. I have a question. Do I have free will?"~ [NOR317A] */
  IF ~~ THEN EXTERN ~DMORTE~ 630
END

IF ~~ THEN BEGIN 9 // from:
  SAY #63638 /* ~"Free will does not seem to hold many benefits for a modron."~ [NOR317B] */
  IF ~~ THEN EXTERN ~DMORTE~ 631
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 10 // from:
  SAY #63639 /* ~"Attention: Morte. I have a question. Do you have a destiny? A purpose?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 632
END

IF ~~ THEN BEGIN 11 // from:
  SAY #63640 /* ~"Negatory."~ [NOR310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 633
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",9)
InParty("Grace")
InParty("Annah")
~ THEN BEGIN 12 // from:
  SAY #63641 /* ~"Attention: Morte. I have a question. What is the Rule of Three?"~ [NOR319A] */
  IF ~~ THEN EXTERN ~DMORTE~ 634
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63642 /* ~"That conflicts with several previous definitions."~ [NOR319B] */
  IF ~~ THEN EXTERN ~DMORTE~ 635
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",10)
InParty("Annah")
~ THEN BEGIN 14 // from:
  SAY #63643 /* ~"Attention: Morte. I have a question. What is fate?"~ [NOR321A] */
  IF ~~ THEN EXTERN ~DMORTE~ 636
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63644 /* ~"Understood."~ [NOR321B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",10)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",11)
~ THEN BEGIN 16 // from:
  SAY #63645 /* ~"Morte, is it true that-"~ [NOR289A] */
  IF ~~ THEN EXTERN ~DMORTE~ 637
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63646 /* ~"I find you most curmudgeonly."~ [NOR289B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",11)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",12)
~ THEN BEGIN 18 // from:
  SAY #63647 /* ~"Attention: Morte. I wish to address your body."~ [NOR324A] */
  IF ~~ THEN EXTERN ~DMORTE~ 638
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63648 /* ~"I have a question concerning your body's whereabouts. Where is it?"~ [NOR324B] */
  IF ~~ THEN EXTERN ~DMORTE~ 639
END

IF ~~ THEN BEGIN 20 // from:
  SAY #63649 /* ~"How does the head separate from the body without you knowing?"~ [NOR324C] */
  IF ~~ THEN EXTERN ~DMORTE~ 640
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
InParty("Grace")
NearbyDialog("DGRACE")
InParty("Annah")
~ THEN BEGIN 21 // from:
  SAY #63650 /* ~"Attention: Morte. Have we achieved a state of friendly camaraderie yet?"~ [NOR323] */
  IF ~~ THEN EXTERN ~DMORTE~ 641
END

IF ~  LastPersonTalkedTo("Annah")
Global("Nordom_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #63651 /* ~"Annah, does your tail assist you in maintaining your balance?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END

IF ~~ THEN BEGIN 23 // from:
  SAY #63652 /* ~"Yes, that is quite logical."~ [NOR291B] */
  IF ~~ THEN EXTERN ~DANNAH~ 311
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #63653 /* ~"Annah, is your tail's purpose to indicate your current level of hostility?"~ [NOR292A] */
  IF ~~ THEN EXTERN ~DANNAH~ 312
END

IF ~~ THEN BEGIN 25 // from:
  SAY #63654 /* ~"My analysis appears correct: Danger! Danger!"~ [NOR292B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMorte")
~ THEN BEGIN 26 // from:
  SAY #63655 /* ~"Annah, is it true that you 'dig' Morte?"~ [NOR293] */
  IF ~~ THEN EXTERN ~DANNAH~ 313
END

IF ~  LastPersonTalkedTo("Grace")
Global("Nordom_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 27 // from:
  SAY #63656 /* ~"I estimate Fall-from-Grace to be found attractive by the male sex of over 321,423 separate species. Give or take five."~ [NOR290A] */
  IF ~~ THEN EXTERN ~DGRACE~ 374
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63657 /* ~"I am no longer able to answer that question. I do not know."~ [NOR290B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",2)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 29 // from:
  SAY #63658 /* ~"Fall-from-Grace, is it true that 'every woman thinks floating skulls are hot stuff'?"~ [NOR294] */
  IF ~~ THEN EXTERN ~DGRACE~ 375
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 30 // from:
  SAY #63659 /* ~"Attention: Fall-from-Grace. Do you exert optical gravity?"~ [NOR325A] */
  IF ~~ THEN EXTERN ~DGRACE~ 376
END

IF ~~ THEN BEGIN 31 // from:
  SAY #63660 /* ~"I have perceived you exert a field that forces others to follow you with their eyes. They lack the muscle control to turn away."~ [NOR325B] */
  IF ~~ THEN EXTERN ~DMORTE~ 645
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY #63661 /* ~"Attention: Fall-from-Grace. I wish to address your body."~ [NOR326A] */
  IF ~~ THEN EXTERN ~DGRACE~ 377
END

IF ~~ THEN BEGIN 33 // from:
  SAY #63662 /* ~"Your body. Your form. Your reason for selecting it. Why?"~ [NOR326B] */
  IF ~~ THEN EXTERN ~DGRACE~ 378
END

IF ~~ THEN BEGIN 34 // from:
  SAY #63663 /* ~"It would be more practical for you to assume the form of a modron. It is 13.27% more efficient. Give or take +5.2%."~ [NOR326C] */
  IF ~~ THEN EXTERN ~DGRACE~ 379
END

IF ~~ THEN BEGIN 35 // from:
  SAY #63664 /* ~"It was not my intention to initiate legal action against you."~ [NOR326D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Vhail")
Global("Nordom_Talked_Vhail","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #63665 /* ~"I am told Justice is blind. Is this why Mercykillers exist?"~ [NOR295] */
  IF ~~ THEN EXTERN ~DVHAIL~ 157
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
~ THEN BEGIN 37 // from:
  SAY #64219 /* ~"Attention: Morte. Did you know I have six sides?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 38 // from:
  SAY #64220 /* ~"Annah, does your tail assist you in maintaining your balance?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END
