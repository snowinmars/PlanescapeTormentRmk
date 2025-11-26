// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1094.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1094~

IF ~  Global("Asonje","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6562 /* ~Ten chodzący trup ma numer "1094" wygrawerowany na czole, usta zaszyte mocną nicią, a w unoszącej się wokół niego chmurze można wyczuć smród świeżej formaliny. Pomimo bladych i zapadłych rysów twarzy, oraz pozbawionych życia białych oczu, jest rzeczą oczywistą, że kiedyś był to przystojny młodzieniec.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6565 /* ~"Więc jak... widziałeś, aby działo się tutaj coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6566 /* ~"Więc jak... widziałeś, aby działo się tutaj coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6567 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6568 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ DO ~SetGlobal("Asonje","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6569 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6570 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6563 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6571 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6564 /* ~Trup drży przez chwilę, potem uspokaja się, a jego dusza z powrotem wlatuje do swej niegdysiejszej powłoki. W mgnieniu oka jakiś pozór życia pojawia się w oczach zombiaka i zaczyna on rozglądać się z wyrazem zdumienia na twarzy. Całe jego ciało wydaje się spowijać miękka, złocista poświata.~ */
  IF ~~ THEN REPLY #6572 /* ~"Pragnę ci zadać pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #9246 /* ~Zostaw ducha w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9224 /* ~Wydaje się, że duch nagle cię dostrzega. Posyła ci rozbrajająco przyjazny, szeroki uśmiech, przez co puszczają mu wszystkie szwy wokół ust. Przez chwilę jest zaskoczony. Ręką dotyka ust, wzrusza ramionami i kiwa głową na powitanie. "Gdzie... gdzie ja jestem? To takie dziwaczne miejsce. Czy ja cię znam?" Cicho pokasłuje, pocierając swoje zesztywniałe gardło.~ */
  IF ~~ THEN REPLY #9247 /* ~"Duchu, jesteś tu, aby odpowiadać na *moje* pytania."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Asonje_1","GLOBALGood",-1)
SetGlobal("Asonje","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #9248 /* ~"Ty... albo przynajmniej twoje szczątki... są w kostnicy."~ */ GOTO 13
  IF ~~ THEN REPLY #9249 /* ~"Wątpię, byś mnie znał. A teraz mam dla ciebie pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9250 /* ~"Wątpię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9225 /* ~Przyjazne zachowanie ducha znika w mgnieniu oka. Przez chwilę marszczy brwi, a z jego szarych, uschniętych ust zwisają strzępy porwanych szwów. "Doskonale, pytaj o co chcesz." Odwraca wzrok, ewidentnie znudzony.~ */
  IF ~~ THEN REPLY #9251 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #9252 /* ~"Skąd pochodzisz?"~ */ GOTO 6
  IF ~~ THEN REPLY #9253 /* ~"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"~ */ GOTO 7
  IF ~~ THEN REPLY #9254 /* ~"Gdzie ty jesteś... gdzie teraz zamieszkuje twoja dusza?"~ */ GOTO 8
  IF ~~ THEN REPLY #9255 /* ~"Co wiesz na temat tego miejsca?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9256 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9257 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #9226 /* ~"Nazywałem się Asonje. Czy mogę odejść?"~ */
  IF ~~ THEN REPLY #9258 /* ~"Nie, mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9259 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 11.1
  SAY #9227 /* ~"Nie pamiętam. Coś jeszcze?"~ */
  IF ~~ THEN REPLY #9260 /* ~"Tak, mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9261 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 11.2
  SAY #9228 /* ~Duch wzrusza ramionami i patrzy do góry, na niebo. "Nie powiedziałbym. Ale jakie to ma znaczenie?" Zaciska usta nieszczęśliwie i patrzy na ciebie twardo, zaś w jego oczach dostrzegasz groźne błyski. "Czy potrzebujesz ode mnie czegoś jeszcze?"~ */
  IF ~~ THEN REPLY #9262 /* ~"Tak, mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9263 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 11.3
  SAY #9229 /* ~"Moja dusza przebywa w Arborei..." Na chwilę przerywa, zagubiony w czułym wspomnieniu. "Nawet teraz tęskno mi do tamtejszego domu, z dala od twojego samolubnego, nierozważnego i raczej nudnego węszenia. Czy wolno mi tam powrócić?"~ */
  IF ~~ THEN REPLY #9264 /* ~"Nie, mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9265 /* ~"Tak, idź. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 11.4
  SAY #9230 /* ~Duch spogląda na ciebie z rozpaczą. "Oczywiście, że nic!" Potrząsa głową, zagniewany, a zerwane szwy kołyszą się wraz z ruchem jego głowy.~ */
  IF ~~ THEN REPLY #9266 /* ~"W takim razie jak to się stało, że twoje zwłoki są tutaj i pracują w tych posępnych gmaszyskach?"~ */ GOTO 12
  IF ~~ THEN REPLY #9267 /* ~"Mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9268 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5 11.5
  SAY #9231 /* ~"Nie." Nie wydaje się, aby duch zwracał na ciebie uwagę.~ */
  IF ~~ THEN REPLY #9269 /* ~"W takim razie mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9270 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
  SAY #9232 /* ~Duch wydaje głośne westchnienie, wraz z którym powietrze wypełnia woń formaliny z jego płuc. "Tak... tak... pytaj."~ */
  IF ~~ THEN REPLY #9271 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #9272 /* ~"Skąd pochodzisz?"~ */ GOTO 6
  IF ~~ THEN REPLY #9273 /* ~"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"~ */ GOTO 7
  IF ~~ THEN REPLY #9274 /* ~"Gdzie ty jesteś... gdzie teraz zamieszkuje twoja dusza?"~ */ GOTO 8
  IF ~~ THEN REPLY #9275 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9276 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9277 /* ~"Nic to, nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #9233 /* ~"Zgadujesz równie dobrze jak ja, prostaku. Chciałbym już odejść, za twym przyzwoleniem."~ */
  IF ~~ THEN REPLY #9278 /* ~"Nie, mam następne pytanie..."~ */ GOTO 11
  IF ~~ THEN REPLY #9279 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY #9234 /* ~Trawi to przez chwilę w myśli, potem śmieje się. "Tak! To miałoby sens, nieprawdaż? No dobrze, czy ja ciebie znam?" Przekrzywia głowę w jedną stronę, wpatrując się w ciebie intensywnie. Wydaje się, że rozpoznanie twojej tożsamości jest dla niego czymś w rodzaju zabawnej gry.~ */
  IF ~~ THEN REPLY #9280 /* ~"Nie, wątpię, byś mnie znał. A teraz mam dla ciebie następne pytanie..."~ */ GOTO 14
  IF ~~ THEN REPLY #9281 /* ~"Wątpię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2 13.0
  SAY #9235 /* ~Duch wzrusza ramionami i uśmiecha się, chichocząc łagodnie. "Być może masz rację! O co to chcesz mnie spytać?" W roztargnieniu zaczyna szarpać za porwane szwy z warg i zrzuca je na podłogę, jedną po drugiej.~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9282 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9286 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~~ THEN REPLY #9287 /* ~"Skąd pochodzisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #9288 /* ~"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"~ */ GOTO 17
  IF ~~ THEN REPLY #9317 /* ~"Gdzie ty jesteś... gdzie teraz zamieszkuje twoja dusza?"~ */ GOTO 18
  IF ~~ THEN REPLY #9318 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9319 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 20
  IF ~~ THEN REPLY #9320 /* ~"Nic to, nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 22.0
  SAY #9236 /* ~"Nazywałem się Asonje. Czy mógłbym poznać twoje imię?"~ */
  IF ~~ THEN REPLY #9289 /* ~"Ja... ja nie wiem."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #9290 /* ~"Powiem ci następnym razem. Mam pytanie..."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #9291 /* ~"Może następnym razem. Żegnaj."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 22.2
  SAY #9237 /* ~"Pochodzę z wielu miejsc! Tak naprawdę, nie znam swego miejsca urodzenia. W mym życiu sporo podróżowałem i wiele miejsc nazywałem swoim domem. A teraz cała Arborea jest przedmiotem mych badań..." Wydaje się, że duch jest z siebie zadowolony.~ */
  IF ~~ THEN REPLY #9292 /* ~"Rozumiem. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9293 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3 22.3
  SAY #9238 /* ~Uśmiech ducha gaśnie i przez chwilę wygląda na zmartwionego. "Dziwne... Nie wiem! Naprawdę nie jestem pewny, w jaki sposób umarłem." Wzrusza ramionami. "Nieważne!" Jego ucieszny szeroki uśmiech powraca, jakiś taki rozjaśniony, mimo że wydaje się przyklejony do jego wyschniętej twarzy.~ */
  IF ~~ THEN REPLY #9294 /* ~"Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9295 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4 22.4
  SAY #9239 /* ~"Arborea! Nie śmiałbym prosić o cudowniejsze miejsce. Nigdzie w trakcie mojego śmiertelnego życia nie znalazłem miejsca o tak wielkiej namiętności... takiej wspaniałości..." Na chwilę przerywa, zagubiony w przyjemnym wspomnieniu. "Piękno tej krainy, ludzie - to po prostu wspaniałe. Zaprawdę powiadam ci, tęsknię doń nawet teraz!"~ */
  IF ~~ THEN REPLY #9296 /* ~"Rozumiem. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9297 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5 22.5
  SAY #9240 /* ~"Niewiele. Podpisałem kontrakt z Grabarzem pod wpływem kaprysu... wskazała mi to straszliwe miejsce i powiedziała, że kiedyś moje ciało zostanie wskrzeszone i będzie używane jako pracownik. Pomyślałem sobie: Nie będzie mi ono już potrzebne, kiedy zacznę inne życie - więc czemu nie? Równie dobrze mogę wziąć miedziaki i wydać je na kobiety i wino!" Chichocze na samą myśl o tym, a w jego oczach błyskają wesołe ogniki.~ */
  IF ~~ THEN REPLY #9298 /* ~"Czy wiesz coś na temat miasta wokół Kostnicy?"~ */ GOTO 24
  IF ~~ THEN REPLY #9299 /* ~"Rozumiem. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9300 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6 22.6
  SAY #9241 /* ~Duch zastanawia się przez chwilę. "Nie, obawiam się, że nie słyszałem o tym człowieku. To twój przyjaciel?"~ */
  IF ~~ THEN REPLY #9301 /* ~"Być może. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9302 /* ~"Nie wiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0
  SAY #9242 /* ~Wydaje się być zdziwiony. "To dziwne! Wstyd, doprawdy. Muszę cię *jakoś* nazywać, nieprawdaż?" Duch spogląda na ciebie wyczekująco.~ */
  IF ~~ THEN REPLY #9303 /* ~"Z pewnością coś wymyślisz. Mam pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9304 /* ~Wymyśl jakieś imię: "Nie wiem... może 'Adahn'?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #9305 /* ~"Nie, to nie jest ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
  SAY #9243 /* ~"Naturalnie. Pytaj!" Uśmiecha się z zadowoleniem, oczekując na twoje pytania z zainteresowaniem. Jako że ostatnie szwy już popuściły, jego szeroki uśmiech nie jest już niesamowity.~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9306 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9307 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~~ THEN REPLY #9308 /* ~"Skąd pochodzisz?"~ */ GOTO 16
  IF ~~ THEN REPLY #9309 /* ~"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"~ */ GOTO 17
  IF ~~ THEN REPLY #9310 /* ~"Gdzie ty jesteś... gdzie teraz zamieszkuje twoja dusza?"~ */ GOTO 18
  IF ~~ THEN REPLY #9311 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9312 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 20
  IF ~~ THEN REPLY #9321 /* ~"Nic to, nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #9244 /* ~Wyczuwając twoją frustrację, duch śmieje się serdecznie. "Biedny skurl! W takim razie niech będzie Adahn, przyjacielu. No, masz dla mnie jakieś pytanie?"~ */
  IF ~~ THEN REPLY #9313 /* ~"Tak..."~ */ GOTO 22
  IF ~~ THEN REPLY #9314 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.0
  SAY #9245 /* ~"Co, Sigil?" Widząc twoje potakujące skinienie głowy, uśmiech truposza przeistacza się w szeroki, szelmowski grymas. "O, nie zepsuję ci tej przyjemności! Idź zbadaj to miejsce samemu! Zgub się w tych uliczkach, oberżach, wśród tych ludzi... ale uważaj! Może to być zarówno niebezpieczne, jak i wspaniałe miejsce. To właśnie czyni je tak ekscytującym, nieprawdaż?"~ */
  IF ~~ THEN REPLY #9315 /* ~"Chyba... chyba tak. Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9316 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1 22.1
  SAY #9283 /* ~"Nazywałem się Asonje."~ */
  IF ~~ THEN REPLY #9284 /* ~"Mam następne pytanie..."~ */ GOTO 22
  IF ~~ THEN REPLY #9285 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Asonje","GLOBAL",0)
GlobalLT("Asonje","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #20061 /* ~"Znów tu jesteś, co?" Uśmiecha się szeroko.~ */
  IF ~~ THEN REPLY #20063 /* ~"Mam kilka pytań..."~ */ GOTO 22
  IF ~~ THEN REPLY #20064 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Asonje","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #20062 /* ~"Och, to ty... znowu." Marszczy brwi i odwraca wzrok.~ */
  IF ~~ THEN REPLY #20065 /* ~"Mam kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #20066 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END
