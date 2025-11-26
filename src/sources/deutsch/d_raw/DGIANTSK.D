// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIANTSK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIANTSK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #292 /* ~Vor dir steht ein riesiges Skelett in einer reich verzierten Bronzerüstung. Die Rüstung ist mit Schrauben am Körper befestigt, und auf dem Brustharnisch sind kunstvolle Symbole eingeritzt. Du fragst dich, woher das Skelett stammt: Du wußtest gar nicht, daß es so große Menschen gibt. Die riesige Klinge in seinen Händen sieht aus, als wöge sie soviel wie ein ganzes Fuhrwerk.~ */
  IF ~~ THEN REPLY #293 /* ~"Was dagegen, wenn ich dir die Klinge mal einen Moment abnehme? Du mußt doch wirklich müde sein, dieses Gewicht dauernd zu halten."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Giant_Skel_Mort_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #1165 /* ~"Nun, wie lange stehst du denn hier schon? Schon lange?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Giant_Skel_Mort_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #3996 /* ~Untersuche das riesige Skelett... aber vorsichtig.~ */ GOTO 4
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #3997 /* ~Versuch, ob du die Zauber, die in den Brustharnisch des Skeletts eingeritzt sind, auflösen kannst.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #3998 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #3999 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4000 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4001 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4002 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #4003 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf das Skelett an.~ */ GOTO 1
  IF ~~ THEN REPLY #4004 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.0 0.1 0.9
  SAY #1166 /* ~Das Skelett sieht als, als wäre es schon zu lange tot, um irgendeine deiner Fragen beantworten zu können. Oder es kann dich nicht hören, weil es seinen Kopf zu hoch oben trägt.~ */
  IF ~~ THEN REPLY #1167 /* ~Untersuche das riesige Skelett... aber vorsichtig.~ */ GOTO 4
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4035 /* ~Versuch, ob du die Zauber, die in den Brustharnisch des Skeletts eingeritzt sind, auflösen kannst.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4036 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4037 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4038 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4039 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4040 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4041 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
  SAY #4005 /* ~Als du das Skelett berührst ertönt der Klang einer Eisenglocke durch die ganze Leichenhalle... blitzartig erwacht das Skelett und erhebt seine Klinge zum Angriff!~ */
  IF ~~ THEN REPLY #4042 /* ~"Du wirst dich noch danach zurücksehnen, tot zu sein, Knochengestell..."
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
  SAY #4006 /* ~Als du schon drauf und dran bist, hältst du plötzlich inne... und dein Blick fällt auf die Rüstung des Skeletts. Die auf dem Brustharnisch eingravierten Symbole bremsen dich irgendwie. Wenn diese Skelette Wächter sind, dann stört man sie vielleicht besser nicht... sonst wachen sie auf.~ */
  IF ~~ THEN REPLY #4043 /* ~"Das Risiko nehme ich gerne auf mich..."~ */ GOTO 2
  IF ~~ THEN REPLY #4044 /* ~Untersuche das riesige Skelett... aber vorsichtig.~ */ GOTO 4
  IF ~~ THEN REPLY #4046 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.1 7.1 15.1 16.3
  SAY #4007 /* ~Die komplexe Bronzerüstung ist mit Eisenbolzen am Brustkorb und an den Schulterblättern des Skeletts befestigt. Bei genauerer Betrachtung des Knochengerüsts unter der Rüstung bemerkst du, daß dieselben Eisenbolzen auch in den Schultern, Ellbogen und Kniegelenken sowie im Becken des Skeletts stecken. Dicke Lederriemen und Seile sind so um die Arme und Beine des Skeletts gewickelt, daß sie den Eindruck von Muskeln und Sehnen erwecken.~ */
  IF ~~ THEN REPLY #4045 /* ~Untersuche die Rüstung.~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4048 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4049 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4050 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4051 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4052 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4053 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4008 /* ~Obwohl es sich offensichtlich um eine alte Rüstung handelt, wirkt sie gut gepflegt. Sie strahlt einen matten Glanz ab, und die Symbole auf dem Brustharnisch verändern sich im Licht des Feuers - und zwar immer dann, wenn du sie fixieren willst.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4054 /* ~Sieh dir die Zeichen genau an.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4055 /* ~Sieh dir die Zeichen genau an.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #64293 /* ~Betrachte die Symbole.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4056 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4057 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4058 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4059 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4060 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4061 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #4009 /* ~Fast unbewußt entspannt sich dein Blick bei Betrachtung der Symbole. Jetzt verändern sich die Symbole nicht mehr. Du siehst nur noch eine Runenreihe, die quer über den gesamten Brustharnisch verläuft. Irgendwie erinnern dich die ineinandergreifenden Runen an Ketten... und bei diesem Gedanken fällt dir plötzlich ein, daß sie eine Art Abwehrzauber sind.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #4062 /* ~Sieh dir die Runen genau an und versuch, dich an die Zauber zu erinnern.~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #4063 /* ~Sieh dir die Runen genau an und versuch, dich an die Zauber zu erinnern.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4064 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4065 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4066 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4067 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4068 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4069 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.1 7.2
  SAY #4010 /* ~Du schaust dir die Runen eine Zeitlang genau an, schaffst es aber nicht, den Zauber zu entziffern. Er sieht ziemlich kompliziert aus und bereitet dir viel Kopfzerbrechen.~ */
  IF ~  PartyHasItem("TomeBA")
~ THEN REPLY #64294 /* ~Vergleiche die Runen mit den Runen im Buch der Knochen und Asche. ~ */ GOTO 15
  IF ~~ THEN REPLY #4070 /* ~Sieh dir das Skelett noch einmal genau an.~ */ GOTO 4
  IF ~~ THEN REPLY #4071 /* ~Sieh dir die Runen noch einmal genau an.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4072 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4073 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4074 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4075 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4076 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4077 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #4011 /* ~Du schaust dir das quer über den Brustharnisch verlaufende Runenmuster genau an. Auf der untersten Ebene betrachtet handelt es sich wohl um einen schwächeren Rüstungszauber, doch die schädelförmigen Runen und kugelförmigen Embleme an den Rändern der Rüstung sprechen dafür, daß hier auch verschiedene stärkere Nekromantie- und Schutzzauber im Spiel sind. Bei Berührung wacht das Skelett wahrscheinlich auf... und verteidigt sich.~ */
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4079 /* ~Versuch, ob du die Zauber irgendwie auflösen kannst.~ */ DO ~SetGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 9
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4080 /* ~Versuch, ob du die Zauber irgendwie auflösen kannst.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4081 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4082 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4083 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4084 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4085 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4078 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.1 8.0 8.1
  SAY #4012 /* ~Du vermutest, daß du die Runen auf dem Brustharnisch vernichten mußt, um den Zauber aufzudecken - doch dies ist wahrscheinlich einfacher gesagt als getan... das Muster ist sehr komplex, und bei Vernichtung des falschen Teils wird das Skelett womöglich zum Leben erweckt.~ */
  IF ~  PartyHasItem("TomeBA")
~ THEN REPLY #64296 /* ~Vergleiche das Muster mit den Zaubersprüchen im Buch der Knochen und Asche, und versuche festzustellen, wie sie durchbrochen werden können.~ */ GOTO 16
  IF ~~ THEN REPLY #4086 /* ~Setz zuerst die Runen für die Rüstungszauber außer Kraft, dann den nekromantischen und anschließend den Schutzzauber.~ */ GOTO 10
  IF ~  GlobalLT("Giant_Skeleton_Enchant","GLOBAL",2)
~ THEN REPLY #4087 /* ~Setz zuerst die Runen für den Schutzzauber außer Kraft, und arbeite dich dann von hinten nach vorne durch das Runenmuster, heb den nekromantischen und anschließend den Rüstungszauber auf.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 11
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",1)
~ THEN REPLY #4088 /* ~Setz zuerst die Runen für den Schutzzauber außer Kraft, und arbeite dich dann von hinten nach vorne durch das Runenmuster, heb den nekromantischen und anschließend den Rüstungszauber auf.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4089 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4090 /* ~Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4091 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4092 /* ~Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4093 /* ~"Hey, wie wär's mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4094 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1 16.0
  SAY #4013 /* ~Als du anfängst, die Runen auf dem Brustharnisch zu bearbeiten, ertönt der Klang einer Eisenglocke durch die ganze Leichenhalle... blitzartig wacht das Skelett auf und erhebt seine Klinge zum Angriff!~ */
  IF ~~ THEN REPLY #4095 /* ~"Du wirst dich noch danach zurücksehnen, tot zu sein, Knochengestell..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2 16.1
  SAY #4014 /* ~Die Arbeit ist zunächst schwierig und nervenaufreibend, aber mit der Zeit schaffst du es, dich konzentrieren, so daß die Runen sich unter deinen Händen auflösen. Innerhalb weniger Minuten befreist du das Skelett von jeglichen Zaubern, die es zusammengehalten haben. Es bricht zusammen und fällt klappernd und mit einem heftigen Schlag zu Boden!~ */
  IF ~~ THEN REPLY #4096 /* ~"Verfluchter Haufen Knochen...!"~ */ DO ~AddexperienceParty(800)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #4015 /* ~Du wartest kurz, doch niemand reagiert auf das Geräusch. Rasch durchwühlst du die am Boden liegenden Skeletteile. Die meisten sind zu schwer oder zu alt, als daß man noch irgend etwas damit anfangen könnte, doch dann entdeckst du ein Stück des Brustharnisches, auf dem noch mehr als die Hälfte einer Zauberformel zu sehen ist. Du hast das Gefühl, dies könnte noch sehr nützlich sein.~ */
  IF ~~ THEN REPLY #4097 /* ~"Dann nehm' ich's einfach..."~ */ DO ~GiveItemCreate("Breast1",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 16.2
  SAY #4016 /* ~Diesmal ist es einfacher, den Zauber zu bannen - die Runen lösen sich unter deinen Händen rasch auf. Innerhalb weniger Minuten hast du das Skelett frei von jeglichen Zaubern befreit, die es zusammengehalten haben. Weil du weißt, was als nächstes droht, fängst zu das Skelett auf, bevor es zu Boden fällt, und mit einem Ächzen legst du es sachte ab.~ */
  IF ~~ THEN REPLY #4098 /* ~"Mal sehen, was wir hier haben..."~ */ DO ~AddexperienceParty(800)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4017 /* ~Rasch durchwühlst du die Reste des Skeletts und nimmst wieder ein Stück des Brustharnisches ab. Auch darauf ist ein Teil eines gebannten Zaubers zu sehen, der dir sehr nützlich sein könnte.~ */
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",3)
~ THEN REPLY #4099 /* ~"Dann nehm' ich's einfach..."~ */ DO ~GiveItemCreate("Breast2",Protagonist,1,1,0)
~ EXIT
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",4)
~ THEN REPLY #4100 /* ~"Dann nehm' ich's einfach..."~ */ DO ~GiveItemCreate("Breast3",Protagonist,1,1,0)
~ EXIT
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",5)
~ THEN REPLY #4101 /* ~"Dann nehm' ich's einfach..."~ */ DO ~GiveItemCreate("Breast4",Protagonist,1,1,0)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #64295 /* ~Du ziehst das Buch zu Rate und vergleichst die Diagramme mit den Zeichen auf der Brustplatte. Soweit du feststellen kannst, handelt es sich bei den Runen um einen Rüstungszauber, aber einige schädelförmige Runen und kreisförmige Zeichen entlang der Kanten der Rüstung lassen darauf schließen, daß auch einige größere nekromantische und Abwehrzauber mit eingeschlossen sind. Wenn du das Skelett berührst, wird es vermutlich aufwachen... und sich verteidigen.~ */
  IF ~~ THEN REPLY #64298 /* ~Ziehe das Buch der Knochen und Asche zu Rate, und versuche festzustellen, wie sie durchbrochen werden können.~ */ GOTO 16
  IF ~~ THEN REPLY #64299 /* ~Laß die Runen in Ruhe und untersuche noch einmal das Skelett.~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 9.0 15.0
  SAY #64297 /* ~Soweit du das aus dem Buch schließen kannst, scheint der Rüstungszauber sich nur auf die Brustplatte zu beziehen, der nekromantische Zauber ermöglicht es dem Skelett, aufzuerstehen, und der Abwehrzauber verleiht dem Skelett sein beschränktes Bewußtsein seiner Umgebung. Du schätzt, daß das Skelett es als Angriff auslegen würde, wenn du seinen Abwehrzauber  schwächst, es sei denn, du machst es zuvor für deine Gegenwart unempfänglich.~ */
  IF ~~ THEN REPLY #64300 /* ~Zerstöre zunächst die Runen des Rüstungszaubers, dann die des nekromantischen Zaubers und zuletzt die des Abwehrzaubers. ~ */ GOTO 10
  IF ~  GlobalLT("Giant_Skeleton_Enchant","GLOBAL",2)
~ THEN REPLY #64301 /* ~Zerstöre zunächst die Runen des Abwehrzaubers und arbeite dich dann rückwärts durch das Muster, indem du den nekromantischen und zuletzt den Rüstungszauber auslöschst ~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 11
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",1)
~ THEN REPLY #64302 /* ~Zerstöre zunächst die Runen des Abwehrzaubers und arbeite dich dann rückwärts durch das Muster, indem du den nekromantischen und zuletzt den Rüstungszauber auslöschst ~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 13
  IF ~~ THEN REPLY #64303 /* ~Laß die Runen in Ruhe und untersuche noch einmal das Skelett.~ */ GOTO 4
END
