// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BGRACE~

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31487 /* ~"Morte, je suis curieuse… qu'est-il advenu de ton corps ?"~ [FFG326] */
  IF ~~ THEN EXTERN ~DMORTE~ 603
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61473 /* ~"Tes talents d'orateur sont remarquables. Je devrais t'envoyer faire un petit séjour à la Maison à notre retour."~ [FFG309] */
  IF ~~ THEN EXTERN ~DMORTE~ 604
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #61474 /* ~"Morte, j'avoue que j'aimerais bien savoir comment tu es devenu un crâne flottant."~ [FFG323] */
  IF ~~ THEN EXTERN ~DMORTE~ 605
END

IF ~~ THEN BEGIN 3 // from:
  SAY #61475 /* ~"C'était toi ?"~ [FFG323A] */
  IF ~~ THEN EXTERN ~DMORTE~ 606
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #61476 /* ~"Morte, qu'est-ce que tu es ? Je ne crois pas que tu l'aies dit."~ [FFG324] */
  IF ~~ THEN EXTERN ~DMORTE~ 607
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #61477 /* ~"Morte, sérieusement, parle-moi un peu de toi."~ [FFG325] */
  IF ~~ THEN EXTERN ~DMORTE~ 608
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61478 /* ~"Tes talents oratoires sont remarquables. Je devrais les évaluer."~ [FFG310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 609
END

IF ~~ THEN BEGIN 7 // from:
  SAY #61479 /* ~"Qu'est-ce que c'était ?"~ [FFG310AA] */
  IF ~~ THEN EXTERN ~DMORTE~ 610
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 8 // from:
  SAY #61480 /* ~"Tu t'avères très utile, Morte. Continue comme ça et tu en seras bien récompensé."~ [FFG308] */
  IF ~~ THEN EXTERN ~DMORTE~ 611
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #61646 /* ~"Annah… Où as-tu grandi dans la Ruche ?"~ [FFG328] */
  IF ~~ THEN EXTERN ~DANNAH~ 287
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61647 /* ~"Très bien, alors."~ [FFG328A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #61649 /* ~"Annah… on devrait peut-être parler."~ [FFG327] */
  IF ~~ THEN EXTERN ~DANNAH~ 288
END

IF ~~ THEN BEGIN 12 // from:
  SAY #61650 /* ~"Très bien, alors."~ [FFG327A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #61652 /* ~"Tes talents au combat sont remarquables, Dak'kon."~ [FFG307] */
  IF ~~ THEN EXTERN ~DDAKKON~ 358
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #61653 /* ~"Ta maîtrise de la discipline est remarquable, Dak'kon."~ [FFG306] */
  IF ~~ THEN EXTERN ~DDAKKON~ 359
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61654 /* ~"Tu n'es pas un peu dur envers toi-même ?"~ [FFG306A] */
  IF ~~ THEN EXTERN ~DDAKKON~ 360
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61655 /* ~"Nordom, quel effet cela fait-il d'être séparé de la Source, des autres modrones ?"~ [FFG330] */
  IF ~~ THEN EXTERN ~DNORDOM~ 132
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61656 /* ~"Morte et toi avez plus en communs que je ne l'aurais cru, dirait-on."~ [FFG330A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #61657 /* ~"Nordom… tu parles à tes arbalètes ?"~ [FFG331] */
  IF ~~ THEN EXTERN ~DNORDOM~ 133
END

IF ~~ THEN BEGIN 19 // from:
  SAY #61658 /* ~"Oh. Me voilà soulagée. Je croyais…"~ [FFG331A] */
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
  SAY #61660 /* ~"Nordom, tu es un modrone tétradrone, non ? Où sont tes ailes ?"~ [FFG329] */
  IF ~~ THEN EXTERN ~DNORDOM~ 135
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61661 /* ~"Tu es comme un petit ange déchu."~ [FFG329A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 136
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #61662 /* ~"Tu sais Nordom, tu dois être le modrone renégat le plus mignon que j'aie jamais rencontré."~ [FFG305] */
  IF ~~ THEN EXTERN ~DNORDOM~ 137
END

IF ~~ THEN BEGIN 24 // from:
  SAY #61663 /* ~"Bien sûr ! C'est pour ça que tu es si mignon."~ [FFG305A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Nordom","GLOBAL",0)
~ EXIT
END
