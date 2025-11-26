// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~Du siehst einen Mann von mittelgroßer Statur, der in ein langes, rabenschwarzes Gewand gehüllt ist. Sein Haar ist ordentlich frisiert und ein perfekt getrimmter Spitzbart ergänzt seine schönen Gesichtszüge. Als er dich bemerkt, legt er das Buch weg, in dem er geschrieben hatte und marschiert selbstsicher und lächelnd zu dir hinüber. "Ich bin schwer beeindruckt... ich muß zugeben, ich habe nicht geglaubt, daß du es soweit schaffen würdest."~ */
  IF ~~ THEN REPLY #32476 /* ~"Ich freue mich, dich enttäuscht zu haben... bist du derjenige, der für all die wandelnden Toten verantwortlich ist?~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"Elender Nekromant! Ich bin gekommen, um deiner Entweihung dieses Ortes ein Ende zu setzen."~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"Wer ich bin, ist für dich nicht von Bedeutung. Was ich will, ist die Frage, die dich am meisten interessieren sollte." Während er spricht, mustert er dich von oben bis unten, als ob er irgendwie fasziniert von dir ist.~ */
  IF ~~ THEN REPLY #32479 /* ~"Na gut... was willst du?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"Falsch. Was du willst, interessiert mich *nicht*... ich bin hier, um dich zu töten."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"Vergiß es. Ich muß jetzt gehen."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~Er weicht einen Schritt zurück und hebt eine Augenbraue. "Ich will... dein Blut."~ */
  IF ~~ THEN REPLY #32482 /* ~"Ist das 'ne Drohung?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"So ein Zufall... genau das will ich auch von dir. Bereite dich auf dein Ende vor!"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"Äh... das interessiert mich nicht. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~Der Mann setzt zu einer Antwort an, hält aber abrupt inne. Ein böses Lächeln breitet sich auf seinem Gesicht aus und er beginnt zu lachen. "Ja... das ist es wohl." Er lacht noch lauter über seinen eigenen Witz, den nur er versteht. Du bemerkst, daß seine Hände sich rechts und links von seinem Körper bewegen. Langsam tanzen sie vor und zurück und beschreiben komplizierte Muster in der Luft.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"Ja? Nun, du kannst gern versuchen, mich zu töten." Er lächelt selbstsicher und hebt die Hände. Langsam tanzen sie vor und zurück und beschreiben komplizierte Muster in der Luft.~ */
  IF ~~ THEN REPLY #32485 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"Du gehst nirgendwohin." Er lächelt selbstsicher und hebt die Hände. Langsam tanzen sie vor und zurück und beschreiben komplizierte Muster in der Luft.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
