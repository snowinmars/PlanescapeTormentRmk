// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~Du siehst einen jungen Mann in staubiger Kleidung. Er scheint nicht besonders gesund zu sein. Seine Haut ist blaßgelb, und du siehst einige Pusteln an seinen Armen.~ */
  IF ~~ THEN REPLY #36265 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~Er dreht sich um und starrt dich aus hohlen Augen an. Seine Augen verengen sich, und er beobachtet mißtrauisch alles um sich herum. "Was willst du?" Seine Stimme ist leicht krächzend.~ */
  IF ~~ THEN REPLY #36267 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~Er wendet dir seine Aufmerksamkeit zu. "Warum läßt du mich nicht in Ruhe? Seh' ich etwa aus wie'n Schlepper?"~ */
  IF ~~ THEN REPLY #36269 /* ~"Du bist verfügbar."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"Du scheinst mir eine Menge zu wissen. Ich glaube, von dir kann ich was lernen."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"Was ist ein Schlepper?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~Er sieht dich an und schnaubt verächtlich. "Was'n Glück für mich... Und jetzt hau ab. Ich hab keine Zeit für sowas." Er dreht sich weg.~ */
  IF ~~ THEN REPLY #36273 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~Er seufzt. "Was willste denn wissen?"~ */
  IF ~~ THEN REPLY #36274 /* ~"Wer bist du?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"Geht's Dir gut?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"Gibt es hier irgend etwas Interessantes zu sehen?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"Ich möchte ein Krieger werden. Kannst du mich ausbilden?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"Ich will ein besserer Krieger werden. Kannst du mir helfen, meine Fähigkeiten zu verbessern?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"Danke. Ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"Nichts, das ein paar Jahre Tod nicht kurieren könnten", hustet er und sieht nach oben. "Die Luft im Viertel wird in letzter Zeit auch immer mieser. Aber ich denk' mal, das gibt sich wieder, wenn erstmal die Große Gießerei in Ordnung gebracht ist... oder ein Wind von der Säule her durchbläst."~ */
  IF ~~ THEN REPLY #36281 /* ~"Was ist mit der Luft hier los?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"Erzähl mir von der Gießerei."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"Was war das mit den Winden?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"Das kommt hauptsächlich von den ganzen Portalen hier." Er hat einen Hustenanfall und wendet sich dir danach wieder zu.~ */
  IF ~~ THEN REPLY #36286 /* ~"Wie meinst du das?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"Viele Türen in den Unteren Ebenen hier lassen schlechte Luft und Rauch und so'n Zeugs von was weiß ich welcher Ebene des Abgrunds rein. Das ist auch der Grund, warum das hier der *Untere* Bezirk ist. Er lacht. "Ein Ausflug in diese Gegend ist wie das Einatmen eines Essens. Salz, Rauch, Pfeifenkraut... lauter gelbe dicke Rauchschwaden und beißendes Schwefelgas, was dieser Bezirk ausspuckt." Er grinst und zeigt dabei seine sämtlichen Zahnlücken. "Schön schön, was?"~ */
  IF ~~ THEN REPLY #36289 /* ~"Öh, ja... Du sagtest was von der Gießerei."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"Was hast du noch mal über die Winde gesagt?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"Mitte des Bezirks so ziemlich. Guck einfach nach den Schornsteinen. Die Göttermenschen machen 'ne Stange Sachen aus Eisen; nix Aufwendiges, aber es funktioniert. Tragen auch zur schlechten Luft bei."~ */
  IF ~~ THEN REPLY #36293 /* ~"Göttermenschen?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"Was ist mit der Luft hier los?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"Du hast vorhin etwas über die Winde gesagt."~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~"Die Gläubigen. Haben ihre Absteige in der Großen Gießerei, schlagen und singen und beschwören ihre übergeschnappte Dummheit, daß sie in den nächsten zehn und zehn und nochmal 'ner Stange von zehn Lebzeiten selbst Mächte werden." Er rollt mit den Augen und spuckt dann eine braune Masse aus. "Alles was die tun, ist schuften und knechten und arbeiten... Ich schufte doppelt so schwer und hab' dennoch keine Chance, irgendeine Art von Macht zu werden, verstehste, Dussel?" Er lacht hohl.~ */
  IF ~~ THEN REPLY #36298 /* ~"Was ist mit der Luft hier los?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"Du hast vorhin etwas über die Winde gesagt."~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"Manchmal weht der Wind vom Turm Sigils rein und bläst den Smog weg..." Er sieht auf und hustet. "...ne Zeitlang."~ */
  IF ~~ THEN REPLY #36302 /* ~"Was ist mit der Luft hier los?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"Erzähl mir von dieser Gießerei."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"Äh..." Er sieht dich an, als wärst du nicht ganz bei Sinnen. "Keinen Plan, was? Handwerker, Läden, Lager - alle haben ihre Absteige hier." Er blinzelt dich aus seinen verschwommenen Augen an. "Suchst du was Bestimmtes?"
~ */
  IF ~~ THEN REPLY #36306 /* ~"Was ist so los in der Gegend hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~Er beobachtet dich einen Moment und sieht dich dann mit wissender Miene an. "Willst du vielleicht dein Eisen härten lassen?" Sein Lachen geht in einen Hustenanfall über. "Nichts dergleichen in der Nähe; versuch's lieber in den Absteigen der anderen Bezirke. Wenn's das ist, was du suchst."~ */
  IF ~~ THEN REPLY #36309 /* ~"Wie bitte?"~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"Ich könnte etwas Klimper gebrauchen."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"Ich würde gern ein paar Sachen kaufen."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"Ich habe noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~Er lacht wieder, was in einem noch größeren Hustenanfall endet. "Tschuldigung, Schleifer. Gleich wieder vorbei. Suchst du was Bestimmtes?"

~ */
  IF ~~ THEN REPLY #36314 /* ~"Ich könnte etwas Klimper gebrauchen."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"Ich würde gern ein paar Sachen kaufen."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"Ich habe noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"Falls du nach Arbeit suchst, kannste's gleich vergessen. Schon kaum genug für die, die hier leben."~ */
  IF ~~ THEN REPLY #36318 /* ~"Ich würde gern ein paar Sachen kaufen."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"Falls du ein, zwei Sachen besorgen willst oder mit Waren handeln willst, dann würde ich's mal beim Straßenmarkt versuchen." Er fängt wieder an zu husten.~ */
  IF ~~ THEN REPLY #36321 /* ~"Was kannst du mir über den Markt erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~Er sieht dich mit einem fiesen Lächeln an. "Da kannste kaufen und verkaufen, Dussel. 'N Markt halt - was gibt's da weiter zu sagen?"~ */
  IF ~~ THEN REPLY #36325 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"Äh..." Er konzentriert sich kurz. "Nun, da ist erstmal der Turm. Scheint im Plausch oft vorzukommen."~ */
  IF ~~ THEN REPLY #36327 /* ~"Erzähl mir vom Turm."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"Fällt dir sonst noch was ein?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"Ha!" Er lacht, bekommt aber wieder einen Hustenanfall. "Eines der abscheulicheren Geheimnisse dieses Bezirks... man sagt, er kam eines Tages von selbst nach Sigil, vor vielen, vielen Jahren. Keine Ahnung, wo er herkam, wie er herkam oder wie man in das verfluchte Ding reinkommt. Nimmt Platz weg und sieht abscheulich aus... all diese Säureverbrennungen, Narben von Kämpfen... sieht aus, als hätt's ein paar hundert Kriege gesehen, das Ding."
~ */
  IF ~~ THEN REPLY #36331 /* ~"Fällt dir sonst noch was ein?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~Er denkt einen Moment nach und zuckt dann die Schultern. "Mir fällt nix Interessantes mehr ein."~ */
  IF ~~ THEN REPLY #36334 /* ~"Ich habe noch ein paar Fragen an dich..."~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~Er wirkt nervös und sieht sich vorsichitg um. "Ja... Von dem hab' ich gehört. Ich sag dir: laß dich mit dem nicht ein. Seine Absteige ist ein Ort namens 'Knochen der Nacht' oder so ein Unsinn."~ */
  IF ~~ THEN REPLY #36336 /* ~"Wie finde ich diesen Ort?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~Er runzelt die Stirn. "Hey, das ist gefährlicher Schnickschnack... wenn ich was sagen *würde*, und das tu ich nicht, würde ich dir raten, nach einem ausgebrannten Gebäude hier im Bezirk Ausschau zu halten. Könnte wohl sein, daß du dort was findest, was?" Er starrt dich an. "Aber von mir haste nix gehört, klar?"~ */
  IF ~~ THEN REPLY #36337 /* ~"Danke. Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~Er wirkt ein bißchen unsicher. "Du vermißt also einen Totenschädel, ja? Also gut - aber von mir hast du das nicht gehört, ja - es gibt da Leute in dieser Gegend, die..." Er sieht sich um. "... leben davon, daß sie Köpfe von Toten sammeln. Arbeiten für'n Knochenbrecher namens Lothar. Nennen ihn den 'Herrn der Knochen'."~ */
  IF ~~ THEN REPLY #36339 /* ~"Wo finde ich diesen Lothar?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~Er runzelt die Stirn. "Jemand, dem du'n Haufen blöder Fragen stellen kannst..." Er starrt dich an.~ */
  IF ~~ THEN REPLY #36341 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~Du siehst einen alten Mann mit staubiger Kleidung. "Wieder zurück, was?" Er runzelt die Stirn. "Und was nun?"~ */
  IF ~~ THEN REPLY #36343 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"Ich möchte ein Krieger werden. Kannst du mich ausbilden?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"Ich will ein besserer Krieger werden. Kannst du mir helfen, meine Fähigkeiten zu verbessern?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~Er macht eine leichte Verbeugung vor dir. "Mein Name ist Korur." In besseren Tagen war ich ein heldenhaft guter Krieger..." Er hält einen Augenblick inne und seufzt. "Tja, die Tage sind wohl vorüber, aber ich weiß doch noch den ein oder anderen Trick."~ */
  IF ~~ THEN REPLY #36345 /* ~"Kannst du mir beibringen, wie ein Krieger zu kämpfen?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"Tja... warum nicht. Biste sicher, daß du deinen aktuellen Beruf aufgeben willst?~ */
  IF ~~ THEN REPLY #36347 /* ~"Ja, ich bin sicher."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"Nein, laß es mich überdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"Nun... Worin genau möchtest du unterrichtet werden?~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"Im Moment nichts. Ich werde später wiederkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"Du weißt jetzt alles, was ich dir für's erste beibringen kann... Komm wieder, wenn du ein bißchen mehr von der Welt gesehen hast."~ */
  IF ~~ THEN REPLY #52340 /* ~"Sehr gut, danke."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"Ich glaube, ich könnte dir noch ein bißchen mehr beibringen."~ */
  IF ~~ THEN REPLY #52342 /* ~"Ich bin bereit. Was kannst du mir beibringen?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"Was willst du lernen?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"Bring mir bei, wie ich mit meinen Fäusten kämpfe."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"Bring mir bei, wie man Dolche benutzt."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"Bring mir bei, wie man Keulen benutzt."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"Bring mir bei, wie man Äxte benutzt."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"Bring mir bei, wie man Hämmer benutzt."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"Ich bin heute nicht in Form für Unterricht. Ich komme später wieder." ~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"Du hast meine Fähigkeiten übertroffen. Du bist der beste Kämpfer, den ich je gesehen hab... vielleicht der beste, der jemals auf den Ebenen gewandelt ist."~ */
  IF ~~ THEN REPLY #52351 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"Fäuste, wie? Nun... ich kann dich unterrichten, wenn du willst."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"Dolche, wie? Nun ich kann dich unterrichten, wenn du willst."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"Keulen, wie? Nun... ich kann dich unterrichten, wenn du willst."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"Äxte, wie? Nun... ich kann dich unterrichten, wenn du willst."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"Hämmer, wie? Nun... ich kann dich unterrichten, wenn du willst."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"Ja, ich würde gerne lernen, diese Waffe zu benutzen."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"Nein, ich glaube, ich möchte heute keinen Unterricht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"Also, los geht's... Bist du bereit?"~ */
  IF ~~ THEN REPLY #52378 /* ~"Ja..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"Na, das war's dann wohl. Was jetzt?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"Danke. Das ist alles, was ich für heute wissen möchte."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"Nun... Ich kann dir im Moment nichts weiter beibringen. Nicht, bevor du dein Leben dem Kriegerdasein gewidmet hast. Erst wenn du deinen Körper in eine Waffe verwandelt hast, kannst du mehr von mir lernen."~ */
  IF ~~ THEN REPLY #52384 /* ~"Gut. Im Umgang mit welchen anderen Waffen kannst du mich unterrichten?"~ */ JOURNAL #68288 /* ~Man hat mir gesagt, daß ich nur dann mehr über Waffen lernen kann, wenn ich mich auf den Pfad eines Kriegers spezialisiere. Erst wenn ich mich vollständig der Kampfeskunst widme und sie nie für Diebes- oder Zauberkunst aufgebe, könnte ich die Spezialisierung erreichen, von der mein Lehrmeister spricht.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"Danke. Leb wohl."~ */ JOURNAL #68288 /* ~Man hat mir gesagt, daß ich nur dann mehr über Waffen lernen kann, wenn ich mich auf den Pfad eines Kriegers spezialisiere. Erst wenn ich mich vollständig der Kampfeskunst widme und sie nie für Diebes- oder Zauberkunst aufgebe, könnte ich die Spezialisierung erreichen, von der mein Lehrmeister spricht.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~Er sieht dich verwundert an. "Du willst noch mehr lernen? Mein Freund, an dieser Waffe gibt es für dich nichts mehr zu lernen. Niemand in den Ebenen kann dir mehr an ihr beibringen."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"Danke. Ich würde gerne den Gebrauch anderer Waffen lernen. Könntest du mich unterrichten?"~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"Danke. Das ist alles, was ich für heute wissen möchte."~ */ EXIT
END
