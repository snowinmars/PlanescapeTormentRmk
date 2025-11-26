// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BGRACE~

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31487 /* ~"Morte, I'm curious... what happened to your body?"~ [FFG326] */
  IF ~~ THEN EXTERN ~DMORTE~ 603
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61473 /* ~"Your verbal skills are quite potent. I should have you spend some time at the Brothel when we get back."~ [FFG309] */
  IF ~~ THEN EXTERN ~DMORTE~ 604
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #61474 /* ~"Morte, I must confess, I am curious as to how you became a floating skull."~ [FFG323] */
  IF ~~ THEN EXTERN ~DMORTE~ 605
END

IF ~~ THEN BEGIN 3 // from:
  SAY #61475 /* ~"That was you?"~ [FFG323A] */
  IF ~~ THEN EXTERN ~DMORTE~ 606
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #61476 /* ~"Morte, what are you again? I don't believe you ever said."~ [FFG324] */
  IF ~~ THEN EXTERN ~DMORTE~ 607
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #61477 /* ~"Morte, seriously. Tell me a little about yourself."~ [FFG325] */
  IF ~~ THEN EXTERN ~DMORTE~ 608
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61478 /* ~"Your verbal sparring is quite potent. Perhaps I should assess the extent of your skill."~ [FFG310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 609
END

IF ~~ THEN BEGIN 7 // from:
  SAY #61479 /* ~"What was that?"~ [FFG310AA] */
  IF ~~ THEN EXTERN ~DMORTE~ 610
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 8 // from:
  SAY #61480 /* ~"You are proving yourself to be quite useful, Morte. Keep this up and you'll have to be rewarded."~ [FFG308] */
  IF ~~ THEN EXTERN ~DMORTE~ 611
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #61646 /* ~"Annah... were you raised in the Hive?"~ [FFG328] */
  IF ~~ THEN EXTERN ~DANNAH~ 287
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61647 /* ~"Very well, then."~ [FFG328A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #61649 /* ~"Annah... perhaps we should talk."~ [FFG327] */
  IF ~~ THEN EXTERN ~DANNAH~ 288
END

IF ~~ THEN BEGIN 12 // from:
  SAY #61650 /* ~"Very well, then."~ [FFG327A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #61652 /* ~"Your combat skills are most impressive Dak'kon."~ [FFG307] */
  IF ~~ THEN EXTERN ~DDAKKON~ 358
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #61653 /* ~"Your mastery of discipline is impressive, Dak'kon."~ [FFG306] */
  IF ~~ THEN EXTERN ~DDAKKON~ 359
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61654 /* ~"Surely you are being too harsh on yourself?"~ [FFG306A] */
  IF ~~ THEN EXTERN ~DDAKKON~ 360
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61655 /* ~"Nordom, how does it feel to be separated from the Source, from other modrons?"~ [FFG330] */
  IF ~~ THEN EXTERN ~DNORDOM~ 132
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61656 /* ~"It seems you and Morte have much more in common than I first thought."~ [FFG330A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #61657 /* ~"Nordom... are you speaking to your crossbows?"~ [FFG331] */
  IF ~~ THEN EXTERN ~DNORDOM~ 133
END

IF ~~ THEN BEGIN 19 // from:
  SAY #61658 /* ~"Oh. That's a relief. I thought -"~ [FFG331A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 134
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61659 /* ~"Oh."~ [FFG331B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #61660 /* ~"Nordom, you're a quadrone modron, correct? Where are your wings?"~ [FFG329] */
  IF ~~ THEN EXTERN ~DNORDOM~ 135
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61661 /* ~"It's like you're a little fallen angel."~ [FFG329A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 136
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #61662 /* ~"You know, Nordom you are perhaps the cutest little rogue modron I have ever encountered."~ [FFG305] */
  IF ~~ THEN EXTERN ~DNORDOM~ 137
END

IF ~~ THEN BEGIN 24 // from:
  SAY #61663 /* ~"Of course! That's why you're so cute."~ [FFG305A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Nordom","GLOBAL",0)
~ EXIT
END
