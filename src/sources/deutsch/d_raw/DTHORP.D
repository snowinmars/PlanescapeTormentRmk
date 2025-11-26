// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~Dieses Wesen ist riesig, mehr als drei Meter groß. Berge von Muskeln stützen seine massige Statur. Als du näherkommst, grinst er dich anzüglich an und lacht.~ */
  IF ~~ THEN REPLY #51206 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~Beachte das Wesen nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~Er sieht zu dir herunter und lächelt dich freundlich an. "Was du wollen, Kleinling?"~ */
  IF ~~ THEN REPLY #51209 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"Nichts. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"Du haben Frage, vielleicht Thorp haben Antwort." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #51212 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"Was machst du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"Ich habe erfahren, daß ihr gegen einen Abishai kämpfen werdet."~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"Ich habe mit Xanthia gesprochen. Sie sagte, ihr würdet gegen einen Abishai kämpfen?"~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"Ich muß jetzt gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~Er schlägt sich krachend auf die Brust. "Thorp." Er hebt die Arme über den Kopf und reckt die Fäuste in Richtung Himmel. "Mächtiger Krieger ist Thorp. Alle Thokola sind mächtige Krieger." Er stemmt die Fäuste in die Hüften und funkelt dich an. "Wer du?"~ */
  IF ~~ THEN REPLY #51219 /* ~Lüge: "Ich bin Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"Ich kann mich nicht an meinen Namen erinnern."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~Er denkt einen Moment nach und nickt dann. "Das guter Name für Kleinling. Schön klingen. Thorp mögen."~ */
  IF ~~ THEN REPLY #51222 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~Er nickt, als er deine Narben betrachtet. "Du haben mächtige Narben. Du müssen sein großer Krieger... wie Thorp!" Er runzelt die Stirn und nickt weise. "Du auf Kopf geschlagen zu oft. Nicht Namen erinnern. Irgendwann er kommen wieder."~ */
  IF ~~ THEN REPLY #51225 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~Er stößt ein bellendes Lachen aus und grinst dich dann an. "Thorp hier mit Freunde." Er deutet auf den Thokola neben ihm. "Wir werden hauen eine... fliegende Eidechse." Er brüllt und trommelt sich mit seinen riesigen Fäusten auf die Brust.~ */
  IF ~~ THEN REPLY #51228 /* ~"Äh... Eine fliegende Eidechse?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~Er nickt und fängt an, Kriechbewegungen zu machen. "Eidechse, du weißt... aber sie fliegen." Er fängt an, mit den Armen zu schlagen wie ein großer, unförmiger Vogel. Schließlich hört er mit seinen Bewegungen auf und sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #51232 /* ~"Du meinst einen Drachen?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~Er schnauft und richtet sich zu seiner vollen Größe auf. "Thorp gut, aber er nicht sein so gut. Eines Tages Thorp wollen Drachen hauen..." Er starrt mit sehnsüchtigem Blick in die Ferne, dann seufzt er. "Aber dies nicht sein der Tag."~ */
  IF ~~ THEN REPLY #51236 /* ~"Nun, wenn du nicht von einem Drachen redest, wovon dann?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"Thorp nicht erinnern, wie Xanthia es nennen..." Er denkt nach. "Es Eidechse, groß wie Thorp. Gehen auf Hinterbeine... haben Flügel... haben Klauen... rote Farbe. Glauben, sie sagen sie heißen... Abischei?" Er verstummt, dann zuckt er die Schultern.~ */
  IF ~~ THEN REPLY #51241 /* ~"Du meinst einen Abishai?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~Ein Thokola namens Thorp will gemeinsam mit seinen zwei Thokola-Freunden gegen einen Abishai kämpfen. Die Thokola scheinen zwar nicht sonderlich helle, dafür jedoch um so stärker zu sein. Vielleicht siegen sie ja.~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~Seine Augen leuchten auf, und er lächelt dich fröhlich an, während er mit dem Kopf nickt. "Ja! Abishai... Fliegende Eidechse. Thorp und Freunde hauen richtig gut. Thorp sein Krieger von Format dann. Xanthia akzeptieren Entschuldigung..."~ */
  IF ~~ THEN REPLY #51246 /* ~"Was ist das für eine Geschichte über Xanthia und eine Entschuldigung?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"Thorp nehmen Freunde mit in Taverne gestern abend. Thorp werden stockbesoffen, fallen auf Xanthias Tisch, schütten Getränke über sie." Es scheint ihm peinlich zu sein. "Xanthia sagt, sie nicht akzeptieren Entschuldigung, bis Thorp sein Krieger von Format."~ */
  IF ~~ THEN REPLY #51250 /* ~"Einen Abishai zu töten soll dir also Format geben?"~ */ JOURNAL #67300 /* ~Anscheinend haben Thorp und seine Freunde in der Taverne im Rausch eine Dame beleidigt, indem sie ihr den Inhalt ihrer Gläser übers Kleid geschüttet haben. Die Dame, Xanthia, hat sich geweigert, Thorps Entschuldigung anzunehmen, es sei denn, er könne beweisen, daß er ein wahrer Krieger von Format sei. Dazu müsse er den Abishai töten.~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~Er zuckt die Schultern. "Xanthia das sagen. Thorp nicht wissen."~ */
  IF ~~ THEN REPLY #51254 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~Er starrt dich kurz an, dann zuckt er mit den Schultern. "Thorp nicht wissen. Thorp neu hier." Er lächelt dich kindlich an. "Thorp hier für Spaß!"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"Was für eine Art Spaß?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"Ja, ihr werdet einen Abishai hauen."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"Ja, ihr werdet einen Abishai hauen."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~Er lächelt und nickt dir begeistert zu. "Das richtig! Thorp und Freunde hauen!"~ */
  IF ~~ THEN REPLY #51260 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~Er lächelt und nickt dir begeistert zu. "Das richtig! Thorp und Freunde hauen!"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"Nun, viel Vergnügen. Leb wohl."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~Warne Thorp: "Ich habe erfahren, daß Abishai nur durch magische Waffen verletzt werden können."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~Ich habe Thorp gewarnt, daß Abishai nur durch Magie oder magische Waffen verletzt werden können. War gut, daß ich ihm das gesagt habe - sonst wär's das sichere Ende für ihn und seine Freunde gewesen.~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~Warne Thorp nicht: "Nun, viel Vergnügen. Ich bin sicher, daß ihr siegen werdet. Leb wohl."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~Thorp scheint nicht zu wissen, daß Abishai nur durch Magie oder magische Waffen verletzt werden können. Ich hätte ihn ja warnen können... aber was soll's. Das wird bestimmt ein unterhaltsamer Kampf.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~Er sieht dich besorgt an. "Brauchen Magie? Wie du wissen?"~ */
  IF ~~ THEN REPLY #51267 /* ~"Ich habe mich umgehört, Thorp. Das ist, was man mir gesagt hat."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"Ich habe mit Xanthia geredet. Sie hat es mir gesagt."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"Thorp nicht haben Magie. Freunde nicht haben Magie. Wir sterben, wenn hauen Abishai..." Er seufzt. "Thorp nicht sein Krieger von Format. Xanthia nicht akzeptieren Entschuldigung."~ */
  IF ~~ THEN REPLY #51270 /* ~"Du wolltest dein Leben für die Ehre einer Dame riskieren, Thorp. Nur ein Krieger von Format würde das tun."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~Er starrt dich einen Moment verständnislos an, dann erscheint ein breites Lächeln auf seinem Gesicht. "Wirklich? Thorp und Freunde jetzt haben Format?"~ */
  IF ~~ THEN REPLY #51272 /* ~"Ja. Betrachte Xanthias Ehre als wiederhergestellt und die Entschuldigung als angenommen."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"Thorp danken dir. Du retten Leben. Du retten Leben von Freunde." Er wendet sich den anderen Thokola zu und redet schnell mit ihnen. Einen Moment später verbeugen sich alle drei in deine Richtung, und jeder von ihnen reicht dir einen Beutel voll Münzen.~ */
  IF ~~ THEN REPLY #51274 /* ~"Vielen Dank."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~Er lächelt. "Du guter Freund. Du verdienen."~ */
  IF ~~ THEN REPLY #51277 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~Erst scheint er verwirrt, dann zeigt sich Verständnis in seinem Gesicht. "Xanthia Thorp hinter Licht führen... Sie lügen, versuchen Thorp und Freunde tot kriegen..."~ */
  IF ~~ THEN REPLY #51279 /* ~"Tut mir leid, Thorp."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~Er nickt. "Xanthia nicht verdienen Entschuldigung. Thorp frei von Schuld bei ihr."~ */
  IF ~~ THEN REPLY #51281 /* ~"Ja, du bist von deiner Schuld befreit."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~Du siehst Thorp, den Thokola. Er lacht dich freundlich an, als du näherkommst. "Der Kleinling zurück! Was du wollen von Thorp?"~ */
  IF ~~ THEN REPLY #51283 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~Du siehst Thorp, den Thokola. Er lacht dich freundlich an. "Der Kleinling wieder! Was du wollen?"~ */
  IF ~~ THEN REPLY #66163 /* ~"Nichts, ich warte nur auf den glorreichen Kampf zwischen euch und dem Abishai."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~Thorp läßt ein donnerndes Lachen ertönen und beginnt, sich mit den Fäusten auf die Brust zu schlagen. "Thorp mächtiger Krieger! Bald Thorp sein Krieger von Format." Er beruhigt sich und sieht dich ernst an. "Dann Dame vergeben Thorp für sein Trampel."~ */
  IF ~~ THEN REPLY #63466 /* ~"Leb wohl, Thorp."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~Du siehst Thorp, den Thokola. Er lacht dich freundlich an, als du näherkommst. "Thorps guter Freund der Kleinling ist zurück! Was du wollen von Thorp?" Er lächelt dich aufmunternd an. "Thorp nicht vergessen du Leben retten."~ */
  IF ~~ THEN REPLY #66164 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~Du triffst auf Thorp, den Thokola. Er lacht dich freundlich an, als du ihn ansprichst. "Thorp dankt dir, Kleiner. Du hilfst Thorp!"~ */
  IF ~~ THEN REPLY #66166 /* ~"Keine Ursache, Thorp. Leb wohl."~ */ JOURNAL #67303 /* ~Manchmal staune ich über mich selbst. Thorp und seine Freunde haben mir leid getan, und so hab' ich ihnen geholfen, den Abishai umzubringen. Was soll ich sagen - ein kurzer Moment der Schwäche meinerseits?~ */ EXIT
END
