// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~Das Skelett dreht sich mit einem klappernden Geräusch zu dir um. Mehrere Knochen werden durch Lederriemen zusammengehalten, und über seinen Schultern hängt ein grüner Umhang, auf dem Weinflecken zu sehen sind.~ */
  IF ~~ THEN REPLY #2567 /* ~"Nette Tunika. Wirklich."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~Sieh dir das Skelett genau an.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~Sieh dir das Skelett genau an.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"Was hältst du von diesem Skelett, Morte? Ist dir das als Knochengerüst gut genug?"~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~Das Skelett antwortet nicht.~ */
  IF ~~ THEN REPLY #2571 /* ~"Nett, mit dir gesprochen zu haben, Knochen. Bleibt so frisch."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~~ THEN REPLY #2573 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~Irgend jemand hat sich die Mühe gemacht, die Knochen des Skeletts mit Lederriemen zusammenzubinden. Die Riemen sind so um den Körper gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Riemen sind an Metallbolzen befestigt, die in die Gelenke eingeschlagen wurden. Dieses Skelett ist in gutem Zustand, seine Knochen sind frisch mit weißer Farbe gestrichen und von allen Resten des früheren Körpers gereinigt worden.~ */
  IF ~~ THEN REPLY #7074 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~Wie bei den Skeletten in der Leichenhalle hat sich auch hier jemand die Mühe gemacht, die Knochen des Skeletts mit Lederriemen zusammenzubinden. Die Riemen sind so um den Körper gewickelt, daß sie wie Muskeln und Sehnen aussehen. Im Gegensatz zu den Skeletten in der Leichenhalle wurden in die Gelenke dieses Skeletts keine Bolzen eingeschlagen... du kannst nicht genau erkennen, wie die Gelenke zusammengehalten werden. Dieses Skelett ist insgesamt in gutem Zustand, seine Knochen sind frisch mit weißer Farbe gestrichen und von allen Resten des früheren Körpers gereinigt worden.~ */
  IF ~~ THEN REPLY #7075 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END
