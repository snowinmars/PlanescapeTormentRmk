// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BMORTE~

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31485 /* ~"Es wird dir schon nicht schaden, ein paar Worte mit mir zu wechseln, kleines Scheusal."~ [MRT478] */
  IF ~~ THEN EXTERN ~DANNAH~ 289
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61707 /* ~"Annah, könntest du aufhören, mit dem Schweif zu zucken? Es irritiert mich."~ [MRT476A] */
  IF ~~ THEN EXTERN ~DANNAH~ 290
END

IF ~~ THEN BEGIN 2 // from:
  SAY #61709 /* ~"Dann zuck halt weiter."~ [MRT476B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #61710 /* ~"Sag mal, Annah... Reicht dieser Schweif bis ganz nach oben?"~ [MRT479A] */
  IF ~~ THEN EXTERN ~DANNAH~ 291
END

IF ~~ THEN BEGIN 4 // from:
  SAY #61712 /* ~"'Ja... Rauf in deine Knochenschüssel und reißt dir das Gehirn aus.'"~ [MRT479B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #61713 /* ~"Kleines Scheusal, ich muß das fragen. Wo hast du diesen Akzent her?"~ [MRT544A] */
  IF ~~ THEN EXTERN ~DANNAH~ 292
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61714 /* ~"Ach, nichts."~ [MRT544B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",4)
~ THEN BEGIN 7 // from:
  SAY #61715 /* ~"Also, kleines Scheusal, laß mich äh... auf deinem Schoß sitzen und eine nette Geschichte hören."~ [MRT477A] */
  IF ~~ THEN EXTERN ~DANNAH~ 293
END

IF ~~ THEN BEGIN 8 // from:
  SAY #61716 /* ~"Dann schweb ich einfach hier und schmolle."~ [MRT477B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",5)
~ THEN BEGIN 9 // from:
  SAY #61717 /* ~"Bist du immer so unfreundlich?"~ [MRT480] */
  IF ~~ THEN EXTERN ~DANNAH~ 294
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY #61718 /* ~"Du bist so ein dreckiger kleiner Leichenpirat. Ich bewundere das."~ [MRT542A] */
  IF ~~ THEN EXTERN ~DANNAH~ 295
END

IF ~~ THEN BEGIN 11 // from:
  SAY #61719 /* ~"Hey, wenn du meinen Körper finden kannst, fände ich das echt gut."~ [MRT542B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",7)
~ THEN BEGIN 12 // from:
  SAY #61720 /* ~"So, kleines Scheusal. Ist dieser Schweif dein einziger dämonischer Teil?"~ [MRT549A] */
  IF ~~ THEN EXTERN ~DANNAH~ 296
END

IF ~~ THEN BEGIN 13 // from:
  SAY #61721 /* ~"Sieht aus, als hättest du auch ein dämonisches Mundwerk."~ [MRT549B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",8)
~ THEN BEGIN 14 // from:
  SAY #61722 /* ~"Weißt du, kleines Scheusal, du bist schon in Ordnung... Naja, wenn du nicht dauernd so eine Zicke wärst."~ [MRT541A] */
  IF ~~ THEN EXTERN ~DANNAH~ 297
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61723 /* ~"Ach... Ich glaube, ich habe mich verliebt."~ [MRT541B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",9)
~ THEN BEGIN 16 // from:
  SAY #61724 /* ~"Wenn's noch schlechter läuft, kann ich gleich meinen Stift in die Dame der Schmerzen tauchen."~ [MRT553A] */
  IF ~~ THEN EXTERN ~DANNAH~ 298
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61725 /* ~"Was? Du meinst die *Dame der Schmerzen*? Ist es etwas Schlechtes, von der *Dame der Schmerzen* zu reden? Warum sollte sich die *Dame der Schmerzen* daran stören, daß wir von ihr reden, he?"~ [MRT553B] */
  IF ~~ THEN EXTERN ~DANNAH~ 299
END

IF ~~ THEN BEGIN 18 // from:
  SAY #61726 /* ~"Das Schicksal sollte *mich* nicht in Versuchung führen."~ [MRT553C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",10)
~ THEN BEGIN 19 // from:
  SAY #61727 /* ~"Weißt du, kleines Scheusal, du würdest viel besser aussehen, wenn du dich ein bißchen mehr herausputzen würdest. So ein paar Schnürstiefel mit Stilettoabsätzen würden gut zu diesen smaragdgrünen Augen passen."~ [MRT546A] */
  IF ~~ THEN EXTERN ~DANNAH~ 300
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61728 /* ~"Naja, an deiner Stelle würde ich eine Suite mieten und einen Monat nicht mehr rauskommen."~ [MRT546B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",11)
~ THEN BEGIN 21 // from:
  SAY #61729 /* ~"Weißt du, kleines Scheusal, du bist wie ein arboreanischer Feuersamen."~ [MRT547A] */
  IF ~~ THEN EXTERN ~DANNAH~ 301
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61730 /* ~"Ja. Dein Haar ist wie eine süße, zarte Flamme, doch im Innern bist du bitter, wie der Stich eines Käfers."~ [MRT547B] */
  IF ~~ THEN EXTERN ~DANNAH~ 302
END

IF ~~ THEN BEGIN 23 // from:
  SAY #61732 /* ~"Manchmal wünsche ich mir, du würdest mich wegen dem lieben, was ich bin, nicht was ich für dich tun kann."~ [MRT542C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",12)
~ THEN BEGIN 24 // from:
  SAY #61733 /* ~"Oh, Mächte in der Höhe, ich habe wieder dieses blöde Jucken hinten am Kopf. Das bringt mich um."~ [MRT554A] */
  IF ~~ THEN EXTERN ~DANNAH~ 303
END

IF ~~ THEN BEGIN 25 // from:
  SAY #61734 /* ~"Weißt du, eines Tages wird es dich an einer Stelle jucken, an der du dich nicht kratzen kannst, und dann helf ich dir nicht. Und dann ist meine Rache erfüllt."~ [MRT554B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",13)
~ THEN BEGIN 26 // from:
  SAY #61735 /* ~"Also, kleines Scheusal, sag die Wahrheit, ja? Du kannst nicht genug von mir kriegen, stimmt's?"~ [MRT548A] */
  IF ~~ THEN EXTERN ~DANNAH~ 304
END

IF ~~ THEN BEGIN 27 // from:
  SAY #61736 /* ~"Blah, blah, blah, Droh, droh, droh. Wirst du es nicht irgendwann leid, ständig wütend zu sein? Schsch."~ [MRT548B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",14)
~ THEN BEGIN 28 // from:
  SAY #61737 /* ~"Weißt du, kleines Scheusal, ich sehe, wie du den Meister ansiehst. Nichts, wofür man sich schämen müßte. Warum sagst du nicht was?"~ [MRT551A] */
  IF ~~ THEN EXTERN ~DANNAH~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY #61738 /* ~"OK, OK... Beruhig dich. Schsch."~ [MRT551B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",15)
~ THEN BEGIN 30 // from:
  SAY #61739 /* ~"Annah, wenn es dir nicht gefällt, daß ich dich ansehe, warum trägst du diese ähm... du weißt schon... diese... diese Weste?"~ [MRT550A] */
  IF ~~ THEN EXTERN ~DANNAH~ 306
END

IF ~~ THEN BEGIN 31 // from:
  SAY #61740 /* ~"Also, es raubt mir wirklich den Atem."~ [MRT550B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Morte_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #61741 /* ~"Also, Grace... Hast du ähm... hast du eine Schwester?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~~ THEN BEGIN 33 // from:
  SAY #61742 /* ~"Gib mir einen Moment Zeit, mich vor Freude zu überschlagen."~ [MRT461BD] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #61743 /* ~"Komm schon, Grace, ich dachte, ihr Sukkuben solltet lustig sein. Warum so unterkühlt?"~ [MRT462AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 363
END

IF ~~ THEN BEGIN 35 // from:
  SAY #61744 /* ~"Schsch. Man stellt eine Frage und sie ziehen einem das Fell über die Ohren."~ [MRT462B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 36 // from:
  SAY #61745 /* ~"Der einzige Sukkubus, der je mit uns reisen wird, und sie ist puritanisch. Weißt du, ich habe das größte Pech."~ [MRT463AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 364
END

IF ~~ THEN BEGIN 37 // from:
  SAY #61746 /* ~"Ich... hey, Moment mal."~ [MRT463B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
InParty("Annah")
~ THEN BEGIN 38 // from:
  SAY #61747 /* ~"Hey, laß dir von dem kleinen Scheusal nichts anhaben, Grace. Sie ist einfach nicht so schön wie sie gerne wäre."~ [MRT555] */
  IF ~~ THEN EXTERN ~DGRACE~ 365
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Morte_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 39 // from:
  SAY #61749 /* ~"Warum springst du nicht zurück nach Mechanus, Nordom, he?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #61750 /* ~"Ich werde diese blöde Kiste werfen wie einen Spielwürfel."~ [MRT464AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 139
END

IF ~~ THEN BEGIN 41 // from:
  SAY #61751 /* ~"Blöder Uhrwerkabfall."~ [MRT465] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 42 // from:
  SAY #61752 /* ~"Nordom, wie kommt es, daß du deine Armbrüste nie nachlädst?"~ [MRT557A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 140
END

IF ~~ THEN BEGIN 43 // from:
  SAY #61753 /* ~"Das muß praktisch sein."~ [MRT557B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #61754 /* ~"Nordom, hör auf, deine Armbrüste klicken zu lassen! Es macht mich wahnsinnig."~ [MRT558A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 141
END

IF ~~ THEN BEGIN 45 // from:
  SAY #61755 /* ~"Einmal... nur einmal... würde ich gerne mit normalen Leuten reisen."~ [MRT558B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #61756 /* ~"Hey, Nordom... 'Klopf-Klopf'."~ [MRT556A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 142
END

IF ~~ THEN BEGIN 47 // from:
  SAY #61757 /* ~"Es ist ein Witz, blödes Polygon. Du sollst antworten 'Wer ist da?'"~ [MRT556B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 143
END

IF ~~ THEN BEGIN 48 // from:
  SAY #61758 /* ~"Weiß du was: Vergiß es einfach."~ [MRT556C] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 49 // from:
  SAY #61759 /* ~"Psst. Hey, Nordom. Berechne mir den einfachsten Weg, wie ich 'mit Annahs Kissen kuscheln' kann, ja?"~ [MRT467AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 144
END

IF ~~ THEN BEGIN 50 // from:
  SAY #61760 /* ~"Halt die Klappe! Halt die Klappe!!"~ [MRT467BA] */
  IF ~~ THEN EXTERN ~DANNAH~ 307
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #64208 /* ~"So, Grace. . . hast du Schwestern?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
~ THEN BEGIN 52 // from:
  SAY #64209 /* ~"Hey, warum gehst du nicht zurück nach Mechanus, Nordom, häh?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END
