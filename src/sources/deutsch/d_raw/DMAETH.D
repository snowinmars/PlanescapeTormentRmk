// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~Das ist einer von zwei Männern, die sich anschreien und mit ihren Waffen herumfuchteln. Es sieht so aus, als ob sie sich jeden Moment an die Gurgel springen würden...~ */
  IF ~~ THEN REPLY #33598 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Geh nicht in ihre Nähe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~Der Mann, dessen Gesicht von der Anstrengung, seinem Feind Flüche entgegenzuschleudern, rot ist, wirbelt zu dir herum. "Was willst du?! Siehst du nicht, daß ich *beschäftigt* bin, du Schlucker!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~"Deine Geliebte hat mich angefleht, euch auseinanderzubringen."~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~"Ich würde gern wissen, warum ihr euch streitet."~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~"Das geht dich einen Scheißdreck an, Dussel. Zieh Leine!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~"Deine Geliebte hat mich angefleht, euch auseinanderzubringen."~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~"Kann ich euch irgendwie helfen, euren Streit beizulegen?"~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~"Nein, kannst du nicht! Dieser Hurensohn steckt seine Nase dauernd in mein Privatleben mit Elyce und jetzt werde ich dafür Kleinholz aus ihm machen! Das geht dich gar nichts an, also halt' dich da gefälligst raus!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~"Dein Liebhaber wollte, dass ich euch beide vom Kämpfen abhalte."~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~Der Mann verstummt plötzlich. "Elyce hat dich geschickt? Ich weiß nicht, wer du bist, Dussel, und es ist mir ein Rätsel, wie du uns auseinanderbringen könntest!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~"Indem ich euch beide zusammenschlage, wenn's nicht anders geht."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~"Indem ich euch beide zusammenschlage, wenn's nicht anders geht."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~"Indem ich euch beide zusammenschlage, wenn's nicht anders geht."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~"Indem ich euch beide zusammenschlage, wenn's nicht anders geht."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~"Also, Elyce will nicht, daß ihr euch verletzt... könnt ihr das Problem nicht irgendwie anders regeln, ohne ihr so viel Angst einzujagen?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~"Also, Elyce will nicht, daß ihr euch verletzt... könnt ihr das Problem nicht irgendwie anders regeln, ohne ihr so viel Angst einzujagen?"~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~"Mir ist es auch ein Rätsel. Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~"Bist du denn total *übergeschnappt*, Dussel? Guck dich doch mal im Spiegel an... du hast zwar 'ne Menge Narben, aber mich beeindruckst du damit nicht! Halt' die Knochenschüssel und *pack ein*!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~"Also, Elyce will nicht, daß ihr euch verletzt... könnt ihr das Problem nicht irgendwie anders regeln, ohne ihr so viel Angst einzujagen?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~"Also, Elyce will nicht, daß ihr euch verletzt... könnt ihr das Problem nicht irgendwie anders regeln, ohne ihr so viel Angst einzujagen?"~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~"Na gut... leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~"Kannst du dich nicht um deinen eigenen Kram kümmern?! Geh und steck deinen Kopf in einen Misthaufen, Dussel!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~"Hört auf euch zu streiten, oder ich schlage euch beide zusammen."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~"Hört auf euch zu streiten, oder ich schlage euch beide zusammen."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~"Hört auf euch zu streiten, oder ich schlage euch beide zusammen."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~"Hört auf euch zu streiten, oder ich schlage euch beide zusammen."~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~"Gut... Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~Der Mann sieht dich eine Weile an. "Äh... naja... ich bin sicher, daß wir unseren Streit auch anders beilegen können. Und das würde Elyce auch besser finden..."
~ */
  IF ~~ THEN REPLY #33623 /* ~"Freut mich, daß du's endlich einsiehst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~Der Mann legt einen Moment lang die Stirn in Falten, dann nickt er. "Du hast recht, Schleifer... hier kämpfe ich, damit sie aus dem Schatten ihres Bruders rauskommt, und auf der anderen Seite ignoriere ich ihre Bitte und mach einfach, was mir paßt." Er seufzt. "Ich werde unseren Streit wohl auch anders beilegen können..."~ */
  IF ~~ THEN REPLY #33624 /* ~"Freut mich, daß du's endlich einsiehst. Leb wohl."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~Elyces Geliebter nickt dir zu und lächelt. "Vielen Dank, daß du uns auseinandergebracht hast... du bist echt ein anständiger Kerl."
~ */
  IF ~~ THEN REPLY #33597 /* ~"Danke. Leb wohl."~ */ EXIT
END
