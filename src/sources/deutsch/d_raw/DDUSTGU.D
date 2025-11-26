// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~Du siehst einen finster dreinblickenden Mann in einer schwarzen Robe. Er starrt dich mißtrauisch an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"Sei gegrüßt."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"Sei gegrüßt."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~Tu so, als ob du hierhergehörst: ignoriere ihn und geh einfach an ihm vorbei.~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Versuch ihn zu ignorieren, geh einfach weiter.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~Der Staubmensch runzelt die Stirn, als du vorbeigehst... er sieht aus, als wollte er dir etwas zurufen, doch er tut es nicht. Möglicherweise hat ihn dein Verhalten veranlaßt, es sich zu verkneifen.~ */
  IF ~~ THEN REPLY #387 /* ~Geh einfach weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~Der Staubmensch runzelt die Stirn, als du vorbeigehst. Dann spricht er dich an. "He du da! Was hast du hier verloren?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"Es sieht so aus, als hätte ich mich in diesen Hallen ein paarmal im Kreise gedreht. Gibt's hier vielleicht irgendwo einen Führer, der Besuchern den Ort zeigen könnte?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"Ich... glaube, ich habe mich verirrt."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"Das geht dich gar nichts an. Es wäre besser, du würdest dich um DEINE EIGENEN Angelegenheiten kümmern, Staubmensch."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"Ich will hier nur den Ausgang finden. Ich habe nicht vor, Ärger zu machen."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"Nichts. Ich hatte mich verirrt, aber jetzt bin ich auf dem Weg zum Ausgang."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~Der Staubmensch runzelt die Stirn. Er sieht skeptisch aus. "Es gibt Führer, die dich zum Vorzimmer hinbringen können. Geh niemals ohne Begleitung durch die Leichenhalle."~ */
  IF ~~ THEN REPLY #1415 /* ~"Danke für deine Hilfe. Ich werde den Führer mal ansprechen."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"Ich laufe da herum, wo es mir paßt... Es wäre besser, du würdest dich um deine eigenen Angelegenheiten kümmern, Staubmensch."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"Du siehst tatsächlich aus, als hättest du dich verirrt..." Die Augen des Staubmenschen verengen sich zu Schlitzen, und seine Hand tastet sich zu dem Dolch neben ihm vor. "Warte hier, bis ich die anderen Wachen gerufen habe, die dir den Weg hinaus zeigen." Es sieht aus, als würde er sie jeden Moment rufen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"Ruf deine Freunde, Staubie... Freu mich schon drauf, sie kennenzulernen."
~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Warte.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~Die Augen des Staubmenschen verengen sich zu Schlitzen, und seine Hand fällt zum Dolch an seiner Seite hinab. Er sieht aus, als würde er gleich die anderen Wächter rufen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"Ruf deine Freunde, Staubie... Freu mich schon drauf, sie kennenzulernen."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Warte.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~Als du dich vorbeugst, um ihm etwas 'zuzuflüstern', beugt der Staubmensch seinen Kopf auch nach vorn. Als er in Reichweite kommt, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #4156 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Bevor der Staubmensch auch nur ein Wort sagen kann, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #4157 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~Es macht *Knacks*, und der Staubmensch fällt dir erschlafft in die Arme.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"Besser du als ich, Staubie."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"Besser du als ich, Staubie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #4160 /* ~Versteck die Leiche im Schatten und geh dann weiter.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~Du bist nicht schnell genug. Der Staubmensch weicht deinem Angriffsversuch aus. Er geht einen Schritt zurück und klatscht dreimal fest in Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.~ */
  IF ~~ THEN REPLY #4161 /* ~"Ich hoffe, du hast deinen Frieden mit den Göttern gemacht, Staubmensch..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~Der Staubmensch klatscht dreimal fest in die Hände. Daraufhin ertönt der Klang einer Eisenglocke durch die ganze Leichenhalle.~ */
  IF ~~ THEN REPLY #4162 /* ~"Ich hoffe, du hast deinen Frieden mit den Göttern gemacht, Staubmensch..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~Der Staubmensch runzelt die Stirn, als du ihn ansprichst. "Was führt dich hierher?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"Es sieht so aus, als hätte ich mich in diesen Hallen ein paarmal im Kreise gedreht. Gibt's hier vielleicht irgendwo einen Führer, der Besuchern den Ort zeigen könnte?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"Ich... glaube, ich habe mich verirrt."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"Das geht dich gar nichts an. Es wäre besser, du würdest dich um DEINE EIGENEN Angelegenheiten kümmern, Staubmensch."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"Ich will hier nur den Ausgang finden. Ich habe nicht vor, Ärger zu machen."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"Nichts. Ich hatte mich verirrt, aber jetzt bin ich auf dem Weg zum Ausgang."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~Du siehst einen finster dreinblickenden Mann in einer schwarzen Robe. Er blickt geradeaus und scheint dich überhaupt nicht zu bemerken.~ */
  IF ~~ THEN REPLY #4170 /* ~"Sei gegrüßt."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Trotte vorbei.
~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~Der Staubmenschen-Wächter zuckt überrascht zusammen, als du ihn ansprichst. Dann geht er einen Schritt zurück. "Du bist kein Zombie... wer bist du... und wie bist du hier reingekommen?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Brich ihm das Genick, bevor er rufen kann.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"Ich kann's erklären... weißt du, es fing alles damit an, daß ich auf einer eurer Totenbänke von den Toten erwachte... dann war da dieser sprechende Totenschädel, und..."~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~Du siehst einen finster dreinblickenden Mann in einer schwarzen Robe. Er nickt, als er dich sieht.~ */
  IF ~~ THEN REPLY #4176 /* ~"Sei gegrüßt."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Nicke ihm auch zu und geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"Sei gegrüßt, Eingeweihter."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"Vielleicht kannst du mir helfen. Ich glaube, ich habe mich verirrt. Kannst du mir den Weg weisen?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"Ich... glaube, ich habe mich verirrt."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"Nur weiter so, Eingeweihter."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"Im Vorraum sind Führer. Sie können dir bestimmt weiterhelfen, Eingeweihter."~ */
  IF ~~ THEN REPLY #4181 /* ~"Vielen Dank. Ich werde mich nach ihnen umsehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Du verbirgst den schlaffen Körper in den Schatten.~ */
  IF ~~ THEN REPLY #61285 /* ~Geh weiter.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~Du triffst auf einen streng aussehenden Mann in schwarzen Roben. Er mustert dich mißtrauisch. "Du! Sag, was du hier willst!"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"Ich bin ein neuer Eingeweihter des Bundes der Staubmenschen. Ich seh mir nur ein bißchen die Leichenhalle an."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"Ich finde mich in diesen Hallen nicht gut zurecht. Gibt es hier Führer, die Besuchern den Weg weisen können?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"Ich... habe mich anscheinend verlaufen." ~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"Was ich hier will, geht nur mich etwas an. Du kümmerst dich besser um deine EIGENEN Angelegenheiten, Staubmensch."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Beug dich vor, so als ob du ihm etwas ins Ohr flüstern willst, und brich ihm das Genick.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Beug dich vor, so als ob du ihm etwas ins Ohr flüstern willst, und brich ihm das Genick.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"Ich bin lediglich auf dem Weg zum Ausgang. Ich möchte hier keine Schwierigkeiten machen."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"Nichts. Ich hatte mich verlaufen, bin aber jetzt auf dem Weg zum Ausgang."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~Die Wache starrt dich einen Moment lang an und nickt dann. "Gib acht, daß du niemanden bei der Ausübung seiner Pflichten störst, solange du hier bist."~ */
  IF ~~ THEN REPLY #66701 /* ~"Nun denn. Dann geh ich jetzt."~ */ EXIT
END
