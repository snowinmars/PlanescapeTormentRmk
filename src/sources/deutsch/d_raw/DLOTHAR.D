// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"Du schon wieder? Was willst du diesmal vom alten Lothar? Ich hab' dir doch deinen Schädelfreund  und deine Antworten gegeben. Ich warne dich, ich hab' nicht den ganzen Tag für dich Zeit." Sein Blick fällt auf dich wie ein Vorschlaghammer.~ */
  IF ~~ THEN REPLY #2952 /* ~"Ich hätte da gern noch ein paar Fragen beantwortet."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"Ich wollte einfach noch 'n bißchen mit dir reden."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"Ich würde gern von deinen Heilungskünsten Gebrauch machen."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"Mach's kurz, Genarbter. Ich hab' nicht den ganzen Tag Zeit."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"Erzähl mir was über Ravel Rätselschön."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"Wieso bin ich unsterblich?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~Lothar hat mir erzählt, daß ich deshalb unsterblich sei, weil mir meine Sterblichkeit von der gräßlichen Nachthexe Ravel Rätselschön gestohlen wurde. Sollte ich noch mehr Fragen haben, müßte ich Ravel in ihrem Irrgang aufsuchen, in den sie von der Dame der Schmerzen verbannt worden sei. Jetzt muß ich bloß noch herausfinden, wie ich dorthin komme.~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"Wieso bin ich unsterblich?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"Wieso habe ich mein Gedächtnis verloren?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"Ich würde gern von deinen Heilungskünsten Gebrauch machen."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~Er starrt dich kühl an, macht eine kleine Bewegung, und du bist auf einmal weg.~ */
  IF ~~ THEN REPLY #28735 /* ~"Moment mal..."~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"Bist du gekommen, um endlich dieses Plappermaul abzuholen? Ich kann sein ewiges Gejammere nicht mehr hören."~ */
  IF ~~ THEN REPLY #28736 /* ~"Nein, den kannst du behalten."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"Ja. Bitte gib ihn mir."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~Lothar bekommt einen stählernen Blick. "Du wirst ihn aber trotzdem mitnehmen." Mit einer Handbewegung befreit Lothar Morte, der vom Regal verschwindet. "Du wirst ihn draußen finden, oben, in der Nähe der Stelle, an der du mein Reich betreten hast." Er wendet sich ab. "Lebe wohl."~ */
  IF ~~ THEN REPLY #61286 /* ~"Leb wohl."~ */ JOURNAL #37700 /* ~Lothar hat mir Morte zurückgeben, obwohl ich dem Herrn der Knochen gesagt habe, daß ich die Plaudertasche nicht haben will. Ich soll ihn oben wieder mitnehmen, in der Nähe der Stelle, an der ich in Lothars Domäne eingedrungen bin.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~Mit einer Handbewegung befreit Lothar Morte, der vom Regal verschwindet. "Du wirst ihn draußen finden, oben, in der Nähe der Stelle, an der du mein Reich betreten hast." Er wendet sich ab. "Lebe wohl."~ */
  IF ~~ THEN REPLY #61287 /* ~"Leb wohl."~ */ JOURNAL #38204 /* ~Lothar hat mir Morte zurückgeben. Ich soll ihn oben wieder mitnehmen, in der Nähe der Stelle, an der ich in Lothars Domäne eingedrungen bin.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"Da bist du ja wieder. Hast du einen Schädel für mich?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"Ich habe einen menschlichen Schädel."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"Ich habe den Schädel einer Werratte..."~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"Ich habe den Schädel von Hargrimm, dem Skelettpriester der Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"Ich habe den Schädel der Muffigen Mary, Zombie-Anführerin der Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"Ich habe den Schädel von Akaste, Anführerin der rebellierenden Ghule."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"Ich habe den Schädel von Soego, dem Werratten-Missionar der Staubmenschen."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"Ich habe den Schädel des Schweigenden Königs, des Herrschers über die Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"Ich habe den Schädel von Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"Noch nicht."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"Dann rate ich dir, einen zu finden, denn sonst wirst du nie erfahren, was du wissen mußt. Und deinen plappernden Pseudo-Mimir kriegst du so auch nicht wieder."~ */
  IF ~~ THEN REPLY #28765 /* ~"Na gut. Dann komm ich wieder."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"Nun? Hast du mir den Schädel gebracht, den du mir statt deinem gibst?" Lothar grinst ironisch.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"In der Gruft war kein Schädel, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"Noch nicht."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"Dann geh. Ich rate dir, erst wiederzukommen, wenn du ihn gefunden hast."~ */
  IF ~~ THEN REPLY #28768 /* ~"Schön."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"Nein? Was hat das zu bedeuten? Die Gruft war so gut mit Fallen versehen, so gut gegen Aufspürungszauber geschützt, daß es sogar für mich eine Herausforderung war! Es muß eine Erklärung dafür geben, und" - er zieht seine Wörter wütend und langsam in die Länge - "DU wirst sie mir finden. Geh durch das Portal in den Kammern unten und such mir die Antwort."~ */
  IF ~~ THEN REPLY #28769 /* ~"Ich habe keine Ahnung. Woher sollte ich auch?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"Ich glaube, es war eine Falle. Grabräuber sollten wahrscheinlich entmutigt werden, die Krypta auszurauben."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"Es war mein eigenes Grab."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"Du schon wieder?" Der alte Mann taumelt leicht, als er dich ansieht. "Was willst du denn jetzt schon wieder vom alten Lothar? Ich habe deine Fragen beantwortet. Ich warne dich, ich habe nicht den ganzen Tag Zeit." Sein Blick fällt mit der Wucht eines Vorschlaghammers auf dich.~ */
  IF ~~ THEN REPLY #28770 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"Ich wollte einfach noch 'n bißchen mit dir reden."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"Da bist du ja wieder. Hast du einen Schädel für mich?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"Ich habe einen menschlichen Schädel."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"Ich habe den Schädel von Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"Ich habe den Schädel von Hargrimm, dem Skelettpriester der Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"Ich habe den Schädel der Muffigen Mary, Zombie-Anführerin der Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"Ich habe den Schädel von Akaste, Anführerin der rebellierenden Ghule."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"Ich habe den Schädel von Soego, dem Werratten-Missionar der Staubmenschen."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"Ich habe den Schädel des Schweigenden Königs, des Herrschers über die Toten Lande."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"Ich habe den Schädel einer Werratte."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"Noch nicht."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"Dann rate ich dir, in die Katakomben zurückzugehen und dir einen neuen zu suchen!"
~ */
  IF ~~ THEN REPLY #28782 /* ~"Gut, gut."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"Nun? Hast du den Schädel gefunden, mit dem du dir deine Antworten erkaufen kannst?"
~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"In der Gruft war kein Schädel, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"Noch nicht."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"Ah! Ein Besucher. Was verschlägt dich in meinen bescheidenen Salon, Uneingeladener, und dazu ohne Erlaubnis?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"Wer bist du?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"Nichts. Verzeih mir, daß ich dich störe."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"Aber du siehst ein, daß du nicht einfach ohne Einladung in die Knochen der Nacht hineingehen und so schnell wieder abhauen kannst. Ich verkaufe hier Antworten, Junge, und bei allen Mächten, ich krieg' jetzt was von dir, oder dein Kopf wird auch bald meine Regale zieren."~ */
  IF ~~ THEN REPLY #28788 /* ~"Das möchte ich erstmal sehen, du alter Knacker."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"Du verkaufst Antworten? Dann sag mir: Wer bin ich? Wieso bin ich unsterblich?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"So'n Quatsch. Leb wohl."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"Ich würde gern von deinen Heilungskünsten Gebrauch machen. Ich hab von dir gehört."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"Du hast noch genau eine Chance, mir zu antworten, bevor ich die Antwort aus deinem grinsenden Schädel herauspresse."~ */
  IF ~~ THEN REPLY #28792 /* ~"Dann bin ich hier, um Antworten zu kaufen."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"Und du hast noch genau eine Chance, dich zu verkrümeln, bevor ich dich umlege."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"Ich würde gern von deinen Heilungskünsten Gebrauch machen. Ich hab von dir gehört."~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~Die Augen des alten Mannes funkeln und er stößt einen verschachtelten Satz aus geheimnisvollen Silben hervor. Schmerz durchfährt deinen Körper. Dunkelheit bricht herein...~ */
  IF ~~ THEN REPLY #28794 /* ~"Aaaah...."~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~Ein Blitz von Licht und Rauch blendet dich einen Moment lang, und dann steht ein vertrockneter alter Mann vor dir. "Haben wir Besucher, Totenschädel?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"Für alle Antworten und alle Zaubersprüche gibt es einen Preis. In deinem Fall..." Der alte Mann hält inne. "Totenschädel sind meine Währung. Ich stelle ihnen Fragen, und die Toten antworten. Viel Wissen haben die Toten in ihrem Leben angehäuft. Je wertvoller der Schädel, desto höher die Zahl der Fragen, die man stellen kann, und desto mächtiger der Zauberspruch, den ich für dich anwende."~ */
  IF ~~ THEN REPLY #28795 /* ~"Und?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~Lothars Augen blitzen gefährlich. "Das war keine Bitte."~ */
  IF ~~ THEN REPLY #28797 /* ~"Vergiß es, hab' ich gesagt."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"Schon gut. Ich hol dir deinen Schädel."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"Die Gruft ist bereits leer."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"Ich gebe dir noch eine Chance, Narbenfleisch, bevor ich mir deinen Schädel greife."~ */
  IF ~~ THEN REPLY #28799 /* ~"Dann versuch's doch, Lothar."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"Kein Grund, auzurasten. Ich hol dir den Schädel."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"Die Gruft ist bereits leer."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~Der alte Mann ignoriert Morte. "Sei gegrüßt, Reisender. Wer bist du, daß du Lothars bescheidenen Salon ohne Einladung betrittst?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"Du hast meinen Freund entführt. Laß ihn frei. Und zwar sofort."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"Du hast meinen Freund entführt. Laß ihn frei. Und zwar sofort."~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"Ich bitte um Verzeihung, aber du scheinst etwas zu haben, das mir gehört."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"Entführt? Deinen Freund? Ich hab' nichts dergleichen getan. Wo ist dieser Freund?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"Entführt? Deinen Freund? Ich hab' nichts dergleichen getan. Wo ist dieser Freund?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"Du mußt entweder durch die Gedankenlabyrinthe gehen, die von den Schädelratten beherrscht werden oder durch die Toten Lande, die von den wandelnden Toten beherrscht werden. Geh dann durch das nasse Reich der Untergegangenen Nationen und suche die Katakombe dieses namenlosen Herrn. Für einen erfahrenen... Abenteurer... wie dich dürfte das kein Problem sein. Schieb diesen Diwan hier zur Seite, dann geh durch das Portal in der Ostwand der Kammern unten. Ich werde dich sicher wiedersehen, und ich gebe dir deine Antworten, wenn du den Schädel hast."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"Ich der Krypta ist keine Leiche. Ich war da."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"Ich komm wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"Äh, ja? Und was sollte das sein?"~ */
  IF ~~ THEN REPLY #28806 /* ~"Ein Schädel, der mir gehört, da auf dem Regal."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"Mein Freund Morte ist auf deinem Regal gelandet."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~"Du willst diesen plappernden Schädel mit nur halb so viel Anmut und Manieren wie ein normales Wesen? Gib mir einen wertvolleren Schädel, wenn du ihn wiederhaben willst", antwortet Lothar. "Ich muß nicht um etwas feilschen, das mir bereits gehört."~ */
  IF ~~ THEN REPLY #28809 /* ~"Er gehört sowieso weder dir... noch irgendwem anders..."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"Er gehört mir."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"Wo kann ich einen wertvolleren Schädel finden?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"Wo kann ich einen größeren Schädel finden?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~EMPTY NODE REPORT THIS TO COLIN IF YOU HIT IT~ */
  IF ~~ THEN REPLY #28812 /* ~"Also gut. Wo kann ich einen wertvolleren Schädel finden?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"Er gehört mir."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"Er hat dir sowieso nie gehört."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~"Schieb den Diwan in der Mitte des Raums zur Seite, dann geh durch das Portal in der Ostwand der Kammern unten. In den Katakomben liegen viele Schädel. Ein ziemlich wertvoller befindet sich in den begrabenen Krypten der Staubmenschen, jenseits der Untergegangenen Nationen. Wenn du mir diesen Schädel bringst - meine Werratten-Diener haben bisher versagt - werde ich dafür sorgen, daß du deinen Freund wiederbekommst. Vielleicht beantworte ich dir dann sogar ein paar Fragen."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"Ich bin in der Krypta gewesen, von der du gesprochen hast. Sie ist leer."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er mir Morte zurückgeben.~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"Was für eine Garantie habe ich, daß du dein Wort halten wirst?"~ */ JOURNAL #66222 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er mir Morte zurückgeben.~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"Na gut. Wenn ich zurückkomme, läßt du Morte frei. Leb wohl."~ */ JOURNAL #66222 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er mir Morte zurückgeben.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"Du hast mein Wort. Das muß dir reichen. Es sei denn, du willst deinen Freund nicht wiedersehen..."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"Dein Unwissen erstaunt mich. Du weißt wahrlich nicht viel. Nun. Besorg mir einen weiteren Schädel, um ihn zu ersetzen, oder verabschiede dich von deinem Freund."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"Also gut. Wo finde ich einen anderen Schädel, der so viel wert ist wie er?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"Gib ihn mir einfach zurück. Er gehört mir."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"Na gut. Woher kriege ich einen anderen Schädel, der soviel wert ist wie er?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~Lothars Hände umklammern seinen Spazierstock. "Der Schädel gehört MIR. Und wenn du jetzt nicht gleich aufhörst, greif ich mir deinen auch noch."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"Der Schädel spricht weise. Höre auf ihn."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"Also gut. Wo kann ich einen wertvolleren Schädel finden?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"Blödsinn. Gib ihn zurück oder finde dich mit den Konsequenzen ab."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"Also gut. Wo kann ich einen größeren Schädel finden?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~Lothar hält den Schädel hoch und untersucht ihn sorgfältig. "Bah. Der ist nichts wert. Kann mir nichts erzählen. Ich brauche einen wertvollen Schädel, wenn ich schon meine Zeit mit dir vergeuden soll. Fort mit dir!"~ */
  IF ~~ THEN REPLY #28858 /* ~"Gut, gut."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~Lothars Augen blitzen wütend auf. "Meine Diener willst du also umbringen, was? Gib mir seinen Schädel." Er untersucht den Schädel sorgfältig und verkündet dann: "Ich kann seinen Verrat durch seine Knochen riechen. Ein sorgfältiger Schleicher, das war er, aber nicht sorgfältig genug, hä? Ich werde seine Geheimnisse aus ihm herausholen, keine Sorge, und ich werde von seinem Doppelspiel erfahren." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28859 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~Lothar nimmt dir den Schädel ab und untersucht ihn kritisch. "Hargrimm, sagst du? Anführer der Toten Lande? Er wird jede Menge Informationen für mich haben. Ein zufriedenstellender Handel." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28860 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~Lothar nimmt dir den Schädel der Muffigen Mary ab, bürstet ein wenig überschüssiges Fleisch ab, und untersucht ihn dann sorgfältig. "Zombie-Anführerin der Toten Lande, sagst du? Das wird reichen." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28861 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~Lothar nimmt dir Akastes Schädel ab, bürstet ein wenig überschüssiges Fleisch ab, und untersucht ihn dann sorgfältig. "Die Ghul-Königin? Das wird reichen." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28862 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~Lothar nimmt dir Soegos Kopf ab und untersucht ihn sorgfältig, wobei er auch die Zähne überprüft. "Ein Staubmenschen-Missionar und Spion, hä? Das wird reichen." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28863 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~Lothar nimmt dir den Schädel des Schweigenden Königs ab und wiegt ihn in seinen Armen wie ein Neugeborenes. "Der Schweigende König, ja? Das wird in der Tat reichen!"Er flüstert dem Schädel zu: "Du sollst mir alle deine Geheimnisse verraten, mein neuester Freund." Er winkt mit seiner Hand, und Morte verschwindet vom Regal. "Dein Freund wird über der Erde auf dich warten, dort, wo du hereingekommen bist. Und nun zu deinen Fragen."~ */
  IF ~~ THEN REPLY #28864 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~Lothar nimmt den Schädel und untersucht ihn kritisch. "Hargrimm, sagst du? Führer der Toten Lande? Der wird mir 'ne Menge zu erzählen haben. Ein guter Tausch. Ich werde jetzt deine Fragen beantworten."~ */
  IF ~~ THEN REPLY #28865 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~Lothar nimmt den Kopf der Muffigen Mary, streift etwas vom verwesenden Fleisch ab und untersucht ihn sorgfältig. "Zombie-Anführerin der Toten Lande, sagst du? Das ist ein guter Tausch. Ich werde jetzt deine Fragen beantworten."~ */
  IF ~~ THEN REPLY #28866 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~Lothar nimmt den Kopf von Akaste, streift etwas vom verwesenden Fleisch ab und untersucht ihn sorgfältig. "Die Ghul-Königin? Das ist ein guter Tausch. Ich werde jetzt deine Fragen beantworten."~ */
  IF ~~ THEN REPLY #28867 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~Lothar nimmt den Kopf von Soego, untersucht ihn sorgfältig und sieht sich dabei auch die Zähne genau an. "So so, ein Missionar und Spion der Staubmenschen! Das ist ein guter und sicherlich ein amüsanter Tausch. Ich werde jetzt deine Fragen beantworten."~ */
  IF ~~ THEN REPLY #28868 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~Lothar nimmt den Schädel des Schweigenden Königs und wiegt ihn vorsichtig in der Hand. "Der Schweigende König, sagst du? Das ist auf jeden Fall ein guter Tausch! Ich werde jetzt deine Fragen beantworten." Er flüstert dem Schädel zu: "Du wirst mir alle deine Geheimnisse verraten, mein neuester Freund."~ */
  IF ~~ THEN REPLY #28869 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"Deine Sterblichkeit, deine Seele, wenn du so willst, das, was es dir ermöglicht, zu leben und zu sterben, fehlt dir. Sie wurde dir durch einen Zauber von der Nachthexe Ravel Rätselschön genommen. Deine Sterblichkeit ist der Schlüssel zu deinem Dasein. Wenn du sie findest, bekommst du die Antworten auf deine Fragen."~ */
  IF ~~ THEN REPLY #28870 /* ~"Erzähl mir was über diese Ravel."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"Wenn ich wen finde?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"Das ist eine Nebenwirkung des Verlustes deiner Sterblichkeit."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"Ich habe meine Sterblichkeit verloren? Was meinst du damit?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"Ich habe meine Sterblichkeit verloren? Was meinst du damit?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"Ravel Rätselschön ist ein Rätsel, selbst für die Nachthexen. Einige halten sie für übergeschnappt, andere behaupten, sie spiele ein tiefgründiges Spiel, das niemand durchschauen könne. Sie ist durch und durch böse, so daß die Scheusale der Gegend mit ihr verglichen harmlos erscheinen. Dank der Mächte ist sie jetzt außer Reichweite der Menschen, denn sie wurde von der Dame der Schmerzen in einen Irrgang verbannt."~ */
  IF ~~ THEN REPLY #28874 /* ~"In die Irrgänge verbannt? Wie kann ich sie finden?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"Was hat sie gemacht?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"Aha. Vielen Dank. Leb wohl, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"Irrgänge sind wie kleine Dimensionen... kleine Räume zwischen Räumen. Um in einen zu gelangen, mußt du ein Portal und einen Schlüssel finden. Ich hab' keine Ahnung, wo das Tor oder der Schlüssel ist. Vielleicht solltest du mal eine deiner alten Bekanntschaften aufsuchen, du hast doch reichlich davon. Wenn deine Bekanntschaften dich finden, und das werden sie, dann bete, daß sie dir gut gesinnt sind. Vielleicht solltest du einen Abstecher zur Städtischen Festhalle machen. Dort kriegt man eine Menge Antworten."~ */
  IF ~~ THEN REPLY #28877 /* ~"Was hat Ravel getan?"~ */ JOURNAL #31882 /* ~Lothar hat vorgeschlagen, daß ich die Städtische Festhalle auf der Suche nach Antworten auf meine Fragen über Ravel Rätselschön aufsuche. ~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"Vielen Dank, Lothar. Leb wohl."~ */ JOURNAL #31882 /* ~Lothar hat vorgeschlagen, daß ich die Städtische Festhalle auf der Suche nach Antworten auf meine Fragen über Ravel Rätselschön aufsuche. ~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"Ich habe dir keine Erlaubnis erteilt zu sprechen, Schädel!" Morte erzittert unter Lothars grimmiger Stimme. "Narbiger, wenn du den Schädel zurück möchtest, mußt du mir einen wertvolleren Schädel aus den Katakomben unten bringen. Ich handle nicht um etwas, das mir bereits gehört. Nimm es an oder laß es."~ */
  IF ~~ THEN REPLY #28880 /* ~"Er gehört weder dir... noch irgendwem anders..."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"Er gehört mir."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"Wo kann ich einen wertvolleren Schädel finden?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"Wo kann ich einen größeren Schädel finden?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"Sie hat Spielzeug hergestellt sich Rätsel ausgedacht und Lösungen für Probleme gefunden, die keiner Lösung bedurften. Für sie war Sigil, der Käfig, von allen Rätseln das größte. Sie wollte es lösen, damit die Armeen der ihr unterstehenden Scheusale in die Stadt kommen konnten. Wahrscheinlich wollte sie die gesamte Stadt aus dem Gleichgewicht bringen und in ein Leichenhaus verwandeln. Gelobt seien die Mächte, daß ihr kein Erfolg beschert war."~ */
  IF ~~ THEN REPLY #28883 /* ~"Ich werde sie finden und sie zwingen, mir meine Sterblichkeit zurückzugeben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~Lothars Augen blitzen zornig. "Wie kommst du dazu, meine Diener zu töten? Gib mir den Schädel." Er sieht sich den Schädel genau an und sagt: "Ich kann seinen Verrat durch seine Knochen riechen. Ein vorsichtiger Leisetreter war er, aber nicht vorsichtig genug! Ich werde ihm seine Geheimnisse entlocken und seine Doppelzüngigkeit entblößen."~ */
  IF ~~ THEN REPLY #31865 /* ~"Ich habe viele Fragen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"In deinem Fall wird Lothar von dir für das, was du von mir willst, nur einen einzigen Schädel aus den Katakomben verlangen. Hinter den Untergegangenen Nationen liegt eine verschlossene Gruft, zu der meine Günstlinge noch nicht vordringen konnten. Bring mir den Schädel, der dort liegt, und ich werde dir alle Antworten geben, die du brauchst. ALLE, wenn ich kann. Du WIRST diesen Schädel holen."~ */
  IF ~~ THEN REPLY #31867 /* ~"Vergiß es."~ */ JOURNAL #66223 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er meine Fragen beantworten.~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"Abgemacht."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er meine Fragen beantworten.~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"Die Gruft ist bereits leer."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar hat mir gesagt, ich solle den Diwan in der Mitte des Raumes zur Seite schieben, um einen Gang freizulegen, der in die Höhlen unter seinem Haus führt. Wenn ich erst dort bin, soll ich in die Katakomben weitergehen und eine Gruft hinter den Untergegangenen Nationen finden. In dieser Gruft gibt es einen Totenschädel von hohem Wert. Wenn ich ihm den bringe, will er meine Fragen beantworten.~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"Da könnte was dran sein, aber... diese Krypta hat irgendwas, das vielversprechend war. Ich werde darüber nachdenken, und ich empfehle dir, dasselbe zu tun." Er wendet sich ab und dreht sich fast augenblicklich wieder zu dir um. "Bring mir einen anderen Schädel und unsere alte Abmachung gilt weiter. Und bring mir ja nicht irgendeinen Schädel, denn ich kenne mich damit aus. Komm erst wieder, wenn du einen Schädel hast, der für mich wertvoll ist."~ */
  IF ~~ THEN REPLY #31901 /* ~"Also schön. Leb wohl."~ */ JOURNAL #31875 /* ~Lothar hat mir aufgetragen, einen anderen Totenschädel zu finden, den ich gegen den eintauschen kann, den ich nicht in der eingeschlossenen Gruft finden konnte. ~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"Deine Gruft? DEINE Gruft?" Er mustert dich mißtrauisch. "Wir werden das genauer untersuchen. Hol mir einen anderen Schädel, da du ja so an deinem zu hängen scheinst, und wir werden sehen, welche Antworten ich für dich habe. Unsere Abmachung gilt weiter. Und bring mir ja nicht irgendeinen Knochen, denn ich kenne mich damit aus. Komm erst wieder, wenn du einen Schädel hast, der für mich wertvoll ist."~ */
  IF ~~ THEN REPLY #31905 /* ~"Also schön. Leb wohl."~ */ JOURNAL #31874 /* ~Lothar hat mir aufgetragen, einen anderen Totenschädel zu finden, um den auszutauschen, der nicht in meiner eingeschlossenen Gruft gewesen sein kann.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~Lothars Augen blitzen zornig. "Meine Diener niedermetzeln, was? Gib mir seinen Schädel." Er betrachtet den Schädel eingehend und sagt dann: "Ich kann seine Arglist durch seine Knochen riechen. Er ist vorsichtig umhergeschlichen, aber nicht vorsichtig genug, was? Ich werde ihm seine Geheimnisse entreißen und alles über sein Doppelleben erfahren. Du bekommst deine Antworten von mir."~ */
  IF ~~ THEN REPLY #54114 /* ~"Ich hätte viele Fragen an dich."~ */ GOTO 1
END
