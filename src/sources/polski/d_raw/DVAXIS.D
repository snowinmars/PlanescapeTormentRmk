// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAXIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAXIS~

IF ~  Global("Vaxis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #453 /* ~Człapiący niezdarnie nieumarły ogarnia cię nieobecnym spojrzeniem. Spostrzegasz, że na jego czole wyryto numer "821", zaś jego usta starannie zaszyto. Bije od niego lekki odór formaliny.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #454 /* ~"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #455 /* ~"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"~ */ GOTO 5
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #456 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #457 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 1
  IF ~~ THEN REPLY #458 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ GOTO 5
  IF ~~ THEN REPLY #459 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.3
  SAY #460 /* ~Ku twojemu zdziwieniu, twoje umiejętności wydają się być bezużyteczne w odniesieniu do tego truposza.~ */
  IF ~~ THEN REPLY #461 /* ~Dziabnij truposza w oko.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #462 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #463 /* ~Kiedy zadajesz mu cios w oko, żywy truposz wydaje stłumiony skowyt i zmartwiałymi rękami próbuje nakryć twarz. Mamrocze pod nosem coś, co z bardzo dużą dozą prawdopodobieństwa możesz uznać za przekleństwa pod twoim adresem.~ */
  IF ~~ THEN REPLY #464 /* ~"Ty nie jesteś zombie! Kim jesteś?"~ */ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 6
  IF ~~ THEN REPLY #465 /* ~"Dlaczego chodzisz przebrany za zombie?"~ */ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 6
  IF ~~ THEN REPLY #466 /* ~Odejdź. Jak najszybciej.~ */ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 5.2
  SAY #467 /* ~Kiedy odwracasz się, aby odejść, zombie poczyna coś mamrotać... Wygląda na to, że próbuje coś powiedzieć, ale jest to niejako kłopotliwe, biorąc pod uwagę, że truposz ma zasznurowane usta. "Ktyyy tyyy? Czyygyy chcyysz?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #468 /* ~"Szukam stąd wyjścia. Możesz mi pomóc?"~ */ GOTO 7
  IF ~~ THEN REPLY #469 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #470 /* ~"Powiesz mi, kim jesteś, albo zaraz zawołam straże."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #472 /* ~Kłamstwo: "Bo... szukałem ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #473 /* ~"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #474 /* ~"Wybacz, że ci zawracałem głowę... Kimkolwiek jesteś, żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
  SAY #471 /* ~Kiedy odwracasz się, aby odejść, zombie wydobywa ze swojego gardła głuchy warkot. "Nic nie myyyw o mnie. Nic nie myyw. Nic nie myyw Graabom." Przykłada palce do zasznurowanych ust. "Szaaa!". Potem przeciąga palcem po twojej szyi. "Bo jaak powiesz, wypaaatroszę cię we śnie. Zrozyymiano?"~ */
  IF ~~ THEN REPLY #475 /* ~"Czy to miała być pogróżka? Jeśli tak... bądź gotowy na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #476 /* ~Kłamstwo: "Ani przez chwilę nie przeszła mi przez głowę myśl, żeby powiedzieć o tobie Grabarzom."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #477 /* ~Prawda: "Obiecuję, że nie nic o tobie nie powiem Grabarzom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_1","GLOBALGood",1)
~ EXIT
  IF ~~ THEN REPLY #478 /* ~"Nieważne. Ja mam swoje sprawy, a ty swoje."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.4
  SAY #479 /* ~Kiedy zwracasz się do truposza, ten sprawia wrażenie zdziwionego. "Ech? Cooo?"~ */
  IF ~~ THEN REPLY #480 /* ~"Ty nie jesteś zombie! Kim jesteś?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 6
  IF ~~ THEN REPLY #481 /* ~"Dlaczego chodzisz przebrany za zombie?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 6
  IF ~~ THEN REPLY #482 /* ~Odejdź. Jak najszybciej.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Jeden z zombie na pierwszym piętrze Kostnicy był facetem w przebraniu. Nie jest w stanie zrozumieć, kto i w jakim celu miałby przebierać za zombie!~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 5.0 5.1
  SAY #483 /* ~Pomimo zasznurowanych warg, zombie próbuje wydobyć z siebie odpowiedź. Jego twarz wykręca się w przedziwnym, na poły lękliwym, na poły gniewnym grymasie. "Ktoo tyyy? Czyygo chcyysz?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #484 /* ~"Szukam stąd wyjścia. Możesz mi pomóc?"~ */ GOTO 7
  IF ~~ THEN REPLY #485 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #486 /* ~"Powiesz mi, kim jesteś, albo zaraz zawołam straże."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #487 /* ~Kłamstwo: "Bo... szukałem ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #488 /* ~"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #489 /* ~"Wybacz, że ci zawracałem głowę... Kimkolwiek jesteś, żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
  SAY #490 /* ~Wydaje się, że twoje słowa nie dotarły do uszu zombie. Mierzy cię spojrzeniem przez kilka chwil, potem zaś marszczy brwi. "Czego tuu szuukasz?" Jego oczy zwężają się podejrzliwie. "Szpiegyyjesz Grabów?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #491 /* ~"Nie. Próbuję stąd uciec."~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #492 /* ~"Nie jestem szpiegiem. Trafiłem tu przez przypadek. Czy możesz mi pomóc wydostać się stąd?"~ */ GOTO 31
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #493 /* ~Kłamstwo: "Tak, szpieguję... Grabów."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #494 /* ~Kłamstwo: "Tak, szpieguję... Grabów."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #495 /* ~"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #496 /* ~"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #1306 /* ~"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #1348 /* ~"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #1349 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #1350 /* ~Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"~ */
  IF ~~ THEN REPLY #4671 /* ~"Słucham?"~ */ GOTO 10
  IF ~~ THEN REPLY #1352 /* ~"Komórka?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1359 /* ~Kłamstwo: "Tak... Szukałem cię. Cieszę, się, że cię wreszcie znalazłem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #1360 /* ~Kłamstwo: "Tak... Ale nie mogę mówić o tym zbyt dużo w tym momencie, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1361 /* ~Kłamstwo: "Tak... Ale nie mogę mówić o tym zbyt dużo w tym momencie. Co tutaj robisz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #1362 /* ~"Eee... nie mam teraz czasu na rozmowy... Może następnym razem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #1363 /* ~Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"~ */
  IF ~~ THEN REPLY #4359 /* ~"Słucham?"~ */ EXTERN ~DMORTE~ 85
  IF ~~ THEN REPLY #4360 /* ~"Komórka?"~ */ EXTERN ~DMORTE~ 85
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #4361 /* ~Truposz marszczy brwi a potem syka. "Ty nie szpieg!". Zombie wykonuje teraz dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Odyyyjdź! Odyyyjdź!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4362 /* ~"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4363 /* ~"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4364 /* ~"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4365 /* ~"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4367 /* ~"No już dobrze, dobrze... Odchodzę."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #4366 /* ~Zombie kiwa głową na twe słowa i odnosisz wrażenie, że połaskotałeś nieznacznie jego dumę, uczucie jak widać nieobce nawet żywym trupom.~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4368 /* ~"Czy możesz pomóc mi w ucieczce?"~ */ GOTO 12
  IF ~~ THEN REPLY #4369 /* ~"W takim razie, co tutaj robisz?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4370 /* ~Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów... Ale w tym momencie nie mogę zbyt dużo o tym mówić, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4371 /* ~Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów... Ale w tym momencie nie mogę zbyt dużo o tym mówić. A co tutaj robisz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #4372 /* ~"Eee... nie mam teraz czasu na rozmowy... Może następnym razem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.0 11.0
  SAY #4373 /* ~Zombie sprawia wrażenie zainteresowanego twoim położeniem. "Masz kłyypyyty? A jakie?"~ */
  IF ~~ THEN REPLY #4374 /* ~"Obudziłem się na jednej z płyt na wyższym poziomie."~ */ GOTO 13
  IF ~~ THEN REPLY #4375 /* ~"Wpadłem tutaj w pułapkę. Czy możesz mi pomóc?"~ */ GOTO 31
  IF ~~ THEN REPLY #4376 /* ~"Może powiem ci o tym następnym razem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #4377 /* ~Zombie patrzy na ciebie jak na zdrowo stukniętego. "Tyy wariaat?"~ */
  IF ~~ THEN REPLY #4378 /* ~"Tak, ja wyyriat. Wielki wyyriat."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4379 /* ~"'Wyyriat'? A cóż to takiego?"~ */ GOTO 16
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4380 /* ~"'Wyyriat'? A cóż to takiego?"~ */ EXTERN ~DMORTE~ 87
  IF ~~ THEN REPLY #4381 /* ~"Wiem, że to co powiem może zabrzmieć niewiarygodnie, ale to szczera prawda: Powstałem z martwych na jednej z płyt na wyższym poziomie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4382 /* ~"Nie... Właściwie, to wpadłem tutaj w pułapkę. Czy możesz pomóc mi wydostać się stąd?"~ */ GOTO 31
  IF ~~ THEN REPLY #4383 /* ~"Zapomnij o naszej rozmowie. Teraz już czas na mnie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.3 15.0
  SAY #4384 /* ~Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Tyy wariaat! Odyyyjdź, odyyyjdź ode mniee!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4385 /* ~"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4386 /* ~"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4387 /* ~"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4388 /* ~"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4389 /* ~"Dobrze już, dobrze... żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY #4390 /* ~Fałszywy zombie spogląda na was obu bardzo podejrzliwie.~ */
  IF ~~ THEN REPLY #4391 /* ~"To prawda – obudziłem się na katafalku."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4392 /* ~"Och, wybacz. Właściwie to wpadłem tutaj w pułapkę. Czy możesz pomóc znaleźć wyjście?"~ */ GOTO 31
  IF ~~ THEN REPLY #4393 /* ~"Mniejsza o to. Czas już na mnie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #4394 /* ~Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Pomyyleeniec! Idioota! Odyyyjdź, odyyyjdź ode mniee, trypie! Preecz!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4395 /* ~"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4396 /* ~"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4397 /* ~"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4398 /* ~"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4399 /* ~"No już dobrze, dobrze... Odchodzę."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.5 10.1 14.1 16.1 25.3 27.3
  SAY #4400 /* ~Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyyjywiłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyyjyyciół w ukryciu, a ty nikogo. Nie powinieneś tutaj byyć. Graby zabiją cię. Ja uciyyknę."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4401 /* ~"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4402 /* ~"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4403 /* ~"Zatem idź do diabła. Odchodzę."~ */ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #4404 /* ~Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."~ */
  IF ~~ THEN REPLY #4405 /* ~"Zaryzykuję. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4406 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie... *zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.6 10.2 14.2 16.2 25.4 27.4
  SAY #4407 /* ~Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."~ */
  IF ~~ THEN REPLY #4408 /* ~"Zaryzykuję. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4409 /* ~"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4410 /* ~"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"~ */ GOTO 20
  IF ~~ THEN REPLY #4411 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie... *zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY #4412 /* ~Oczy truposza zwężają się i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."~ */
  IF ~~ THEN REPLY #4413 /* ~"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4414 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 7.4 10.0 14.0 16.0 19.1 25.2 27.2
  SAY #4415 /* ~Zombie musiał coś dostrzec w twoim spojrzeniu, bo jego mina szybko zrzedłą. "Nie-Nie-Nie! Nie wyyłyyj strażników!" Wygląda na mocno podenerwowanego. "Ja szpieguję Gryybów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."~ */
  IF ~~ THEN REPLY #4416 /* ~"Szpiegujesz? Niby z czyjego polecenia?"~ */ GOTO 23
  IF ~~ THEN REPLY #4417 /* ~"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4418 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #4419 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów, *zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.7 10.3 14.3 16.3 17.1 25.5 27.5
  SAY #4420 /* ~"Nie-nie-nie Nie krzywdź mnie!" Chyba podziałał tu na zombie fakt, że jesteś od niego cięższy o te kilka kilogramów masy mięśniowej. Mina zombie zrzedła zupełnie. "Nie krzywdź mnie! Ja szpieguję Grabów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."~ */
  IF ~~ THEN REPLY #4421 /* ~"Szpiegujesz? Niby z czyjego polecenia?"~ */ GOTO 23
  IF ~~ THEN REPLY #4422 /* ~"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4423 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #4424 /* ~"To już wszystko, co chciałem wiedzieć. A teraz zejdź z mojej drogi, *zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0
  SAY #4425 /* ~Zombie milknie i zapada długa cisza, wypełniona jego namacalnym lękiem. Nie wydaje się, aby w tym momencie zombie miał cokolwiek więcej do dodania.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4426 /* ~"No, gadaj. Dlaczego obserwujesz to miejsce?"~ */ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4427 /* ~"No, gadaj. Dlaczego obserwujesz to miejsce?"~ */ EXTERN ~DMORTE~ 89
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4428 /* ~"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4429 /* ~"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 89
  IF ~~ THEN REPLY #4430 /* ~"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4431 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4432 /* ~"Zatem zapomnijmy o tym. Żegnaj, *zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.3 6.3 8.2
  SAY #4433 /* ~"Szuuukałeeś mnie? Dlaaaczyygo?" Zombie patrzy na ciebie przez zmrużone powieki. "Maaasz dlyyy mmnie wiaadyyymyyść?"~ */
  IF ~~ THEN REPLY #4434 /* ~Kłamstwo: "Tak, mam dla ciebie wiadomość."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_5","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #4435 /* ~"Wiadomość? Od kogo?"~ */ GOTO 27
  IF ~~ THEN REPLY #4436 /* ~"Nie, nie mam żadnej wiadomości."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY #4437 /* ~Zanosi się gniewnym sykiem "Więc czego chcesz, trypie?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4438 /* ~"Szukam stąd wyjścia. Możesz mi pomóc?"~ */ GOTO 31
  IF ~~ THEN REPLY #4439 /* ~"Potrzebuję paru informacji..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4440 /* ~"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4441 /* ~"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4442 /* ~"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4443 /* ~"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4444 /* ~"Wybacz, że ci zawracałem głowę... Kimkolwiek jesteś, żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #4445 /* ~"Jaką wiadomość?"~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4446 /* ~"Masz mi powiedzieć o swojej misji."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4447 /* ~Kłamstwo: "Mam dla ciebie nowe rozkazy."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4448 /* ~Kłamstwo: "Mam dla ciebie nowe rozkazy."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #4449 /* ~"Wybacz, ale nie mam żadnej wiadomości."~ */ GOTO 27
  IF ~~ THEN REPLY #4450 /* ~"Mniejsza z tym. Wybacz, że ci zawracałem głowę. Żegnaj."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.3 26.4
  SAY #4451 /* ~Jego oczy zwężają się wściekle "Nie jesteś posłańcem. Kim jesteś?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4452 /* ~"Szukam stąd wyjścia. Możesz mi pomóc?"~ */ GOTO 31
  IF ~~ THEN REPLY #4453 /* ~"Potrzebuję paru informacji..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4454 /* ~"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4455 /* ~"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4456 /* ~"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4457 /* ~"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4458 /* ~"Wybacz, że ci zawracałem głowę... Kimkolwiek jesteś, żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
  SAY #4459 /* ~"Szpieeegyyję Gryybów. Jeśli cyy podpatrzę, zaraz donoszę. Nic poza tym."~ */
  IF ~~ THEN REPLY #4460 /* ~"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4461 /* ~"Rozumiem. Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4462 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.1 22.1 23.4 28.0 70.1 71.2
  SAY #4463 /* ~"Nic! Onyy nic niee ryybią! Niczeeego nie szukyyją! To martwi, martwi, martwi luudzie. Gryyby nic nie robią." Oczy truposza tchną szczerością. "Ale całyy czyys czyywam."~ */
  IF ~~ THEN REPLY #4464 /* ~"Rozumiem. Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4465 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1 26.2
  SAY #4466 /* ~Jego oczy zwężają się, jakby próbował przeniknąć twoje słowa. "Jakie rozkazy?"~ */
  IF ~~ THEN REPLY #4467 /* ~"Opowiedz mi o swojej misji."~ */ GOTO 28
  IF ~~ THEN REPLY #4468 /* ~"Szukam drogi ucieczki, którą mógłbym przebyć niepostrzeżenie."~ */ GOTO 49
  IF ~  Global("Vaxis_Leave","GLOBAL",0)
~ THEN REPLY #4469 /* ~"Przybyłem tutaj, aby cię zluzować. Przekaż mi wszystkie informacje, które zgromadziłeś, wszystkie swoje rzeczy, a potem odejdź."~ */ DO ~SetGlobal("Vaxis_Leave","GLOBAL",1)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Embalm",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Knife",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #64517 /* ~Powiedziałem szpiegowi w przebraniu zombie, że przybyłem tutaj, aby go "zluzować", a wówczas on przekazał mi wszystko, co posiadał, głównie mnóstwo bandaży i przedmiotów leczniczych, które zapewne były dla niego nieodzowne dla podtrzymywania charakteryzacji.~ */ GOTO 72
  IF ~~ THEN REPLY #4470 /* ~"Jestem tu, żeby nieść ci pomóc w jakikolwiek sposób."~ */ GOTO 35
  IF ~~ THEN REPLY #4471 /* ~"Twoje rozkazy na razie poczekają. Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 7.1 12.1 13.4 15.1 25.0 27.0 50.0
  SAY #4472 /* ~Milknie na chwilę, a potem kiwa głową, jakby w zrozumieniu: "Dlaczego miyyłbym ci pomyygać?"~ */
  IF ~~ THEN REPLY #4473 /* ~"Ponieważ potrzebujesz pomocy."~ */ GOTO 32
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4474 /* ~"Może moglibyśmy się dogadać. Czego oczekujesz w zamian?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vaxis_3","GLOBALGood",1)
~ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4475 /* ~"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4476 /* ~"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4477 /* ~"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4478 /* ~"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4479 /* ~"Zapomnij o tym, że się spotkaliśmy. Teraz już czas na mnie. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4480 /* ~Zombie uśmiecha się półgębkiem. "Każdy czegoś potrzyybuje, ale nikt niczego nie daje. Dasz mi coś, może ci pyymyygę."~ */
  IF ~~ THEN REPLY #4481 /* ~"Więc czego potrzebujesz?"~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4482 /* ~"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4483 /* ~"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4484 /* ~"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz... pytam po raz ostatni: Jak można wydostać się z tego miejsca?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4485 /* ~"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz... pytam po raz ostatni: Jak można wydostać się z tego miejsca?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4486 /* ~"Nie interesuje mnie to. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
  SAY #4487 /* ~Mierzy cię badawczym wzrokiem od stóp do głów, jakby rozważał czy mógł dać ci radę, ogląda twoje blizny, a potem podejmuje decyzję. "Hm... Mógłbyyś próbyywać ucieeczki przez portyyle."~ */
  IF ~~ THEN REPLY #4672 /* ~"Portale?"~ */ DO ~SetGlobal("Strong_Arm_Vaxis","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 34 // from: 31.3 32.2 35.3
  SAY #4491 /* ~Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyjawyyłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swyyich przyjaciół w ukryyciu, a ty nikyygo. Nie powinieneś tyytaj być. Graby zabyyją cię. Ja uciyyknę."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4489 /* ~"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4490 /* ~"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4492 /* ~"Zatem idź do diabła. Odchodzę."~ */ GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 30.3 31.1 32.0
  SAY #4493 /* ~"Uch... Muszę znyyleźć dla mnie klyycz. Potrzyybuję żelyyznego klucza od byylsyymowni."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4494 /* ~"Mówisz o tym kluczu?"~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~~ THEN REPLY #4495 /* ~"No dobra. Gdzie jest ten klucz?"~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4496 /* ~"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4497 /* ~"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4498 /* ~"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4499 /* ~"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~~ THEN REPLY #4500 /* ~"Nie, dziękuję. Może innym razem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 36 // from: 35.1 58.2
  SAY #4501 /* ~"Ma go kobiyyta od Grabów." Wymownie pokazuje swoje oczy. "Tyyka z żółtymi oczyymi..." Teraz zombie wykonuje swoimi dłońmi gesty, które przywodzą ci na pamięć pracę nożyc ogrodniczych "Ma noże na palcach."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4502 /* ~"Tak, już się spotkaliśmy wcześniej. A oto i klucz."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #64520 /* ~"Kobieta Grabarz... O żółtych oczach i nożach zamiast palców? Już ją spotkałem w balsamowni. Poczekaj. Zaraz przyjdę z kluczem."~ */ JOURNAL #64519 /* ~W zamian za pomoc, zgodziłem się wydostać dla fałszywego zombie klucz do balsamowni, znajdujący się w posiadaniu kobiety, którą wcześniej spotkałem w sąsiedniej komnacie, zdaje się, że miała na imię Ei-Vene. Zachodzę tylko w głowę, jak ktoś o dłoniach z ostrzy może posługiwać się kluczem, nie mówiąc już o balsamie.~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #4503 /* ~"Kobieta od Grabarzy... o żółtych oczach i ostrzach na palcach? Zatem dobrze, wrócę tu z tym kluczem."~ */ JOURNAL #64518 /* ~W zamian za pomoc, zgodziłem się wydostać dla fałszywego zombie klucz do balsamowni, znajdujący się w posiadaniu Grabarki o żółtych oczach i ostrzach zamiast dłoni.~ */ GOTO 38
  IF ~~ THEN REPLY #4504 /* ~"Z twojego opisu wnoszę, że ta Grabarka to bardzo atrakcyjna niewiasta. Jesteś pewien, że nie chcesz, abym obu was przedstawił?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_6","GLOBALLaw",-1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.3
  SAY #4505 /* ~Truposz mruga powiekami. Chyba cię nie zrozumiał.~ */
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #4506 /* ~"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."~ */ JOURNAL #64519 /* ~W zamian za pomoc, zgodziłem się wydostać dla fałszywego zombie klucz do balsamowni, znajdujący się w posiadaniu kobiety, którą wcześniej spotkałem w sąsiedniej komnacie, zdaje się, że miała na imię Ei-Vene. Zachodzę tylko w głowę, jak ktoś o dłoniach z ostrzy może posługiwać się kluczem, nie mówiąc już o balsamie.~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #66150 /* ~"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."~ */ JOURNAL #64518 /* ~W zamian za pomoc, zgodziłem się wydostać dla fałszywego zombie klucz do balsamowni, znajdujący się w posiadaniu Grabarki o żółtych oczach i ostrzach zamiast dłoni.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2 37.0 37.1
  SAY #4507 /* ~Zombie patrzy na ciebie przez zmrużone ślepia. "Jak cię złyypią, nie mów im nic yy mnie, bo wypatryyyyszę cię we śnie."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4508 /* ~"Znajdę ten przeklęty klucz... A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4509 /* ~"Wrócę tu."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4510 /* ~"Znajdę ten przeklęty klucz... A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"~ */ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4511 /* ~"Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 43.12
  SAY #4512 /* ~"Myje przybranie dybre... Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 93
END

IF ~~ THEN BEGIN 40 // from:
  SAY #4514 /* ~"Poczyykam tu na ciyybie. Znajdź klyycz." Zombie posyła ci uśmiech, od którego widoku może się zrobić niedobrze. "Pyytyym ci pyymyygę."~ */
  IF ~~ THEN REPLY #4515 /* ~"Jeżeli go znajdę, to go tutaj przyniosę."~ */ EXIT
  IF ~~ THEN REPLY #4516 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #4517 /* ~Oczy zombie rozszerzają się, a potem wyciąga rękę i rozcapierza palce. "Daj mi to."~ */
  IF ~~ THEN REPLY #4518 /* ~"Poczekaj na chwilę. Chciałbym o coś spytać."~ */ EXIT
  IF ~~ THEN REPLY #4519 /* ~"Proszę."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0 36.0 58.0 58.1
  SAY #4520 /* ~Oczy zombie rozszerzają się i porywa klucz z twojej dłoni. Ogląda go przez chwilę, kiwając głową. "Dobrze... Dobrze."~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4521 /* ~"Dobra... A jak mogę się stąd wydostać?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Zdobyłem dla Vaxisa "drogocenny" klucz do balsamowni. Był on dla niego nieodzowny do zdobycia nowych środków dla utrzymania swojej charakteryzacji. Przynajmniej tak można sądzić z zapachu płynu do balsamowania, jaki roztaczał wokół siebie fałszywy zombie.~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",1)
~ THEN REPLY #4522 /* ~"Dobra... Chciałbym o coś spytać..."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Zdobyłem dla Vaxisa "drogocenny" klucz do balsamowni. Był on dla niego nieodzowny do zdobycia nowych środków dla utrzymania swojej charakteryzacji. Przynajmniej tak można sądzić z zapachu płynu do balsamowania, jaki roztaczał wokół siebie fałszywy zombie.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
  SAY #4523 /* ~"Czyygo chcyysz?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",1)
~ THEN REPLY #64508 /* ~"Jak mogę stąd uciec?"~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",0)
~ THEN REPLY #4524 /* ~"Jak mogę stąd uciec?"~ */ GOTO 49
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #4525 /* ~"Powiedz mi jeszcze raz gdzie jest ten portal?"~ */ GOTO 52
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",1)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4526 /* ~"A możesz ucharakteryzować mnie na zombie?"~ */ GOTO 63
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",2)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4527 /* ~"Możesz jeszcze raz ucharakteryzować mnie na zombie?"~ */ GOTO 63
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4528 /* ~"Co tutaj robisz?"~ */ GOTO 28
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4673 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 44
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4530 /* ~"Zgubiłem dziennik. Nie widziałeś go czasem?"~ */ GOTO 47
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4531 /* ~"Możesz opowiedzieć mi o Dhallu?"~ */ GOTO 53
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4532 /* ~"Możesz opowiedzieć mi o Deionarze?"~ */ GOTO 54
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #4533 /* ~"Możesz opowiedzieć mi o Soem?"~ */ GOTO 55
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4534 /* ~"Co trzeba zrobić, żeby wyglądać tak jak ty?"~ */ GOTO 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4535 /* ~"Co trzeba zrobić, żeby wyglądać tak jak ty?"~ */ GOTO 39
  IF ~~ THEN REPLY #4536 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.6
  SAY #4537 /* ~"Faa-rod?" Zombie mruga oczami, namyślając się przez chwilę. "Słyszałem, że mieszka gdzieś w Ulu." Potrząsa głową. "Nie wiem gdzie." Znowu mruży oczy. "Graby bardzo złe. Nie lubią Faroda."~ */
  IF ~~ THEN REPLY #4538 /* ~"W Ulu?"~ */ GOTO 45
  IF ~~ THEN REPLY #4539 /* ~"Dlaczego Grabarze nie lubią Faroda?"~ */ JOURNAL #64522 /* ~Wygląda na to, że Grabarze i Farod nie przepadają za sobą... Vaxis powiedział mi, że Farod przekazuje do Kostnicy masy zwłok, a Grabarze podejrzewają, że Farod zwiększa sobie obroty, dokonując masowych mordów.~ */ GOTO 46
  IF ~~ THEN REPLY #4540 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4541 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #4542 /* ~"Pobliskie slumsy."~ */
  IF ~~ THEN REPLY #4543 /* ~"Dlaczego Grabarze nie lubią Faroda?"~ */ JOURNAL #64522 /* ~Wygląda na to, że Grabarze i Farod nie przepadają za sobą... Vaxis powiedział mi, że Farod przekazuje do Kostnicy masy zwłok, a Grabarze podejrzewają, że Farod zwiększa sobie obroty, dokonując masowych mordów.~ */ GOTO 46
  IF ~~ THEN REPLY #4544 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4545 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0
  SAY #4546 /* ~"On jest Zbieraczem. Przywozi umarłych do Kostnicy, sprzedaje ich ciała Grabarzom. Przywozi dużo umarłych. Graby nie wiedzą, skąd bierze tyle umarłych. Chyba pakuje trepów do księgi umarłych."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4547 /* ~"Uch... Co?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4548 /* ~"Uch... Co?"~ */ EXTERN ~DMORTE~ 91
  IF ~~ THEN REPLY #4549 /* ~"Och. Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4550 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.7
  SAY #4551 /* ~"Nie wiem. Jakiś trep cię oskórował?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4552 /* ~"Uch... Co?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4553 /* ~"Uch... Co?"~ */ EXTERN ~DMORTE~ 92
  IF ~~ THEN REPLY #4554 /* ~"Och. Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4555 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #4556 /* ~Zombie próbuje coś mówić, potem milknie, próbuje jeszcze raz i wzrusza ramionami. Zapewne doszedł do wniosku, że nie umie tego lepiej wyjaśnić.~ */
  IF ~~ THEN REPLY #4557 /* ~"Och. Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4558 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.1 42.0 43.0 43.1
  SAY #4559 /* ~Zombie burczy. "Możeesz uuciec przyyz portalyy." Macha rękami. "Puuff."~ */
  IF ~~ THEN REPLY #4560 /* ~"Portale? Jakie portale?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 33.0 49.0
  SAY #4563 /* ~"Poorrtyyle..." Zombie ogarnia ruchem rąk wszystko w pobliżu. "Porrtyyle są wszędziie."~ */
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4564 /* ~"Możesz wskazać mi drogę do któregoś z takich portali?"~ */ GOTO 31
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
GlobalGT("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64509 /* ~"Możesz wskazać mi drogę do któregoś z takich portali?"~ */ GOTO 51
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",1)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64510 /* ~"Możesz wskazać mi drogę do któregoś z takich portali?"~ */ GOTO 51
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #64511 /* ~"Możesz wskazać mi drogę do któregoś z takich portali?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3 72.0
  SAY #4567 /* ~Zombie kiwa głową. "Chcesz stąd wyjść... Idź do łuku na pierwszym poziomie. Północno-zachodnia komnata. Musisz mieć przy sobie kość z palca, skrzywioną." Podnosi swój wskazujący palec do góry i malowniczo wygina go. "Jak będziesz miał ten klucz. Podejdź do łuku, wejdź do sekretnej krypty, a stamtąd możesz uciec. To tajna droga ucieczki." Kiwa głową z dużą żywością. "Możesz też tam ODPOCZĄĆ."~ */
  IF ~  !PartyHasItem("BoneChrm")
~ THEN REPLY #64527 /* ~"Skrzywiona kość z palca? A gdzież ja będę mógł znaleźć coś takiego?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64528 /* ~Vaxis zdradził mi, że w północno-zachodniej komnacie na parterze Kostnicy znajduje się sekretny portal. Wystarczy udać się tam i unieść w górę skrzywioną kostkę z palca kościotrupa, a portal otworzy się i przeniesie mnie do sekretnej krypty, gdzie, wedle słów, Vaxisa, można "zażyć odpoczynku". Niemniej jednak Vaxis nie wie, gdzie można znaleźć krzywą kostkę z palca. Zasugerował jedynie, abym poszukał jej na górnym poziomie Kostnicy.~ */ GOTO 77
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4568 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Vaxis zdradził mi, że w północno-zachodniej komnacie na parterze Kostnicy znajduje się sekretny portal. Wystarczy udać się tam i unieść w górę skrzywioną kostkę z palca kościotrupa, a portal otworzy się i przeniesie mnie do sekretnej krypty, gdzie, wedle słów, Vaxisa, można "zażyć odpoczynku".~ */ GOTO 43
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4569 /* ~"Łuk na parterze, komnata północno-zachodnia, tak? W porządku, zaraz pójdę to sprawdzić."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Vaxis zdradził mi, że w północno-zachodniej komnacie na parterze Kostnicy znajduje się sekretny portal. Wystarczy udać się tam i unieść w górę skrzywioną kostkę z palca kościotrupa, a portal otworzy się i przeniesie mnie do sekretnej krypty, gdzie, wedle słów, Vaxisa, można "zażyć odpoczynku".~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.2
  SAY #4570 /* ~"Słuchaj! Pamiętaj!" Zombie sprawia wrażenie wkurzonego. "Łuk, na pierwszym poziomie, komnata północno-zachodnia..." Podnosi swój wskazujący palec i wygina go. "Potrzebujesz kości palca, zgiętej. Idziesz do tajnej krypty. Tam droga ucieczki. Ta można ODPOCZĄĆ."~ */
  IF ~~ THEN REPLY #4571 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4572 /* ~"Łuk, na parterze, komnata północno-zachodnia, otwiera się skrzywioną kością od palca, tak? W porządku, teraz wszystko już rozumiem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 43.8
  SAY #4573 /* ~"Skryba." Zombie wzrusza ramionami. "Stary. Żółty."~ */
  IF ~~ THEN REPLY #4574 /* ~"Przypuszczam, że nie ma już chyba co rozwodzić się nad tym tematem. Chciałbym natomiast spytać o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4575 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 43.9
  SAY #4576 /* ~"Kto?" Truposz marszczy brwi. "Ona kto?"~ */
  IF ~~ THEN REPLY #4577 /* ~"Zapomnij o tym. Chciałbym natomiast spytać o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4578 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 43.10
  SAY #4579 /* ~"Przewodnik. On jest przy drzwiach wejściowych do Kostnicy. Czego od niego chcesz?"~ */
  IF ~~ THEN REPLY #4580 /* ~"Co możesz o nim powiedzieć?"~ */ DO ~SetGlobal("Vaxis_Exposes_Soego","GLOBAL",1)
~ JOURNAL #64530 /* ~Vaxis powiedział coś o dziwnym zachowaniu Soego. Fałszywy zombie wyraził się, że Grabarz ten lubi "szczury", albo przynajmniej tak to zrozumiałem. Nie wiem co myśleć o osobniku, który nawet w oczach Vaxisa jest dziwny. To wszystko... bardzo dziwne.~ */ GOTO 56
  IF ~~ THEN REPLY #4581 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #4582 /* ~"Zachowyyje się dziwnie. Nie z Gryybów. Nie z Anarchyystów, ma zmieniyyne oczyy..." Wzrusza. "Lubi szczyyyry. Dziwny on."~ */
  IF ~~ THEN REPLY #4583 /* ~"Nie on jeden jest dziwny w tym miejscu. Ale chciałbym spytać o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4584 /* ~"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."~ */ EXIT
END

IF ~  GlobalGT("Vaxis","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #4585 /* ~Widzisz fałszywego zombie. Przebranie tego człowieka naprawdę potrafi wprawić w zdumienie... Jego oddech jest tak stłumiony, że ledwie go zauważasz.~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
~ THEN REPLY #4586 /* ~"Witaj."~ */ GOTO 58
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
~ THEN REPLY #4587 /* ~"Witaj."~ */ GOTO 58
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4588 /* ~"Witaj."~ */ GOTO 59
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4589 /* ~"Witaj."~ */ GOTO 58
  IF ~~ THEN REPLY #4590 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1 57.3
  SAY #4591 /* ~Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie. "I co?"~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
PartyHasItem("KeyEm")
~ THEN REPLY #4592 /* ~"Oto i klucz, którego poszukiwałeś."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
PartyHasItem("KeyEm")
~ THEN REPLY #4593 /* ~"Oto i klucz, którego poszukiwałeś."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!PartyHasItem("KeyEm")
~ THEN REPLY #4594 /* ~"A gdzie jest ten klucz, o którym wspominałeś?"~ */ GOTO 36
  IF ~~ THEN REPLY #4595 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #4596 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY #4597 /* ~Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie i wykonuje dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. Syczy "Odyyjdź stąd, Oddyjdź!"~ */
  IF ~~ THEN REPLY #4598 /* ~"Nie. Najpierw chciałbym zadać kilka pytań..."~ */ GOTO 43
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4599 /* ~"W takim razie nieważne."~ */ GOTO 4
  IF ~  GlobalGT("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4600 /* ~"W takim razie nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 43.11
  SAY #4601 /* ~"Myje przybranie dybre... Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."~ */
  IF ~~ THEN REPLY #4602 /* ~"Tak, oni nie są zbyt lotni, masz rację."~ */ GOTO 61
  IF ~~ THEN REPLY #4603 /* ~"A czy to nie boli?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4604 /* ~"To przebranie jest całkiem niezłe. Słuchaj... A czy nie mógłbyś i mnie ucharakteryzować na zombie?"~ */ GOTO 63
  IF ~~ THEN REPLY #4605 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4606 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #4607 /* ~Zombie szybko chowa swój sarkazm do kieszeni. Kiwa głową z zapałem. "Graby bardzo głupie. Ja dobrze udaję zombie."~ */
  IF ~~ THEN REPLY #4608 /* ~"A czy to nie boli?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4609 /* ~"To przebranie jest całkiem niezłe. Słuchaj... A czy nie mógłbyś i mnie ucharakteryzować na zombie?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4610 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4611 /* ~"Czas już na mnie. Żegnaj."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4612 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4613 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1 61.0
  SAY #4614 /* ~Zombie patrzy na twoje blizny. "Spytam się o to samo. Mnie to nie boli." Uderza się po piersi. "Ja twardy."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4615 /* ~"To przebranie jest całkiem niezłe. Słuchaj... A czy nie mógłbyś i mnie ucharakteryzować na zombie?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4616 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4617 /* ~"Czas już na mnie. Żegnaj."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4618 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4674 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 43.3 43.4 60.2 61.1 62.0 64.1 64.2
  SAY #4619 /* ~Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów, mrucząc do samego siebie, a potem kiwa głową. "Um... Potrzyyba mi słoja płynu byylsyymującego." Pokazuje na blizny na twojej piersi. "I tryychę igieł i nici."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #4620 /* ~"Proszę."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",2)
DestroyPartyItem("Embalm",FALSE)
DestroyPartyItem("Needle",FALSE)
~ GOTO 65
  IF ~~ THEN REPLY #4621 /* ~"Pomyślę o tym. Mam kilka innych pytań..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4622 /* ~"Nie, dzięki. Może innym razem... Żegnaj."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #4623 /* ~"Trochę płynu balsamującego i trochę nici? Pójdę i poszukam, może coś dla ciebie znajdę."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2 61.3 62.1 62.2
  SAY #4624 /* ~Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów z dziwnym wyrazem twarzy. "Ty dyybry zombie. Myygę zryybić z ciebie zombie. Dyybre przebranie."~ */
  IF ~~ THEN REPLY #4625 /* ~"Tak, czy siak dziękuję. Mam jeszcze kilka innych pytań..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4626 /* ~"Jasne. Możesz to zrobić?"~ */ GOTO 63
  IF ~~ THEN REPLY #4627 /* ~"Czemu nie? I tak cały czas czuję się, jak chodzący truposz."~ */ GOTO 63
  IF ~~ THEN REPLY #4628 /* ~"Nie, nie, nie. Nie trzeba. Żegnaj."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.0
  SAY #4629 /* ~Zombie bierze od ciebie rzeczy, i bierze się do roboty...~ */
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",0)
~ THEN REPLY #4630 /* ~Próbuj stać nieruchomo.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
AddexperienceParty(500)
SetGlobal("Vaxis_Zombie_XP","GLOBAL",1)
~ GOTO 66
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",0)
~ THEN REPLY #4631 /* ~Próbuj stać nieruchomo.~ */ DO ~SetGlobal("Morte_Vaxis_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 94
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",1)
~ THEN REPLY #4632 /* ~Próbuj stać nieruchomo.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",1)
~ THEN REPLY #64533 /* ~Próbuj stać nieruchomo.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.2 65.3
  SAY #4633 /* ~Zombie hojnie umieszcza na twoim ciele płyn balsamujący, a potem zaś zgrabnie zaszywa kilka twoich blizn. Począwszy od twoich stóp, idzie w górę i zaszywa twoje blizny, a potem kończy twoją charakteryzację zaszywając ci usta."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4634 /* ~"Mmm-hmmph-mmm... Dziu-ku-ju."~ */ GOTO 67
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",0)
~ THEN REPLY #4635 /* ~"Mmm-hmmph-mmm... Dziu-ku-ju."~ */ DO ~SetGlobal("Morte_Vaxis_Quip_2","GLOBAL",1)
~ EXTERN ~DMORTE~ 95
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",1)
~ THEN REPLY #4636 /* ~"Mmm-hmmph-mmm... Dziu-ku-ju."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #4637 /* ~Zombie unosi dłoń. "Ostryyżnie. Nie mów nic. Kiedy mówisz, szwy w twyyich bliznach pękyyją. Zombie nie mówią. Jeśli już myysisz mówić, mów powoli, ostryyżnie."

UWAGA: Weź pod uwagę, że nikt tutaj nie spodziewa się spotkać mówiącego zombie. Jeżeli będąc w przebraniu zombie zdecydujesz się na rozmowę z kimkolwiek, narazisz się dekonspirację.~ */
  IF ~~ THEN REPLY #4638 /* ~"Mmph... mmm... Rozumiem."~ */ JOURNAL #64531 /* ~W zamian za garść igieł i nici oraz pewną ilość płynu balsamującego, Vaxis przebrał mnie za zombie. Ostrzegł mnie wszakże, żebym unikał biegania, bo w ten sposób moje przebranie szybko straci na wiarygodności. Nie powinienem też wdawać się w rozmowy z napotkanymi istotami, bo jak Vaxis stwierdził: "zombie głosu nie mają."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #4639 /* ~Zombie marszczy brwi. "Przebryynie nie utrzyymuje się dłyyygo... Płyn balsamyyyjący wysycha, szwy wypadyyyją." Wzrusza ramionami. "Przebryyynie zapewne nie trzyma się długo pyyza Kostnicą. I nie biegaj! Zaczniesz biegać, zniszczysz całe przebryyynie."

UWAGA: Wprowadzenie do twojego ekwipunku broni oraz / lub podjęcie biegu natychmiast kasuje twoje przebranie zombie. Dlatego, jeżeli znajdziesz nową broń, powstrzymaj się przed wprowadzeniem jej do twojego ekwipunku do chwili, kiedy nie będziesz już potrzebował przebrania. Jeżeli masz uruchomioną opcję Ciągłego Biegu, pamiętaj o tym, żeby ją wyłączyć, zaraz po tym, jak skończysz rozmowę z Vaxisem.~ */
  IF ~~ THEN REPLY #4640 /* ~Skiń jeszcze raz głową i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #4641 /* ~Zombie marszczy brwi. "Wydyyjesz mi się znajyymy? Widziyyyłem cię wczyyśniej?"~ */
  IF ~~ THEN REPLY #4642 /* ~"Możliwe. A gdzie mnie spotkałeś?"~ */ EXIT
  IF ~~ THEN REPLY #4643 /* ~Ani mru-mru.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 23.0 23.2 71.0 71.1
  SAY #4644 /* ~Ku twemu zdziwieniu, zombie odwraca się od ciebie... i zaczyna bacznym wzrokiem lustrować otoczenie.~ */
  IF ~~ THEN REPLY #4645 /* ~"Nie chcesz mówić, tak? Wobec tego zaraz będziesz krzyczał z bólu."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4646 /* ~"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4647 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4648 /* ~"Zatem zapomnijmy o tym. Żegnaj, *zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #4649 /* ~Zombie patrzy na was obu wzrokiem pełnym obawy. Jest niemy... ale coś w jego wyglądzie mówi ci, że spostrzeżenie Mortego było słuszne.~ */
  IF ~~ THEN REPLY #4650 /* ~"Anarchiści, co? To dla nich tutaj węszysz?"~ */ GOTO 70
  IF ~~ THEN REPLY #4651 /* ~"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi dlaczego Anarchiści wysyłają cię tutaj na przeszpiegi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #4652 /* ~"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"~ */ GOTO 29
  IF ~~ THEN REPLY #4653 /* ~"Chciałbym cię spytać jeszcze o coś innego..."~ */ GOTO 43
  IF ~~ THEN REPLY #4654 /* ~"Zatem zapomnijmy o tym. Żegnaj, *zombie*."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 30.2
  SAY #4655 /* ~Zombie wygląda na rozczarowanego, ale wzrusza ramionami i zaczyna grzebać w połach swojej splamionej tuniki. "Było spyykojnie. Gryyby były spyykojne. Nic nyywego od czasu poprzyydniego raportu." Po kilku chwilach, wręcza ci parę przedmiotów "Pryyszę." Sądząc po zapachu, przedmioty te musiały być schowane tak głęboko, aby nie dostały się w cudze ręce w przypadku rewizji. "Odyyjdę niebyywem."~ */
  IF ~  Global("Vaxis_Help","GLOBAL",0)
~ THEN REPLY #4656 /* ~"Odejść? Jak?"~ */ GOTO 51
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #64532 /* ~"Dobrze. Żegnaj, Vaxisie."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #4658 /* ~Zombie mruczy: "Pyyyrtal to łuk. Parter, kyymnata półnyycno-zachyyydnia, potrzyyba ci kości palca ze szkyyyletu, żeby otwyyyrzyć pyyrtal." Kiwa głową na pożegnanie. "Powyyydzenia."~ */
  IF ~~ THEN REPLY #4659 /* ~"Uch... Dobra."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 34.0
  SAY #4660 /* ~Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umyyrłych? Myym tutaj ukryytych przyjaciół, a ty nikyygo. Dotknij mnie, a myyi kumple zabiją cię."~ */
  IF ~~ THEN REPLY #4661 /* ~"Właśnie zaprzepaściłeś swoją ostatnią szansę, aby ujść z życiem, truposzu. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4662 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 75 // from: 31.4 32.3 35.4
  SAY #4663 /* ~Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4664 /* ~"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4665 /* ~"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"~ */ GOTO 76
  IF ~~ THEN REPLY #4666 /* ~"Zaryzykuję. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4667 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie... *zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #4668 /* ~Oczy truposza zwężają i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."~ */
  IF ~~ THEN REPLY #4669 /* ~"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4670 /* ~"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie... *zombie*."~ */ GOTO 4
END

IF ~~ THEN BEGIN 77 // from: 51.0
  SAY #64523 /* ~Fałszywy zombie wzrusza ramionami. "Musi być gdzieś tutaj... Poszukaj w magazynach na wyższym poziomie. Może tam będzie."~ */
  IF ~~ THEN REPLY #64524 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 43
  IF ~~ THEN REPLY #64525 /* ~"Dobra. Poszukam na górze skrzywionej kości z palca, a potem skieruję się na parter i zbliżę do jednego z łuków w komnacie północno-zachodniej. Zrozumiałem."~ */ EXIT
END
