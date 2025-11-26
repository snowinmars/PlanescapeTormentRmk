// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~Dies ist ein Porträt einer grotesken, hakennasigen alten Vettel. Das Fleisch der Hexe hat eine ungesunde blaugraue Farbe. Ihre Augen glühen rot wie die Asche eines sterbenden Feuers. Ihr Kinn, lang und scharf, steht in einem extremen Unterbiß vor. Von ihrem Unterkiefer stehen zwei gelbliche Eckzähne nach oben vor, wie kleine Hauer. Das Lächeln auf ihren vertrockneten, lila schimmernden Lippen deutet auf ein schreckliches Geheimnis. Auf ener Plakette steht: 'Graue Hexe von Oinos.'~ */
  IF ~~ THEN REPLY #42684 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~Dies ist das Porträt eines grotesken, hakennasigen alten Weibes mit einem ungesunden blaugrauen Teint. Ihre Augen sind rot wie die Glut eines erlöschenden Feuers. Ihr schmales Kinn ist lang und spitz und steht in extremem Unterbiß hervor. Zwei schmutzige, gelbe Eckzähne ragen wie kleine Hauer aus ihrem Unterkiefer. Das Lächeln auf ihren faltigen, blauen Lippen kündet von einem schrecklichen Geheimnis. Auf einem Schild steht: 'Graue Hexe von Oinos'.~ */
  IF ~~ THEN REPLY #42686 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~Als du dich umdrehen willst, zieht irgend etwas im Bild deine Aufmerksamkeit auf sich... Du verspürst ein merkwürdiges Kribbeln im Hinterkopf... Eine Erinnerung wird wieder lebendig...~ */
  IF ~~ THEN REPLY #42687 /* ~Versuche, dich zu erinnern.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~Wende dich ab. Unterdrücke die Erinnerung.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~Du erinnerst dich, wie du verwirrt in einem Irrgarten aus Dornenhecken standst. Vor dir steht, laut kichernd, das häßliche alte Weib aus dem Bild. Zähneknirschend fragst dich, weshalb sie dich auslacht. "Mein armer, süßer Jüngling," trällert sie. "Das war doch dein *erster* Wunsch! Oder?" Mit ihrem knochigen, klauenbewehrten Finger zeigt sie auf deine Stirn. Plötzlich spürst du einen pochenden Schmerz in den Schläfen... Das ist alles, woran du dich erinnern kannst.~ */
  IF ~~ THEN REPLY #42689 /* ~Geh weg.~ */ EXIT
END
