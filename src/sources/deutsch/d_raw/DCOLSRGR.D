// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~Dieser große und blasse, finster blickende Mann strahlt Autorität aus, obwohl er ziemlich schlaksig ist und auch sonst einen recht merkwürdigen Körperbau hat. Ihm fehlt ein großes Stück seines linken Ohrs; der klägliche Rest davon ist eine einzige Narbenlandschaft. Es sieht eher nach einem Biß als nach einem Schnitt aus. Seine flinken, fast schlitzförmigen Augen sehen clever... und gefährlich aus.~ */
  IF ~~ THEN REPLY #18195 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~Er spuckt die Antwort förmlich aus: "Ich kenne dich nicht, Dussel." Finster blickend knurrt er dich an: "Was willst du? Aber mach's kurz, bevor ich meine Leute rufe, die dann kurzen Prozeß mit dir machen."~ */
  IF ~~ THEN REPLY #18198 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"Nichts. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"Nichts. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~"Dann verzieh dich, Dussel. Und falls du den Drang verspürst, noch einmal hier vorbeizuschauen, dann geh einfach schnell weiter. Klar? Sonst sorgen meine Leute dafür, daß du überhaupt nirgends mehr hingehen kannst."~ */
  IF ~~ THEN REPLY #18203 /* ~Geh weg.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~Er schaut dich spöttisch und ungläubig an. "Dussel, wer ich bin, hättest du *als zweites* wissen müssen, bevor du deinen aufgeschlitzten Kadaver hierher geschleppt hast."~ */
  IF ~~ THEN REPLY #18205 /* ~"Was hätte ich zuerst wissen müssen?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"Krieg dich wieder ein. Ich mein's doch nicht böse."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"An deiner Stelle würde ich mir einen anderen Ton zulegen, wenn du weiter aufrecht stehen willst."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"Dann vergiß es. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"Dann entschuldige. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"Daß ich Besucher hasse, und Fremde noch mehr. Und du bist beides." Er grinst höhnisch und tippt sich mit dem Finger an die Schläfe. "Denk dir den Rest selber."~ */
  IF ~~ THEN REPLY #18212 /* ~"Krieg dich wieder ein. Ich mein's doch nicht böse."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"An deiner Stelle würde ich mir einen anderen Ton zulegen, wenn du weiter aufrecht stehen willst."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"Na dann leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"Dann entschuldige. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"Ach, *was* du nicht sagst! Und was bringt mir das, *verdammt noch mal*? Ich frage dich noch einmal, bevor du mit dem Hintern auf der Straße landest, gegebenenfalls in mehreren Stücken: Was *willst* du?"~ */
  IF ~~ THEN REPLY #18218 /* ~"An deiner Stelle würde ich mir einen anderen Ton zulegen, wenn du weiter aufrecht stehen willst."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"Nichts. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"Nichts. Entschuldige die Störung. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"Verdammt. Jetzt reicht's mir aber." Er schaut dir in die Augen, deutet ein Lächeln an und ruft: "Leute! Kommt her und tötet diesen Mann!"~ */
  IF ~~ THEN REPLY #18223 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~Flüchte.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~Er zögert kurz... dann nickt er. "Ach ja? Zum Beispiel?"~ */
  IF ~~ THEN REPLY #18226 /* ~"Erzähl mir was über Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"Vergiß es. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"Vergiß es. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~Er rollt mit den Augen. Dann hält er die Hände vors Gesicht, als würde ihn etwas blenden. "Die Stadt der Tore, wo die Straßen mit Gold gepflastert sind und...", er wird wieder ernst, "...mit Toten. Mach mir doch nicht weis, du bist hierher gekommen, nur um mich über Sigil auszufragen... Worum geht's denn hier eigentlich? Und keine Spielchen, Dussel - mein Geduld ist bald am Ende."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"Ich suche ein Journal, das ich verloren habe."
~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"Um nichts weiter. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"Um nichts weiter. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"Darüber weiß ich nichts." Er runzelt die Stirn und fügt mit strengem Blick hinzu: "Sollte ich?"~ */
  IF ~~ THEN REPLY #18237 /* ~"Nein. Erzähl mir was über Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"Nein. Ich suche auch einen Mann namens Pharod."
~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"Nein. Leb wohl."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"Nein. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~Die Spannung im Raum steigt plötzlich an. "Sehr amüsant, deine Frage. Und weshalb interessierst du dich so sehr für das alte Vollblut Pharod?"~ */
  IF ~~ THEN REPLY #18242 /* ~"Er hat mir etwas gestohlen, und ich will es wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"Er hat einige meiner Sachen, und ich will sie wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"Er weiß etwas, was ich wissen muß."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"Ich will ihn nur mal kennenlernen."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"Er ist ein Freund von mir."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"Er ist ein Freund von mir."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"Ach, schon gut. Entschuldige die Störung... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"Was für ein Haufen stinkender Bockmist." Er verengt seine Augen zu Schlitzen. "Warum?"~ */
  IF ~~ THEN REPLY #18251 /* ~"Er hat mir etwas gestohlen, und ich will es wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"Er hat einige meiner Sachen, und ich will sie wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"Er weiß etwas, was ich wissen muß."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"Er ist ein Freund von mir."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"Er ist ein Freund von mir."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"Ach, schon gut. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"Ach ja? Zum Beispiel?"~ */
  IF ~~ THEN REPLY #18259 /* ~"Zum Beispiel, wer ich bin."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"Ach, nichts. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"Ach, nichts. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"Ach?" Er grinst boshaft. "Dann richte ihm was von mir aus..." Plötzlich ruft er: "Leute! Kommt her und tötet diesen Mann!"~ */
  IF ~~ THEN REPLY #18270 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~Flüchte.
~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~Als du zum Sprechen ansetzt, steigt in deinem Hinterkopf plötzlich ein komisches Gefühl auf, und du schweigst. Etwas in Grabteilers Augen läßt dich vermuten, daß Pharod und er nicht die besten Freunde sind... ganz im Gegenteil.~ */
  IF ~~ THEN REPLY #18273 /* ~"Er hat mir etwas gestohlen, und ich will es wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"Er hat einige meiner Sachen, und ich will sie wiederhaben."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"Er weiß etwas, was ich wissen muß."~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"Er ist ein Freund von mir."~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"Ach, schon gut. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~Nach einer langen Stille sagt er: "Du bist doch völlig übergeschnappt, Dussel. Und so wie du aussiehst, könntest du uns alle in Gefahr bringen. Hau ab, aber schnell."~ */
  IF ~~ THEN REPLY #18280 /* ~"Aber ich hätte da noch ein paar andere Fragen..."
~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~Geh weg.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"Ach? Hmm. Sehr interessant." Plötzlich ruft er: "Leute! Tötet diesen Mann!"~ */
  IF ~~ THEN REPLY #18283 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~Flüchte.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~Der Mann schweigt einen Augenblick, dann lächelt er. "Er bestiehlt uns alle, ob tot oder lebendig, was?" Er kichert.~ */
  IF ~~ THEN REPLY #18286 /* ~"Was meinst du?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"Mag sein. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"Vielleicht. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"Wir... leben hier hauptsächlich von den Toten. Verstehst du?"~ */
  IF ~~ THEN REPLY #18290 /* ~"Nicht ganz."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"Du bist ein Sammler."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"Meine Jungs und ich verdienen unseren Klimper, indem wir die Leichen der Toten im Stock aufsammeln und sie an die Staubies verkaufen. Klar?"~ */
  IF ~~ THEN REPLY #18293 /* ~"Du bist ein Sammler."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"Ja. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"Ja. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"Ja, das ist richtig." Er schaut dich an, als würde er sich gerade etwas überlegen. "Es gibt immer nur so und so viele Totenbüchler, die meine Jungs und ich sammeln können. Wenn noch jemand anfängt, Leichen zu sammeln, gehen wir so ziemlich leer aus."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"Pharod sammelt auch Leichen ein?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"Also..."~ */ JOURNAL #17089 /* ~Ein Mann auf dem Lumpensammler-Platz hat mir erzählt, daß Pharod irgendwie einen scheinbar endlosen Vorrat an Leichen aufgetan hat. Er ist erschüttert, schließlich ist es ja seine Aufgabe, Leichen zu sammeln, und möchte wissen, wie genau Pharod das gemacht hat.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"Das ist alles, was ich hören wollte. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"Aha. Entschuldige die Störung... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"Ja."~ */
  IF ~~ THEN REPLY #18302 /* ~"Also..."~ */ JOURNAL #17089 /* ~Ein Mann auf dem Lumpensammler-Platz hat mir erzählt, daß Pharod irgendwie einen scheinbar endlosen Vorrat an Leichen aufgetan hat. Er ist erschüttert, schließlich ist es ja seine Aufgabe, Leichen zu sammeln, und möchte wissen, wie genau Pharod das gemacht hat.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"Interessant. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"Aha. Entschuldige die Störung... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"Merkwürdig ist nur, daß er *Unmengen* davon findet. Dabei wüßte ich nicht, daß es in Sigil irgendwelche Massaker gab." Er runzelt die Stirn und kratzt sich am Kinn. "Ich würde gern wissen, wo er die Totenbüchler alle her hat."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"Ich weiß es schon."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"Ich kann es für dich herausfinden, wenn du willst."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"Ich könnte es für dich herausfinden... aber es kostet dich was."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"Merkwürdig. Naja, vergiß es. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"Vielleicht wirst du es eines Tages herausfinden. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"Viel Glück bei deiner Suche nach den Antworten. Entschuldige die Störung... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~Er grinst höhnisch, plötzlich über deine Antwort verärgert. "Jetzt reicht's. Hau ab, bevor dich meine Leute hinausbegleiten müssen."~ */
  IF ~~ THEN REPLY #18313 /* ~"Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~Geh weg.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"Ach, ja? Und wie willst du das anstellen?"~ */
  IF ~~ THEN REPLY #18316 /* ~"Ich muß ihn nur finden. Überlaß alles andere mir."~ */ JOURNAL #18449 /* ~Ich habe mich bereit erklärt, einem Mann zu helfen, mehr über Pharods scheinbar endlosen Vorrat an Leichen herauszufinden; er hat mir angeboten, mich für diese Information zu bezahlen. Er hat mir auch erzählt, daß ich, um Pharod zu finden, den Plattformen über den Platz nordwestlich zu einem Tor folgen muß. Das Tor sollte in sein Versteck führen.~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~Er wirft dir einen kurzen Blick zu und spielt mit dem Rest seines linken Ohrläppchens. "Okay... Wieviel willst du."~ */
  IF ~~ THEN REPLY #18318 /* ~"Dreihundert Kupfermünzen."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"Zweihundert Kupfermünzen."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~Ich habe einen Mann auf dem Lumpensammler-Platz getroffen, der mir eine Belohnung für die Entdeckung zahlen wird, wie und woher Pharod so viele Leichen sammelt.~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"Hundert Kupfermünzen."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Ich habe einen Mann auf dem Lumpensammler-Platz getroffen, der mir eine Belohnung für die Entdeckung zahlen wird, wie und woher Pharod so viele Leichen sammelt.~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"Vergiß es. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"Ein anderes Mal. Entschuldige die Störung... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~Er frotzelt: "So wichtig ist es mir auch nicht." "Hau ab, bevor dich meine Leute hinausbegleiten müssen."~ */
  IF ~~ THEN REPLY #18324 /* ~"Warte! Okay, hundert Kupfermünzen."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Ich habe einen Mann auf dem Lumpensammler-Platz getroffen, der mir eine Belohnung für die Entdeckung zahlen wird, wie und woher Pharod so viele Leichen sammelt.~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~Geh weg.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~Er denkt kurz nach... dann nickt er. "Okay. Abgemacht. Wenn du zurückkommst mit dem Dunkel dieser Sache, wechselt der Klimper den Besitzer. Muß ich dir sagen, wo der alte Pharod steckt?"~ */
  IF ~~ THEN REPLY #18328 /* ~"Ja."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"Nein."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"Abgemacht. Muß ich dir sagen, wo der alte Pharod steckt?"~ */
  IF ~~ THEN REPLY #18331 /* ~"Ja."~ */ JOURNAL #18451 /* ~Ein Mann auf dem Lumpensammler-Platz hat mir erzählt, daß ich, um Pharod zu finden, den Plattformen über den Platz nordwestlich zu einem Tor folgen muß. Das Tor sollte in sein Versteck führen.~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"Nein."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"Geh hoch zu den Plattformen und folge ihnen in Richtung Nordwesten. Du kommst dann an ein Tor, hinter dem Pharods Schlupfloch liegt. Deine Aufgabe ist es, da rein zu kommen und die Info zu beschaffen. Und falls dich jemand fragt: Du kennst mich nicht, und dieses Gespräch hat nie stattgefunden. Ist das klar?"~ */
  IF ~~ THEN REPLY #18334 /* ~"Wer *bist* du?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"Dann ist ja alles klar. Falls dich jemand fragt: Du kennst mich nicht, und dieses Gespräch hat nie stattgefunden. Ist das klar?"~ */
  IF ~~ THEN REPLY #18337 /* ~"Wer *bist* du?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"Für einen intelligenten Schleifer hörst du aber nicht besonders gut zu."~ */
  IF ~~ THEN REPLY #18340 /* ~"Äh..."~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~Geh.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~Der Mann wirkt nicht gerade erfreut, dich wiederzusehen. "Ich will kein Wort hören, Dussel, kein einziges. Und jetzt hau ab, bevor meine Leute dich hinausbegleiten müssen."~ */
  IF ~~ THEN REPLY #18343 /* ~"Aber ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~Geh weg.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~Zum Gruß deutet er ein Kopfnicken an. "Hast du getan, worum ich dich gebeten habe? Hast du herausgefunden, was er treibt?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"Ja. Pharods Nachschub an Leichen kommt aus den Katakomben unter Sigil. Er macht 'ne Menge Klimper damit, die Leichen, die die Staubmenschen schon begraben haben, wieder an sie zurückzuverkaufen."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Ich habe dem Mann, mit dem ich das Abkommen über die Aufdeckung von Pharods Geschäften hatte, erzählt, was er wissen wollte, und bin dafür bezahlt worden.~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"Ja. Pharods Nachschub an Leichen kommt aus den Katakomben unter Sigil. Er macht 'ne Menge Klimper damit, die Leichen, die die Staubmenschen schon begraben haben, wieder an sie zurückzuverkaufen."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Ich habe dem Mann, mit dem ich das Abkommen über die Aufdeckung von Pharods Geschäften hatte, erzählt, was er wissen wollte, und bin dafür bezahlt worden.~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~Lüge: "Pharod hat einfach Glück bei seiner Leichensuche. Das ist alles."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"Noch nicht."
~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"Geh und finde heraus, was ich wissen muß... Laß dich erst wieder hier blicken, wenn du das getan hast. Und jetzt hau ab, bevor meine Leute dich hinausbegleiten müssen."~ */
  IF ~~ THEN REPLY #18351 /* ~"Aber ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~Er reißt überrascht die Augen auf und schreit laut: "Wie bei Baator ist er da runter gekommen?! Dieser Bastard!"~ */
  IF ~~ THEN REPLY #18354 /* ~"Sein 'Schlupfloch' ist ein Höhlenkomplex. Dieser führt zu einem kleinen Straßenblock, der unter dem Lumpensammler-Platz begraben ist. Von einem der Tore dort geht's runter in die Katakomben."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"Wenn du wissen willst, wie, kostet das extra."~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"Wenn du wissen willst, wie, kostet das extra."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"Ich kann nicht glauben, daß dieser Bastard soviel Glück hat."~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"Sein Glück muß ihn wohl im Stich gelassen haben. Er ist tot."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"Wie lange kann er noch weitermachen, jetzt, wo sein Geheimnis gelüftet ist?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"Was?!" Ihm wird langsam bewußt, was du gesagt hast. "Oh, die Dame ist mir heute wohlgesonnen! Hier hast du deinen Klimper, Schleifer. Viel Spaß damit."
~ */
  IF ~~ THEN REPLY #18361 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"Hä? Was? Tut mir leid, Schleifer - ich hab' jetzt keine Zeit für dich. Vielleicht ein andermal. Aber jetzt geh bitte - ich muß Pläne schmieden."~ */
  IF ~~ THEN REPLY #18364 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"Also gut, nochmal die Hälfte dazu: Macht zusammen dreihundert Kupfermünzen. Abgemacht?"~ */
  IF ~~ THEN REPLY #18366 /* ~"Abgemacht. Sein 'Schlupfloch' ist ein Höhlenkomplex. Dieser führt zu einem kleinen Straßenblock, der unter dem Lumpensammler-Platz begraben ist. Von einem der Tore dort geht's runter in die Katakomben."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~Dadurch, daß ich ihm erzählt habe, wie er in die Katakomben unterhalb von Sigil gelangt, habe ich dem Mann, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat, weitere 50 Prozent abgeknöpft."~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"Leg noch mal das Gleiche drauf und wir sind im Geschäft."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"Wir kommen nicht ins Geschäft. Vergiß es."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"Also gut, nochmal die Hälfte dazu: Macht zusammen hundertfünfzig Kupfermünzen. Abgemacht?"~ */
  IF ~~ THEN REPLY #18370 /* ~"Abgemacht. Sein 'Schlupfloch' ist ein Höhlenkomplex. Dieser führt zu einem kleinen Straßenblock, der unter dem Lumpensammler-Platz begraben ist. Von einem der Tore dort geht's runter in die Katakomben."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dadurch, daß ich ihm erzählt habe, wie er in die Katakomben unterhalb von Sigil gelangt, habe ich dem Mann, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat, weitere 50 Prozent abgeknöpft."~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"Leg noch mal das Gleiche drauf und wir sind im Geschäft."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"Wir kommen nicht ins Geschäft. Vergiß es."
~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"Halb so viel zahl ich, mehr nicht. Überleg dir *gut*, was du als nächstes sagst, Dussel."~ */
  IF ~~ THEN REPLY #18374 /* ~"Abgemacht. Sein 'Schlupfloch' ist ein Höhlenkomplex. Dieser führt zu einem kleinen Straßenblock, der unter dem Lumpensammler-Platz begraben ist. Von einem der Tore dort geht's runter in die Katakomben."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dadurch, daß ich ihm erzählt habe, wie er in die Katakomben unterhalb von Sigil gelangt, habe ich dem Mann, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat, weitere 50 Prozent abgeknöpft."~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"Wir kommen nicht ins Geschäft. Vergiß es."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"Halb so viel zahl ich, mehr nicht. Überleg dir *gut*, was du als nächstes sagst, Dussel."~ */
  IF ~~ THEN REPLY #18377 /* ~"Abgemacht. Sein 'Schlupfloch' ist ein Höhlenkomplex. Dieser führt zu einem kleinen Straßenblock, der unter dem Lumpensammler-Platz begraben ist. Von einem der Tore dort geht's runter in die Katakomben."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dadurch, daß ich ihm erzählt habe, wie er in die Katakomben unterhalb von Sigil gelangt, habe ich dem Mann, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat, weitere 50 Prozent abgeknöpft."~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"Wir kommen nicht ins Geschäft. Vergiß es."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"Jetzt reicht's! Ich hab' die Schnauze voll von dir." Plötzlich ruft er: "Leute! Kommt her und tötet diesen Mann!"~ */
  IF ~~ THEN REPLY #18380 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~Flüchte.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"Hmm. He! He-he, he!" Dann lacht er ausgelassen. "Du hast recht! Hier ist dein Klimper, Schleifer. Viel Spaß damit."~ */
  IF ~~ THEN REPLY #18383 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"Das glaub ich dir nicht. Und wo sollen die alle herkommen?"~ */
  IF ~~ THEN REPLY #18386 /* ~"Keine Ahnung."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"Von einer anderen Ebene?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"Hau ab, Taugenichts, und komm nie mehr zurück. Wir sind fertig miteinander. Los jetzt, bevor ich meine Leute auf dich hetzen muß."~ */
  IF ~~ THEN REPLY #18389 /* ~"Aber ich hätte da ein paar Fragen..."~ */ JOURNAL #18462 /* ~Ich habe versucht, den Mann zu belügen, der mich für die Information über Pharods Versorgung mit Leichen bezahlen wollte. Er ist stinksauer und spricht nicht mehr mit mir.~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~Geh.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~Ich habe versucht, den Mann zu belügen, der mich für die Information über Pharods Versorgung mit Leichen bezahlen wollte. Er ist stinksauer und spricht nicht mehr mit mir.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~Nachdenklich zupft er sich am Rest seines Ohrläppchens. "Vielleicht... Aber wie? Und von welcher Ebene?"~ */
  IF ~~ THEN REPLY #18392 /* ~"Ich weiß nicht."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"Vielleicht von den Schlachtfeldern der Grauen Einöde?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Ich habe den Mann belogen, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat. Er war mißtrauisch, hat mich aber trotzdem bezahlt... Ich habe allerdings das Gefühl, daß ich ihm jetzt nicht mehr willkommen bin.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"Vielleicht von den Schlachtfeldern der Grauen Einöde?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Ich habe den Mann belogen, der mich für die Information über Pharods Versorgung mit Leichen bezahlt hat. Er war mißtrauisch, hat mich aber trotzdem bezahlt... Ich habe allerdings das Gefühl, daß ich ihm jetzt nicht mehr willkommen bin.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"Hmm." Er schaut dich zweifelnd an. "Hier ist dein Klimper, Dussel. Und jetzt hau ab, bevor ich meine Leute auf dich hetzen muß."~ */
  IF ~~ THEN REPLY #18396 /* ~"Aber ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~Geh.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"Hmm. Genau. Und ich gebe dir sogar hundert Kupfermünzen für deine Mühe. Geh hoch zu den Plattformen und folge ihnen in Richtung Nordwesten. Du kommst dann an ein Tor, hinter dem Pharods Schlupfloch liegt. Deine Aufgabe ist es, da rein zu kommen und die Informationen zu beschaffen. Und falls dich jemand fragt: Du kennst mich nicht, und dieses Gespräch hat nie stattgefunden. Ist das klar?"~ */
  IF ~~ THEN REPLY #18399 /* ~"Wer *bist* du?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"Natürlich. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"Natürlich. Leb wohl."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~Deine Ankunft scheint ihn zu überraschen. "Hey! Dich hätte ich hier nicht mehr erwartet, Dussel. Was willst du?"~ */
  IF ~~ THEN REPLY #18403 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"Nichts. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"Nichts. Entschuldige die Störung... Leb wohl."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~Er scheint überrascht, dich wiederzusehen. "Tut mir leid, Schleifer - ich hab' jetzt keine Zeit für dich. Vielleicht ein andermal. Und jetzt geh bitte - ich muß Pläne schmieden."~ */
  IF ~~ THEN REPLY #18407 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"Dann sagen wie hundert Münzen für den Plausch. Abgemacht?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"Dreimal so viel, und wir sind im Geschäft."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"Leg noch mal das Gleiche drauf und wir sind im Geschäft."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"Abgemacht."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"Abgemacht: zweihundert Kupfermünzen. Nun?"~ */
  IF ~~ THEN REPLY #18413 /* ~"Pharods Nachschub an Leichen kommt aus den Katakomben unter Sigil. Er macht 'ne Menge Klimper damit, die Leichen, die die Staubmenschen schon begraben haben, wieder an sie zurückzuverkaufen."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Ein Mann auf dem Lumpensammler-Platz hat mich für die Information über Pharods scheinbar endlosen Vorrat an Leichen bezahlt.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~Er frotzelt: "So wichtig ist es mir auch nicht. Hau ab, bevor meine Leute dich hinausbegleiten müssen."~ */
  IF ~~ THEN REPLY #18415 /* ~"Warte! Okay, hundert Kupfermünzen."
~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~Geh weg.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"Okay, sagen wir einhundert Kupfermünzen. Nun?"~ */
  IF ~~ THEN REPLY #18419 /* ~"Pharods Nachschub an Leichen kommt aus den Katakomben unter Sigil. Er macht 'ne Menge Klimper damit, die Leichen, die die Staubmenschen schon begraben haben, wieder an sie zurückzuverkaufen."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Ein Mann auf dem Lumpensammler-Platz hat mich für die Information über Pharods scheinbar endlosen Vorrat an Leichen bezahlt.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~Dieser große und blasse, finster blickende Mann strahlt Autorität aus, obwohl er ziemlich schlaksig ist und auch sonst einen recht merkwürdigen Körperbau hat. Ihm fehlt ein großes Stück seines linken Ohrs; der klägliche Rest davon ist eine einzige Narbenlandschaft. Es sieht eher nach einem Biß als nach einem Schnitt aus. Seine flinken, fast schlitzförmigen Augen sehen clever aus... und gefährlich.~ */
  IF ~~ THEN REPLY #18421 /* ~"Bist du Grabteiler?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~Er spuckt seine Antwort nur so aus: "Ich kenn dich nicht, Dussel." Mit finsterem Blick knurrt er dich an: "Wer bist du, daß du dich für einen 'Grabteiler' interessierst?"
~ */
  IF ~~ THEN REPLY #18424 /* ~"Ein Mann namens Pocke hat mich an Grabteiler verwiesen. Mir wurde gesagt, daß er vielleicht wüßte, wo Pharod ist."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"Niemand. Entschuldige die Störung. Leb wohl."
~ */ EXIT
END
