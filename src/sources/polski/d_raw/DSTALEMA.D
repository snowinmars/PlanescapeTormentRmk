// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~Zalatująca stęchlizną zombica sprawia wrażenie niezwykle starego stworzenia. Jest niemal żywą (czy może raczej półżywą) mumią. Jej skóra ma wygląd gnijącej szaro-zielonej powłoki, a pozbawiony gałki oczodół znaczy szpetną twarz czarną czeluścią. Głos zombicy jest powolny i gruby: "Wyyy-wyyy-wytaaaj."~ */
  IF ~~ THEN REPLY #2992 /* ~"Witaj..."~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"Witaj, i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~Zombica wskazuje na siebie i znowu wydaje głos: "Czyr-czyr-czyr-stwy Myyryyy." Można odnieść wrażenie, że to, co kiedyś było jej strunami głosowymi, ma teraz postać przegniłej, klejącej się do ścian gardła masy.~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"Tyś jest Czerstwa Mary? Mam kilka pytań..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"Tyś jest Czerstwa Mary? Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"Teraz już czas na mnie, Mary. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~Zombica w odpowiedzi z wolna kiwa głową.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"Teraz już czas na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~Zombica kiwa głową, oczekując twojego pytania.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"Hargrimm powiedział, że powinienem *nauczyć się* słuchać ciebie... Czy wiesz, co miał na myśli?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"Mary, muszę zobaczyć się z Milczącym Królem. Czy możesz mi pomóc?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"Dlaczego jestem tutaj więźniem?~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"Gdzie ja jestem?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"Czy mogę spytać cię o kogoś konkretnego..."~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"Czy widziałaś gdzieś tutaj niewielką kulę z brązu?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~Zombica mamrocze i wymrukuje jękliwą, kompletnie niezrozumiałą zbitkę słów.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"Wybacz, ale nie potrafię cię zrozumieć. Czy możemy porozumieć się w jakiś inny sposób?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"Nie rozumiem cię. Czy nie możesz mówić wyraźniej?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"Eeee, Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"Mniejsza o to... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~Zombica smutno potrząsa głową, a jej ramiona wznoszą się w geście żałosnej bezradności.~ */
  IF ~~ THEN REPLY #22221 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~Zombica wykonuje krok w twoim kierunku, wyciągając ku tobie ramię.~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~Cofnij się.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~Cofnij się.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~Pozwól, aby cię dotknęła.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"Co robisz?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"Co robisz?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~W odpowiedzi zombica tylko jęczy z cicha, raz jeszcze próbując sięgnąć cię ramieniem.~ */
  IF ~~ THEN REPLY #22269 /* ~Pozwól, aby cię dotknęła.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~W odpowiedzi zombica tylko jęczy z cicha, raz jeszcze próbując sięgnąć cię ramieniem. Mimo zniszczeń, jakich dokonał w niej bezlitosny czas, wciąż jeszcze można w jej spojrzeniu dostrzec cień człowieczeństwa. Czujesz wyraźnie, że zombica nie chce ci uczynić żadnej krzywdy.~ */
  IF ~~ THEN REPLY #22272 /* ~Pozwól, aby cię dotknęła.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~Jej niemal pozbawiona ciała ręka ociera się delikatnie o twoje przedramię i mówi: "Puuuusuuuuhuuuuyyy." (Posłuchaj.)~ */
  IF ~~ THEN REPLY #22275 /* ~"Jak to zrobiłaś?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"W jaki sposób mogłem cię zrozumieć?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~Zombica dotyka cię raz jeszcze. "Myyyyżyyyyyszsz z nyyymyy myyyyywyyyycz. Aaaalyyyy ryyyyb tyyy pyyypryyywnyy." (Możesz z nami mówić. Ale rób to poprawnie.)~ */
  IF ~~ THEN REPLY #22278 /* ~"Czy możesz mnie nauczyć?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~Zombica uśmiecha się z wysiłkiem, a stwardniała skóra jej twarzy trzeszczy jak gruba skorupa. "Thhhyyyyykh." (Tak.)~ */
  IF ~~ THEN REPLY #22280 /* ~"Proszę, zrób to..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~Czerstwa Mary podzieliła się ze mną wiedzą o tym jak rozmawiać z umarłymi. Jestem teraz w stanie rozmawiać ze zwłokami, które nie są zbyt długo martwe, aby ich poprzedni właściciele wciąż mogli przez nie przemawiać.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~Twój szybki kurs prowadzenia rozmów z umarłymi, z zombicą w roli instruktorki dobiega końca. Opanowałeś umiejętność, którą Mary określa jako 'Gadaj-Kości-Opowieści'.~ */
  IF ~~ THEN REPLY #22283 /* ~"Czy mogę rozmawiać ze wszystkimi zmarłymi?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"Zhh Niikttrrtry. Ihhhhnnnniii shsh zzhhhbbhhhtt zzmmrrrhhllli. Trhrhhhrbhbh prhhhrhrrh." (Z niektórymi. Inni zbyt dawno zmarli. Trzeba próbować.)~ */
  IF ~~ THEN REPLY #22285 /* ~"Dzięki. Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~Zombica kiwa głową w oczekiwaniu na twoje pytanie.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"Mój towarzysz został porwany przez potężnego człeka, który w zamian za jego uwolnienie domaga się 'większej' czaszki. Co mam zrobić, Mary?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"Hargrimm powiedział, że powinienem *nauczyć się* słuchać ciebie... Czy wiesz, co miał na myśli?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"Mary, muszę się zobaczyć z Milczącym Królem. Czy możesz mi w tym pomóc?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"Mary, muszę się zobaczyć z Milczącym Królem. Czy możesz mi w tym pomóc?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"Mary, muszę się zobaczyć z Milczącym Królem. Czy możesz mi w tym pomóc?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"Jak to się dzieje, że możesz rozmawiać z innymi zombie? Chociaż rozumiem twoją mowę, to z nimi nie jestem w stanie się porozumieć..."~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"Dlaczego jestem tu więźniem?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"Gdzie ja jestem?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"Co tutaj robisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"Czy mogę spytać cię o kogoś konkretnego..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"Czy widziałaś gdzieś tutaj niewielką kulę z brązu?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"Kyyyymnyyyty Myyylczyncyygyyy Kryylyy." (Komnaty Milczącego Króla.)~ */
  IF ~~ THEN REPLY #22299 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"Pyyypryyywydż innyyyy zyyymbyyyy. Wyyybyyszsz shshs ohoh spyykyyjnyy zhzh nyyychch." (Prowadzę inne zombie. Troszczę się o milczących.)~ */
  IF ~~ THEN REPLY #22303 /* ~"Opowiedz mi o innych zombie."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"Milczących?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"Zyyyymbyyy, Shzhypyyy. Gyyylyyy. Szczyyyryy." (Zombie. Szkielety. Ghule. Szczury.)~ */
  IF ~~ THEN REPLY #22308 /* ~"Opowiedz mi o zombie."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"Opowiedz mi o kościotrupach."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"Opowiedz mi o ghulach."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"Opowiedz mi o szczurach."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"Wyyykyyynyyy pryyycyyy dhdh myyyylczyyyncyygyy kryyylyyy." (Wykonują prace dla Milczącego Króla.)~ */
  IF ~~ THEN REPLY #22315 /* ~"Jakie prace?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"Kto inny zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"Odbyyyydyy tyyy cyyy jyy znyyyyyszszczyyyny, Byyyczzcz nyyyy pryyyyyywdyywyyy zmyyyyrlyy." (Odbudowują to, co jest zniszczone. Baczą na prawdziwie martwych.)~ */
  IF ~~ THEN REPLY #22321 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"Kto inny zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"Hyyyyyrgryyyym, yyych wyyyydz przyyykyyzyyyje nyyym słyyyywyyy Myyyylczyyyncyygy Kryyylyyy. Kyyyszczyyytryyypyyy pyyymyyygyyyjyyy nyyy w prryyycyy." (Hargrimm, ich wódz, przekazuje nam słowo Milczącego Króla. Kościotrupy pomagają nam w pracy.)~ */
  IF ~~ THEN REPLY #22326 /* ~"Opowiedz mi o Hargrimmie."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"Kto inny zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"Głyyydnyyyy, zyyywszyyy glyyydnyyy." (Głodne... zawsze głodne.)~ */
  IF ~~ THEN REPLY #22332 /* ~"Kto inny zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"Nyyy myyyy. Gyyylyyyy szczyyygyyyjyyy." (Nie ma. Ghule ścigają.)~ */
  IF ~~ THEN REPLY #22336 /* ~"Opowiedz mi o ghulach."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"Kto inny zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"Yyyyyyhhh?" (Tak?)~ */
  IF ~~ THEN REPLY #22341 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"Opowiedz mi o Hargrimmie."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"Opowiedz mi o Soem."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"Opowiedz mi o Akaście."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~"Myyylczyyncyyy Kryyyyl." (Milczący Król.)~ */
  IF ~~ THEN REPLY #22349 /* ~"Tak, co możesz mi o nim powiedzieć?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"Mniejsza o to. Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~"Myyylczyyncyyy Kryyyyl." (Milczący Król.)~ */
  IF ~~ THEN REPLY #22354 /* ~"Co o nim wiesz?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"Mniejsza o to. Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~"Myyylczyyncyyy Kryyyyl." (Milczący Król.)~ */
  IF ~~ THEN REPLY #22359 /* ~"Zatem mniejsza o to. Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"Zatem mniejsza o to. Mam jeszcze kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"Zatem mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~"Hyyyyyrgryyyym, yyych wyyyydz przyyykyyzyyyje nyyym słyyyywyyy Myyyylczyyyncyygy Kryyylyyy. Yyyyn zmyyrtwyynyyy, zyyysmyyycyyynyy." (Hargrimm, wódz szkieletów, przekazuje nam słowo Milczącego Króla. On zmartwiony. Zasmucony.)~ */
  IF ~~ THEN REPLY #22363 /* ~"Dlaczego jest zasmucony?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"Syyyygyyyy Akyyystyyy." (Soe. Akasta.)~ */
  IF ~~ THEN REPLY #22368 /* ~"Dlaczego martwi się z powodu Soego?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"Dlaczego martwi się z powodu Akasty?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"Syyyygyyyy czczyyczczy smyyyrcz." (Soe czci śmierć.)~ */
  IF ~~ THEN REPLY #22374 /* ~"Czci śmierć?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"Chcyyyy zyyybyyyszmyyyy yymyyyyrlyy." (Chce, żebyśmy umarli.)~ */
  IF ~~ THEN REPLY #22379 /* ~"Dlaczego chce, żebyście umarli?"~ */ JOURNAL #22385 /* ~Czerstwa Mary powiedziała mi, że Hargrimm, najwyższy kapłan Milczącego Króla, jest zmartwiony z powodu Grabarza Soego. Soe starał się przekonać innych nieumarłych, by porzucili 'życie' i zaakceptowali Prawdziwą Śmierć.~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"Yyyyyn gryyyybyyyyszsz." (On Grabarz.)~ */
  IF ~~ THEN REPLY #22388 /* ~"Dlaczego Hargrimm martwi się z powodu Akasty?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"Akkkyyystyyyyy. Gnyyyywwww." (Akasta... Gniew.)~ */
  IF ~~ THEN REPLY #22397 /* ~"Gniew?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"Yyyyykyyystyyyy chcyyy wszyyyyyyskyych zyyybyyycz." (Akasta chce wszystkich zabić.)~ */
  IF ~~ THEN REPLY #22403 /* ~"Dlaczego Akasta chce wszystkich zabić?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"Głyyydnnyyyy zyyyłyyyyy." (Głodna. Zła)~ */
  IF ~~ THEN REPLY #22409 /* ~"Dlaczego Hargrimm smuci się z powodu Soego?"~ */ JOURNAL #22413 /* ~Czerstwa Mary powiedziała mi że Hargrimm - najwyższy kapłan Milczącego Króla martwi się o Akastę. Jest to ghulica sprawiająca wrażenie jakby chciała zabić i pożreć wszystko w Ziemiach Umarłych.~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"Głyyydnnyyyy zyyyłyyyyy." (Głodna. Zła)~ */
  IF ~~ THEN REPLY #22414 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"Yyyyyn gryyyybyyyyszsz." (On Grabarz.)~ */
  IF ~~ THEN REPLY #22420 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"Czyr-czyr-czyr-stwy Myyryyy." (Czerstwa Mary.)~ */
  IF ~~ THEN REPLY #22426 /* ~"Co ty tutaj robisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"Skąd się tutaj wzięłaś"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~Nyyypryyywdyyy myyyrtwyyy (Naprawdę martwi.)~ */
  IF ~~ THEN REPLY #22436 /* ~"Opowiedz mi o innych zombie."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"Nyyyy, wyyybyyyycz." (Nie, wybacz.)~ */
  IF ~~ THEN REPLY #22442 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~Zombica wzrusza ramionami "Spyyyytyyy Hyyyyrgyyymy." (Spytaj Hargrimma.)~ */
  IF ~~ THEN REPLY #22447 /* ~"Opowiedz mi o Hargrimmie."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"Zmyyyrlyyym dyywnyyy tyymyy. Pyyyymyyycz odyyyszlyyy." (Zmarłam dawno temu. Pamięć odeszła.)~ */
  IF ~~ THEN REPLY #22454 /* ~"Co ty tutaj robisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"Opowiedz mi o kimś innym."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"A cyyy?" (A co?)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Mary, muszę jak najszybciej opuścić to miejsce. Czeka na mnie tak wiele spraw... Jak można było uwięzić mnie jedynie dlatego, że akurat tutaj zawędrowałem? To bardzo niesprawiedliwe. Proszę. Okaż mi odrobinę współczucia. Pomożesz mi?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Mary, muszę jak najszybciej opuścić to miejsce. Czeka na mnie tak wiele spraw... Jak można było uwięzić mnie jedynie dlatego, że akurat tutaj zawędrowałem? To bardzo niesprawiedliwe. Proszę. Okaż mi odrobinę współczucia. Pomożesz mi?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"Teraz mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"Dlyyyczyyygyyy?" (Dlaczego?)~ */
  IF ~~ THEN REPLY #22468 /* ~"Muszę opuścić to miejsce."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"Teraz mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"Nyyyyy." (Nie.)~ */
  IF ~~ THEN REPLY #22478 /* ~"Zatem mam jeszcze kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~Widzisz Czerstwą Mary. Kiedy zaś zombica wreszcie cię dostrzega cicho jęczy : "Wyyyytyyyyy..."~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"Akurat tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~Widzisz Czerstwą Mary. Kiedy zaś zombica wreszcie cię dostrzega cicho jęczy "Wyyyytyyyyy..." (Witaj.)~ */
  IF ~~ THEN REPLY #22484 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"Akurat tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~Zombica milczy przez chwilę, a potem kiwa głową. Wskazuje na pierwszy z trzech portali położonych na północnej ścianie. "Zyyymnyyy yczyyy. Pyyymyysz yy Myyyylczyyyncyy Kryylyyy. Przyyyyjcz pszyyyysz pyyylnyyycnyyy zyyyhyynyyy alkyywyyy. Alyyyyy byyycz tyym dyyypyyytyyy dyyypyyykyyy yyy żyyyyjyy." (Zamknij oczy. Pomyśl o Milczącym Królu. Przejdź przez północno-zachodnią alkowę. Ale tylko dopóki ja żyję.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Dzięki, Mary. Żegnaj."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~Czerstwa Mary powiedziała mi, że chcąc dostać się do sali tronowej Milczącego Króla, mogę skorzystać z portalu w jej komnacie. Zanim wejdę do alkowy w północno-zachodnim narożniku muszę zamknąć oczy i pomyśleć o Milczącym Królu. Portal powinien działać tak długo jak długo żyć będzie Czerstwa Mary.~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Dzięki, Mary. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"Dyyygyy." (Długo.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~Czerstwa Mary odzywa się ciężkim głosem: "Anyyyy jyyyy." ("Ani ja.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"Tyyyych." (Tak.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~Czerstwa Mary wydaje słaby bulgot.~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"Twyyy pszyyyjyyyczyy? Wyyyysz myyyjyyy czyyyszkyyyy..." (Twój przyjaciel? Weź moją czaszkę.) Czerstwa Mary chwyta obiema dłońmi swoją za głowę.~ */
  IF ~~ THEN REPLY #50846 /* ~"Mam wziąć twoją... czaszkę? Ależ taki dar zabije cię."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"Hm... no dobrze. Dziękuję..."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"Poczekaj... Mam jeszcze kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"Pomówimy o tym później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~Mary powoli chwieje swoją głową z boku na bok. Jej postrzępiona usta układają się w coś na kształt smutnego uśmiechu. "Zyyybyyyxz? Nyyy. Jyyystyyym jyyssz myyyrtwyyy." (Zabić? Nie. Jestem już martwa.) Jej ręce wciąż ściskają głowę. Oczekuje na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #50851 /* ~"Dzięki, Mary. Zabiorę twoją czaszkę do Lotara."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"Nie, Mary, po prostu nie mogę tego zrobić. Znajdę jakiś inny sposób."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~Mary kiwa głową. "Myyysz dyyybryyy syyrcyyy." (Masz dobre serce.)~ */
  IF ~~ THEN REPLY #50855 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"Żegnaj, Mary."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~W akompaniamencie obrzydliwego mokrego plaśnięcia, Czerstwa Mary wyrywa sobie głowę spomiędzy ramion. Zaraz po tym, jak przekazuje ci swoją czaszkę, jej przegniłe ciało rozlatuje się w stęchłą papkę.~ */
  IF ~~ THEN REPLY #50858 /* ~Odłóż głowę i odejdź.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~Mary wskazuje ruchem głowy podwójne drzwi położone na południowym krańcu sali tronowej. "Oddddydzzz tyyyryyyz. Pyyymyywyymyy pyyytyym." (Odejdź teraz. Pomówimy potem.)~ */
  IF ~~ THEN REPLY #58913 /* ~Odejdź.~ */ EXIT
END
