// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~Du siehst einen dünnen, gebückten Mann, der sich über einen Schreibtisch beugt und auf einem Stück Papier kritzelt. Sein sich lichtendes, graues Haar ist zu einem Pferdeschwanz gebunden, und eine dünne Brille ziert seine Hakennase. Sein Alter könnte irgendwo zwischen zwanzig und Ende vierzig liegen. Er schaut nicht auf, während er dich anspricht. "Was willst du? Faß dich kurz."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"Was machst du da?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"Ich vermisse einen Schädel."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"Die Stadt muß brennen."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"Ja. Goldspore hat mich gebeten, dir einen Handzettel zu bringen, damit du hundert Kopien davon machst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"Mein Name ist Penn, Dussel. Und deine Frage beantwortet die meine: Du hattest keine Ahnung, daß dies eine Druckerei ist, bevor du hereingekommen bist, und nun hast du es dir zur persönlichen Aufgabe gemacht, nicht nur deine Zeit sondern auch die meine zu verschwenden."~ */
  IF ~~ THEN REPLY #65200 /* ~"Was druckst du?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"Also gut. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"Bücher. Flugblätter. Handzettel. Worte. Buchstaben. Alles mögliche." Er fügt hinzu: "Aber ich erstelle keine rassistischen Drucke oder irgendwelche Perversitäten, und ich stelle keine Fragen."~ */
  IF ~~ THEN REPLY #65236 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"Alles klar. Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~Er sieht dich scharf an und hört auf zu kritzeln. "Bist du völlig schwer von Begriff? Das ist eine Druckerei. Ich drucke Sachen. Sie dich doch um. Ich drucke."~ */
  IF ~~ THEN REPLY #65238 /* ~"Was druckst du?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"Ach so ist das. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~Er schnaubt. "So sieht es von hier aus betrachtet auch aus."~ */
  IF ~~ THEN REPLY #65241 /* ~"Red nicht in diesem Ton mit mir, oder es wird dir noch leid tun."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"Ich meine es ernst. Einer meiner Begleiter wurde gestohlen."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~Er nimmt den Handzettel, sieht ihn durch und sagt: "Das erledige ich später. Sag ihm das." Er wendet sich wieder seinem Schreibtisch zu.~ */
  IF ~~ THEN REPLY #65245 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"Dann solltest du dich vielleicht nach Lothar erkundigen, dem Herrn der Knochen. Man sagt, er habe eine hübsche kleine Schädelsammlung. Ich weiß aber nicht, wo er ist, und selbst wenn ich es wüßte, würde ich es nicht verraten -Er weiß mehr über Zauberei, als die meisten Dussel je zu träumen wagen, und ich will bestimmt nicht derjenige sein, der ihn verrät." Er wendet sich wieder seinen Dokumenten zu. "Und nun raus."~ */
  IF ~~ THEN REPLY #65246 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"Red nicht in diesem Ton mit mir, Freundchen."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"Wie war das? Was sagst du? Nie davon gehört."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"Ich sagte, die Stadt muß brennen."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"Bedai-Lihn schickt mich."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"Ich sagte, die Stadt muß brennen."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"Bedai-Lihn schickt mich."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~LEERE ZEILE~ */
  IF ~~ THEN REPLY #65247 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"Ein Liebesbrief, ja? Fein. Ist aber nicht ganz billig. Sagen wir... äh... hundert Münzen. Du scheinst ihn wirklich dringend zu wollen."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"Hier, bitte sehr."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"Wie steht's mit einem Rabatt?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"Wie steht's mit einem Rabatt?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~Er nimmt die Notiz, liest sie durch und knäult sie zusammen, worauf sie sofort zu Asche zerfällt. Er sieht dich ruhig an. "Es scheint, jemand beschmutzt meinen guten Namen. Nun. Wolltest du etwas?"~ */
  IF ~~ THEN REPLY #65262 /* ~"Stört dich diese Verleumdung gar nicht?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"Ich möchte eurer Gruppe beitreten."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~Er nimmt das Geld, überlegt kurz und nimmt ein parfümiertes Blatt Papier aus einer Schreibtischschublade. Er kritzelt ein paar nichtssagende Liebeszeilen in einer schnörkeligen, eleganten Handschrift. "Das wird genügen. Ganz sicher."~ */
  IF ~~ THEN REPLY #65266 /* ~"Bestimmt. Ich habe noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"Bestimmt. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"Haben sie etwas mit Arbeit zu tun?"~ */
  IF ~~ THEN REPLY #65268 /* ~"Nun, nein..."~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"Was druckst du?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"Hast du diese Notiz geschrieben, die ich in der Leichenhalle gefunden habe?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"Ja. Ich vermisse einen Schädel."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"Ja. Goldspore hat mich gebeten, dir einen Handzettel zu bringen, damit du hundert Kopien davon machst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"Ja. Die Stadt muß brennen."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"Die Stadt muß brennen."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"Ich möchte, daß du mir einen Liebesbrief verfaßt."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"Dann verschwendest du deine und meine Zeit. Guten Tag." Er wendet sich seinem Schreibtisch zu.~ */
  IF ~~ THEN REPLY #65280 /* ~"Hör bloß auf, mich zu ignorieren."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~Er macht eine Handbewegung,... und du bist draußen.~ */
  IF ~~ THEN REPLY #65282 /* ~"Was zum..."~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"Fein. Fünfundsiebzig Münzen. Mein letztes Wort."~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"Das nehm ich."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"Nein danke. Ich habe noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"Ich laß es bleiben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~Er stößt ein einsilbiges Lachen aus. "Das glaub ich nicht, mein Freund. Hundert Münzen, oder vergiß es."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"Hier, bitte sehr."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"Dann vergiß es. Ich habe noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"Warum sollte sie? Das ist nur die Konkurrenz in Sigil. Ich kann mir außerdem ziemlich gut vorstellen, wer es gewesen sein könnte, und ich habe eine eigene kleine Überraschung für ihn."~ */
  IF ~~ THEN REPLY #65289 /* ~"Kann ich irgendwie helfen?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"In Ordnung. Ich habe da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"Großartig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~Er sieht dich streng an. "Ich bin sicher, du verwechselst mich mit jemandem. Willst du nun eine Arbeit erledigt haben, oder soll ich dich rauswerfen?"~ */
  IF ~~ THEN REPLY #65292 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"Du mußt mich schon rausschmeißen."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"Bist du wirklich so dumm wie du aussiehst? Natürlich nicht."~ */
  IF ~~ THEN REPLY #65295 /* ~"In Ordnung. Ich habe noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"Red nicht in diesem Ton mit mir."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"Ich habe von dir gehört." Er sieht dich durchdringend an. "Wenn Bedai-Lihn dich geschickt hat, dann heißt das, du willst und beitreten, richtig?"~ */
  IF ~~ THEN REPLY #65298 /* ~"Ja."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"Nö."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"Das sagt überhaupt nichts, außer daß du den Phantasien eines komplett Verrückten auf den Leim gegangen bist. Also was jetzt: Willst du etwas?"~ */
  IF ~~ THEN REPLY #65301 /* ~"Ja. Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"Wer? Bedai-Lihn? So nennt sich dieser fürchterliche Drache inzwischen?" Er seufzt schwer. "Sie ist eine eifersüchtige alte Liebe. Sie versucht, mich unter allen möglichen Vorwänden verhaften zu lassen. Konnte mir aber nie etwas anhängen." Er faßt sich wieder. "Wolltest du sonst noch etwas von mir?"~ */
  IF ~~ THEN REPLY #65303 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"Ja, ja. Das hast du schon mal gesagt. Was meinst du damit?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"Warum hat mich Bedai-Lihn geschickt, dir das zu sagen, wenn es nichts bedeutet?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"Warum hat mich Bedai-Lihn zu dir geschickt?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"Denk doch mal nach, Dussel. Du hattest ihr geholfen, die Göttermenschen zu ruinieren. Sie dachte, du wärst vielleicht an weiteren Aufgaben interessiert. Das Angebot steht noch. Ja oder nein?"~ */
  IF ~~ THEN REPLY #65307 /* ~"Im Moment nicht."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"Ja."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"Alter Groll und unerwiderte Leidenschaften vergehen nur schwer. Und Wahnsinn vergeht noch schwerer." Es fällt dir schwer zu glauben, daß irgend jemand Leidenschaft gegenüber diesem Mann empfinden kann. Wahnsinn erscheint schon wahrscheinlicher. "Wolltest du noch etwas?"~ */
  IF ~~ THEN REPLY #65309 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~Penn sieht auf, als du den Laden betrittst. "Raus. Und bleib draußen." Er macht eine Handbewegung, und du bist draußen.~ */
  IF ~~ THEN REPLY #65311 /* ~"Was zum..."~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"Willkommen zurück." Penn sieht nicht von seinen Dokumenten auf. "Ebb und seine Jungs helfen dir in Verdammnis?" Die Antwort scheint ihn absolut nicht zu interessieren.~ */
  IF ~~ THEN REPLY #65312 /* ~"Ja. Ich hätte ein paar Fragen an dich..."~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"So ziemlich. Hast du noch weitere Jobs für mich?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"Im Moment nicht. Ich laß dich wissen, wenn es etwas Neues gibt. Brauchst du noch etwas, oder störst du mich einfach nur?"~ */
  IF ~~ THEN REPLY #65315 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~Wie immer sieht Penn sehr beschäftigt mit Schreiben aus. "Brauchst du ein Schriftstück oder einen Druck? Wenn ja, dann laß es mich wissen, und ich erledige es. Wenn nein, dann geh zur Zelle im Gewölbe der Neunten Welt, dort kümmert man sich um dich."~ */
  IF ~~ THEN REPLY #65317 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"Mach schnell. Ich hab zu tun."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"Ich vermisse einen Schädel."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"Goldspore schickt mich, dir einen Handzettel zu bringen, damit du hundert Kopien davon anfertigst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"Ich möchte, daß du mir einen Liebesbrief verfaßt."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"Wie war noch mal das Erkennungswort für unsere Zelle?"~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"Woran arbeitest du?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"Woran arbeitest du?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"Woran arbeitest du?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"Woran arbeitest du?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"Ich würde gerne über Revolution reden..."~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"Ich hätte ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"Leena möchte, daß ich mich beweise."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"Weißt du, wer wir sind?"~ */
  IF ~~ THEN REPLY #65331 /* ~"Erzähl mir davon."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"Nein. Ich will einfach nur Mitglied werden. Wenn es euch um Zerstörung geht: ich bin dabei."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"Wenn ihr Verbindungen zu Vaxis habt, dann seid ihr die Revolutionsliga."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"Warum redest du dann überhaupt mit mir? Was willst du? Wartest du darauf, daß ich dich rausschmeiße, oder was?"~ */
  IF ~~ THEN REPLY #65334 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"Ja. Schmeiß mich raus."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"Wenn ich du wäre, dann würde ich zum Zerfallenen Haus beim Pfandhaus gehen. Such darin nach einer Leiter, die nach unten führt. Sprich ein letztes Gebet, und geh hinunter. Lothar ist da unten, und er ist keiner, dem ich zu nahe treten würde. Er ist ein Schädelsammler, und wenn ihm danach ist, dann nimmt er deinen. Und das kann er auch. Es interessiert mich nicht, wie hart du bist. Sei vorsichtig... du bist wertvoll." Er sieht von seinen Dokumenten auf. "Willst du noch etwas?"~ */
  IF ~~ THEN REPLY #65337 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~Er nimmt den Handzettel, sieht ihn durch und sagt: "Das erledige ich später. Sag ihm das." Er wendet sich wieder seinem Schreibtisch zu.~ */
  IF ~~ THEN REPLY #65339 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~LEERE ZEILE~ */
  IF ~~ THEN REPLY #65341 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"Ein Liebesbrief, ja? Vage und leidenschaftlich? Fein." Er überlegt kurz und nimmt ein parfümiertes Blatt Papier aus einer Schreibtischschublade. Er kritzelt ein paar nichtssagende Liebeszeilen in einer schnörkeligen, eleganten Handschrift. "Das wird genügen. Ganz sicher."~ */
  IF ~~ THEN REPLY #65343 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"Danke. Leb wohl."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~Er sieht auf und schielt dich an. "Das Erkennungswort lautet 'Eklipse.' Beeil dich, und verwende es, bevor sie es ändern."~ */
  IF ~~ THEN REPLY #65345 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"Das ist ein Stapel von Flugblättern gegen das Harmonium. Sie werden noch früh genug im Unteren Bezirk verteilt werden." Er kritzelt weiter. "Ich bin gleich fertig, und dann mach ich etwas anderes." Sein Federhalter schwingt sanft über das Papier.~ */
  IF ~~ THEN REPLY #65347 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"Eine anonyme Petition, die eine wahre Vertretung von den Höfen fordert, und nicht diese Scheingesetze, die einem die Herrscher vorgaukeln." Diesmal sieht er dich länger an, als würdest du seine Geduld auf die Probe stellen.~ */
  IF ~~ THEN REPLY #65348 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"Es ist ein Handzettel, der die Freilassung bestimmter politischer Häftlinge aus den Gefängnissen der Stadt fordert. Sie wurden zu unrecht für Verbrechen verhaftet, die von der Revolutionsliga begangen wurden. Und obwohl ich einen echten Märtyrer für die gute Sache begrüßen würde..." Er unterbricht und sieht dich fest an. "Obwohl ich also einen Märtyrer begrüßen würde, so widerstrebt es mir doch, Unschuldige zu opfern. Ich bin dabei, sie zu befreien."~ */
  IF ~~ THEN REPLY #65349 /* ~"Danke. Ich hätte noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~Er legt seinen Federhalter zornig weg und sieht dich scharf an. "Warum hörst du nicht auf, diese Fragen zu stellen, und machst dich an die Arbeit, was immer deine Arbeit auch sein mag?" Er stößt einen scharfen Seufzer aus. "Ich bin ein vielbeschäftigter Mann, und du tust nichts als mich zu fragen, was ich mache. Kinder sind nicht so nervtötend wie du, denn die hören wenigstens instinktiv auf mit der dummen Fragerei, wenn ich sie wütend ansehe. Nun. Was wolltest du?"~ */
  IF ~~ THEN REPLY #65353 /* ~"Warum bist du nicht da draußen und machst etwas Sinnvolles?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"Nichts, wenn du mir so kommst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"Warum gehst du nicht los und unternimmst etwas, anstatt von Revolution zu reden? Töte ein paar Leute des Harmoniums, oder schlachte ein paar Staubmenschen oder etwas in der Art. Vernichte die alte Ordnung mit Taten, nicht mit Worten."~ */
  IF ~~ THEN REPLY #65356 /* ~"Warum bist *du* nicht da draußen und handelst, anstatt zu schreiben?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"Gut, gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"Gut. Das werde ich. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"Wir sind die Revolutionsliga. Weißt du, wofür wir kämpfen?"~ */
  IF ~~ THEN REPLY #65359 /* ~"Ja."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"Nein."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"Wir kämpfen für den Umsturz von Sigils Ordnung. Wir sind Gegner der anderen Bünde. Wir sind ein Bund, der kein Bund ist. Wir sind organisiert im Namen des Chaos. Wir reißen nieder, damit andere aufbauen mögen, mit größerer Freiheit und besserem Leben. Die alte Ordnung steht dem im Weg. Die alten Bünde vernebeln den Menschen den Blick."~ */
  IF ~~ THEN REPLY #65361 /* ~"Ich dachte, sie würden nach der Wahrheit suchen."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"Inwiefern stehen sie im Weg?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"Ja, ich weiß. Und du hast recht. Laß uns weitermachen."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"Korrekt. Und gleich auf Anhieb. Weißt du, wofür wir kämpfen?"~ */
  IF ~~ THEN REPLY #65364 /* ~"Ja."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"Nein."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~Seine Hand erstarrt. Ein Tintentropfen fällt auf das Papier. "Was hast du zu mir gesagt?"~ */
  IF ~~ THEN REPLY #65378 /* ~"Ich fragte, warum du nicht etwas tust, anstatt dich hier in deinem Laden zu verstecken?"~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~"Nichts. Vergiß es."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~"Ganz einfach: Seitdem es die alte Ordnung gibt, tut sie alles, um jeden vom Dunkel des Multiversums fernzuhalten. Denn was wäre, wenn wir *tatsächlich* herausfänden, worum es eigentlich geht? Kleine Welten würden zusammenbrechen. Manche sind bereits so sicher, daß sie die Antworten gefunden haben, daß alle anderen sich irren und vernichtet werden müssen. Das verstehe ich nicht gerade unter einem Forum, in dem alle Glaubensrichtungen toleriert werden."~ */
  IF ~~ THEN REPLY #65380 /* ~"Glaubst du nicht, daß sie ihr Bestes geben?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"Suchen sie nicht nach der Wahrheit?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"Du hast völlig recht. Laß uns weitermachen. Ich möchte Teil eurer Gruppe werden."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"Soll ich dir was sagen? Das klingt alles ein bißchen paranoid. Vergiß es."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"Nein. Sie suchen etwas, das sie aufwertet und überlegen macht. Sie machen sich weis, sie hätten es gefunden, und dann verfolgen sie jeden, der widerspricht."~ */
  IF ~~ THEN REPLY #65384 /* ~"Woher weißt du, daß sie nicht die große Wahrheit gefunden haben?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"Wie willst du wissen, daß sie nicht ihr Bestes geben?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"Du hast recht. Ich tue alles, was ihnen schaden könnte."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"Ich glaube, du bist völlig verrückt. Diese ganze Revolutionskiste kotzt mich an."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"Der alten Ordnung geht es weniger darum, die Wahrheit zu finden, als darum, die Macht zu behalten und sich die Taschen zu stopfen. Nichts Neues kann wachsen, bevor das Alte ausgelöscht ist."~ */
  IF ~~ THEN REPLY #65388 /* ~"Woher weißt du, daß sie nicht die große Wahrheit gefunden haben?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"Du hast recht. Ich tue alles, was ihnen schaden könnte."~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"Ich glaube, du opferst auch das Gute und machst einen schweren Fehler."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"Wenn du wirklich so interessiert daran bist, dann erteile ich dir einen Auftrag. Führe ihn aus, und du bist dabei."~ */
  IF ~~ THEN REPLY #65391 /* ~"Laß mich erst ein paar Fragen über euch stellen."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"Was ist der Auftrag?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"Weil viele von ihnen sie vergeblich gesucht haben, sogar die frommsten Mitglieder. Und diejenigen, die sie gefunden haben, schenken der gefundenen 'Wahrheit' nicht eben viel Glauben: Die Staubmenschen glauben, wir müssen alle sterben. Die Sinnsaten glauben, wir sollen nachgeben, und das Dunkel wird folgen. Die Göttermenschen gehören zu denen, die noch nicht einmal das Große Dunkel gefunden haben. Deren einzige 'Wahrheit' ist: 'Versuch es weiter, eines Tages weißt du es.' Also machen sie sich tagtäglich zu Sklaven in der Gießerei bis sie sterben. Ganz schön clevere Jungs."~ */
  IF ~~ THEN REPLY #65393 /* ~"Das ist eine ziemlich schräge Beurteilung ihres Glaubens."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"Sie müssen niedergekämpft werden. Laß uns den Job zu Ende bringen."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"Unsere Methoden gefallen dir also nicht?" Du merkst, daß seine Hand ganz leicht zu zittern anfängt.~ */
  IF ~~ THEN REPLY #65395 /* ~"Kleiner Scherz."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"Nein."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"Vielleicht solltest du nach draußen gehen und noch einmal über deine Haltung nachdenken." Er macht eine Handbewegung, und du stehst draußen.~ */
  IF ~~ THEN REPLY #65397 /* ~"Was zum..."~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~Offensichtlich habe ich Gesetzesspötter Penn, den Besitzer der Druckerei und Anarchisten, verärgert, als ich ihm gesagt habe, daß ich seinen Methoden nicht zustimme. Er hat mich aus seinem Laden herausteleportiert, und jetzt ist mir die Tür verschlossen.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"Jede Revolution braucht ihre Führer, Dussel. Jeder Aufstand braucht jemanden, der die Planung übernimmt. Glaubst du, daß ein bloßes Chaos ausreicht, um die Bünde zu zerschlagen? Wir brauchen schon mehr als ein paar zufällige Attacken - nur ein ausgearbeiteter Plan kann den Bünden schaden. Tatsache ist: Einige Leute sind die Schwerter, und andere Leute sind die Hände, die die Schwerter führen, und wieder andere... sind die Gehirne, die die Hände führen."~ */
  IF ~~ THEN REPLY #65398 /* ~"Und wer hat dich zum Gehirn erkoren?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"Sind denn nicht alle gleich?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"In Ordnung. Kein Grund, sich gleich zu überarbeiten."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"Ich glaube, du machst einen großen Fehler. Du solltest hier nicht das Kommando haben."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"Ich selbst. Niemand sonst war bereit für diese Aufgabe. Manchen muß man sagen, was sie tun sollen. Manche ergreifen die Initiative. Ich bin bereit für die Aufgabe, ich bin bereit, im Falle eines Fehlschlags die Verantwortung zu übernehmen, und ich bin bereit, den Weg freizumachen, sobald meine Pläne Früchte tragen. Ich habe alles aufgegeben, was mir lieb und teuer war, um die Menschen in eine besseres Leben zu führen. Ich glaube, das zeichnet mich aus."~ */
  IF ~~ THEN REPLY #65402 /* ~"Warum werden nicht alle gleich behandelt?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"In Ordnung. Kein Grund, sich gleich zu überarbeiten."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"Ich glaube, du hast nichts als Mist im Hirn, wenn du tatsächlich glaubst, du hast das Zeug zum Führer."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"Das Wesen dieser Art von Revolution besteht darin, daß nicht einmal unser eigenes Volk informiert sein *darf*. Wir operieren in selbständigen Zellen mit sporadischem Kontakt zum Kopf des Bundes. Das erschwert es den anderen Bünden, uns auf die Schliche zu kommen und unsere Pläne zu vereiteln. Wenn sie eine Zelle erwischen, finden sie keine weitere, außer sie haben wirkliches Glück. Die Leute können nicht gleichberechtigt sein, solange wir unseren Auftrag nicht erfüllt haben oder sie sich nicht bewiesen haben."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"Du scheinst recht oft am Ziel vorbei zu arbeiten."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"Wer ist in der Zelle? Wie viele?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"Wie bekommst du Hilfe von anderen Zellen?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"Das ist absurd. Das kann nur schiefgehen. Dieser ganze Bund wird versagen."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"Reden wir über die Organisation..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"Wenn du soviel geopfert hättest wie ich, um anderen zu dienen, dann würdest du nicht so schnell ein Urteil über mich fällen. Diese Aufgabe erfordert Leidenschaft und Idealismus, und ich fürchte fast, diese Tugenden sind dir abhanden gekommen." Er denkt einen Moment nach. Du bemerkst, daß seine Hand ganz leicht zittert.~ */
  IF ~~ THEN REPLY #65409 /* ~"Ich fälle ein Urteil, weil du einen Dreck über Opfer weißt und du und deine Konsorten Anarchisten sind. Diese Organisation ist Mist."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"Schon gut, beruhig dich. Reden wir über eure Organisation..."~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"Schon gut, ganz ruhig. Reden wir über die Organisation..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #65411 /* ~"Wie ist die Organisation aufgebaut?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"Welchen Auftrag soll ich ausführen?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"Wie organisiert ist euer Chaos?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"Wie bekommst du Hilfe von anderen Zellen?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"Wo sind eure Verstecke?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"Im Bezirk der Kuratoren oder in der Städtischen Festhalle findest du einen Stein-Genasi namens Qui-Sai. Er ist gefährlich für uns, auch wenn er selbst das nicht weiß. Finde ihn, und strecke ihn nieder. Wenn du das erledigt hast, komm zurück, und ich erzähle dir von unseren Verstecken."~ */
  IF ~~ THEN REPLY #65416 /* ~"Ich komm wieder."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~Gesetzesspötter Penn hat mich gebeten, den Steingenasi Qui-Sai im Bezirk der Kuratoren, in der Städtischen Festhalle, zu töten. Ich habe eingewilligt, es zu tun.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"Ich werde es nicht tun. Menschen umbringen ist keine Lösung."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~Ich habe Penn gesagt, daß ich den Genasi Qui-Sai nicht töten werde. Er wurde etwas ärgerlich und hat mich aus seinem Laden geschmissen.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"Jede Revolution braucht ihre Führer. Jeder Aufstand braucht jemanden, der die Planung übernimmt. Glaubst du, daß ein bloßes Chaos ausreicht, um die Bünde zu zerschlagen? Wir brauchen schon mehr als ein paar zufällige Attacken - nur ein ausgearbeiteter Plan kann den Bünden schaden. Tatsache ist: Einige Leute sind die Schwerter, und andere Leute sind die Hände, die die Schwerter führen, und wieder andere... sind die Gehirne, die die Hände führen."~ */
  IF ~~ THEN REPLY #65418 /* ~"Und wer hat dich zum Gehirn erkoren?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"Sind denn nicht alle gleich?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"Ich glaube, du machst einen großen Fehler. Du solltest hier nicht das Kommando haben."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"Leider ja. Aber besser, als dabei zuzusehen, wie die ganze Organisation in Flammen aufgeht oder unter dem Schwert stirbt."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"Erzähl mir mehr."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"Welchen Auftrag soll ich ausführen?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"Erzähl mir mehr."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"Das sage ich dir, wenn du von deinem Auftrag zurückkehrst."~ */
  IF ~~ THEN REPLY #65423 /* ~"Was ist der Auftrag?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"Erzähl mir mehr über die Organisation."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"Ich gebe es weiter. Wir haben ein großes Netzwerk aus Informanten. Wir wissen immer, wenn jemand Hilfe braucht, und wenn es den Zielen der Organisation dient, dann helfen wir."~ */
  IF ~~ THEN REPLY #65425 /* ~"Welchen Auftrag soll ich ausführen?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"Erzähl mir mehr über die Organisation."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"Und? Hast du dich schon um den Genasi Qui-Sai gekümmert?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"Er ist tot."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Ich habe Gesetzesspötter Penn von meinem Erfolg beim Töten von Qui-Sai berichtet. Er war so glücklich wie noch nie, glaube ich, aber er hat mich in seine Zelle der Revolutionsliga eingeführt und mir gesagt, wo ich einige seiner Leute finden kann: Im Warenhaus, das Gewölbe der Neunten Welt genannt wird, im Unteren Bezirk. Er hat mir gesagt, mit welchem Kennwort ich mich identifizieren soll. Es heißt 'Eklipse'.~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~Lüge: "Er ist tot."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"Noch nicht."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"Er ist tot."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Ich habe Gesetzesspötter Penn von meinem Erfolg beim Töten von Qui-Sai berichtet. Er war so glücklich wie noch nie, glaube ich, aber er hat mich in seine Zelle der Revolutionsliga eingeführt und mir gesagt, wo ich einige seiner Leute finden kann: Im Warenhaus, das Gewölbe der Neunten Welt genannt wird, im Unteren Bezirk. Er hat mir gesagt, mit welchem Kennwort ich mich identifizieren soll. Es heißt 'Eklipse'.~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"Er ist tot."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Ich habe Gesetzesspötter Penn von meinem Erfolg beim Töten von Qui-Sai berichtet. Er war so glücklich wie noch nie, glaube ich, aber er hat mich in seine Zelle der Revolutionsliga eingeführt und mir gesagt, wo ich einige seiner Leute finden kann: Im Warenhaus, das Gewölbe der Neunten Welt genannt wird, im Unteren Bezirk. Er hat mir gesagt, mit welchem Kennwort ich mich identifizieren soll. Es heißt 'Eklipse'.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~Penn sieht dich verächtlich an und wendet sich wieder seinem Schreibtisch zu. "Du kannst mich nicht anlügen... Obwohl ich es interessant finde, daß du es versuchst. Geh zurück, und erledige den Job. Und komm bloß nicht vorher wieder."~ */
  IF ~~ THEN REPLY #65457 /* ~"Was würdest du sagen, wenn ich dich einfach verpfeife?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"In Ordnung. Kannst du mir ein paar Dokumente drucken?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"Dann los. Du verzögerst unsere Pläne."~ */
  IF ~~ THEN REPLY #65460 /* ~"Was würdest du sagen, wenn ich dich einfach verpfeife?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"In Ordnung. Kannst du mir ein paar Dokumente drucken?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"Und was willst du sagen? 'Herr Offizier, ich habe einen von den Göttermenschen getötet und ihre Todesmaschine in die Luft gejagt, und dann wollte ich mich den Anarchisten anschließen, aber die wollten, daß ich noch jemanden töte, und das konnte ich einfach nicht. Verhaften Sie sie! Ich bin unschuldig!' Sorry, Dussel. So dumm bist nicht einmal du, obwohl vielleicht nur noch wenige Schläge auf den Kopf fehlen würden. Mach weiter jetzt."~ */
  IF ~~ THEN REPLY #65463 /* ~"Leb wohl."~ */ JOURNAL #65464 /* ~Ich habe Penn gefragt, was er tun würde, wenn ich versuchte, mich gegen ihn zu wenden. Er hat ein paar gute Argumente gegen diese Idee aufgeführt. Ich glaube, im Moment lasse ich ihn mal davonkommen.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~Er sieht dich an. "Wenn du den Genasi beseitigt hast, dann drucken wir dir alles, was du willst. Bis dahin laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #65465 /* ~"Was würdest du sagen, wenn ich dich einfach verpfeife?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"Dann hast du dich als würdig erwiesen." Er reicht dir die Hand, und du schlägst ein. "Willkommen in meiner Zelle. Wenn du Rast brauchst, oder Zauber oder andere Spielsachen, dann rede mit Leena oder Conall im Lagerhaus, das man 'Gewölbe der Neunten Welt' nennt, gleich hier um die Ecke. Das Erkennungswort ist 'Eklipse'. Wolltest du noch etwas wissen?"~ */
  IF ~~ THEN REPLY #65467 /* ~"Erzähl mir von der Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"Was habt ihr vor?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"Ja, ich hätte da noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #65471 /* ~"Wie ist die Organisation aufgebaut?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"Wie bekommst du Hilfe von anderen Zellen?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"Wo sind eure Verstecke?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"Und wenn ich Hilfe brauche?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"Ich hoffe es doch. Und ich hoffe, sie gibt die den Auftrag, diesen Vorten zu beseitigen. Sie hat mir schon lange genug damit in den Ohren gelegen."~ */
  IF ~~ THEN REPLY #65477 /* ~"Ääh... ja. Ich hätte ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"Richtig. Ich hätte noch ein paar Fragen..."~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"Aha. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"Das findest du noch früh genug heraus, keine Angst. Hoffentlich wirst du schon bald einen Höhepunkt erleben. Aber mach dir darüber jetzt noch keine Gedanken."~ */
  IF ~~ THEN REPLY #65480 /* ~"Gut. Erzähl mir von der Organisation."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"Gut. Beantworte mir noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"Das Wesen dieser Art von Revolution besteht darin, daß nicht einmal unser eigenes Volk informiert sein *darf*. Wir operieren in selbständigen Zellen mit sporadischem Kontakt zum Kopf des Bundes. Das erschwert es den anderen Bünden, uns auf die Schliche zu kommen und unsere Pläne zu vereiteln. Wenn sie eine Zelle erwischen, finden sie keine weitere, außer sie haben wirkliches Glück. Die Leute können nicht gleichberechtigt sein, solange wir unseren Auftrag nicht erfüllt haben oder sie sich nicht bewiesen haben."~ */
  IF ~~ THEN REPLY #65483 /* ~"Ich hätte noch ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"Wir haben ein Netzwerk. Eine Art Kommunikationsnetz, das verhindert, daß wir alle einander kennen, außer ein paar grundlegenden Kontaktpersonen, und wenn es etwas gibt, das getan werden muß, dann findet die Nachricht schon den Weg an die richtige Stelle. Natürlich überprüfen wir diese Nachrichten sorgfältig, dann schicken wir unsere Hilfe. Wir mögen klein aussehen, jeder für sich betrachtet, aber es gibt mehr von uns als die anderen Bünde glauben."~ */
  IF ~~ THEN REPLY #65486 /* ~"Ich hätte noch ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"Unser gegenwärtiges Versteck ist, wie schon gesagt, das Gewölbe der Neunten Welt. Meine Leute sind dort im Moment als Arbeiter getarnt. Rede mit Leena, und sag ihr das Erkennungswort, dann geht alles in Ordnung."~ */
  IF ~~ THEN REPLY #65489 /* ~"Ich hätte noch ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"Danke. Leb wohl."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"Wenn du Hilfe brauchst, werden wir es erfahren. Wenn wir können, schicken wir dir sofort Hilfe. Such nicht danach. Sie wird dich suchen. Keine Sorge. Die Mitgliedschaft bei uns zahlt sich auf subtile Weise aus."~ */
  IF ~~ THEN REPLY #65492 /* ~"Ich hätte noch ein paar Fragen über die Organisation..."~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"Oh je. Bist du gekommen, um mir wieder zu drohen?" Er scheint demonstrativ unbesorgt zu sein.~ */
  IF ~~ THEN REPLY #65495 /* ~"Transportiere mich noch einmal so, und du bist des Todes."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"Wie hast du mich teleportiert?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"Na, wenn das nicht die Zeitverschwendung in Person ist... Willst du diesmal wirklich etwas?"~ */
  IF ~~ THEN REPLY #65499 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"Eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"Geschäftsgeheimnis. Wolltest du eigentlich etwas, oder bist du nur gekommen, um noch ein bißchen Wind zu machen?"~ */
  IF ~~ THEN REPLY #65501 /* ~"Ich bin gekommen, dich zu warnen: Tu das nie wieder."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"Nein. Leb wohl."~ */ EXIT
END
