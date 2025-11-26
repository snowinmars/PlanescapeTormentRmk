// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~Widzisz mężczyznę w średnim wieku, w zakurzonym ubraniu. Nie wydaje się, by był najlepszego zdrowia. Jego skóra jest bladożółta, a na ramionach, tu i ówdzie, widać krosty.~ */
  IF ~~ THEN REPLY #36265 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Zignoruj tego mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~Odwraca się i zerka na ciebie spod swoich zapadniętych oczu, które zwężają się w miarę jak spogląda dokoła. "Czego chcesz?" Ma chrypkę.~ */
  IF ~~ THEN REPLY #36267 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~Zwraca na ciebie uwagę. "Dlaczego mnie niepokoisz? Czy wyglądam na oprowadzacza?"~ */
  IF ~~ THEN REPLY #36269 /* ~"Jesteś do dyspozycji."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"Wyglądasz na osobę obeznaną, od której mogę się coś nauczyć."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"Kto to jest oprowadzacz?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~Patrzy na ciebie i prycha. "Los mi sprzyja... teraz wynocha. Nie mam na to czasu." Odwraca się.~ */
  IF ~~ THEN REPLY #36273 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~Wzdycha. "Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #36274 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"Dobrze się czujesz?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"Co możesz powiedzieć mi o tej dzielnicy?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"Czy w okolicy jest coś ciekawego do zobaczenia?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"Szukam kogoś, kto zwie się Lotar albo Pan Kości..."~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"Miałem czaszkę, ale mi ją ukradziono. Wiesz może kto mógł to zrobić?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"Chcę zostać wojownikiem. Czy możesz mnie wyszkolić?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"Chce być lepszym wojownikiem. Czy możesz mi pomóc udoskonalić me umiejętności?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"Dziękuję. Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"Parę lat wypełnionych śmiercią niczemu nie zaradzi," Kaszle i spogląda w górę. "Ostatnio powietrze jest coraz gorsze w dzielnicy. Wychodzi mi na to, że powinno wszystko wrócić do normy, gdy w Wielkiej Kuźni się ustabilizuje... albo zawieje wiatr od Iglicy."~ */
  IF ~~ THEN REPLY #36281 /* ~"O co chodzi z tym powietrzem tutaj?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"Opowiedz mi Kuźni."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"O co chodziło z tymi wiatrami?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"Wszystko głównie przez portale." Ma atak kaszlu, po czym znowu zwraca uwagę na ciebie.~ */
  IF ~~ THEN REPLY #36286 /* ~"Co masz na myśli?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"Wiele drzwi do Sfer Niższych wpuszcza zanieczyszczone powietrze i wyziewy, i takie tam, nie wiadomo, z której warstwy otchłani. Dlatego też, to tutaj jest *niższą* dzielnicą." Śmieje się. "Wybranie się w te strony podobne jest do uczucia, które towarzyszy udławieniu. Sól, dym, ziele fajkowe... wszystko co ta Dzielnica wypluwa z siebie, to żółte dywany dymu i śmierdzącego siarką gazu." Uśmiecha się szczerbato. "Nieźle, co?"~ */
  IF ~~ THEN REPLY #36289 /* ~"A, tak... mówiłeś coś o Kuźni."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"Co mówiłeś o tych wiatrach?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"Centrum dzielnicy, mniej więcej. Patrz po kominach. Ci Bogowcy robią kupę rzeczy z żelaza, żadne cuda, ale się przydają. Bogowcy psują jednak powietrze."~ */
  IF ~~ THEN REPLY #36293 /* ~"Bogowcy?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"Co jest z tym powietrzem tutaj?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"Mówiłeś coś wcześniej o wiatrach."~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~"Wyznawcy. Ich leże jest w Wielkiej Kuźni, tłuką się, nucą i śpiewają te swoje chore głupoty opiewające ich ponadczasową Moc." Przewraca oczami wypluwając jakąś brązową masę. "Ich życie polega na cierpieniu i harówie... Ja haruję dwa razy tyle i ani mi się śni, być jakąś tam Mocą, rozumiesz mnie, trepie?" Śmieje się pusto.~ */
  IF ~~ THEN REPLY #36298 /* ~"O co chodzi z tym powietrzem tutaj?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"Mówiłeś coś wcześniej o wiatrach."~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"Czasem wiatry wieją od Iglicy, wypędzają stąd smog..." Spogląda do góry i kaszle. "...na chwilę."~ */
  IF ~~ THEN REPLY #36302 /* ~"O co chodzi z tym powietrzem tutaj?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"Opowiedz mi o tej Kuźni."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"Co..." Patrzy na ciebie jak na wariata. "Jesteś Tępakiem? Rzemieślnicy, sklepy, magazyny, wszyscy mają tutaj swoje leże." Patrzy na ciebie przez zmrużone, sczerwieniałe z lekka oczy . "Szukasz czegoś konkretnego?"~ */
  IF ~~ THEN REPLY #36306 /* ~"Co tu można robić?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~Mierzy cię wzrokiem przez chwilę, po czym znacząco patrzy. "Szukasz pewnie miejsca gdzie mógłbyś zahartować żelazo?" Jego śmiech zaczyna się łamać i zmieniać w kaszel "Tutaj niczego takiego nie znajdziesz; mógłbyś spróbować w leżach w innych dzielnicach. Jeżeli ci zależy."~ */
  IF ~~ THEN REPLY #36309 /* ~"Przepraszam?'~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"Mógłbym użyć trochę brzdęku."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"Chciałbym coś kupić."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~Znowu się śmieje i znowu ma atak kaszlu, większy nawet niż przedtem. "Wybacz śmiałku. Mniejsza z tym. Szukacz czegoś konkretnego?"~ */
  IF ~~ THEN REPLY #36314 /* ~"Przydałoby się trochę brzdęku."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"Chciałbym coś kupić."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"Jeśli szukasz pracy, tedy los ci nie sprzyja. Pracy ledwie dla tych, którzy tu mieszkają."~ */
  IF ~~ THEN REPLY #36318 /* ~"Chciałbym coś kupić."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"Mam jeszcze kilka innych pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"Jeśli chcesz kupić to czy owo, lub sprzedać jakiś lepszy towar, to radzę wybrać się na targ pod gołym niebem." Znowu zaczyna kaszleć.~ */
  IF ~~ THEN REPLY #36321 /* ~"Co możesz mi powiedzieć o targu?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"Mam jeszcze kilka innych pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~Posyła ci szelmowski uśmieszek. "Możesz tam kupić, lub sprzedać, trepie. To w końcu targ - cóż więcej mogę dodać?"~ */
  IF ~~ THEN REPLY #36325 /* ~"Mam kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"A prawda..." Skupia się przez chwilę. "Otóż, jest taka wieża. W śpiewce dużo się o niej mówi."~ */
  IF ~~ THEN REPLY #36327 /* ~"Opowiedz mi o wieży."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"Czy przychodzi ci jeszcze coś do głowy?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"Mam jeszcze kilka innych pytań dla ciebie..."~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"Ha!" Śmieje się, ale po chwili kaszle. "Jedna z bardziej przeklętych tajemnic tej Dzielnicy... po prostu, któregoś dnia, wiele lat temu zwaliła się do Sigil, nie wiadomo skąd i w jaki sposób, dostała się w to przeklęte miejsce. Zajmuje tylko miejsce i wygląda jak siedem nieszczęść... wszędzie są ślady po kwasie i broni... wygląda jakby widziała kilkaset wojen, naprawdę."~ */
  IF ~~ THEN REPLY #36331 /* ~"Czy przychodzi ci jeszcze coś do głowy?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"Mam jeszcze kilka innych pytań dla ciebie..."~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~Myśli przez chwilę, po czym wzrusza ramionami. Nic ciekawego, nie przychodzi mi do głowy."~ */
  IF ~~ THEN REPLY #36334 /* ~"Mam jeszcze kilka innych pytań dla ciebie..."~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~Wygląda na zdenerwowanego i zerka dookoła. "No... słyszałem o nim. I wiedz, że z nim się nie zadziera. Jego leże nosi nazwę *Kości Nocy* lub jakiejś podobnej bzdury."~ */
  IF ~~ THEN REPLY #36336 /* ~"Gdzie mogę znaleźć to miejsce?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~Marszczy brwi. "Teraz to już ryzykowna śpiewka... gdybym *miał* cokolwiek powiedzieć, czego nie zrobię, to powiedziałbym, byś rozejrzał się w tej dzielnicy za opustoszałym budynkiem. Może tam coś znajdziesz, co? Przeszywa cię wzrokiem. "Pamiętaj jednak, że ja ci tego nie mówiłem, jasne?"~ */
  IF ~~ THEN REPLY #36337 /* ~"Dziękuję. Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~Wygląda jakby poczuł się niezręcznie. "Szukasz czaszki, mam rację? Zatem, ja ci tego nie mówiłem, są jednak ludzie w tych stronach, którzy..." Rozgląda się. "Żyją ze zbierania głów zmarłych. Pracują dla hultaja o imieniu Lotar. Nazywają go *Panem Kości*."~ */
  IF ~~ THEN REPLY #36339 /* ~"Gdzie mogę znaleźć tego Lotara?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~Patrząc na ciebie, marszczy brwi. "Ktoś, do kogo wybierasz się z masą skurlonych, głupich pytań..." Gapi się na ciebie.~ */
  IF ~~ THEN REPLY #36341 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~Widzisz mężczyznę w średnim wieku, w zakurzonym ubraniu. "Znowu tutaj, co? Marszczy na ciebie brwi. "Co znowu?"~ */
  IF ~~ THEN REPLY #36343 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"Chcę zostać wojownikiem. Czy możesz mnie wyszkolić?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"Chce być lepszym wojownikiem. Czy możesz mi pomóc udoskonalić me umiejętności?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~Lekko ci się kłania. "Nazywam się Korur. W swoim czasie byłem niezłym wojownikiem..." Przerywa i wzdycha. "Cóż, to już tylko przeszłość, ciągle jednak znam parę sztuczek."~ */
  IF ~~ THEN REPLY #36345 /* ~"Czy możesz mnie nauczyć drogi wojownika?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"No... czemu nie. Jesteś pewien, że chcesz zrezygnować ze swojego obecnego zajęcia?~ */
  IF ~~ THEN REPLY #36347 /* ~"Tak, jest pewien."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"Nie, pozwól że się zastanowię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"Więc... W czym dokładnie chcesz się wyćwiczyć?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"Powiedz, czy jestem już gotowy na dalsze szkolenie?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"Powiedz, czy jestem już gotowy na dalsze szkolenie?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"Na razie nic. Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"Wszystko, czego cię mogę teraz nauczyć, już umiesz... wróć kiedy nabędziesz trochę więcej doświadczenia."~ */
  IF ~~ THEN REPLY #52340 /* ~"Świetnie. Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"Myślę, że mógłbym cię nauczyć czegoś więcej."~ */
  IF ~~ THEN REPLY #52342 /* ~"Jestem gotowy, czego możesz mnie nauczyć?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"Czego chcesz się nauczyć?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"Naucz mnie walczyć na pięści."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"Naucz mnie walczyć sztyletem."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"Naucz mnie walczyć pałką."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"Naucz mnie walczyć toporem."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"Naucz mnie walczyć młotem."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"Nie jestem w stanie dzisiaj trenować. Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"Twe umiejętności przewyższyły moje. Nie widziałem jeszcze, żeby ktoś tak dobrze walczył... jesteś może i jednym z najlepszych w Sferach."~ */
  IF ~~ THEN REPLY #52351 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"Na pięści, co? Dobra... Mogę cię nauczyć jeśli chcesz."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"Nie... jaką inną bronią możesz mnie jeszcze nauczyć władać?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"Nie, nie myślę, żebym chciał dziś trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"Sztyletem, co? Dobra... Mogę cię nauczyć jeśli chcesz."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"Nie... jaką inną bronią możesz mnie jeszcze nauczyć władać?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"Nie, nie myślę, żebym chciał dziś trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"Pałką, co? Dobra... Mogę cię nauczyć jeśli chcesz."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"Nie... jaką inną bronią możesz mnie jeszcze nauczyć władać?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"Nie, nie myślę, żebym chciał dziś trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"Toporem, co? Dobra... Mogę cię nauczyć jeśli chcesz."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"Nie... jaką inną bronią możesz mnie jeszcze nauczyć władać?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"Nie, nie myślę, żebym chciał dziś trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"Młotem, co? Dobra... Mogę cię nauczyć jeśli chcesz."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"Tak, chciałbym nauczyć się władać tą bronią."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"Nie... jaką inną bronią możesz mnie jeszcze nauczyć władać?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"Nie, nie myślę, żebym chciał dziś trenować. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"Dobra, zaczynamy... gotowy?"~ */
  IF ~~ THEN REPLY #52378 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"No... cóż, wydaje mi się, że to wszystko. Co teraz?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"Dziękuję. Chciałbym nauczyć się walczyć inną bronią, gdybyś mógł mnie nauczyć."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"Dziękuję. Chciałbym nauczyć się walczyć inną bronią, gdybyś mógł mnie nauczyć."~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"Dziękuję. To wszystko co chciałem dzisiaj wiedzieć."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"Cóż... Nie mogę cię na razie niczego więcej nauczyć. Do czasu, aż włożysz całe swoje serce, żeby być wojownikiem. Jeśli chcesz być lepszy musisz się *wyspecjalizować* jako wojownik. Na razie brak ci tego oddania rzemiosłu walki. Będziesz się mógł ode mnie czegoś nauczyć, kiedy zamienisz swe ciało w broń."~ */
  IF ~~ THEN REPLY #52384 /* ~"W porządku. Czym jeszcze możesz mnie nauczyć walczyć?"~ */ JOURNAL #68288 /* ~Powiedziano mi, że nie mogę pogłębić swojej znajomości oręża, dopóki nie wyszkolę się na wojownika. Tylko pełne poświęcenie się sztukom władania orężem, bez marnowania czasu na zajęcia złodziejskie czy czarodziejskie pozwoli mi na podwyższenie moich rycerskich kwalifikacji.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"Dziękuję. Żegnaj."~ */ JOURNAL #68288 /* ~Powiedziano mi, że nie mogę pogłębić swojej znajomości oręża, dopóki nie wyszkolę się na wojownika. Tylko pełne poświęcenie się sztukom władania orężem, bez marnowania czasu na zajęcia złodziejskie czy czarodziejskie pozwoli mi na podwyższenie moich rycerskich kwalifikacji.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~Patrzy na ciebie zdumiony. "Chcesz się nauczyć więcej? Przyjacielu, to wszystko czego można się było nauczyć o tej broni. Nikt w całych Sferach nie nauczy cię o niej więcej."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"Dziękuję. Chciałbym nauczyć się walczyć inną bronią, gdybyś mógł mnie nauczyć."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"Dziękuję. Chciałbym nauczyć się walczyć inną bronią, gdybyś mógł mnie nauczyć."~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"Dziękuję. To wszystko dziś, co chciałem wiedzieć."~ */ EXIT
END
