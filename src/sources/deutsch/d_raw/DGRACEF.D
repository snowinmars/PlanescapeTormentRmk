// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"So. Du bist also die Spinne, die im Zentrum all dessen sitzt."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"Ich habe viele Fragen, die du beantworten könntest. Deine Ziele in dieser Angelegenheit waren nicht ganz klar."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"Weder ist mein Herz schwarz, noch fürchte ich um mein Leben."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"Jemand, der mir viel bedeutet, ist hier in der Festung. Ich werde erst gehen, wenn wir wieder vereint sind, und er die Angelegenheit zu einem zufriedenstellenden Abschluß gebracht hat."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"Weder ist mein Herz schwarz, noch fürchte ich um mein Leben."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"Meine Kameraden, meine Freunde sind hier in der Festung. Ich werde erst gehen, wenn wir wieder vereint sind und der Mann, dem wir folgen, diese Sache zufriedenstellend beendet hat.~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"So gütig dein Angebot auch ist, ich muß es ablehnen, meine Freunde zu verlassen."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"Was den 'kleinen' Preis betrifft, den er dir zahlen soll, so wäre das der Tod für ihn. Ich bin eine Zeitlang mit diesem Mann gereist, und es gibt viele Dinge, von denen ich nicht möchte, daß er sie vergißt."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"Das ist *dein* Urteil."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"Die Tatsache bleibt bestehen, daß ich nicht möchte, daß er mich vergißt, und auch nicht all die Mühen, die er auf sich genommen hat, um hierher zu gelangen."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"Er hat viel gelitten, und meine Sympathie gilt eher ihm als der arroganten Kreatur, die vor mir steht und wie ein *Feigling* kämpft, indem sie es vorzieht, aus sicherem Abstand zu töten, wo sein Gegner ihm nichts anhaben kann."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"Du wirst ihn nicht mehr quälen."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
