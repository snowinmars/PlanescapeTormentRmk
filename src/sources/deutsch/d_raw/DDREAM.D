// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~Du stehst plötzlich unter der Schlinge eines Henkers. Eine kehlige Stimme ertönt gackernd aus der Dunkelheit. "Träumst du wieder? Wieder! Wieder!"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Dein Körper kommt dir merkwürdig leicht und luftig vor, als hättest du die Kontrolle über ihn verloren, als trüge dich der Wind hin, wo er wollte.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~Du schwebst durch einen Irrgang verschlungener Pflanzen und schwarzer Stacheln, die deinen schwerelosen Körper zerkratzen.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Kreaturen aus Alpträumen schieben sich aus den Wänden und dem Boden und reißen dein Fleisch auf. Ihre wilden Angriffe treiben dich zur Bewußtlosigkeit.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~Du stehst vor einem Turm aus Schädeln, der auf dich einredet, aber du verstehst die Worte nicht. Ein Klappern hinter dir lenkt dich ab, und du siehst eine Horde von Scheusalen auf dich zurasen.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~Du stehst wieder im Irrgarten, und der Gestank des Todes umgibt dich. Du weißt, daß du sie alle getötet hast. Die gackernde Stimme ertönt wieder.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"Oh, mein schönes kleines Rätsel, du hast diese und soviele mehr getötet, daß ich mit dem Zählen nicht mehr nachkomme." Du bist mit Stummheit geschlagen und kannst nicht anworten.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"Komm zu mir, mein Püppchen... Komm zu Ravel in ihrem Schwarzstachel-Irrgang. Komm mit mir träumen."~ */
  IF ~~ THEN REPLY #56051 /* ~Rüttel dich wach.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
