// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BNORDOM~

IF ~  LastPersonTalkedTo("Morte")
Global("Nordom_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31490 /* ~"Achtung, Morte: Wußtest du, daß ich sechs Seiten habe?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #63630 /* ~"Eine Frage, Mor-te. Wie bleibst du in der Luft?"~ [NOR286A] */
  IF ~~ THEN EXTERN ~DMORTE~ 624
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63631 /* ~"Ich werde es mir überlegen."~ [NOR286B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",3)
InParty("Dakkon")
~ THEN BEGIN 3 // from:
  SAY #63632 /* ~"Dak'kons Schweigen scheint eine besonders wirksame Art der Unterhaltung zu sein."~ [NOR287] */
  IF ~~ THEN EXTERN ~DMORTE~ 625
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",4)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 4 // from:
  SAY #63633 /* ~"Morte, erklär mir doch noch mal, warum du 'Annah liebend gerne beißen würdest.' Würde das keinen Angriff provozieren?"~ [NOR288] */
  IF ~~ THEN EXTERN ~DMORTE~ 626
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",5)
InParty("Annah")
~ THEN BEGIN 5 // from:
  SAY #63634 /* ~"Achtung, Morte. Eine Frage habe ich. Hast du eine Bestimmung? Einen Daseinszweck?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 627
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63635 /* ~"Bestätige."~ [NOR313B] */
  IF ~~ THEN EXTERN ~DMORTE~ 628
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 7 // from:
  SAY #63636 /* ~"Achtung, Morte. Wußtest du, daß ich über achtzehn Artikulationspunkte verfüge?"~ [NOR312] */
  IF ~~ THEN EXTERN ~DMORTE~ 629
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY #63637 /* ~"Achtung, Morte. Eine Frage habe ich. Habe ich freien Willen?"~ [NOR317A] */
  IF ~~ THEN EXTERN ~DMORTE~ 630
END

IF ~~ THEN BEGIN 9 // from:
  SAY #63638 /* ~"Freier Wille scheint nicht viel Nutzen zu haben für einen Modron."~ [NOR317B] */
  IF ~~ THEN EXTERN ~DMORTE~ 631
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 10 // from:
  SAY #63639 /* ~"Achtung, Morte. Eine Frage habe ich. Hast du eine Bestimmung? Einen Daseinszweck?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 632
END

IF ~~ THEN BEGIN 11 // from:
  SAY #63640 /* ~"Negativ."~ [NOR310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 633
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",9)
InParty("Grace")
InParty("Annah")
~ THEN BEGIN 12 // from:
  SAY #63641 /* ~"Achtung, Morte. Eine Frage habe ich. Was ist die Regel der Drei?"~ [NOR319A] */
  IF ~~ THEN EXTERN ~DMORTE~ 634
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63642 /* ~"Das widerspricht einigen der vorherigen Definitionen."~ [NOR319B] */
  IF ~~ THEN EXTERN ~DMORTE~ 635
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",10)
InParty("Annah")
~ THEN BEGIN 14 // from:
  SAY #63643 /* ~"Achtung, Morte. Eine Frage habe ich. Was ist Schicksal?"~ [NOR321A] */
  IF ~~ THEN EXTERN ~DMORTE~ 636
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63644 /* ~"Verstanden."~ [NOR321B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",10)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",11)
~ THEN BEGIN 16 // from:
  SAY #63645 /* ~"Morte, ist es wahr, daß -"~ [NOR289A] */
  IF ~~ THEN EXTERN ~DMORTE~ 637
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63646 /* ~"Ich finde dich äußerst mißmutig."~ [NOR289B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",11)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",12)
~ THEN BEGIN 18 // from:
  SAY #63647 /* ~"Achtung, Morte. Ich möchte deinen Körper ansprechen."~ [NOR324A] */
  IF ~~ THEN EXTERN ~DMORTE~ 638
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63648 /* ~"Dein Körper. Ich habe eine Frage, die ihn betrifft. Wo ist er?"~ [NOR324B] */
  IF ~~ THEN EXTERN ~DMORTE~ 639
END

IF ~~ THEN BEGIN 20 // from:
  SAY #63649 /* ~"Wie kann sich der Kopf vom Körper trennen, ohne daß du es weißt?"~ [NOR324C] */
  IF ~~ THEN EXTERN ~DMORTE~ 640
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
InParty("Grace")
NearbyDialog("DGRACE")
InParty("Annah")
~ THEN BEGIN 21 // from:
  SAY #63650 /* ~"Achtung, Morte. Haben wir schon den Zustand freundlicher Kameradschaft erlangt?"~ [NOR323] */
  IF ~~ THEN EXTERN ~DMORTE~ 641
END

IF ~  LastPersonTalkedTo("Annah")
Global("Nordom_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #63651 /* ~"Annah, hilft dein Schweif dir, die Balance zu halten?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END

IF ~~ THEN BEGIN 23 // from:
  SAY #63652 /* ~"Ja, das ist ziemlich logisch."~ [NOR291B] */
  IF ~~ THEN EXTERN ~DANNAH~ 311
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #63653 /* ~"Annah, ist der Zweck deines Schweifes, den aktuellen Feindschaftsgrad anzuzeigen?"~ [NOR292A] */
  IF ~~ THEN EXTERN ~DANNAH~ 312
END

IF ~~ THEN BEGIN 25 // from:
  SAY #63654 /* ~"Meine Analyse scheint korrekt: Gefahr! Gefahr!"~ [NOR292B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMorte")
~ THEN BEGIN 26 // from:
  SAY #63655 /* ~"Annah, stimmt es, daß du auf Morte 'stehst'?"~ [NOR293] */
  IF ~~ THEN EXTERN ~DANNAH~ 313
END

IF ~  LastPersonTalkedTo("Grace")
Global("Nordom_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 27 // from:
  SAY #63656 /* ~"Ich schätze, daß Fall-From-Grace vom männlichen Geschlecht von über 321.023 verschiedenen Spezies als attraktiv empfunden wird. Plus-minus fünf."~ [NOR290A] */
  IF ~~ THEN EXTERN ~DGRACE~ 374
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63657 /* ~"Ich bin nicht mehr in der Lage, diese Frage zu beantworten. Ich weiß es nicht."~ [NOR290B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",2)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 29 // from:
  SAY #63658 /* ~"Fall-From-Grace, stimmt es, daß 'jede Braut findet, daß schwebende Schädel heiß sind'?'"~ [NOR294] */
  IF ~~ THEN EXTERN ~DGRACE~ 375
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 30 // from:
  SAY #63659 /* ~"Achtung, Fall-From-Grace. Übst du optionale Schwerkraft aus?"~ [NOR325A] */
  IF ~~ THEN EXTERN ~DGRACE~ 376
END

IF ~~ THEN BEGIN 31 // from:
  SAY #63660 /* ~"Ich habe festgestellt, daß du ein Feld ausstrahlst, das andere zwingt, dir mit den Augen zu folgen. Ihnen fehlt die Muskelbeherrschung, um sich abzuwenden."~ [NOR325B] */
  IF ~~ THEN EXTERN ~DMORTE~ 645
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY #63661 /* ~"Achtung, Fall-From-Grace. Ich möchte deinen Körper ansprechen."~ [NOR326A] */
  IF ~~ THEN EXTERN ~DGRACE~ 377
END

IF ~~ THEN BEGIN 33 // from:
  SAY #63662 /* ~"Dein Körper. Deine Gestalt. Deinen Grund, sie auszuwählen. Warum?"~ [NOR326B] */
  IF ~~ THEN EXTERN ~DGRACE~ 378
END

IF ~~ THEN BEGIN 34 // from:
  SAY #63663 /* ~"Es wäre praktischer für dich, die Gestalt eines Modronen anzunehmen. Sie ist 13,27% effizienter. Plus-minus 5,2%."~ [NOR326C] */
  IF ~~ THEN EXTERN ~DGRACE~ 379
END

IF ~~ THEN BEGIN 35 // from:
  SAY #63664 /* ~"Es war nicht meine Absicht, rechtliche Schritte gegen dich einzuleiten."~ [NOR326D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Vhail")
Global("Nordom_Talked_Vhail","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #63665 /* ~"Man hat mir gesagt, die Gerechtigkeit sei blind. Gibt es deswegen Gnadentöter?"~ [NOR295] */
  IF ~~ THEN EXTERN ~DVHAIL~ 157
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
~ THEN BEGIN 37 // from:
  SAY #64219 /* ~"Achtung, Morte: Wußtest du, daß ich sechs Seiten habe?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 38 // from:
  SAY #64220 /* ~"Annah, hilft dein Schweif dir, die Balance zu halten?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END
