// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS1221.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DS1221~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35306 /* ~Dieses belebte Skelett stinkt fürchterlich, als ob es erst vor kurzem präpariert worden sei. Sein Kiefer und die wichtigsten Gelenke sind straff mit Lederriemen umwickelt, und ein roher Kittel ist ihm übergeworfen worden. Die Zahl "1221" ist ihm in die Stirn gemeißelt worden.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35307 /* ~"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35330 /* ~"Entschuldige bitte, aber hast du hier vielleicht ein paar Skelette herumlaufen sehen?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35331 /* ~"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35332 /* ~"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35333 /* ~Wende deine Erzählende-Knochen-Kraft auf das Skelett an.~ */ GOTO 2
  IF ~~ THEN REPLY #35338 /* ~Untersuche das Skelett gründlich.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35371 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35372 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35373 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35374 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35375 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35376 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35377 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35378 /* ~"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"~ */ EXTERN ~DMORTE~ 372
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35379 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35380 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35381 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35308 /* ~Das Skelett antwortet nicht.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35309 /* ~"War nett, mit dir zu reden, Gerippe. Bleib gesund."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35328 /* ~"War nett, mit dir zu reden, Gerippe. Bleib gesund."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35329 /* ~"War nett, mit dir zu reden, Gerippe. Bleib gesund."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35334 /* ~Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35335 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35336 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35337 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35339 /* ~Irgendwer hat sich die Mühe gemacht, die Knochen dieses Skeletts mit Lederbändern zu umwickeln. Sie sind so um das Gestell gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Bänder sind mit Metallbolzen an den Gelenken des Skeletts befestigt. Das Skelett sieht aus, als ob es eine harte Zeit hinter sich hätte: An vielen Stellen sind Teile der Knochen abgesprungen, und die zahlreichen Brüche sind mit Dichtungsmittel und stinkenden Klebstoffen repariert worden.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35340 /* ~Versuch dem Skelett die Gelenkbolzen herauszunehmen.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 376
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35362 /* ~Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35363 /* ~Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35364 /* ~Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35365 /* ~"Was dagegen, wenn ich mir 'n paar von diesen Bändern und Bolzen borge?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35366 /* ~"Was dagegen, wenn ich mir 'n paar von diesen Bändern und Bolzen borge?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35367 /* ~"Was dagegen, wenn ich mir 'n paar von diesen Bändern und Bolzen borge?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35368 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35369 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35370 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35345 /* ~Du ziehst an den Eisenbolzen, aber du bist nicht stark genug, sie herauszuziehen. Sie sitzen bombenfest.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35346 /* ~"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen... hmmmn. Vielleicht komm ich wieder, Knochengestell."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35347 /* ~"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen... hmmmn. Vielleicht komm ich wieder, Knochengestell."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35348 /* ~"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen... hmmmn. Vielleicht komm ich wieder, Knochengestell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35349 /* ~Laß das Skelett in Ruhe.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 370
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35350 /* ~Laß das Skelett in Ruhe.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35351 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35353 /* ~Du ziehst mit aller Kraft an den Eisenbolzen, und nach kurzer Zeit heftigen Ziehens reißt du sie aus den Gelenken. Das Skelett fällt in sich zusammen; einige Knochen zucken noch.~ */
  IF ~~ THEN REPLY #35354 /* ~"Tut mir echt leid, Gerippe..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35356 /* ~Mit Hilfe deines Brecheisens reißt du die Bolzen aus den Gelenken des Skeletts. Das Skelett fällt zusammen; einige Knochen zucken noch.~ */
  IF ~~ THEN REPLY #35357 /* ~"Tut mir leid, Knochengestell..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35382 /* ~Dieses Skelett reagiert nicht. Es scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.~ */
END
