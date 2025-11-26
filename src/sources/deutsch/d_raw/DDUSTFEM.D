// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFEM~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #298 /* ~Die Staubmenschen-Frau scheint dich nicht zu bemerken. Sie hält dich wohl für eine dieser lebenden Leichen, die hier arbeiten.~ */
  IF ~~ THEN REPLY #299 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #318 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~~ THEN REPLY #1168 /* ~"Wo bin ich hier?"~ */ GOTO 1
  IF ~~ THEN REPLY #1169 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #1170 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1171 /* ~Die Staubmenschen-Frau zuckt zusammen und wirft den Kopf zu dir herum. Sie wirkt schockiert - deine Verkleidung muß ziemlich gut sein.~ */
  IF ~~ THEN REPLY #1172 /* ~Nutze ihre Überraschung aus und brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #1174 /* ~"Ich hätte ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #1175 /* ~Geh. Und zwar schnell.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
  SAY #1176 /* ~Die Staubmenschen-Frau geht einen Schritt zurück und klatscht dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.~ */
  IF ~~ THEN REPLY #1225 /* ~"Nun gut..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1177 /* ~Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.~ */
  IF ~~ THEN REPLY #1226 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #1227 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #1228 /* ~"Wo bin ich hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #1229 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #1230 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #1178 /* ~Die Staubmenschen-Frau blickt langsam auf und dreht sich zu dir um. "Hast du dich verlaufen?"~ */
  IF ~~ THEN REPLY #1231 /* ~"Ja."~ */ GOTO 5
  IF ~~ THEN REPLY #1232 /* ~"Nein."~ */ GOTO 6
  IF ~~ THEN REPLY #1233 /* ~"Nein, ich habe mich nicht verirrt. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #1234 /* ~"Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.2 51.1
  SAY #1179 /* ~"Ich rufe einen Wächter, der dich hinausführen wird. Warte einen Augenblick."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1235 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1236 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #1237 /* ~Geh. Und zwar schnell.~ */ GOTO 2
  IF ~~ THEN REPLY #1238 /* ~Warte.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #1180 /* ~"Was hast du hier zu suchen, wenn du dich nicht verirrt hast?"~ */
  IF ~~ THEN REPLY #1239 /* ~"Das geht dich nichts an."~ */ GOTO 7
  IF ~~ THEN REPLY #1240 /* ~"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."~ */ GOTO 8
  IF ~~ THEN REPLY #1241 /* ~"Ich bin hier, um jemandem zu treffen."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1242 /* ~"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."
~ */ GOTO 16
  IF ~~ THEN REPLY #1243 /* ~Geh. Und zwar schnell.~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #1181 /* ~"Das geht mich leider sehr wohl etwas an. Vielleicht können dir die Wächter ja die Zunge lösen." Die Staubmenschen-Frau geht einen Schritt zurück; sie sieht aus, als würde sie jeden Moment die Wache rufen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1244 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1245 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #1246 /* ~"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #1182 /* ~"Du machst wohl Witze? Vielleicht würdest du das gerne den Wächtern erzählen." Die Staubmenschen-Frau geht einen Schritt zurück; sie sieht aus, als würde sie jeden Moment die Wache rufen.
~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1247 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1248 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #1249 /* ~"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #1183 /* ~"Wen möchtest du hier treffen?"~ */
  IF ~~ THEN REPLY #1251 /* ~"Das geht dich nichts an."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1253 /* ~"Ich bin hier, um Dhall zu treffen."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1255 /* ~"Ich bin gekommen, um Dhall zu sehen."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #1258 /* ~"Ich bin gekommen, um Deionarra zu sehen."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #4336 /* ~"Ich bin gekommen, um Deionarra zu sehen."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33224 /* ~"Ich bin gekommen, um Soego zu sehen."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33226 /* ~"Ich bin gekommen, um Soego zu sehen."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33227 /* ~Lüge: "Äh... Adahn. Arbeitet er noch hier, oder...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33229 /* ~Lüge: "Äh... Adahn. Arbeitet er noch hier, oder...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33231 /* ~"Äh, niemanden. Ich hab' mich versprochen."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #1184 /* ~"Dhall ist im Empfangsraum auf diesem Stockwerk. Ich warne dich... er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."~ */
  IF ~~ THEN REPLY #1259 /* ~"Also gut. Danke für die Auskunft."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #1185 /* ~"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. Er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."
~ */
  IF ~~ THEN REPLY #1260 /* ~"Also gut. Danke für die Auskunft."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #1186 /* ~"Deionarra? Ich weiß, daß in der Gedenkhalle im Erdgeschoß eine Frau bestattet ist. Ob sie das ist?"~ */
  IF ~~ THEN REPLY #1261 /* ~"Höchstwahrscheinlich. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #1187 /* ~"Deionarra? Ich weiß, daß im Nordwesten der Gedenkhalle eine Frau bestattet ist. Ob sie das ist?"~ */
  IF ~~ THEN REPLY #1262 /* ~"Höchstwahrscheinlich. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #1188 /* ~"Ich glaube, Soego ist am Haupttor im Erdgeschoß. Er arbeitet hier während des Tiefstands als Führer."~ */
  IF ~~ THEN REPLY #1263 /* ~"Also gut. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #1189 /* ~"Ich glaube, Soego ist am Haupttor. Er arbeitet hier während des Tiefstands als Führer."
~ */
  IF ~~ THEN REPLY #1264 /* ~"Also gut. Vielen Dank."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #1190 /* ~"Wer sollte bestattet werden? Vielleicht finden die Feierlichkeiten woanders in der Leichenhalle statt."~ */
  IF ~~ THEN REPLY #1265 /* ~"Du verstehst mich falsch... ICH sollte bestattet werden."~ */ GOTO 8
  IF ~~ THEN REPLY #1266 /* ~"Das könnte sein. Wo finden diese anderen Zeremonien statt?"~ */ GOTO 17
  IF ~~ THEN REPLY #1267 /* ~"Kannst du mir den Weg hier raus zeigen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #1191 /* ~"Mehrere Grabkammern umgeben die Leichenhalle. Sie folgen dem Verlauf der Mauer im Erdgeschoß und im ersten Stock. Kennst du den Namen des Verstorbenen?"~ */
  IF ~~ THEN REPLY #1268 /* ~"Nein."~ */ GOTO 18
  IF ~~ THEN REPLY #1269 /* ~"Ja."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1192 /* ~"Frag doch einfach einen der Führer am Haupttor. Sie können dir bestimmt helfen."~ */
  IF ~~ THEN REPLY #1270 /* ~"Also gut. Vielen Dank."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #1193 /* ~Der Staubmensch wartet.~ */
  IF ~~ THEN REPLY #1271 /* ~"Entschuldigung... Ich hab' mich versprochen. Ich kenne den Namen des Verstorbenen nicht."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #1272 /* ~"Ihr Name ist Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1273 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1274 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1275 /* ~Beug dich nach vorne, als wenn du ihr etwas zuflüstern wolltest, und brich ihr das Genick.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1276 /* ~Beug dich nach vorne, als wenn du ihr etwas zuflüstern wolltest, und brich ihr das Genick.~ */ GOTO 45
  IF ~~ THEN REPLY #1277 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #1194 /* ~"Ah ja. Und was hast du hier zu suchen?"~ */
  IF ~~ THEN REPLY #1278 /* ~"Geht dich nichts an."~ */ GOTO 7
  IF ~~ THEN REPLY #1279 /* ~"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."~ */ GOTO 8
  IF ~~ THEN REPLY #1280 /* ~"Ich bin hier, um jemandem zu treffen."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1281 /* ~"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."~ */ GOTO 16
  IF ~~ THEN REPLY #1282 /* ~Lauf weg, so schnell du kannst.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #1195 /* ~"Nie gehört. Frag doch einfach einen der Führer am Haupttor... sie können dir vielleicht mehr sagen."~ */
  IF ~~ THEN REPLY #1283 /* ~"Also gut. Das mach ich. Leb wohl."~ */ EXIT
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #1196 /* ~Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.
~ */
  IF ~~ THEN REPLY #1284 /* ~"Sei gegrüßt."~ */ GOTO 23
  IF ~~ THEN REPLY #1285 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #1197 /* ~Sie dreht sich langsam um. Ihre Augen gleiten auf deine Robe. "Sei gegrüßt, Eingeweihter."~ */
  IF ~~ THEN REPLY #1286 /* ~"Wer bist du?"~ */ GOTO 24
  IF ~~ THEN REPLY #1287 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 25
  IF ~~ THEN REPLY #1288 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #1289 /* ~Laß sie in Ruhe.
~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1198 /* ~"Das möchte ich auch gerne von dir wissen. Ich kenne dein Gesicht nicht. Wer bist du?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1290 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1291 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1292 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1293 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1199 /* ~"Dies ist die Leichenhalle..." Der Staubmensch schaut dich an, als müßte er erst verdauen, was du gesagt hast. "Wie war doch gleich dein Name?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1294 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1295 /* ~Lüge: "Sein Name ist... äh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1296 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1297 /* ~"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."
~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #1200 /* ~Der Staubmensch wartet geduldig darauf, daß du fortfährst.~ */
  IF ~~ THEN REPLY #1298 /* ~"Kannst du mir sagen, wie ich hier rauskomme?"~ */ GOTO 27
  IF ~~ THEN REPLY #1299 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 28
  IF ~~ THEN REPLY #1300 /* ~"Ich vermisse ein Journal. Hast du es zufällig gesehen?"~ */ GOTO 39
  IF ~~ THEN REPLY #1328 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #1201 /* ~"Am besten du gehst einfach durch das Haupttor. Es ist im Erdgeschoß."~ */
  IF ~~ THEN REPLY #1329 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #1330 /* ~Vielen Dank. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #1202 /* ~"Dieser Name..." Der Staubmensch hält kurz inne. "Dieser Name kommt mir irgendwie *bekannt* vor... ich glaube, es gab da mal einen Sammler, der so hieß. Dhall, der Schreiberling, könnte ihn kennen."~ */
  IF ~~ THEN REPLY #1331 /* ~"Sammler?"~ */ GOTO 29
  IF ~~ THEN REPLY #1334 /* ~"Dhall?"~ */ GOTO 30
  IF ~~ THEN REPLY #1338 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #1395 /* ~"Vielen Dank für deine Zeit. Auf bald."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1203 /* ~"Sammler... lesen Tote von den Straßen Sigils auf und schaffen sie in die Leichenhalle..." Der Staubmensch zögert, dann runzelt er die Stirn. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1396 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1397 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1398 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1399 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #1204 /* ~"Dhall ist eines der angesehensten Mitglieder unseres Bundes. Ich kenne niemanden, der mehr über das Wesen des Wahren Todes nachgedacht oder sich mehr darum verdient gemacht hätte als er. Er kann viel Wissen weitergeben. Wenn du ihn nicht kennst, solltest du die erste Gelegenheit nutzen, mit ihm zu reden. Er wird nicht mehr lange im Schatten dieser Existenz verweilen."~ */
  IF ~~ THEN REPLY #4280 /* ~"'Er wird nicht mehr lange im Schatten dieser Existenz veweilen?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4281 /* ~"Wo finde ich Dhall?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4282 /* ~"Wo finde ich Dhall?"~ */ GOTO 33
  IF ~~ THEN REPLY #4283 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #33245 /* ~"Danke für die Information. Ich werde mit ihm reden."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #1205 /* ~Die Staubmenschen-Frau nickt. "Dhall ist krank. Er ist alt, selbst für einen Githzerai. Der Tod ist ihm gewiß nach diesem Siechtum. Er hat wirklich Glück."~ */
  IF ~~ THEN REPLY #4284 /* ~"Für einen Githzerai?"~ */ GOTO 34
  IF ~~ THEN REPLY #4285 /* ~"Was ist ein 'Githzerai'?"
~ */ GOTO 35
  IF ~~ THEN REPLY #4286 /* ~"Gesegnet?"~ */ GOTO 36
  IF ~~ THEN REPLY #4287 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #4337 /* ~"Danke, daß du dir für mich Zeit genommen hast. Ich muß jetzt gehen."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #1206 /* ~"Dhall ist im Empfangsraum in der nordwestlichen Winkel dieses Stockwerks. Ich warne dich... Dhall ist ziemlich beschäftigt... wenn er nicht gerade seiner Arbeit nachgeht, wird ein Großteil seiner Zeit von seiner Krankheit beansprucht."~ */
  IF ~~ THEN REPLY #4288 /* ~"Ist Dhall krank?"~ */ GOTO 31
  IF ~~ THEN REPLY #4289 /* ~"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #1207 /* ~"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. An deiner Stelle würde ich ihn nicht allzu lang aufhalten, da er alle Hände voll zu tun hat... wenn er nicht gerade seinen Pflichten nachkommt, schlägt er sich die meiste Zeit mit seiner Krankheit herum."~ */
  IF ~~ THEN REPLY #4290 /* ~"Ist Dhall krank?"~ */ GOTO 31
  IF ~~ THEN REPLY #4291 /* ~"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #1208 /* ~"Ja, die Githzerai leben wesentlich länger als die Menschen."~ */
  IF ~~ THEN REPLY #4292 /* ~"Was ist ein 'Githzerai'?"~ */ GOTO 35
  IF ~~ THEN REPLY #4293 /* ~"Wieso bezeichnest Du Dhalls Tod als Segen? Er ist wohl nicht sehr beliebt?"~ */ GOTO 36
  IF ~~ THEN REPLY #4294 /* ~"Oh. Ich hätte noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #4295 /* ~"Vielen Dank für deine Zeit. Auf bald."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #1209 /* ~"Die Githzerai sind..." Die Staubmenschen-Frau zögert; dann sieht sie dich durchdringend an. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4296 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4297 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4298 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4300 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #1210 /* ~"Er ist  gesegnet, weil er den Wahren Tod erlangen wird. Dann braucht er nicht mehr im Schatten dieser Existenz zu verweilen."~ */
  IF ~~ THEN REPLY #4299 /* ~"Und... das ist gut?"~ */ GOTO 37
  IF ~~ THEN REPLY #4301 /* ~"Ich verstehe. Wirklich ein Segen. Ich hätte da noch ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #4302 /* ~"Ich verstehe. Nun, ich muß mich jetzt von dir verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #1211 /* ~Die Staubmenschen-Frau nickt. "Ja." Sie runzelt die Stirn und sieht dich durchdringend an. "Du bist nicht von hier. Wer bist du?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4303 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4304 /* ~"Ich bin... hier neu. Ich... versuche mich zurechtzufinden."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4305 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4306 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1212 /* ~" Du bist keiner der Unseren, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes?" Die Staubmenschen-Frau geht einen Schritt zurück. "Wache! Wache!"~ */
  IF ~~ THEN REPLY #4307 /* ~"Verdammt!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #4308 /* ~"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #4309 /* ~"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #1213 /* ~"Ein Journal? Ich habe keines gesehen."~ */
  IF ~~ THEN REPLY #4310 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #4311 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1214 /* ~Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #4312 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 81
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #4313 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 83
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #4314 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4315 /* ~"Sei gegrüßt."~ */ GOTO 4
  IF ~~ THEN REPLY #4316 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1215 /* ~Bevor die Staubmenschen-Frau auch nur ein Wort sagen kann, packst du sie an den Schläfen und drehst ihren Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #4317 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1216 /* ~Es macht *Knacks*, und der Staubmensch fällt dir erschlafft in die Arme.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4318 /* ~"Besser du als ich, Staubie."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4319 /* ~"Besser du als ich, Staubie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1217 /* ~Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #4320 /* ~Laß die Leiche liegen, geh weiter.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #1218 /* ~Du bist nicht schnell genug. Die Staubmenschen-Frau weicht deinem Angriffsversuch aus. Sie geht einen Schritt zurück und klatscht dreimal fest in Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die Leichenhalle.~ */
  IF ~~ THEN REPLY #4321 /* ~"Nun gut..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #1219 /* ~Als du dich vorbeugst, um ihr etwas 'zuzuflüstern', beugt die Staubmenschen-Frau ihren Kopf auch nach vorne. Sobald du kannst, packst du sie an den Schläfen und drehst ihren Kopf ruckartig nach links.~ */
  IF ~~ THEN REPLY #4322 /* ~"Ich kann nicht zulassen, daß du deine Freunde warnst..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #1220 /* ~Die Staubmenschen-Frau wirkt mißtrauisch. Sie sieht aus, als würde sie jeden Moment etwas sagen, doch dann schüttelt sie nur kurz den Kopf und wendet sich wieder ihrer Arbeit zu~ */
  IF ~~ THEN REPLY #4323 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #1221 /* ~Der Staubmensch mustert dich aufmerksam. "Du bist keiner von uns, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Ich glaube, dies ist ein Fall für die Wache..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4324 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4325 /* ~Brich ihr das Genick, bevor sie rufen kann.~ */ GOTO 41
  IF ~~ THEN REPLY #4326 /* ~Geh. Und zwar schnell.~ */ GOTO 2
  IF ~~ THEN REPLY #4327 /* ~"Nein, nein... das stimmt nicht, äh... Ich meine, ich bin kein Spitzel... weißt du, ich bin hier auf einer der Totenbänke aufgewacht... und..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #1222 /* ~Die Staubmenschen-Frau nickt, bevor sie sich wieder ihrer Arbeit zuwendet.~ */
  IF ~~ THEN REPLY #4328 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #1223 /* ~Der Staubmensch runzelt die Stirn. "Dieser Name kommt mir nicht bekannt vor."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4329 /* ~"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4331 /* ~"Ich... bin hier neu. Ich... bin dabei, mich einzuarbeiten."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4332 /* ~"Nun ja... was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4333 /* ~"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der's kann. Leb wohl."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #1224 /* ~Die Staubmenschen-Frau runzelt weiter die Stirn und sagt mit einem leichten Nicken. "Sehr gut. Was kann ich für dich tun, Eingeweihter?"~ */
  IF ~~ THEN REPLY #4334 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #4335 /* ~"Heute grade nicht. Leb wohl."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66683 /* ~Der Staubmensch sieht dich mit versteinerter Miene an. "Hast du dich verlaufen?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66684 /* ~"Nein, ich bin Mitglied des Bundes. Ich seh mir nur ein bißchen die Leichenhalle an."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66685 /* ~"Ja."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66686 /* ~"Nein."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66687 /* ~"Nein, ich hab mich nicht verlaufen. Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66688 /* ~"Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66689 /* ~Der Staubmensch starrt dich einen Moment lang an und nickt dann. "Nun denn. Sag mir bescheid, wenn du Hilfe brauchst."~ */
  IF ~~ THEN REPLY #66690 /* ~"Mach ich. Leb wohl."~ */ EXIT
END
