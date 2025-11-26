// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~Du erblickst eine gelangweilt aussehende Frau. Sie wirft dir einen Blick zu, als du dich näherst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63250 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~Sie seufzt und blickt sich um, dann wendet sie sich dir zu. "Sei ebenfalls gegrüßt... Was willst du?"~ */
  IF ~~ THEN REPLY #63253 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"Nichts. Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~Ihr Stirnrunzeln wird stärker. "Fragen... Vergiß es, Dussel. Ich bin kein Schnüffler, und ich will es auch nicht sein. Also verschwinde." ~ */
  IF ~~ THEN REPLY #63256 /* ~"Es wird nur einen Moment deiner Zeit beanspruchen..."~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"Ich habe keine Zeit für dich." Sie hält inne, greift hinter ihren Rücken und zieht einen Dolch hervor. "Wie wär's, wenn ich dir statt dessen ein paar Zentimeter schönes baatorianisches Stahl verpasse?"~ */
  IF ~~ THEN REPLY #63259 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~Du erblickst eine gelangweilt aussehende Frau. Sie wirft dir einen Blick zu, als du dich näherst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63262 /* ~"Sei gegrüßt."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~Sie lächelt dich an, sieht sich aber nervös um. "Ja. Sei gegrüßt und so weiter... Willst du irgendwas?"~ */
  IF ~~ THEN REPLY #63265 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~Sie runzelt die Stirn und seufzt. "Wenn's sein muß. Mach aber bitte schnell."~ */
  IF ~~ THEN REPLY #63268 /* ~"Wer bist du?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"Was machst du da?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"Weißt du irgendwas von einem Deva?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"Wer ich bin ist nicht wichtig. Stell einfach deine Fragen, und ich versuche, sie zu beantworten..." Sie sieht dich ungeduldig an.~ */
  IF ~~ THEN REPLY #63274 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"Was ich hier mache, geht dich nichts an. Stell einfach deine Fragen."~ */
  IF ~~ THEN REPLY #63277 /* ~"Na gut. Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"Verdammnis ist eine Stadt der Lügner, Betrüger, und Messerstecher. Man kann sich nur selbst vertrauen... und selbst das würde ich mir zweimal überlegen." Sie zuckt die Schultern. "Merk dir das, und du kommst hier gut zurecht."~ */
  IF ~~ THEN REPLY #63280 /* ~"Lügner, Betrüger... Gehörst du auch dazu?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~Sie lächelt. "Absolut..."~ */
  IF ~~ THEN REPLY #63284 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~Sie denkt nach und runzelt die Stirn. "Nein, von einem Deva weiß ich nichts." Sie zuckt die Schultern. "Frag doch mal beim Verwaltungsbüro in der Stadtmitte."~ */
  IF ~~ THEN REPLY #63287 /* ~"Das werde ich. Ich habe noch ein paar Fragen...."~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~Du erblickst eine gelangweilt aussehende Frau. Sie wirft dir einen Blick zu, als du dich näherst, und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63290 /* ~"Sei gegrüßt."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~Sie sieht dich ängstlich an. "Äh... Hallo. Was auch immer du willst, ich hab es nicht. Laß mich in Ruhe." Sie blickt um sich.~ */
  IF ~~ THEN REPLY #63293 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"Hmm... nun ja, das mag sein wie es will, ich will trotzdem nicht von dir belästigt werden. Geh weg." Sie runzelt die Stirn.~ */
  IF ~~ THEN REPLY #63296 /* ~"Es wird nur einen kurzen Moment deiner Zeit beanspruchen."~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~Ihr Stirnrunzeln wird stärker, und sie stemmt die Hände in die Hüften. "In Ordnung, du verstehst es wohl nicht, wenn ich auf die nette Art *nein* sage... Muß ich es dir auf die weniger nette Art beibringen?"~ */
  IF ~~ THEN REPLY #63299 /* ~"Ja, das tust du."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~Sie lächelt. "Na gut... Setz dich auf einen verdammten Pfahl, bis deine Arschbacken den Boden berühren und dann dreh' dich!" Sie macht eine unanständige Geste. "Verpiss dich, du bescheuerter Trottel!"~ */
  IF ~~ THEN REPLY #63302 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~Du erblickst eine gelangweilt aussehende Frau. Sie wirft dir einen Blick zu und legt die Stirn in Falten. "Ich habe genug von dir. Zieh Leine!" Sie dreht sich weg und ignoriert dich.~ */
  IF ~~ THEN REPLY #63304 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~Diese Person sieht so aus, als wäre sie sehr aufgebracht darüber, im Gefängnis zu sitzen. Egal, was du anstellst, du bekommst von ihr keine Antwort.~ */
  IF ~~ THEN REPLY #63306 /* ~Geh weg.~ */ EXIT
END
