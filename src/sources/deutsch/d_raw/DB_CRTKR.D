// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~Der etwas verwirrt wirkende Mann nickt dir zu, als du dich näherst. "Seid gegrüßt, mein Herr. Dürfte ich fragen, wie Ihr hierhergelangt seid?" ~ */
  IF ~~ THEN REPLY #66522 /* ~"Ich bin einfach diese Treppe da hinuntergegangen... durch diese merkwürdige Tür, auf die ich gestoßen bin."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"Dann muß ich sie am besten ein bißchen besser verstecken." Er zuckt mit den Achseln und lächelt dich dann an. "Ich bin übrigens der Hausmeister des Bordells. Ihr dürftet Euch eigentlich nicht hier unten aufhalten. Aber es ist schon in Ordnung, wenn Ihr Euch ein bißchen umseht."~ */
  IF ~~ THEN REPLY #66665 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"Da seid Ihr ja wieder. Hört mal... Ihr dürftet eigentlich gar nicht hier unten sein. Es wäre nett, wenn Ihr nicht so lange hier unten verweilen würdet. Ich möchte nicht, daß einer von uns beiden Schwierigkeiten bekommt."~ */
  IF ~~ THEN REPLY #66667 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~Er lächelt nervös. "Ich sollte Euch wirklich nicht hier herunterlassen, geschweige denn hier mit Euch plaudern. Bitte jetzt keine Fragen."~ */
  IF ~~ THEN REPLY #66669 /* ~"Sag mir wenigstens, was das hier für ein Ort ist."~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"Hier werden die Sinnessteine der Damen aufbewahrt... Sie verwenden sie als eine Art Tagebuch. Ihr könnt sie nicht benutzen, wenn Ihr daran gedacht haben solltet... Jeder der Steine ist auf eine bestimmte Schülerin des Bordells abgestimmt, so daß nur sie auf den Stein zugreifen kann."~ */
  IF ~~ THEN REPLY #66671 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ JOURNAL #66672 /* ~Ich habe den Hausmeister des Bordells in einer großen Kammer unter dem Bordell getroffen. Die Kammer enthielt für jede der Prostituierten oben eine Sinnesstein, den sie als Tagebuch verwenden. Er sagte aber, er könne sie nicht verwenden, da sie alle auf eine bestimmte Frau abgestimmt seien.~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"Seid gegrüßt, mein Herr." Der Mann dreht sich zu Grace, der Gefallenen. "Seid gegrüßt, Lady Grace... Seid versichert, daß ich mich während Eurer Abwesenheit gut um die Sinnesteine der Damen kümmern werde." Der Mann wendet sich wieder dir zu. "Wenn Ihr mich jetzt entschuldigen wollt. Ich habe noch ein paar Dinge zu erledigen. Lebt wohl, mein Herr."~ */
  IF ~~ THEN REPLY #66673 /* ~Geh weg.~ */ EXIT
END
