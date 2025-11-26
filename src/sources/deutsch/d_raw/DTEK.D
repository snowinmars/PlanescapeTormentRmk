// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEK~

IF ~  Global("Know_Tek","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #58197 /* ~Du siehst ein entfernt humanoides Wesen, das mit grotesken Schuppen bedeckt ist. Es hat riesige Flügel und einen Greifschwanz. Es beobachtet dich amüsiert, als du näherkommst.~ */
  IF ~~ THEN REPLY #58198 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58199 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58200 /* ~Es stößt ein kehliges Lachen aus und lächelt dich an. "Ja, sei gegrüßt, kleiner Mensch."~ */
  IF ~~ THEN REPLY #58201 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58202 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.2 8.0 9.2 11.1 12.1 13.1 14.1 17.1 18.1 19.1 21.1 22.0 26.1 27.1 29.1 30.0
  SAY #58203 /* ~"Selbstverständlich, stell nur deine Fragen..." Es lächelt dich heiter an.~ */
  IF ~~ THEN REPLY #58204 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58205 /* ~"Was bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #58206 /* ~"Was machst du hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #58207 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 13
  IF ~  Global("AR0800_Visited","GLOBAL",0)
~ THEN REPLY #58208 /* ~"Was kannst du mir über die Stadt Verdammnis sagen?"~ */ GOTO 15
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",0)
~ THEN REPLY #58209 /* ~"Was ist mit Verdammnis geschehen? Warum all diese Veränderungen?"~ */ GOTO 23
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",1)
~ THEN REPLY #58210 /* ~"Was ist mit Verdammnis geschehen? Warum all diese Veränderungen?"~ */ GOTO 28
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #58211 /* ~"Als Göttermensch ist mir zufällig bekannt, daß wir in der Gießerei an einem geheimen Gerät arbeiten. Kannst du mir darüber etwas erzählen?"~ */ GOTO 29
  IF ~~ THEN REPLY #58212 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58213 /* ~Es denkt einen Moment über deine Frage nach. "Mein Name tut nichts zur Sache. Wenn es einen Grund gäbe, weshalb du mich kennen solltest, dann würdest du mich auch kennen." Es hält inne. "Wenn du mir aber unbedingt ein Namenschildchen anhängen möchtest, nenn mich einfach Tek'elach." Das Wesen lächelt.~ */
  IF ~~ THEN REPLY #58214 /* ~"Was ist denn das für ein Name?"~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #58215 /* ~"Ich habe ein paar Fragen..."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58216 /* ~"Leb wohl."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58217 /* ~"Der einzige, den du von mir bekommst..." Es fixiert dich genau.~ */
  IF ~~ THEN REPLY #58218 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58219 /* ~"Ich sollte wohl besser gehen. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #58220 /* ~Es legt den Kopf zur Seite und sieht dich nachdenklich an. "Was ich bin? Hmm... Mußt du das wirklich wissen?" Es denkt einen Moment darüber nach. "Naja, schaden wird es wohl nicht. Ich glaube, deine Leute kennen mich als einen höheren Baatezu... einen Cornugon, um genau zu sein."~ */
  IF ~~ THEN REPLY #58221 /* ~"Du bist ein höherer Baatezu?"~ */ GOTO 6
  IF ~~ THEN REPLY #58222 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58223 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58224 /* ~"Ja,... überrascht dich das?" Es sieht dich erwartungsvoll an.~ */
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #58225 /* ~"Ich verstehe nur nicht, wieso du dann hier bist. Solltest du nicht zu Hause sein und in diesem Blutkrieg kämpfen oder so?"~ */ GOTO 7
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #58226 /* ~"Ich verstehe nur nicht, wieso du dann hier bist. Solltest du nicht eigentlich irgend etwas anderes tun?"~ */ GOTO 9
  IF ~~ THEN REPLY #58227 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58228 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58229 /* ~Es sieht dich finster an. "Ja, da ist der Blutkrieg. Aber der liegt nun in weiter Ferne und muß nicht mehr erwähnt werden..."~ */
  IF ~~ THEN REPLY #58230 /* ~"Warum nicht?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 10.0 12.0 14.0
  SAY #58231 /* ~"Einzig und allein aus dem Grund, daß ich es nicht will... zumindest im Moment nicht." Es starrt dich böse an.~ */
  IF ~~ THEN REPLY #58232 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58233 /* ~"Ich gehe jetzt. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58234 /* ~Es sieht dich erstaunt an. "Etwa anderes? Meinst du damit vielleicht den Blutkrieg?"~ */
  IF ~~ THEN REPLY #58235 /* ~"Was ist der Blutkrieg?"~ */ GOTO 10
  IF ~~ THEN REPLY #58236 /* ~"Nicht unbedingt den Krieg, ich meine nur etwas anderes, als hier in diesem Tunnel zu sitzen."~ */ GOTO 11
  IF ~~ THEN REPLY #58237 /* ~"Schon gut, ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58238 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 29.0
  SAY #58239 /* ~Es denkt eine Weile über deine Frage nach. Du denkst schon, es will gar nicht antworten. "Der Blutkrieg ist ein... Konflikt zwischen uns und den Tanar'ri. Er hat keinerlei Bedeutung und muß nicht erwähnt werden."~ */
  IF ~~ THEN REPLY #58240 /* ~"Warum denn das?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 2.2 9.1
  SAY #58241 /* ~"Was ich hier mache, ist meine Sache. Ich glaube kaum, daß es dich etwas angeht." Es lächelt dich vielsagend an. "Ich schlage vor, du wechselst das Thema.~ */
  IF ~~ THEN REPLY #58242 /* ~"Ich verstehe diese Heimlichtuerei nicht. Du machst den Eindruck, als würde hier noch etwas anderes vor sich gehen."~ */ GOTO 12
  IF ~~ THEN REPLY #58243 /* ~"Schön. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58244 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #58245 /* ~Es sieht dich an und tut erstaunt. "So, mache ich das? Oder interpretierst du vielleicht das, was ich sage und tue, so wie es dir am besten paßt? Wie auch immer: Ich habe deine Frage beantwortet. In der Angelegenheit habe ich nichts mehr zu sagen."~ */
  IF ~~ THEN REPLY #58246 /* ~"Warum?"~ */ GOTO 8
  IF ~~ THEN REPLY #58247 /* ~"Schön. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58248 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #58249 /* ~"Was gibt es da zu erzählen?" Es deutet unbestimmt um sich herum. "Sieh doch selbst: Alles liegt hier offen vor dir."~ */
  IF ~~ THEN REPLY #58252 /* ~"Ich werde das Gefühl nicht los, daß es mehr zu wissen gibt, als man auf den ersten Blick sieht..."~ */ GOTO 14
  IF ~~ THEN REPLY #58253 /* ~"Ich verstehe... Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58254 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58250 /* ~Es sieht dich an und tut erstaunt. "Wirklich? Leidest du an Verfolgungswahn oder bist du so mißtrauisch? Wie auch immer, ich habe deine Frage beantwortet und habe in der Angelegenheit nichts mehr zu sagen."~ */
  IF ~~ THEN REPLY #58251 /* ~"Warum?"~ */ GOTO 8
  IF ~~ THEN REPLY #58255 /* ~"Schön. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58256 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #58257 /* ~Es runzelt die Stirn und denkt ernsthaft über deine Frage nach. "Es ist ein gottverlassener Ort,... ein Ort, an dem Betrug und Chaos herrschen,... eine Stadt, die am Abgrund des Verderbens schwebt. Sei auf der Hut, wenn du dich in ihren Mauern bewegst."~ */
  IF ~~ THEN REPLY #58258 /* ~"Am Abgrund des Verderbens schwebt?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58259 /* ~Es seufzt und schaut zur Seite. "Es ist eine *Grenz*stadt, kleiner Mensch. Auf der einen Seite liegen die Außenländer, auf der anderen liegt die Ebene Carzeri. Solange die gegenwärtige Situation in Verdammnis anhält, wird es eine Grenzstadt bleiben." Es macht eine rhetorische Pause. ~ */
  IF ~~ THEN REPLY #58260 /* ~"Erzähl weiter."~ */ DO ~SetGlobal("Know_Curst_Cure","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58261 /* ~"Wenn die Situation in der Stadt aus dem Ruder läuft, könnte sie in Carzeri hineinrutschen und mit der Ebene eins werden. Bei zu viel Reglementierung auf der anderen Seite wird sie in die Außenländer abgleiten und so keine Grenzstadt mehr sein." Es zuckt die Achseln. "Das ist das Schicksal solcher Orte."~ */
  IF ~~ THEN REPLY #58262 /* ~"Willst du damit sagen, daß die Stadt sich tatsächlich... verschieben könnte?"~ */ GOTO 18
  IF ~~ THEN REPLY #58263 /* ~"Ich habe noch weitere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58264 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58265 /* ~Es schenkt dir ein ironisches Lächeln. "Ja..."~ */
  IF ~~ THEN REPLY #58266 /* ~"Wenn das passieren sollte, was könnte man dagegen tun?"~ */ GOTO 19
  IF ~~ THEN REPLY #58267 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58268 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58269 /* ~Es zuckt die Achseln. "Feststellen, in welche Richtung die Stadt gerutscht ist, und ein Gegengewicht schaffen. Zu viel Ordnung? Richte ein bißchen Chaos an. Zu wenig Ordnung? Schaffe mehr Gesetze." Es lächelt. "Wenn du deine Maßnahmen konsequent durchführen würdest, könntest du die Stadt in ihre Grenzlage zurückbringen,... oder sie auf die andere Seite abgleiten lassen."~ */
  IF ~~ THEN REPLY #58270 /* ~"Du hast mir sehr geholfen... und das wirft eine weitere Frage auf: Warum?"~ */ GOTO 20
  IF ~~ THEN REPLY #58271 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58272 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 27.0
  SAY #58273 /* ~Es sieht dich verwirrt an. "Warum was?"~ */
  IF ~~ THEN REPLY #58274 /* ~"Ihr Baatezu seid doch allgemein bekannt als die Inkarnation des Bösen. Warum bist du dann so hilfsbereit?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58275 /* ~Es lacht kehlig und grinst: "Glaub nur nicht, daß ich dir aus Freundlichkeit helfe oder daß ich etwa nicht von Grund auf böse bin. Ich helfe dir, weil es mir zum Vorteil gereicht... Das ist alles."~ */
  IF ~~ THEN REPLY #58276 /* ~"Inwiefern gereicht es dir zum Vorteil, wenn du mir hilfst?"~ */ GOTO 22
  IF ~~ THEN REPLY #58277 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58278 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #58279 /* ~"Ja, inwiefern eigentlich..." Es lächelt dich weiterhin an.~ */
  IF ~~ THEN REPLY #58280 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58281 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.5 28.0
  SAY #58282 /* ~Es seufzt und schaut weg. "Verdammnis war mal eine Grenzstadt, in der Schwebe zwischen zwei Extremen: Zur einen Seite lagen die Außenländer, zur anderen lag die Ebene Carzeri." Es hält inne.~ */
  IF ~~ THEN REPLY #58283 /* ~"Okay, das verstehe ich. Was hat die Stadt denn aus dem Gleichgewicht gebracht, so daß sie in Carzeri hineingeglitten ist?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58284 /* ~Es zuckt die Achseln. "Trias. Er war der Grund. Durch ihn gewann das Chaos die Oberhand, und die Stadt schlitterte in Carzeri hinein... Und dort wird sie auch bleiben, wenn nicht entschieden etwas dagegen unternommen wird."~ */
  IF ~~ THEN REPLY #58285 /* ~"Und was kann man da tun?"~ */ GOTO 25
  IF ~~ THEN REPLY #58286 /* ~"Trias? Was hat er damit zu tun?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 24.0 31.0
  SAY #58287 /* ~"Herausfinden, in welche Richtung die Stadt verrutscht ist, und ein Gegengewicht schaffen. Zu viel Ordnung? Verursache etwas Chaos. Zu wenig Ordnung? Schaff mehr Gesetze." Es lächelt. "Wenn du deine Maßnahmen konsequent durchführst, kannst du die Stadt zurück in ihren Grenzzustand versetzen... oder sie in das andere Extrem abgleiten lassen."~ */
  IF ~~ THEN REPLY #58288 /* ~"Du meinst, jemand müßte in der Stadt für Gesetz und Ordnung sorgen?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #58289 /* ~Es lächelt dich an. "Ja,... genau das meine ich."~ */
  IF ~~ THEN REPLY #58290 /* ~"Würdest du mir dabei helfen?"~ */ GOTO 27
  IF ~~ THEN REPLY #58291 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58292 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #58293 /* ~Es taxiert dich eine Weile bevor es antwortet: "Ja,... ich glaube, das läge auch in meinem Interesse. Meine Diener und ich werden dir gern zur Seite stehen."~ */
  IF ~~ THEN REPLY #58294 /* ~"Du hast mir sehr geholfen... und das wirft eine weitere Frage auf: Warum?"~ */ GOTO 20
  IF ~~ THEN REPLY #58295 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58296 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.6
  SAY #58297 /* ~Es zuckt die Achseln. "Genau das, wovor ich dich gewarnt habe, als wir uns das letzte Mal unterhalten haben."~ */
  IF ~~ THEN REPLY #58298 /* ~"Was war das?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 29 // from: 2.7
  SAY #58299 /* ~"Du bist ein Göttermensch?" Es sieht dich respektvoll an. "Aufgrund deiner Bande will ich deine Frage beantworten. Mein Vorgesetzter hat das Gerät in Auftrag gegeben. Es ist eine Waffe, die im Blutkrieg zum Einsatz kommen soll."~ */
  IF ~~ THEN REPLY #58300 /* ~"Was ist der Blutkrieg?"~ */ GOTO 10
  IF ~~ THEN REPLY #58301 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58303 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~  Global("Know_Tek","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #58306 /* ~Du siehst den Cornugon Tek'elach. Er lächelt dich belustigt an. "So trifft man sich wieder, kleiner Mensch. Was willst du?"~ */
  IF ~~ THEN REPLY #58307 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58309 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY #58310 /* ~Es seufzt. "Trias ist ein Gesandter des Chaos. Er wurde aus gutem Grund ins Gefängnis gesteckt. Leider hat ihn irgendein Idiot befreit, und so konnte er Verwüstung über die Stadt bringen." Es hält inne und seufzt erneut. "Man hat mich hierher geschickt, um ein Auge auf ihn zu haben..."~ */
  IF ~~ THEN REPLY #58311 /* ~"Und, was kann man da tun?"~ */ GOTO 25
END
