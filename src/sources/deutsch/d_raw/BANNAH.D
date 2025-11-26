// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BANNAH~

IF ~  LastPersonTalkedTo("Morte")
Global("Annah_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31484 /* ~"Halt Abstand von mir, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63424 /* ~"FINDE einen Weg, Schädel."~ [ANA575BD] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #63425 /* ~"Was siehst du an, Schädel?"~ [ANA576B] */
  IF ~~ THEN EXTERN ~DMORTE~ 614
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63426 /* ~"Dein Mundwerk wird noch mal dafür sorgen, daß du eins auf die Nase kriegst."~ [ANA576BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #63428 /* ~"Wie kriegst du überhaupt Luft, wenn du so viel redest?"~ [ANA593A] */
  IF ~~ THEN EXTERN ~DMORTE~ 615
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #63429 /* ~"Wenn du irgendwo hingehen willst, Schädel, dann laß dich von uns nicht aufhalten."~ [ANA595A] */
  IF ~~ THEN EXTERN ~DMORTE~ 616
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63430 /* ~"Oh, ja, ich habe *verschiedene* Namen für dich. Keiner von ihnen wird deiner feinen Begleitung gerecht."~ [ANA595BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY #63431 /* ~"Hmmmm. Ich frage mich, wieviel Klimper du den Staubies wert wärst, Schädel."~ [ANA597D] */
  IF ~~ THEN EXTERN ~DMORTE~ 617
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63432 /* ~"Der Tod ist zu gut für dich, Schädel."~ [ANA599A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #63433 /* ~"Diese Augen ruhen wieder auf mir, Schädel, und sie werden auf der Erde ruhen."~ [ANA600A] */
  IF ~~ THEN EXTERN ~DMORTE~ 618
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63434 /* ~"Was *du* nicht sagst."~ [ANA600BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 11 // from:
  SAY #63435 /* ~"Schädel, wenn du deine Augen nicht bei dir behältst, dann nehm ich sie mir."~ [ANA601A] */
  IF ~~ THEN EXTERN ~DMORTE~ 619
END

IF ~~ THEN BEGIN 12 // from:
  SAY #63436 /* ~"Ich hasse dich, sag ich dir."~ [ANA601BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 13 // from:
  SAY #63439 /* ~"Laß dich von dem Sukkubus nicht in die Irre führen... Sie hat es nur wegen der Form deines Halses auf dich abgesehen... Er ist genau richtig dafür, um ihre Zähne darin zu vergraben."~ [ANA594A] */
  IF ~~ THEN EXTERN ~DMORTE~ 620
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
InParty("Grace")
~ THEN BEGIN 14 // from:
  SAY #63440 /* ~"Ich *traue* dem Sukkubus nicht. Sie ist ein Scheusal, sag ich dir! Sie sind alle gleich, warten nur drauf, daß man 'nen Moment lang nicht aufpaßt, und dann graben sie einem die Zähne in den Hals. Laß bloß nicht die Augen von der fetten Schlampe, sonst packt sie dich, eh du dir's versiehst Alle Scheusale sind gleich, sag ich dir."~ [ANA602A] */
  IF ~~ THEN EXTERN ~DMORTE~ 621
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63441 /* ~"Ja, aber das gute daran: Sie sieht aus, als hätte sie doch was zu bieten, sag ich dir."~ [ANA602BA] */
  IF ~~ THEN EXTERN ~DMORTE~ 622
END

IF ~  LastPersonTalkedTo("Grace")
Global("Annah_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #63442 /* ~"Wie lange willst du mit uns reisen, Sukkubus?"~ [ANA604A] */
  IF ~~ THEN EXTERN ~DGRACE~ 366
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63443 /* ~"Nun, du bist nicht willkommen, und ich trau dir nicht über'n Weg."~ [ANA604BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #63444 /* ~"Wann gehst du zurück zu deinem Feilsch-Laden, Sukkubus?"~ [ANA605A] */
  IF ~~ THEN EXTERN ~DGRACE~ 367
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63445 /* ~"Naja, du GEHÖRST halt dorthin, also vielleicht solltest du gehen."~ [ANA605BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #63446 /* ~"Paß bloß auf, Sukkubus. Wenn du aus der Reihe tanzt und hier anfängst, Seelen zu jagen, dann kriegst du meine Klinge zu spüren, sag ich dir."~ [ANA606A] */
  IF ~~ THEN EXTERN ~DGRACE~ 368
END

IF ~~ THEN BEGIN 21 // from:
  SAY #63448 /* ~"Nun, ich *könnte* dich beim Wort nehmen, aber da ihr Sukkubi alle parfümierte, lügende Huren seid, tu ich's nicht."~ [ANA606BA] */
  IF ~~ THEN EXTERN ~DGRACE~ 369
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63449 /* ~"Bleib mir bloß vom Leib. Eigentlich solltest du uns *allen* vom Leib bleiben."~ [ANA606CA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #63450 /* ~"Wie lange willst du dich noch hinter uns herschleppen, Sukkubus?"~ [ANA608A] */
  IF ~~ THEN EXTERN ~DGRACE~ 370
END

IF ~~ THEN BEGIN 24 // from:
  SAY #63451 /* ~"Eifersüchtig? Ich bin nicht eifersüchtig! Ich weiß nicht mal, wie man das schreibt. Ich trau dir einfach nicht... keiner von uns traut dir!"~ [ANA608BB] */
  IF ~~ THEN EXTERN ~DGRACE~ 371
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",5)
~ THEN BEGIN 25 // from:
  SAY #63452 /* ~"Ich hab genug von dir und von ihr! Dann reise halt mit ihr, wenn dir ihre Gesellschaft behagt! Ich will nichts mehr mit dir zu tun haben!"~ [ANA609A] */
  IF ~~ THEN EXTERN ~DGRACE~ 372
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63453 /* ~"Hör auf mit deinem 'Annah-sieh-mal'-Scheiß, du schwarzherzige Hure, oder ich hau dich ungespitzt in den Boden, sag ich dir! Tust immer so toll mit deinen schicken Klamotten und deiner hochnäsigen Art. Ich hab genug von dir! Von mir aus kannst du in der Hölle schmoren!"~ [ANA609BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",5)
LeaveParty()
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
~ THEN BEGIN 27 // from:
  SAY #64201 /* ~"Halt Abstand von mir, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END
