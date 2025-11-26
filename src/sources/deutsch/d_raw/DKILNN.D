// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~Vom Gesicht her sieht dieser Mann Pestle Kilnn täuschend ähnlich, obwohl seine Haut sich nicht ständig verändert und mutiert. "Seid gegrüßt, aber... ich heiße Kilnn. Was darf's denn sein?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"Eigentlich such ich einen Heilungstrunk."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"Ich möchte was kaufen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"Eigentlich bin nur ganz zufällig vorbeigekommen. Leb wohl, Kilnn."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~Du siehst Kilnn, den Gehilfen des Alchimisten. "Seid gegrüßt... Was darf's denn sein?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"Eigentlich such ich einen Heilungstrunk."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"Ich möchte was kaufen..."~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"Eigentlich bin nur ganz zufällig vorbeigekommen. Leb wohl, Kilnn."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"Habt Ihr schon mit Pestle gesprochen? Er kümmert sich gewöhnlich um solche Sachen."~ */
  IF ~~ THEN REPLY #42086 /* ~"Gut, dann werd ich mit ihm sprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"Aber ich arbeite doch den ganzen Tag im Lager... Ich glaube, ich bin nicht der Richtige für Eure Fragen."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"Der alte Ingenieur in der Gießerei braucht angeblich eine Probe meines Bluts und meiner Haut, damit seine Maschine läuft. Bitte mach du das für mich."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"Kann ich dann vielleicht was kaufen?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"Darüber müßt Ihr mit Pestle sprechen. Für solche Dinge ist er zuständig."~ */
  IF ~~ THEN REPLY #42092 /* ~"Gut, dann werd ich mit ihm sprechen. Leb wohl."~ */ EXIT
END
