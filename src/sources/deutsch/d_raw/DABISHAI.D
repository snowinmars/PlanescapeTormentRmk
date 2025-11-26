// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~Du siehst einen roten Abishai, eine Art Reptil mit einem schlangenartigen Körper, vier Klauen, ledernen Flügeln und einem Drachenkopf. Sein Körper ist bedeckt mit mattroten Schuppen. Die Kreatur steht aufrecht auf den Hinterbeinen und stützt sich mit ihrem Greifschwanz ab. Als du näherkommst, verengen sich seine Augen zu schmalen Schlitzen und er fängt an zu zischen.~ */
  IF ~~ THEN REPLY #58137 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~Der Abishai starrt dich an und zischt etwas in kehligen Lauten. Du merkst, daß er nicht mit dir spricht, als du eine Antwort von irgendwo hinter dem Abishai hörst. Nach einer Weile legt er den Kopf zur Seite und zischt dich an: "Was willst du?"~ */
  IF ~~ THEN REPLY #58140 /* ~"Ich habe ein paar Fragen..."~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~Der Abishai stößt eine Reihe von Zischlauten aus, auf die eine Antwort aus Richtung der unbekannten Quelle folgt. "Nein... Du sssprichst mit Tek'elach". Er deutet unbestimmt hinter sich. "Er einverstanden, mit dir reden... "~ */
  IF ~~ THEN REPLY #58143 /* ~"Warum kannst du meine Fragen nicht beantworten?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"Ich verstehe. Dann werde ich eben mit diesem Tek'elach sprechen."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~Der Abishai starrt dich einen Augenblick lang an, bevor er antwortet: "Tek'elach will dir sprechen. Nicht ich. Du gehen."~ */
  IF ~~ THEN REPLY #58147 /* ~"Ich verstehe. Dann werde ich eben mit diesem Tek'elach sprechen."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~Du spürst, wie eine Hitzewelle von dem Abishai ausstrahlt, als er sich zu dir herüberbeugt, um mit dir zu reden. "Du zeigen Respekt... Du sein vorsichtig... Ich beobachten. Ich töte dich, wenn du falsche Bewegung." Er grinst dich böse an und zeigt dabei eine Reihe messerscharfer Zähne. "Verstehen?"~ */
  IF ~~ THEN REPLY #58150 /* ~"Ja, ich verstehe. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"Nein, ich bin ein bißchen dumm. Wieso erklärst du es mir nicht?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~Der Abishai zischt dich an und schlägt nach der nächsten Wand. Seine Augen lassen deine nicht los, während er mit einem einzigen Wisch seiner Klauen mehrere tiefe Furchen in den Fels zieht. "Verstehen jetzt? Oder wollen noch näher, persönliche Erklärung?"~ */
  IF ~~ THEN REPLY #58153 /* ~"Ich verstehe sehr gut. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~Greif den Abishai an: "Mal sehen, wie du mit einem richtigen Gegner fertig wirst." ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~Der Abishai zischt dich böse an: "Du sollst reden mit Tek'elach... Geh!"~ */
  IF ~~ THEN REPLY #58156 /* ~"Leb wohl."~ */ EXIT
END
