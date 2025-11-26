// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~Die Frau schreit auf, als sie dich sieht. Sie macht kehrt, um zu fliehen. Während sie sich davonmachen will, scheint die Tätowierung um ihren Hals leicht zu zucken.~ */
  IF ~~ THEN REPLY #20210 /* ~"Rühr dich nicht von der Stelle..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~Laß sie laufen.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~Ihr Gesicht fällt zusammen, als sie dich wieder sieht. "Er hat sich wieder geweigert, nicht wahr? Und du bist sicher zurückgekommen, um zu holen, was rechtmäßig mir gehört."~ */
  IF ~~ THEN REPLY #20213 /* ~"Was rechtmäßig dir gehört? Du hast kein Recht auf den Namen und die Nummer. Du hast beides gestohlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"Du brauchst die Nummer nicht zum Leben. Er schon. Auch wenn es weh tut, aber du mußt sie zurückgeben. Auf lange Sicht ist das für euch beide besser."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"Gib sie zurück, oder ich hol sie ihm zurück."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"Du brauchst so eine Nummer nicht zum Leben. Schaff dir deine eigene Nummer, wenn du unbedingt eine brauchst, um dich daran zu wärmen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"Vergiß es. Es ist meiner Aufmerksam nicht wert."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"Du hast wohl recht. Ich war eine schlechte Person, wirklich, und ich kann dies nicht behalten. Hier." Sie schält sich die sich kräuselnde Tätowierung von ihrem Hals und überreicht sie dir. Sie zittert dabei. "Und du kannst ihm jetzt seinen Namen sagen. Ku'u Yin war er und wird er sein. Nun laß mich gehen."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"Hier ist ein wenig Klimper für deine Mühe. Kauf dir was zum Warmhalten."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"Vielen Dank. Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"Danke. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~Sie wird klein angesichts deiner Drohung. "Und er hat mir gesagt, die Nummer würde mich vor bösen Menschen schützen. Nimm also das verdammte Ding, und laß mich in Ruhe!" Sie reißt sich die zuckende Tätowierung und noch ein gutes Stück Haut vom Hals, schleudert das Ganze in deine Richtung und flüchtet.~ */
  IF ~~ THEN REPLY #20223 /* ~Jag ihr nach.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~Laß sie laufen.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"Meinen Dank, Schleifer." Sie steckt das Geld ein und wirkt augenblicklich düsterer ohne die Magie der Tätowierung. "Es wär wohl das Beste für mich, wenn ich von hier wegginge... und dank des Klimpers von dir werden wir uns vielleicht unter glücklicheren Umständen wiedersehen."~ */
  IF ~~ THEN REPLY #20226 /* ~"Ja. Leb wohl, Radine."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"Stiehl keine weiteren Namen, Radine. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~Sie wendet den Kopf ab und schlurft davon. Ohne die Nummerntätowierung, die ihr diese mysteriöse Aura verliehen hatte, wirkt sie leblos. Das ist das Letzte, was du von ihr siehst.~ */
  IF ~~ THEN REPLY #20229 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~Bei deiner Rückkehr blickt sie ausdruckslos und schüttelt sich dann aus ihrer Benommenheit. Dabei zuckt die Tätowierung um ihren Hals. "Du schon wieder, Schleifer? Ich sag dir, ich werde den Namen und die Nummer nicht zurückgeben. Hör zu - seit ich diesen Namen und diese Nummer benutze, habe ich mehr Glück. Ich werde einen ordentlich Preis dafür bezahlen, und er kann sich eine schöne neue kaufen. Wie wär das?"~ */
  IF ~~ THEN REPLY #20231 /* ~"Wieviel würdest du mir geben?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"Ich glaub nicht, daß das ausreicht. Gib mir den Namen und die Nummer."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"Und wenn ich ihn dir abkaufe?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"Wie wär's mit ordentlichen zwanzig Münzen? Damit müßte dem Armen geholfen sein, bis er sich neue besorgen kann, was? Sei so gut und geh ihn fragen, ob das genug ist."~ */
  IF ~~ THEN REPLY #20234 /* ~"Gib mir einfach den Namen und die Nummer, oder ich reiß sie aus dir raus. Und glaub mir, das willst du nicht wirklich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"Gut. Ich werd das mit ihm klären. Beantworte mir jedoch zuerst ein paar Fragen."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"Gut. Ich werd das mit ihm klären."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"Und wenn ich ihn dir abkaufe?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"Vielleicht habe ich Antworten für dich, vielleicht auch nicht."~ */
  IF ~~ THEN REPLY #20238 /* ~"Erzähl mir was über dich."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"Erzähl mir was über die Tätowierung."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"Welchen Preis hattest du noch mal genannt?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"Ich? Ich habe jetzt zwei Namen, und ich werde dir nur einen zeigen - nicht, daß du mir auch noch den neuen stiehlst, hihi! Du kannst mich Radine nennen, Kleiner, und den anderen Namen werde ich schön für mich behalten, ganz sicher."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"Der Mann, dem dieser Name früher gehörte, will seinen Namen und seine Nummer zurück. Ohne sie stirbt er."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"Ich weiß, es ist schwer für dich. Du mußt auf etwas verzichten, was dir derzeit gehört, aber... würdest du ihm bitte seinen Namen und seine Nummer wiedergeben?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"Zwei Namen, wie? Muß hübsch sein."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"Jede Wette. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"Dieses zuckende Ding? Das ist eine Identifikationsnummer. Es ist meine Nummer, hat mir ein hilfsbereiter Mann gegeben, der mich gesehen hat, als es mir ohne den Schutz einer Nummer schlecht ging. Jetzt habe ich eine, und mir geht's besser als jemals zuvor."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"Dieser Mann will sie jetzt zurück haben."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"Interessant. Wie funktioniert das?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"Das Begrabene Dorf? Wohl ein ganz netter Ort, wenn einen der Geruch von aufgerissenen Leichen oder Müllbergen auf dem Dach und das ständige Gewimmel von Ratten hier nicht stört. Viel kälter, wenn man als Schutz nur einen Namen und keine Nummer hat, soviel steht fest."~ */
  IF ~~ THEN REPLY #20255 /* ~"Erzähl mir was über deinen Namen."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"Erzähl mir was über die Nummer."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~Ihre Stimme wird schrill. "Nun, er kann sie nicht kriegen! Er hat sie mir angeboten, und ich hab' sie behalten. Von *leihen* hat er nie was gesagt, und auch nicht, daß er sie selbst wieder braucht! Er kriegt sie nicht! Geh nur und sag ihm das! Wenn er wirklich einen Namen braucht, dann sag ihm, er kann meinen haben... der Name 'Radine' sollte gut genug für jeden sein!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"Er war dir ja auch nicht gut genug... warum sollte er es für ihn sein?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"Ich werd's ihm sagen. Gib mir noch ein paar andere Antworten..."~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"Ich werd's ihm sagen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"Und wenn ich ihn dir abkaufe?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"Ja, Kindchen, das ist es."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"Der Mann, dem dieser Name früher gehörte, will seinen Namen und seine Nummer zurück. Ohne sie stirbt er."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"Ich weiß, es ist schwer für dich. Du mußt auf etwas verzichten, was dir derzeit gehört, aber... würdest du ihm bitte seinen Namen und seine Nummer wiedergeben?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"Kannst du mir noch ein paar andere Antworten geben?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"Sicherheit durch Zahlen, und mit Sicherheit kommt Wärme, und mit Wärme kommt Geborgenheit. Zahlen geben dir alles, Schätzchen, solange du ihre Macht respektierst."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"Der Mann, der dir die Nummer gegeben hat, möchte sie jetzt zurück haben..."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"Es liegen Welten dazwischen, mit einem Namen groß zu werden oder mit dem einer anderen Person zu leben, Schätzchen. Neue Ansichten hinter einem alten Namen können alles verändern. Siehst du, was ich mit dem hier gemacht habe?"~ */
  IF ~~ THEN REPLY #20273 /* ~"Ich werd mit ihm drüber reden. Beantworte mir zunächst noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"Gut. Ich werd mit ihm drüber reden. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~Als du zurückkehrst, starrt die Frau wieder in die Leere, aber ihre Gedanken sind diesmal nicht so weit abgeschweift - dein Anblick erschreckt sie weit weniger. "Du schon wieder, wie?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"Bist du Radine? Der Mann, dessen Namen du genommen hast, will ihn jetzt zurück haben."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"Nein, tut mir leid. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~Du siehst eine Frau mit faltigem Gesicht und düsteren Kleidern. Ihr Blick ist in die Ferne gerichtet, und unter ihrer Haut scheint sich eine neue Vitalität aufzubauen, als ob man ihr neues Leben eingehaucht hätte. Um ihren Hals zieht sich ein tätowiertes Muster. Sie schreckt auf, als du sie ansprichst. "Was? Was willst du?"~ */
  IF ~~ THEN REPLY #20280 /* ~"Ich wollte dir bloß ein paar Fragen stellen..."~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~Sie schaut dich an, als wärst du verrückt. "Bist du komplett übergeschnappt? Ich verkauf dir doch nicht meinen Namen!"~ */
  IF ~~ THEN REPLY #45391 /* ~"Warum nicht?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"Weil es mein Name ist, Dussel! Man verkauft seinen Namen nicht!"~ */
  IF ~~ THEN REPLY #45392 /* ~"Gib mir einfach den Namen und die Nummer, oder ich reiß sie aus dir raus. Und glaub mir, das willst du nicht wirklich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"Gut. Ich werd das mit ihm klären. Beantworte mir jedoch zuerst ein paar Fragen."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"Gut. Ich werd das mit ihm klären."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
