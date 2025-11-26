// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17378 /* ~Ta bezzębna starucha cuchnie rybami i zalewą solną. Widząc, że się zbliżasz, posyła ci szeroki, uśmiech. "Rybkę, dziecko? A może rybią główkę?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22064 /* ~"Mebbet powiedziała, że sprzedajesz atrament. Przysłała mnie, bym trochę kupił."~ */ GOTO 8
  IF ~~ THEN REPLY #17386 /* ~"Dziecko? Raczej nie."~ */ GOTO 2
  IF ~~ THEN REPLY #17387 /* ~"Nie chcę żadnych ryb, ale mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #17388 /* ~"Co dokładnie możesz mi zaproponować?"~ */ GOTO 6
  IF ~~ THEN REPLY #17389 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17379 /* ~Stara obdarza cię bezzębnym uśmiechem. "Kilka rybek, dziecko? A może rybią główkę?" Otacza ją mdły zapach ryb.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22069 /* ~"Mebbet powiedziała, że sprzedajesz atrament. Przysłała mnie, bym trochę kupił."~ */ GOTO 8
  IF ~~ THEN REPLY #17390 /* ~"Nie chcę ryb, ale mam parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #17391 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #17380 /* ~"Och tak, tak! Ale w porównaniu ze mną, jesteś dzieckiem! He he, ach ta młodzież..."~ */
  IF ~~ THEN REPLY #17392 /* ~"Sądzę, że jesteś w błędzie. Przyjrzyj się dobrze."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17381 /* ~Podchodzi do ciebie; smród ryb prawie cię obezwładnia. Marszcząc czoło, stara zezuje na twoją twarz, a potem patrzy ci w oczy. I wtedy zaskoczona wzdryga się: "Och! Ile lat *widziały* te oczy?"~ */
  IF ~~ THEN REPLY #17394 /* ~"Nie wiem... jak myślisz, ile?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17382 /* ~"Nie wiem, nie wiem. Powiedziałabym, że za wiele. Ale to bez znaczenia!" Przysuwa się i szepcze ci do ucha. "Lepiej, żeby przechodnie nie słyszeli, niech to będzie nasz mały sekret." Znów mówi normalnym głosem. "Więc jak: rybkę, dziecko? He he!" Szturcha cię w brzuch.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22076 /* ~"Mebbet powiedziała, że sprzedajesz atrament. Przysłała mnie, bym trochę kupił."~ */ GOTO 8
  IF ~~ THEN REPLY #17395 /* ~"Nie chcę ryb, ale mam parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #17396 /* ~"Co dokładnie możesz mi zaproponować?"~ */ GOTO 6
  IF ~~ THEN REPLY #17397 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.1 4.1 6.2 7.1
  SAY #17383 /* ~Kiwa swą małą, pomarszczoną głową. "Nie znam żadnych odpowiedzi... mam tylko ryby."~ */
  IF ~~ THEN REPLY #17401 /* ~"Bardzo dobrze. Co dokładnie możesz mi zaproponować?"~ */ GOTO 6
  IF ~~ THEN REPLY #17402 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 4.2 5.0
  SAY #17384 /* ~"No co, ryby, mój głupi dzieciaku! Wszelkiego rodzaju ryby - i rybie głowy dla tych, których nie stać na całą rybkę. Malutkie rybie główki! He he!"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22077 /* ~"Mebbet powiedziała, że sprzedajesz atrament. Przysłała mnie, bym trochę kupił."~ */ GOTO 8
  IF ~~ THEN REPLY #17403 /* ~"Skąd są te ryby?"~ */ GOTO 7
  IF ~~ THEN REPLY #17404 /* ~"Nie chcę ryb, ale mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #17405 /* ~"Nie potrzebuję ryb, ani ich głów. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #17385 /* ~"Przywożą je do Sigil z innych Sfer, chłopcze! Chcesz trochę? Sprzedaję też tylko głowy, jeśli nie masz pieniędzy..."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22078 /* ~"Mebbet powiedziała, że sprzedajesz atrament. Przysłała mnie, bym trochę kupił."~ */ GOTO 8
  IF ~~ THEN REPLY #17406 /* ~"Nie potrzebuję ryb, ale mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #17407 /* ~"Nie potrzebuję ryb, ani ich głów. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0 4.0 6.0 7.0
  SAY #22065 /* ~"Atrament?" Chichocze. "Nie, panie, nie sprzedaję atramentu, tylko ryby..."~ */
  IF ~~ THEN REPLY #22070 /* ~"Jesteś pewna? Mebbet... znachorka z Placu Szmaciarzy... mówiła właśnie o tobie."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",7)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #22066 /* ~"He! Cóż, Kossah-Dżai to imię mojej matki i babki, więc to mogła być którakolwiek z nas... tak, obie są już w księdze umarłych, więc tylko *ta* wchodzi w grę. Nie mam pojęcia, o co jej chodziło... mówisz, że jest znachorką na Placu Szmaciarzy?" Przez chwilę myśli. "Nie, nie znam jej."~ */
  IF ~~ THEN REPLY #22071 /* ~"Więc... nie masz atramentu? Cóż, nie mogę powiedzieć, żeby mnie to zaskoczyło. Mogę przysiąc, że Mebbet sprawia, że kręcę się w kółko..."~ */ GOTO 10
  IF ~~ THEN REPLY #22072 /* ~"No cóż. Mówiła, że będziesz w stanie mi pomóc, ale jeśli nie, to trudno."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22067 /* ~"Poczekaj... ta twoja znachorka nie jest taka zła. Wiem skąd możesz wziąć atrament... ale może nie taki, jakiego szukasz... myślę o takim, który wypływa ze skrzeli *brogoty*."~ */
  IF ~~ THEN REPLY #22073 /* ~"Ta *brogota*... wypuszcza atrament?"~ */ GOTO 11
  IF ~~ THEN REPLY #22074 /* ~"Ale nie masz tej *brogoty*, zgadza się?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #22068 /* ~Marszczy czoło. "Tak... chodzi o to, że tej ryby nie da się *jeść*, ma okropny smak, parzy w język... możesz spytać Meir'am, ma swój stragan na południowej stronie ulicy." Rechocze. "Może ma jedną z tych ryb, której ci potrzeba u *siebie*..."~ */
  IF ~~ THEN REPLY #22075 /* ~"Pójdę jej poszukać. Żegnaj."~ */ JOURNAL #21903 /* ~Kossah-Dżai, handlarka rybami na targu, powiedziała mi, że jedynym znanym jej sposobem na uzyskanie atramentu Mebbet jest zrobienie go z płetwy brogoty, lecz ona ich nie sprzedaje. Powiedziała mi też, żebym spróbował u Meir'am, handlarki sprzedającej swe towary na ulicy w południowej części targu.~ */ EXIT
END
