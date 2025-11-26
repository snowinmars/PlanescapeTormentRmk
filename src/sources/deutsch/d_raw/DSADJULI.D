// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~Diese dunkelhaarige junge Frau starrt teilnahmslos ins Leere, seufzt unglücklich, und zupft gelegentlich am Saum ihres grünen Samtrocks. Es ist schwer zu sagen, ob sie deprimiert oder einfach nur gelangweilt ist.~ */
  IF ~~ THEN REPLY #2984 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~Sie schaut dich nur ganz kurz an, bevor sie wieder in die Ferne starrt. "Seid gegrüßt, ja... Ich heiße Juliette. Wie kann ich... oh, nichts. Laßt mich bitte allein." Sie seufzt entnervt.~ */
  IF ~~ THEN REPLY #40280 /* ~"Was hast du denn?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"Ich hätte vorher ein paar Fragen...."~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"Oh, überhaupt nichts. Nur, daß ich alle meine Tage damit verbringe, in das Gesicht der Mittelmäßigkeit zu starren, und versuche herauszufinden, ob irgend etwas sein schreckliches, ermüdendes Vergehen aufhalten kann."~ */
  IF ~~ THEN REPLY #40283 /* ~"Ist dein Leben so öde?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"Ja, leider, das ist es." Sie seufzt, schließt die Augen und massiert ihre Schläfen. "Grauenhaft langweilig!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"Vielleicht kann ich ja für ein wenig Aufregung sorgen, meine Dame."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"Ich bin sicher, ich könnte etwas Aufregung in dein Leben bringen..."~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"Ich bin sicher, ich könnte etwas Aufregung in dein Leben bringen..."~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"Nein, nein... Aber es ist sehr freundlich von Euch, das anzubieten. Ich bin bereits mit einem Mann liiert, mein Herr, und ich liebe ihn von ganzem Herzen. Nur wünsche ich mir..." Sie klopft mit dem Finger gegen ihr Kinn. "...etwas *mehr* von unserer Beziehung."~ */
  IF ~~ THEN REPLY #66195 /* ~"Fehlt denn etwas in der Beziehung?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"Gibt es ein Problem mit der Beziehung?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~Sie sieht dich mit gerunzelter Stirn an und rollt die Augen. "Im besten Fall zweifelhaft. Ich bin bereits mit einem Mann liiert, mein Herr, und ich liebe ihn von ganzem Herzen. Nur wünsche ich mir... ..." Sie klopft mit dem Finger gegen ihr Kinn. "...etwas *mehr* von unserer Beziehung."~ */
  IF ~~ THEN REPLY #66199 /* ~"Fehlt denn etwas in der Beziehung?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"Gibt es ein Problem mit der Beziehung?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"Das einzige, was ihr *fehlt*, ist Spannung, mein Herr. Unsere Familien haben die Nachricht von seiner Brautwerbung bestens aufgenommen, seine Geschwister lieben meine Geschwister, und unsere Freunde meinen, daß unsere Verbindung von den Mächten selbst gesegnet ist. Alles schön und gut, aber alles läuft..." Sie runzelt die Stirn. "...so *glatt*. Es ist nicht gut, daß die Brautwerbung so problemlos vor sich geht."~ */
  IF ~~ THEN REPLY #66747 /* ~"Davon weiß ich nichts..."~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"Ja, es gibt ein Problem..." Sie wirkt verärgert. "...nämlich, daß es keine nennenswerten Probleme gibt! Unsere Familien haben die Nachricht von seiner Brautwerbung bestens aufgenommen, seine Geschwister lieben meine Geschwister, und unsere Freunde meinen, daß unsere Verbindung von den Mächten selbst gesegnet ist. Alles schön und gut, aber alles läuft..." Sie runzelt die Stirn. "...zu *glatt*. Es ist nicht gut, daß die Brautwerbung so problemlos vor sich geht."~ */
  IF ~~ THEN REPLY #66750 /* ~"Davon weiß ich nichts..."~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"Könnt Ihr nicht? Habt Ihr nie eine solche Beziehung gehabt?" Sie sieht dich kurz an. "Es scheint so, als ob Euer Leben mit jeder Menge Problemen gefüllt ist, wenn ich mal nach der Blässe Eurer Haut gehe."~ */
  IF ~~ THEN REPLY #66203 /* ~"Das ist etwas, über das ich nicht sprechen möchte..."~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"Ich kann mich eigentlich nicht an irgendwelche Beziehungen erinnern, die ich mal gehabt hätte."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"Ich kann mich an keine Beziehung erinnern, die ich gehabt hätte. Die Überreste derer, die ich getroffen habe, deuten darauf hin, daß ich wahrscheinlich einige Probleme hatte."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"Es ist nur so, daß alle meine Freunde so interessante Beziehungen haben... mit Turbulenzen, verfeindeten Familien, Dolchen in den Rücken der Beteiligten, Gift, wütenden Geschwister und tobenden Vätern mit großen Schwertern. Ich habe einen Liebhaber, dessen Familie mich liebt und den die ganze Welt liebt." Sie seufzt wieder. "Eine Quelle außerordentlichen Ärgernisses. Wie ich wünschte, daß ich irgendwie Pfeffer in die ganze Geschichte bringen könnte..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"Das klingt nicht sehr klug. Freu dich über das, was du hast."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"Woran hast du gedacht?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"Ich möchte aber Ärger erfahren. Ich wünsche mir, die Höhen und Tiefen einer Liebesbeziehung zu erfahren... aber mit ihm, keinem anderen." Sie seufzt. "Ah, so ist die Liebe. Sie kann so dumpf wie eine Keule sein und ist völlig nutzlos für einen aufstrebenden Sinnsaten."~ */
  IF ~~ THEN REPLY #40307 /* ~"Woran hast du denn gedacht, um Pfeffer in die Geschichte zu bringen?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"Ein strebsamer Sinnsate?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"Ich bin nicht sicher. Irgendein gefährliches Element. Oder Eifersucht. Irgend etwas *Intensives*."~ */
  IF ~~ THEN REPLY #40311 /* ~"Warum hast du nicht eine Affäre?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"Warum schreibst du nicht ein paar gefälschte Liebesbriefe von einem heimlichen Liebhaber?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"Ich kann ja so tun, als ob ich ein eifersüchtiger Freier wäre, wenn du möchtest."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"Viel Glück. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~Sie kaut auf ihrer Lippe. "Ich könnte niemals eine *echte* Affäre haben, denn ich liebe ihn viel zu sehr! Aber vielleicht... könnte ich eine falsche haben?" Sie mustert dich kritisch. "Euch scheint gefährliches Benehmen nicht fremd zu sein. Wärt Ihr daran interessiert, ein Freier zu werden?"~ */
  IF ~~ THEN REPLY #40316 /* ~"Ja, ich tu's."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"Was springt für mich dabei raus?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"Nein... Aber ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~Juliette runzelt die Stirn. "Meine Gesellschaft und meine Dankbarkeit sollten ausreichen."~ */
  IF ~~ THEN REPLY #40320 /* ~"Also gut. Dann tue ich es."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"Nein, das reicht nicht."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"Vergiß es. Ich hab da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~Ihre Stirn legt sich bei dieser Komplikation noch mehr in Falten. "Woran hattet Ihr denn gedacht, doch wohl *nichts*, wobei Ihr mich anfassen würdet?"~ */
  IF ~~ THEN REPLY #40324 /* ~"Jetzt bild dir hier bloß nichts ein - ich will einige Informationen haben."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"Ich will ein paar Informationen haben."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~Juliette läßt es sich durch den Kopf gehen und nickt dann. "Also gut. Ich werde liefern, wenn *Ihr* lieferst. Versteht Ihr?"~ */
  IF ~~ THEN REPLY #40326 /* ~"Abgemacht."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"Nein, das ist nicht in Ordnung."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"Dann befinden wir uns in der Sackgasse. Seid Ihr sicher, daß Ihr es Euch nicht noch einmal überlegen wollt?"~ */
  IF ~~ THEN REPLY #40328 /* ~"Also gut... Ich tu's."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"Nein, tut mir leid. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"Nein. Leb wohl, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~Juliettes Augen leuchten auf. "Eine ausgezeichnete Idee! Wirklich augezeichnet!" Sie runzelt plötzlich die Stirn. "Aber er kennt meine Handschrift... Wollt Ihr nicht etwas für mich schreiben?"~ */
  IF ~~ THEN REPLY #40331 /* ~"Das ist nicht so mein Ding. Aber ich könnte welche für dich finden."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"Ach, weißt du, vergiß es einfach. Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"Das möchte ich lieber nicht tun. Leb wohl, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"Oh, würdet Ihr das tun? Ausgezeichnet! Wenn Ihr welche findet, bitte gebt sie meinem Geliebten, Montague... Ihr findet ihn in der Öffentlichen Festhalle. Was die Briefe betrifft... ... Versucht es bei Gesetzesspötter Penn. Er hat eine Druckerei im Unteren Bezirk. Ich danke Euch!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"Moment... Montague? Da gibt's ein Problem. Er will nicht mit mir reden."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague einige 'falsche' Liebesbriefe zu bringen. Ich habe ihr erklärt, daß Montague sich feindlich gegen mich gewandt hat und deshalb nicht mit mir sprechen wollte.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"Moment... Montague? Da gibt's ein Problem... Er ist getötet worden."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague einige 'falsche' Liebesbriefe zu bringen. Ich habe ihr erklärt, daß Montague getötet worden ist.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"Natürlich. Leb wohl."~ */ JOURNAL #39456 /* ~Ich habe eingewilligt, Montague für seine Liebhaberin Juliette ein paar 'falsche' Liebesbriefe zu bringen, damit er denkt, sie hätte eine Affäre. Offensichtlich ist sie mit den Reizen, die ihre Beziehung ihr bietet, nicht zufrieden. Sobald ich ein paar Briefe finden kann, soll ich sie ihm in die Städtische Festhalle bringen, als 'Beweis' für ihre Affäre. Juliette hat gesagt, ich solle mit Gesetzesspötter Penn reden, den ich in seinem Druckereiladen im Unteren Bezirk finden sollte.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~Juliette sieht dich kurz und verächtlich an. "Oh, das möchte ich bezw- hmm. Eigentlich ist die Idde nicht halb so hohl, wie ich zuerst dachte. Ihr seht auf jeden Fall *gefährlich* genug aus." Sie sieht dir in die Augen, als ob sie den Wert eines Pferdes schätzte. "Seid Ihr so roh und zäh, wie Euer Äußeres vermuten läßt?"~ */
  IF ~~ THEN REPLY #40335 /* ~"Zäher als mich bekommst du's nicht, das versichere ich dir."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"Ja."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"Dann werdet Ihr es für mich tun?"~ */
  IF ~~ THEN REPLY #40337 /* ~"Ja, ich tu's."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"Tja, was springt dabei für mich raus?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"Tja, eigentlich... nein. Aber ich habe da ein paar Fragen..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"Ausgezeichnet! Meinen Liebsten, Montague, könnt Ihr in der Städtischen Festhalle finden. Ich danke Euch!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"Moment... Montague? Da gibt's ein Problem. Er will nicht mit mir reden."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague gegenüber den eifersüchtigen Freier zu spielen. Ich habe ihr erklärt, daß Montague sich feindlich gegen mich gewandt hat und deshalb nicht mit mir sprechen wollte.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"Moment... Montague? Da gibt's ein Problem... Er ist getötet worden."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague gegenüber den eifersüchtigen Freier zu spielen. Ich habe ihr erklärt, daß Montague getötet worden ist.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"Natürlich. Ich werde mit ihm sprechen... Leb wohl."~ */ JOURNAL #39455 /* ~Ich habe mich bereit erklärt, mich für einen eifersüchtigen Verehrer von Juliette, einer der Prostituierten aus dem Bordell zum Befriedigen Intellektueller Lüste, auszugeben. Ich soll ihren Geliebten, Montague, in der Städtischen Festhalle finden und ihn auffordern, sie freizugeben.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~Juliette rollt die Augen. "Oh, dann macht schon, wenn's unbedingt sein muß."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"Was machst du hier?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"Was machst du hier?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~Juliette hat mir erzählt, daß Kimasxi Natternzunge, eine der Prostituierten im Bordell zum Befriedigen Intellektueller Lüste, die Halbschwester von Kesai-Serris ist, die wiederum die Tochter von Ravel Rätselschön sein soll.~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ JOURNAL #66727 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie etwas darüber weiß, wer Vivians persönlichen Duft gestohlen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ JOURNAL #66728 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie irgendwo Marissas Purpurschleier gesehen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~Juliette macht einen langen und verlorenen Seufzer. Du merkst, daß sie dich nicht einmal wirklich ansieht.~ */
  IF ~~ THEN REPLY #40358 /* ~"Juliette? Hast du mich gehört?"~ */ JOURNAL #66753 /* ~Juliette, eine der Prostituierten im Bordell zum Befriedigen Intellektueller Lüste, weigert sich, meine Fragen zu beantworten. Sie scheint nur über eine Sache sprechen zu wollen, nämlich über ihr eigenes Leben, von dem sie selbst behauptet, daß es elend langweilig sei.~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"Hmm? Oh, ich hab nicht richtig zugehört - tut mir leid. Aber sicher seid Ihr nicht nur gekommen, um mir eine Litanei von Fragen über mein Leben voller Langeweile und meine langweiligen Handlungen zu stellen...?"~ */
  IF ~~ THEN REPLY #40360 /* ~"Ist dein Leben so öde?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"Ja, tatsächlich, ich hatte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"Ich bereite mich hier darauf vor, ein Sinnsat zu werden, Meisterin Grace ist unsere Lehrerin. Alle Prostituierten hier sind ihre Schülerinnen."~ */
  IF ~~ THEN REPLY #40363 /* ~"Ein Sinnsate?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~Juliette nickt. "Ein Mitglied der Gesellschaft der Empfindung, eines Bundes, der sich der Empfindung und der Erfahrung widmet. Meisterin Grace wäre sicher besser als ich geeignet, Eure Fragen über die Sinnsaten zu beantworten."~ */
  IF ~~ THEN REPLY #40366 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~Juliette grinst. "Das Bordell... ist eine Schule für Mädchen, die Sinnsaten werden wollen. Meisterin Grace ist unsere Lehrerin und übrigens viel qualifizierter als ich, solche Fragen zu beantworten. Vielleicht solltet Ihr lieber mit ihr sprechen?"~ */
  IF ~~ THEN REPLY #40389 /* ~"Du willst ein... Sinnsate werden?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"Nicht jetzt gerade. Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"Vielleicht. Vielleicht auch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~Juliette schüttelt traurig den Kopf. "Und auch so traurig! Arme Frau. Ich gebe zu, daß ich manchmal in ihre Kammer geschlichen bin, um einen oder zwei Tropfen von ihrem Parfüm zu nehmen... Aber daß jemand so dreist sein könnte, sich mit Vivians eigenem, persönlichen Duft davonzumachen? Unglaublich unverschämt! Frag auf jeden Fall die junge Nenny danach, sie läuft ständig umher und beobachtet alle."~ */
  IF ~~ THEN REPLY #40392 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"Oh, würdet Ihr es Euch jemals wünschen, dieses Ding zu *finden*? Ich für meinen Teil hoffe, daß diese schlecht erzogene und ganz unerträgliche Frau in ihrer Kammer bleiben muß, bis ich weit weg bin von diesem Ort! Aber um Eure Frage zu beantworten: Nein, ich habe es nicht gesehen, noch weiß ich, wo es sein könnte. Doch Nenny könnte es wissen - sie wandert immer umher und beobachtet alles."~ */
  IF ~~ THEN REPLY #40394 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"Ravel Rätsel... was? Wer?" Juliette scheint verwundert. "Heißt wirklich jemand so? Wenn ja, dann kennt Yves sie vielleicht. Sie kennt Myriaden von Geschichten und kann Euch wahrscheinlich auch eine von dieser 'Ravel' erzählen."~ */
  IF ~~ THEN REPLY #40396 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"Vergiß es, Juliette. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"Wovon *sprecht* Ihr nur, um Himmels Willen?"~ */
  IF ~~ THEN REPLY #40398 /* ~"Die zehnte Prostituierte... Wer ist sie?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"Vergiß es, Juliette. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"Ich habe nicht die geringste Idee, von wem Ihr überhaupt redet."~ */
  IF ~~ THEN REPLY #40401 /* ~"Dann hätte ich da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~Du siehst die traurige Juliette, die so elend wie eh und je aussieht. Sie reagiert kaum auf deine Anwesenheit, sieht dich nur kurz an und starrt dann wieder ins Leere.~ */
  IF ~~ THEN REPLY #40403 /* ~"Was ist denn los, Juliette?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"Ich bin nur zufällig vorbeigekommen, Juliette. Leb wohl."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~Juliette sieht dich hoffnungsvoll an. "Und? Schon irgendwelche Ergebnisse?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"Da gibt's ein Problem. Er will nicht mit mir reden."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague einige 'falsche' Liebesbriefe zu bringen. Ich habe ihr erklärt, daß Montague sich feindlich gegen mich gewandt hat und deshalb nicht mit mir sprechen wollte.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"Da gibt's ein Problem... Er ist getötet worden."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague einige 'falsche' Liebesbriefe zu bringen. Ich habe ihr erklärt, daß Montague getötet worden ist.~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"Ja, in der Tat. Es hat ihm das Herz gebrochen, und er hat beschlossen, dich deiner 'neuen Liebe' zu überlassen."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist, und sie ist völlig zusammengebrochen.~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"Montague wollte dich deiner 'neuen Liebe' überlassen, also habe ich ihm erzählt, daß das alles nur eine List war. Jetzt bin ich mir nicht sicher, was er tun wird."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"Montague wirkte desinteressiert... Ich erinnere mich daran, daß er gesagt hat, die Geschichte habe ihn 'sowieso schon gelangweilt'."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"Ich habe ihm die Briefe gegeben, aber... ich konnte seine Reaktion nicht einordnen. Ich schlage vor, du sprichst selbst mal mit ihm."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"Montague wirkte desinteressiert... Ich erinnere mich daran, daß er igend etwas über eine eigene Liebschaft gesagt hat."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"Ich habe ihm die Briefe gegeben, aber... ich konnte seine Reaktion nicht einordnen. Ich schlage vor, du sprichst selbst mal mit ihm."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~Juliette sieht schockiert aus, und Sekunden später beginnt sie, jämmerlich zu wimmern und weinen.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"Genug geheult. Ich möchte meine Fragen beantwortet bekommen, und zwar jetzt - Wir hatten schließlich einen Handel abgeschlossen."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"Ich... hätte da ein paar Fragen, Juliette..."~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"Es ist eine Schande, daß es so enden mußte. Ich komme ein anderes Mal wieder, Juliette. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~Geh ganz leise fort.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~Sie beruhigt sich etwas und wischt sich die Tränen aus den Augen, dann blickt sie dich wieder an.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"Ihr habt es ihm gesagt...? Verdammt! Was soll ich jetzt nur tun?!"~ */
  IF ~~ THEN REPLY #40418 /* ~"Da er jetzt alles weiß, kannst du eigentlich genausogut deine Gefühle über die Beziehung offen mit ihm diskutieren."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"Das ist deine Entscheidung - ich hab meinen Teil getan. Und jetzt will ich Antworten auf meine Fragen haben..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"Ich bin nicht sicher. Ich hätte da aber ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"Ich weiß nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~Juliette nickt. "Das ist wahr, ja. Ich danke Euch."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"Natürlich. Und jetzt will ich Antworten auf meine Fragen haben..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"Natürlich. Und jetzt hätte ich ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"Gern geschehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~Juliette sieht schockiert aus. "Er... Er hat *was* gesagt?! Wie konnte ich nur so... oh! Es scheint, als ob meine Beziehung alle Probleme hatte, die ich mir so gewünscht habe, und ich habe sie in all meiner Melancholie einfach nur nicht wahrgenommen!"~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"Vielleicht. Wie auch immer, ich habe meinen Teil getan. Und jetzt möchte ich Antworten auf meine Fragen haben."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"Vielleicht. Und jetzt habe ich ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"Vielleicht. Leb wohl, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~Juliette knirscht frustriert mit den Zähnen. "Oooo! Wie ungeheuer frustrierend! Dann muß ich eben etwas anderes versuchen."~ */
  IF ~~ THEN REPLY #40429 /* ~"Warum *sprichst* du nicht einfach mit ihm darüber? Du solltest versuchen, die Beziehung offen zu diskutieren, bevor du noch mehr abstruse Ideen ausheckst."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~"Vielleicht. Wie auch immer, ich habe meinen Teil getan. Und jetzt möchte ich Antworten auf meine Fragen haben."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"Vielleicht. Und jetzt habe ich ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"Vielleicht. Leb wohl, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~Juliette sieht dich hoffnungsvoll an. "Und? Schon irgendwelche Ergebnisse?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"Da gibt's ein Problem. Er will nicht mit mir reden."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague gegenüber den eifersüchtigen Freier zu spielen. Ich habe ihr erklärt, daß Montague sich feindlich gegen mich gewandt hat und deshalb nicht mit mir sprechen wollte.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"Da gibt's ein Problem... Er ist getötet worden."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette hatte mich gebeten, ihrem Liebhaber Montague gegenüber den eifersüchtigen Freier zu spielen. Ich habe ihr erklärt, daß Montague getötet worden ist.~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"Ja, in der Tat. Es hat ihm das Herz gebrochen, und er hat beschlossen, dich mir zu überlassen."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist, und sie ist völlig zusammengebrochen.~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"Montague wollte dich mir überlassen, also habe ich ihm gesagt, daß es nur eine List war. Jetzt bin ich nicht sicher, was er tun wird."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Ich hab Juliette erzählt, wie die Sache mit Montague ausgegangen ist. Sie war keinesfalls begeistert über die Neuigkeiten, hat mir aber trotzdem ein paar Fragen beantwortet.~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"Montague wirkte desinteressiert..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"Ich habe meine Forderungen gestellt, aber... ich konnte seine Reaktion nicht einordnen. Er wollte jedoch nicht mit mir kämpfen. Ich schlage vor, du sprichst selbst mal mit ihm."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~"Montague wirkte desinteressiert..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"Ich habe meine Forderungen gestellt, aber... ich konnte seine Reaktion nicht einordnen. Ich schlage vor, du sprichst selbst mal mit ihm."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"Will er etwa nicht um mich kämpfen?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"Nein, das will er nicht."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"Nein, das will er nicht. Ich erinnere mich daran, daß er gesagt hat, die Geschichte habe ihn 'sowieso schon gelangweilt'."~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"Nein, das will er nicht. Ich erinnere mich daran, daß er etwas von einer eigenen Liebschaft gesagt hat."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~Juliette sieht schlimmer aus, als du sie je zuvor gesehen hast. Ihr Gesicht ist schmal und blaß, und unter ihren blutunterlaufenen Augen sind dunkle Ringe. Sie lächelt dich zögernd an, als würde sie versuchen, eine nette Fassade aufrechtzuerhalten.~ */
  IF ~~ THEN REPLY #40443 /* ~"Ich hätte da ein paar Fragen, Juliette."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"Ich komme nur zufällig vorbei. Leb wohl, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"Seid gegrüßt. Ich nehme an, Ihr seid gekommen, um mir Eure Fragen zu stellen?"~ */
  IF ~~ THEN REPLY #40445 /* ~"Ja, genau..."~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"Nein, ich komme nur zufällig vorbei. Leb wohl, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"Ich weiß es nicht, aber ich habe so ein Gerücht gehört. Aber vielleicht solltet Ihr ja Kimasxi Natternzunge dieselbe Frage stellen... Die beiden sind nämlich Halbschwestern, wißt Ihr."~ */
  IF ~~ THEN REPLY #40447 /* ~"Tatsächlich? Wie interessant. Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"Ach so... Das ist alles, was ich wissen wollte. Leb wohl, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"Oh, das ist Ecco, von der Ihr da sprecht. Man sagt, sie habe aus irgendeinem Grund geschworen, nie wieder zu sprechen. Ich kann mir nicht vorstellen, warum jemand so etwas machen sollte."~ */
  IF ~~ THEN REPLY #40449 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~Juliette spottet. "Was? Das ist bestimmt so ein gemeines Spiel, was Ihr da mit mir treibt..." Sie atmet plötzlich tief ein und bedeckt ihren Mund. "Nein... Nein! Ich weiß, daß Ihr die Wahrheit sagt! Er ... hat sich wieder duelliert, nicht wahr?"~ */
  IF ~~ THEN REPLY #66205 /* ~"So was in der Art,... ja."~ */ GOTO 37
END
