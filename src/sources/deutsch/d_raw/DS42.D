// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS42.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DS42~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6595 /* ~Das Skelett dreht sich um und steht dir gegenüber. Die Nummer "42" ist in seine Stirn gemeißelt, und einige seiner Knochen, besonders der Kiefer und die Gelenke, sind mit Lederriemen zusammengebunden. Sein Körper ist in einen schwarzen Kittel gehüllt.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6612 /* ~"Ich *glaube*, daß das die Leiche aus dieser Erinnerung ist, die ich hatte..."~ */ GOTO 1
  IF ~~ THEN REPLY #6613 /* ~"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #6614 /* ~"Eine Frage: Wozu der Kittel? Ich meine, du hast schließlich nichts, was du verhüllen müßtest."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #6615 /* ~"Eine Frage: Wozu der Kittel? Ich meine, du hast schließlich nichts, was du verhüllen müßtest."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6616 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6617 /* ~Untersuche das Skelett gründlich.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6618 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6619 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
~ THEN REPLY #6620 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6621 /* ~"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6622 /* ~Laß das Skelett in Ruhe.~ */ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6623 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6624 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.9 3.0 3.3
  SAY #6596 /* ~Durch deine Stimme aufgeschreckt, richtet sich das Skelett plötzlich auf. Es verschränkt seine Arme, und seine Finger haken sich in den Rippen ein.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6625 /* ~Verschränk die Arme vor der Brust.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6626 /* ~Imitier die Geste... warte ab, was passiert.~ */ GOTO 9
  IF ~~ THEN REPLY #6627 /* ~"Äh..."~ */ GOTO 10
  IF ~~ THEN REPLY #6628 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #6597 /* ~Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6629 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6630 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6631 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 10.2
  SAY #6598 /* ~Du bist erstaunt, daß dieser Knochenhaufen noch in einem Stück ist. Seine vergilbten Knochen sind mit Gips und mehreren Lagen übelriechendem Leim verunstaltet... das, was du von den Knochen sehen kannst, ist von unzähligen feinen Rissen durchzogen. Obwohl sich irgend jemand die Mühe gemacht hat, dieses Skelett mit Lederriemen und Schrauben zusammenzuhalten, sind die Riemen jetzt ausgefranst und die Schrauben sehen so aus, als würden sie jeden Moment herausfallen.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63495 /* ~"Ich *glaube*, daß das die Leiche aus dieser Erinnerung ist, die ich hatte..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6632 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6633 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6634 /* ~"Hast du was dagegen, wenn ich mir ein paar von diesen Riemen und Bolzen borge?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6635 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6636 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6637 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 12.0
  SAY #6599 /* ~Daraufhin läßt das Skelett die Arme nach unten fallen. Die Lederschnüre, die den Torso zusammenhalten, reißen, und der Brustkorb öffnet sich wie eine Doppeltür.~ */
  IF ~~ THEN REPLY #6638 /* ~Greif in den Brustkorb und taste ein bißchen herum.~ */ GOTO 5
  IF ~~ THEN REPLY #6639 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0
  SAY #6600 /* ~Zu deiner Überraschung verschwindet deine Hand, als du in den Brustkorb faßt... Du hast das seltsame Gefühl, daß sie *woanders* ist. Als du in den Brustkorb faßt, stößt deine Hand an einen unsichtbaren Gegenstand. Er hat etwa die Größe einer Faust und scheint an der Wirbelsäule des Skeletts befestigt zu sein. 
~ */
  IF ~~ THEN REPLY #6640 /* ~Nimm den Gegenstand heraus.~ */ DO ~Kill(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6641 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.7 0.8 3.2
  SAY #6601 /* ~Die Schrauben rutschen leicht aus den Gelenken. Das Skelett bricht zusammen, einige seiner Knocken zucken noch immer.~ */
  IF ~~ THEN REPLY #6642 /* ~"Tut mir echt leid, Gerippe..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #6602 /* ~Als du den Gegenstand herausziehst, fällt das Skelett plötzlich zusammen, und die Schrauben, mit denen die Gelenke gesichert wurden, fallen auf den Boden. Was immer dieser Gegenstand auch war - er scheint die einzige Sache gewesen zu sein, die das Skelett zusammengehalten hat.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6643 /* ~Sieh dir den Gegenstand genau an.~ */ GOTO 8
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6644 /* ~Sieh dir den Gegenstand genau an.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #6603 /* ~Es sieht wie ein unscheinbarer Eisenbrocken aus. Du kannst dir nicht vorstellen, warum irgend jemand ihn im Brustkorb eines Skeletts verstecken sollte.~ */
  IF ~~ THEN REPLY #6645 /* ~Untersuche das Stück Eisen.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 1.1 12.1
  SAY #6604 /* ~Daraufhin läßt das Skelett die Arme nach unten fallen. Die Lederschnüre, die den Torso zusammenhalten, reißen, und der Brustkorb öffnet sich wie eine Doppeltür. Du kannst dir nicht erklären warum, aber du verspürst plötzlich den Drang, in den Brustkorb hineinzugreifen.~ */
  IF ~~ THEN REPLY #6646 /* ~Greif in den Brustkorb und taste ein bißchen herum.~ */ GOTO 5
  IF ~~ THEN REPLY #6647 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 12.2
  SAY #6605 /* ~Das Skelett läßt die Arme fallen.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6648 /* ~"Ähh... hallo?"~ */ GOTO 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #6649 /* ~"Ähh... hallo?"~ */ GOTO 13
  IF ~~ THEN REPLY #6650 /* ~Untersuche das Skelett gründlich.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #6651 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #6606 /* ~Er sieht wie ein unscheinbarer Eisenbrocken aus. Deine vorherige Inkarnation muß einen Grund gehabt haben, ihn hier zu verstecken.~ */
  IF ~~ THEN REPLY #6652 /* ~Sieh dir das das Stück Eisen sorgfältig an.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #6607 /* ~Das Skelett verschränkt wieder seine Arme vor der Brust.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6653 /* ~Verschränk die Arme vor der Brust.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6654 /* ~Imitier die Geste... warte ab, was passiert.~ */ GOTO 9
  IF ~~ THEN REPLY #6655 /* ~"Äh..."~ */ GOTO 10
  IF ~~ THEN REPLY #6656 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #6608 /* ~Das Skelett verschränkt wieder seine Arme vor der Brust.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 112
END

IF ~~ THEN BEGIN 14 // from: 8.0 11.0
  SAY #58983 /* ~Als du den Eisenklumpen mit beiden Händen berührst, um ihn zu untersuchen, hörst du ein *Hssssss*, und das Metall verdunstet. Zurück bleiben ein merkwürdiger Dolch, eine Handvoll Münzen in einem schmutzigen Tuch und zwei blutige Tränen. Es sieht aus, als käme das alles aus dem *Innern* des Eisenklumpens. ~ */
  IF ~~ THEN REPLY #58984 /* ~Nimm die Sachen an dich und geh.~ */ DO ~GiveItemCreate("GSKnife",Protagonist,1,0,0)
GiveItemCreate("Rags",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveGoldForce(99)
~ EXIT
END
