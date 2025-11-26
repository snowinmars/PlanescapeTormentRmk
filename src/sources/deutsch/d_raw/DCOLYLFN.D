// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~Dieser frettchenhaft aussehende Zeitgenosse schleicht wie ein zerflederter Schatten durch den Müll. Er tut so, als würde er dich nicht bemerken, doch du spürst, daß er dich aus den Augenwinkeln verstohlen ansieht. Plötzlich winkt er dir zu: "Sssst. Du da. Sssst! Hey!"~ */
  IF ~~ THEN REPLY #18506 /* ~Geh auf ihn zu.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Ignoriere den Mann und geh weiter.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~Dieser frettchenhaft aussehende Zeitgenosse schleicht wie ein zerfledderter Schatten durch den Müll. Als er dich und Morte sieht, winkt er euch zu: "Sssst... Hey! Dieser Schädel. Wo hast du den Schädel her? Das ist meiner! Gib ihn mir zurück."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~Dieser frettchenhaft aussehende Zeitgenosse schleicht wie ein zerfledderter Schatten durch den Müll. Als er Annah sieht, macht er große Augen. Genüßlich saugt er die Spucke durch die gelblichen Zähne hindurch. "Sssst...Hey! Klimper-Klimper für den Rock? Hübsch, hübsch." Er leckt sich die aufgeplatzten, schorfigen Lippen.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"Na, was willst du?!"~ */
  IF ~~ THEN REPLY #18511 /* ~"Ich brauche Informationen..."~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"Na, wie geht's meinem Schädel?" Sein Lachen hört sich an wie ein schreckliches Keuchen.~ */
  IF ~~ THEN REPLY #18513 /* ~"Ich brauche Informationen..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"Du Dieb! Geier, räudige Möwe, stiehlst alles, was dir zwischen die Krallen kommt! Gib mir den Schädel! Das ist meiner!"~ */
  IF ~~ THEN REPLY #18515 /* ~"Das ist nicht dein Schädel."~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Wahrheit: "Na los, nimm den Schädel."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Greif ihn an, wenn er gerade nicht aufpaßt: "Na los, nimm den Schädel."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"Kannst du beweisen, daß es dein Schädel ist?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Wahrheit: "Wenn du mir beweisen kannst, daß es dein Schädel ist, gebe ich ihn dir. Das ist ein faires Angebot."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"Ich kaufe dir den Schädel ab. Das ist doch ein faires Angebot, oder?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"Wer bist du?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"Du nennst mich einen *Lügner?* Das ist *mein* Schädel! Meiner!" Er nuschelt und rollt wild mit den Augen. "Du bist hier der Dieb, und ein Lügner obendrein... Ich nehm dich aus."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"Faß mich nicht an! Du wirst es bereuen, wenn ich dich gleich niedermache."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"Ich würd's nicht tun."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"Na los, tu's doch. Wirst schon sehen, was passiert."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"Faß mich nicht an! Du wirst es bereuen, wenn ich dich gleich niedermache."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"Ich würd's nicht tun."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"Na los, tu's doch. Wirst schon sehen, was passiert."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~Der Mann schaut dich mit zusammengekniffenen Augen an. Er weiß nicht genau, was er davon halten soll; er nuschelt etwas vor sich hin, unternimmt aber nichts. "Das ist mein Schädel. Du hast ihn gestohlen. Du bist ein Dieb..."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"Verzieh dich, Köter."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"Verzieh dich, Köter."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Wahrheit: "Na los. Nimm den Schädel."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Greif ihn an, wenn er gerade nicht aufpaßt: "Na los. Nimm den Schädel."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"Kannst du beweisen, daß es dein Schädel ist?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Wahrheit: "Wenn du mir beweisen kannst, daß es dein Schädel ist, gebe ich ihn dir. Das ist ein faires Angebot."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"Ich kaufe dir den Schädel ab. Das ist doch ein faires Angebot, oder?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"Wer bist du?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~Der Mann starrt dich mit zusammengekniffenen Augen an. Plötzlich greift er an!~ */
  IF ~~ THEN REPLY #18558 /* ~Erwidere seinen Angriff.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~Er lacht heiser. Als er seine Hand nach Morte ausstreckt, hörst du ein *Knacken*, und die Hand schießt zurück. Der Mann jault: "Auuu! Auuaaaa!!! Ich *bring dich um*! Ich *bring dich um*!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~Er lacht heiser. Er streckt seine Hand nach Morte auf, doch bevor er angreifen kann, hörst du ein *Knacken*, und die Hand schießt zurück. Der Mann jault: "Auuu! Auuaaaa!!! Ich *bring dich um*! Ich *bring dich um*!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~Der Mann beißt sich vor Schmerz auf die Lippen und starrt auf dich. Plötzlich greift er an!~ */
  IF ~~ THEN REPLY #18563 /* ~Erwidere seinen Angriff.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~Er starrt dich an, als wärst du verrückt. "Das ist verdammt noch mal meiner. Steck dir deine Beweise an den Hut! Gib mir den Schädel zurück! Sofort!"~ */
  IF ~~ THEN REPLY #18566 /* ~"Das ist nicht dein Schädel."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Wahrheit: "Na los. Nimm den Schädel."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Greif ihn an, wenn er gerade nicht aufpaßt: "Na los. Nimm den Schädel."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"Ich kaufe dir den Schädel ab. Das ist doch ein faires Angebot, oder?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"Wer bist du?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."
~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"Das ist mein Schädel! Gib ihn mir zurück. Dann vergesse ich auch, daß du ihn gestohlen hast." Mit zusammengekniffenen, wild funkelnden Augen nuschelt er etwas vor sich hin.~ */
  IF ~~ THEN REPLY #18574 /* ~"Das ist nicht dein Schädel."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Wahrheit: "Na los, nimm den Schädel."
~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Greif ihn an, wenn er gerade nicht aufpaßt: "Na los, nimm den Schädel."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"Kannst du beweisen, daß es dein Schädel ist?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Wahrheit: "Wenn du mir beweisen kannst, daß es dein Schädel ist, gebe ich ihn dir. Das ist ein faires Angebot."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"Ich kaufe dir den Schädel ab. Das ist doch ein faires Angebot, oder?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"Vergiß einfach, daß du ihn je gesehen hast. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~Er kneift die Augen zusammen, verzieht den Mund zu einem Grinsen und entblößt dabei seine schiefen, gelben Zähne. "Der Schädel... ist *viel* Klimper wert. Hast du welchen? Er ist mir viel wert, dieser Schädel."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~Der Mann zischt Morte böse an: "Ist das die feine Art, mit mir, deinem Besitzer, umzugehen?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~Der Mann dreht sich zu dir um. Er hat die Zähne gefletscht und ist wütender als je zuvor. "Oh, diese Angelegenheit wird dich teuer zu stehen kommen."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Gib ihm eine Kupfermünze.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Gib ihm fünf Kupfermünzen.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Gib ihm fünfzig Kupfermünzen.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Gib ihm hundert Kupfermünzen.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Gib ihm fünfhundert Kupfermünzen.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"Ich habe keine Kupfermünzen für dich."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"Vergiß das Angebot. Das ist nicht dein Schädel, und du kriegst ihn nicht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"Das ist ein Anfang... Wenn du jetzt auch noch den Rest rausrückst, laß ich dich in Ruhe."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"Okay... Dann sind wir quitt." Er grinst hämisch. "Aber wehe, du bestiehlst mich noch einmal..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"Dann gib mir den Schädel zurück, du Dieb! Gib ihm mir! Gib ihn mir zurück!"~ */
  IF ~~ THEN REPLY #18595 /* ~Wahrheit: "Na gut. Nimm ihn."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Greif ihn an, wenn er gerade nicht aufpaßt: "Na gut. Nimm ihn."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"Nein. Er gehört dir nicht."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"Das kann dir egal sein... Aber das wird Ärger geben. Richtig großen Ärger!"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"Glaub bloß nicht, daß ich bezahlt habe, weil ich Angst hatte oder schwach bin... das könnte dein Tod sein."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"Glaub bloß nicht, daß ich bezahlt habe, weil ich Angst hatte oder schwach bin... das könnte dein Tod sein."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"Glaub bloß nicht, daß ich bezahlt habe, weil ich Angst hatte oder schwach bin... das könnte dein Tod sein."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"Glaub bloß nicht, daß ich bezahlt habe, weil ich Angst hatte oder schwach bin... das könnte dein Tod sein."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"Ah, 'Ärger'. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"Ah, 'Ärger'. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"Hmpf." Er verengt seine Augen zu Schlitzen, sagt aber nichts mehr. Er wirkt unsicher.~ */
  IF ~~ THEN REPLY #18608 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~"Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"Bah! Klapper doch woanders mit deiner Knochenschüssel. Hau ab. Du dreckiger Dieb, du..." Er will an dir vorbeigehen.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Geh.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Geh.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~Er grinst. "Plausch ist nicht billig." Er reibt zwei seiner gelblichen Finger aneinander. "Klimper-Klimper?" Er rollt unaufhörlich mit den Augen, während er mit dir spricht, und wirft häufige Blicke auf deine Geldbörse.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Gib ihm ein paar Münzen.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Laß zehn Kupfermünzen in seine Handflächen fallen.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"Du kriegst gar nichts. Und nun rück mit der Wahrheit raus."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"Äh... warum sind deine Finger gelb?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~Er frotzelt: "Plausch ist nicht *billig*. Bist du taub? *Paß* gefälligst *auf*, wenn ich mit dir rede."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Laß zehn Kupfermünzen in seine Handflächen fallen.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"Du kriegst gar nichts. Und nun rück mit der Wahrheit raus."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"Äh... warum sind deine Finger gelb?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~Er prüft geschwind die Münze. Dann schaut er dich mit zusammengekniffenen Augen an. "Ich weiß vieles. Was willst du wissen?"~ */
  IF ~~ THEN REPLY #18630 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"Vergiß es. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"Sprich nur. Ich höre... vielleicht fällt mir was dazu ein..."~ */
  IF ~~ THEN REPLY #18638 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"Vergiß es. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"Ich rück überhaupt nichts raus." Er grinst dich höhnisch an. Dann zeigt er auf sich. "Ich kenne den Plausch, du *nicht*. Wenn du den Klimper hinlegst, kennst du den Plausch auch - klar?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Greif ihn dir und schüttele ihn leicht.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Gib ihm ein paar Münzen.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"Äh... warum sind deine Finger gelb?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"Dann vergiß, daß ich gefragt habe. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~"Dann vergiß, daß ich gefragt habe. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"Was? Du wieder?" Seine Augen verengen sich zu Schlitzen. Er schaut dich schief von der Seite an.~ */
  IF ~~ THEN REPLY #18654 /* ~"Wenn ich's mir recht überlege, will ich's nicht wissen. Vergiß es."~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"Deine Finger: Sie sind gelb. Warum?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"Vergiß es. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"Vergiß es. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"Das hab' ich mir bei irgendeiner Leiche geholt... Muß wohl Leichenfäule sin."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"Das macht mir nichts... Klimper gegen Plausch, weißt du noch? Klimper-Klimper?" Er streckt dir seine offenen Handflächen hin.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Gib ihm ein paar Münzen.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"Du kriegst gar nichts. Und nun rück mit der Wahrheit raus."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"Diese verdammte Stadt, du Schlucker... Kleiner Ring, kleiner Ring, Stadt in einem Ring. Mittelpunkt der großen Ringe."~ */
  IF ~~ THEN REPLY #18667 /* ~"Erzähl mir mehr über die Stadt."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"Was ist mit dieser Gegend?"~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"Du verschwendest meine Zeit und deinen Klimper. Geh und such dir 'nen Schlepper für deine Fragen."~ */
  IF ~~ THEN REPLY #18676 /* ~"Erzähl mir was über Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"Das werde ich. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"Das werde ich. Leb wohl."
~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"Ja?" Er wirkt verwirrt. "Was ist damit?"~ */
  IF ~~ THEN REPLY #18683 /* ~"Was tun sie?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"Bist du einer von ihnen?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~Er schaut dich an, als wärst du verrückt. "Sie lesen Tote auf, laden sie bei den Staubies ab und werden dafür mit etwas Klimper entlohnt. Und?"~ */
  IF ~~ THEN REPLY #18692 /* ~"Bist du einer von ihnen?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"Vielleicht. Gelegentlich. Was spielt das für eine Rolle?"~ */
  IF ~~ THEN REPLY #18700 /* ~"Was tun sie?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"Nichts. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"Nichts. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~Er verengt die Augen plötzlich zu Schlitzen. "Was?" Er legt den Kopf auf die Seite und schaut dich prüfend an. "Pharod... über ihn zu plauschen... ist *nicht* billig. Dafür kann man ins Totenbuch gesteckt werden. Nein, nein, das ist *nicht* billig."~ */
  IF ~~ THEN REPLY #18708 /* ~"Weißt du, wo er ist?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Biete ihm weitere fünf Münzen an.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"Dann vergiß, daß ich gefragt habe. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"Dann vergiß, daß ich gefragt habe. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~Er nickt. Dann blickt er um sich. "Dieser Plausch... ist *nicht* billig."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Biete ihm weitere fünf Münzen an.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~Er sieht sich um und lehnt sich dann ganz dicht zu deinem Ohr herüber: "Geh zum östlichen Ende des Platzes und warte - ich werde dich dort in 'ner Stunde treffen. Will nicht länger mit dir zusammen gesehen werden. Keine Fragen mehr jetzt... Geh-geh!" Er will an dir vorbeizugehen.~ */
  IF ~~ THEN REPLY #18715 /* ~"Warte-"~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Laß ihn gehen.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"Dreckige, verkrätzte *Hexe*!" Er spuckt und zeichnet einen Halbkreis über seinem Herzen. "Die Pocken soll sich diese alte Vettel holen! *Hundert und nochmals hundert* Krankheiten sollen ihre Eingeweide auffressen. Wenn du auf die spucken willst, sie hat ihr Rattennest in ner Hütte gleich beim Platz um die Ecke, immer den Brettern nach, die über den Müll führen. Geh doch zu ihr, wenn du willst, aber sprich danach nicht mehr mit mir!"~ */
  IF ~~ THEN REPLY #18718 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"Hm... Vielleicht... vielleicht... nein. Nein, ich hab' es nicht gesehen - ich habe überhaupt keine Bücher gesehen."~ */
  IF ~~ THEN REPLY #18725 /* ~"Erzähl mir was über Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~Plötzlich merkst du, daß Gelbfinger dir etwas zu nahe gekommen ist. Seine Hand schnellt hervor, als hätte er es auf deine Geldbörse abgesehen.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Greif nach seiner Hand.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Greif nach seiner Hand.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Laß ihn, aber beobachte ihn ganz genau.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"Was machst du da?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~Er macht einen Satz zurück und flieht!~ */
  IF ~~ THEN REPLY #18738 /* ~"Verdammt..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~Du packst ihn an der Hand. Gelbfinger erschrickt. "He! Was machst du da! Laß mich!" Er wehrt sich, schafft es aber nicht, sich loszureißen.~ */
  IF ~~ THEN REPLY #18740 /* ~Wahrheit: "Du wolltest mich bestehlen. Ich werde dich umbringen."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Täuschung: "Du wolltest mich bestehlen. Ich werde dich umbringen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"He! He! Warte doch! Fehler, Fehler! Das können wir doch regeln, ohne das Totenbuch ins Spiel zu bringen!"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"Ich lasse dich am Leben, wenn du mir ein paar Informationen gibst."~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"Gib mir alles, was du hast, und ich lasse dich am Leben."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"Hau ab und komm mir nie wieder unter die Augen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~Er nickt eifrig. "Ja, ja, frag mich! Nur zu!"~ */
  IF ~~ THEN REPLY #18747 /* ~"Sag mir, wo Pharod ist."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"Was..." Die Frage scheint ihm unangenehm zu sein. "Über Pharod zu plauschen ist gefährlich. Aber etwas Klimper könnte mich überzeugen."~ */
  IF ~~ THEN REPLY #18749 /* ~"Du scheinst wohl vergessen zu haben, in welcher heiklen Lage du dich befindest. Sag's mir... jetzt."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Gib ihm drei Kupfermünzen.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"Hm... na ja, ich weiß, daß sein Schuber nicht hier oben ist... aber nah dran, nicht weit weg, nur versteckt. Er ist hier und dort, ständig unterwegs... Aber irgendwo muß er ja seine Bleibe haben. Und irgendein Knochengerüst muß wissen, wo das ist... Aber das bin nicht ich."~ */
  IF ~~ THEN REPLY #18752 /* ~Wahrheit: "Du lügst. Rück mit der Wahrheit raus, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Täuschung: "Du lügst. Rück mit der Wahrheit raus, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"Hm..." Er leckt sich die Lippen und blickt um sich. "Also... äh... da gibt es dieses Tor. An der nordwestlichen Ecke des Platzes... Ich wette, die alte Schlange hat sich da verkrochen. Allerdings weiß ich nicht, wie man durch das Tor kommt."~ */
  IF ~~ THEN REPLY #18755 /* ~"Jetzt gib mir alles, was du hast."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Hau ab... und komm mir nie wieder unter die Augen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~Er nickt. Mit ängstlichem und haßerfüllten Blick steckt dir Gelbfinger eine Handvoll Kupfermünzen zu.~ */
  IF ~~ THEN REPLY #18758 /* ~"Hau ab... und komm mir nie wieder unter die Augen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~Mit gerunzelter Stirn schaut er dich von der Seite an, als wärst du verrückt. "Hä? Was?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Warum bestiehlst du mich? Ich werd dir geben, was du brauchst."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Warum bestiehlst du mich? Ich werd dir geben, was du brauchst."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Wahrheit: "Du wolltest mich bestehlen. Ich werde dich umbringen."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Täuschung: "Du wolltest mich bestehlen. Ich werde dich umbringen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"Du hast mich bestohlen. Verschwinde und komm mir nie wieder unter die Augen."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Gelbfinger schaut dich ungläubig an. "Ein bißchen Klimper könnte ich gut gebrauchen. Ich bin am Verhungern... Das Leben auf den Straßen des Stocks ist kein Honiglecken."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Gib ihm fünf Kupfermünzen.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Gib ihm zehn Kupfermünzen.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Gib ihm fünfzig Kupfermünzen.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Gib ihm hundert Kupfermünzen.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"Ich nehm's zurück. Verschwinde und komm mir nie wieder unter die Augen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Gelbfinger schaut dich ungläubig an. "Ein bißchen Klimper könnte ich gut gebrauchen. Ich bin am Verhungern... Das Leben auf den Straßen des Stocks ist kein Honiglecken."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"Hm... Danke. Sehr großzügig von dir. Möge der Schatten der Dame dir erspart bleiben."~ */
  IF ~~ THEN REPLY #18774 /* ~"Versuch bloß nicht noch mal, mich zu bestehlen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Blitzschnell packst du ihn an seiner schmutzigen Robe - er ist so dünn und leicht, daß du ihn problemlos hochheben und schütteln kannst. "Hilfe! Ich plausch ja schon alles aus! Aber laß mich erst runter!"~ */
  IF ~~ THEN REPLY #18776 /* ~Wirf ihn zu Boden.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Setz ihn ab, aber laß ihn nicht los.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~Du wirfst ihn zu Boden, doch kaum, daß er dort aufgekommen ist, macht er sich die Beine und rennt weg!~ */
  IF ~~ THEN REPLY #18779 /* ~"Verdammt..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~Als du Gelbfinger runterläßt, versetzt er dir einen kurzen Tritt ins Schienbein. Du läßt ihn fallen, und in der halben Sekunde, die du brauchst, um den Schmerz zu verkraften, hat er sich aus dem Staub gemacht.~ */
  IF ~~ THEN REPLY #18781 /* ~"Verdammt..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~Du siehst genau, wie Gelbfinger seine flinken Finger in deine Geldbörse gleiten läßt... und sie wieder herauszieht, womöglich mit ein paar Münzen daran. Obwohl alles ganz schnell ging, kommt dir das Ganze vertraut vor, und du bist sicher, du würdest das mit etwas Übung auch schaffen.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Greif nach seiner Hand.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Greif nach seiner Hand.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"Was machst du?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Ignoriere es, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"Ich hab' gesehn, wie du mich beobachtet hast... Was willst du? Hm?"~ */
  IF ~~ THEN REPLY #18788 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"Nichts. Leb wohl."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"Nichts. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"Komm schon. Reg dich ab, du Schlappschwanz." Er dreht sich zu dir um. "Ich hab' gesehn, wie du mich beobachtet hast... Was willst du? Hm?"~ */
  IF ~~ THEN REPLY #18792 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"Nichts. Leb wohl."
~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"Nichts. Leb wohl."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"Komm schon. Reg dich ab, du Schlappschwanz." Er dreht sich zu dir um. Plötzlich bemerkt er Morte. "Hey! Dieser Schädel. Wo hast du diesen Schädel her? Das ist meiner! Gib ihn mir zurück."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Gelbfinger trollt sich, dabei murmelt er die ganze Zeit mürrisch vor sich hin.~ */
  IF ~~ THEN REPLY #54288 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~Als du zusiehst, wie Gelbfinger sich eilends trollt, überkommt dich das Gefühl, daß du ihn so schnell nicht wiedersehen wirst.~ */
  IF ~~ THEN REPLY #54787 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END
