// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"Hé ! Cet endroit est interdit ! Tu n'as pas le droit d'être ici !"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"Comment puis-je avoir une autorisation ?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Montre le passe : "J'ai un passe." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Ment : "J'ai l'autorisation."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"Alors, laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"Tu peux t'adresser à une huile ou essayer de nous passer sur le corps." Il sourit de manière sinistre. "Je ne te recommande pas la dernière option."~ */
  IF ~~ THEN REPLY #64559 /* ~"J'essaierai tout de même."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"Très bien, très bien. Je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~Il examine l'objet avec attention. "Toutes mes excuses. Puis-je t'aider d'une manière ou d'une autre ?"~ */
  IF ~~ THEN REPLY #64561 /* ~"Non. Bonne journée."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"Non."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"Alors, il faut que tu me le montres." Il attend que tu lui présentes quelque chose puis te dit : "Si tu veux te ficher de moi, tu découvriras vite que j'ai peu de patience - et un très sale caractère."~ */
  IF ~~ THEN REPLY #64563 /* ~"Peut-être devriez-vous faire quelque chose pour y remédier."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"D'accord. Pas la peine d'être agressif. Adieu."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"Puis-je t'aider ?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"Comment puis-je franchir ces portes ?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Montre le passe : "J'ai un passe." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Ment : "J'ai l'autorisation de franchir ces portes."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"Alors, laisse tomber."~ */ EXIT
END
