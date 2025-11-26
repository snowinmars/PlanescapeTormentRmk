// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~Widzisz brudnego mężczyznę, wiek i przebywanie w ciemności sprawiły, że jest przygarbiony i opryskliwy. Uważnie cię ogląda; tłuste strąki włosów opadają mu na ramiona, a oczy rozszerzają się pod wpływem strachu. Jego palce zaczynają układać się w tajemne znaki...~ */
  IF ~~ THEN REPLY #57263 /* ~"Wszystko w porządku... Nie zrobię ci krzywdy."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Zaatakuj go, zanim dokończy zaklęcie.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Poczekaj i zobacz, co się stanie.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~Pustelnik odsuwa się od ciebie, jego ręce zaczynają układać się w tajemne znaki. "Odjedź, ty upadła isto... ach, to ty. Czego znów chcesz od starego pustelnika, co?"~ */
  IF ~~ THEN REPLY #57267 /* ~"Opowiedz mi o sobie jeszcze raz."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"Szukam devy."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"Ach, następny gość, co? Wszyscy chcą przestraszyć starego pustelnika na śmierć, co? Te tunele, to nie miejsce na wiosenną przechadzkę. Czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #57272 /* ~"Szukam devy."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"Nie twoja sprawa."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"Potrzebuję miejsca, gdzie mógłbym odpocząć."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~Wzdycha głośno, przywołuje się do porządku, a potem rozgląda się dziko. "Przybyłem do Klątwy, ponieważ mój bóg został wygnany do Tartaru. Wciąż się do niego zbliżam, ale nie zamierzam iść za nim do sfery więziennej. Próbuję znaleźć sposób, by go wydostać. Skoro jest mocą dobra, nie powinien tam być, ale myślę, że właśnie na tym polega wygnanie."~ */
  IF ~~ THEN REPLY #57278 /* ~"Jak długo już tu jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"Czy przypadkiem nie widziałeś tu devy?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"Co w ogóle możesz mi powiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"Jesteś kapłanem? Czy możesz mnie uleczyć?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"O tym miejscu? Jest pełne potworów, przestępców - nie jestem jednym z nich - i innych ludzi, którzy lubią ranić. I tak jest bezpieczniejsze niż miasto nad nami. Przynajmniej tutaj, na dole, wiesz na czym stoisz. A tam, w górze? Nie."~ */
  IF ~~ THEN REPLY #57284 /* ~"Co tu właściwie robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"Widziałeś gdzieś tu devę?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"Stary pustelnik go nie widział, ale słyszał jakieś plotki. Myślałem, że może jest w podziemiu, ponieważ tam zamknięte jest całe dobro, ale wciąż nie mogę go znaleźć. Gdybym mógł, spytałbym czy słyszał o moim bogu." Wydaje z siebie westchnienie, patrząc w dół korytarza. "W jakiś sposób, czuję, że jest gdzieś na zachód stąd. Ale jeszcze go nie znalazłem. Musi tam być jakiś strażnik." Mruga porozumiewawczo.~ */
  IF ~~ THEN REPLY #57288 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"Co tu właściwie robisz?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"Dzięki. Żegnaj."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"Hmm! Podkradać się do starego człowieka bez powodu. Odejdź!" Macha rękami i znów zaczyna się oddalać.~ */
  IF ~~ THEN REPLY #57292 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"Za długo, za długo, w służbie zapomnianego boga. A jednak go pamiętam... Odnajdę go, choćbym po wsze czasy miał unikać tutejszych potworów. Odnajdę go." Patrzy w dal, mamrocząc.~ */
  IF ~~ THEN REPLY #57294 /* ~"Dziękuję, że poświęciłeś mi trochę czsu. Żegnaj."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~Widzisz brudnego mężczyznę, wiek i przebywanie w ciemności sprawiły, że jest przygarbiony i opryskliwy. Rozgląda się; tłuste strąki włosów opadają mu na ramiona. Na twój widok wyrzuca z siebie, "Kyse dozorca powiedział mi, że przyjdziesz. Deva jest silny, wędrowcze, silny, a ty lepiej nie podpisuj na siebie wyroku śmierci i nie walcz z nim. Możesz go osłabić, zmniejszając chaos w mieście... On się nim karmi."~ */
  IF ~~ THEN REPLY #57296 /* ~"Skąd to wiesz?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"I tak idę do góry."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"Zejdź mi z drogi, starcze."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~Widzisz brudnego mężczyznę, wiek i przebywanie w ciemności sprawiły, że jest przygarbiony i opryskliwy. Rozgląda się; tłuste strąki włosów opadają mu na ramiona. Na twój widok wyrzuca z siebie, "Kyse dozorca powiedział mi, że przyjdziesz. Deva jest wciąż silny, przybyszu, ale to, co zrobiłeś trochę go spowolniło. Możesz go bardziej osłabić, dalej zmniejszając chaos w mieście... On się nim karmi."~ */
  IF ~~ THEN REPLY #57300 /* ~"Skąd to wiesz?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"Jestem gotów, by stawić mu czoło."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"Zejdź mi z drogi, starcze."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~Widzisz brudnego mężczyznę, wiek i przebywanie w ciemności sprawiły, że jest przygarbiony i opryskliwy. Rozgląda się; tłuste strąki włosów opadają mu na ramiona. Na twój widok wyrzuca z siebie: "Kyse dozorca powiedział mi, że przyjdziesz. Dobrze się spisałeś... Chaos w mieście powoli ustępuje, a plan devy nie działa zbyt dobrze. Idź i dokończ to, co zacząłeś."~ */
  IF ~~ THEN REPLY #57304 /* ~"Skąd to wiesz?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"Dobrze. Żegnaj."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~Widzisz starego pustelnika z podziemi. Na twój widok wyrzuca z siebie: "Kyse dozorca powiedział mi, że przyjdziesz. Deva jest silny, przybyszu, silny, a ty lepiej nie podpisuj na siebie wyroku śmierci i nie walcz z nim. Możesz go osłabić, zmniejszając chaos w mieście... On się nim karmi."~ */
  IF ~~ THEN REPLY #57307 /* ~"Skąd to wiesz?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"I tak idę do góry."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"Zejdź mi z drogi, starcze."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~Widzisz starego pustelnika z podziemi. Na twój widok wyrzuca z siebie: "Kyse dozorca powiedział mi, że przyjdziesz. Deva jest wciąż silny, przybyszu, ale to, co zrobiłeś trochę go spowolniło. Możesz go bardziej osłabić, dalej zmniejszając chaos w mieście... On się nim karmi."~ */
  IF ~~ THEN REPLY #57311 /* ~"Skąd to wiesz?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"Jestem gotów, by stawić mu czoło."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"Zejdź mi z drogi, starcze."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~Widzisz starego pustelnika z podziemi. Na twój widok wyrzuca z siebie: "Kyse dozorca powiedział mi, że przyjdziesz. Dobrze się spisałeś... Chaos w mieście powoli ustępuje, a plan devy nie działa zbyt dobrze. Idź i dokończ to, co zacząłeś."~ */
  IF ~~ THEN REPLY #57315 /* ~"Skąd to wiesz?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"Dobrze. Żegnaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"*Czuję* go, tam na górze, jak pełza, niczym płonący księżyc. *Słyszę* jak zastanawia się, kiedy przyjdziesz. Marzy o walce."~ */
  IF ~~ THEN REPLY #57319 /* ~"Już wkrótce się doczeka, ale jeszcze nie teraz. Żegnaj."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"A więc dostanie to."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"Zanim pójdziesz... czy przyjmiesz błogosławieństwo od starego człowieka? Może ci się przyda, gdy staniesz przeciwko niemu oraz innym straszydłom, którym może będziesz musiał stawić czoło. Czy chcesz, abym cię uzdrowił?"~ */
  IF ~~ THEN REPLY #57322 /* ~"Nie, dziękuję."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"Nie. Zejdź mi z drogi."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"Tak."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"Tak."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~Kładzie zaskakująco silną dłoń na twojej piersi. "Zanim pójdziesz, czy przyjmiesz moje błogosławieństwo? Nie podoba mi się twoja pokryta bliznami twarz, ale muszę upewnić się, że pójdziesz przygotowany... nie chodzi tylko o ciebie. Pozwól, bym uleczył twe rany."~ */
  IF ~~ THEN REPLY #57327 /* ~"Nie chcę twoich błogosławieństw. Zejdź mi z drogi."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"W porządku."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"W porządku."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"Pamiętaj o tym, gdy będziesz przed nim leżał, krwawiąc." Na jego twarzy pojawia się grymas. "Te słowa sprawiają mi ból, ale życzę ci szczęścia."~ */
  IF ~~ THEN REPLY #57332 /* ~"Tak, dziękuję. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"Niech i tak będzie. Nie zawiedź, człowieku pokryty bliznami." Kłania się.~ */
  IF ~~ THEN REPLY #57335 /* ~"Dzięki. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~Zamyka oczy, koncentruje się i mówi: "Pozwól, bym uleczył twe rany." Otwiera oczy. "A teraz, idź już."~ */
  IF ~~ THEN REPLY #57340 /* ~"Dzięki."~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"Kto mnie potrzebuje?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"Ja."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"Anna."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"Nie-Sława."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"Nikt z nas. Ale dzięki za błogosławieństwo. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"Gotowe. Są jeszcze inni ranni?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"Ja."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"Anna."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"Nie-Sława."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"Nikt z nas. Ale dziękuję za błogosławieństwo. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"Tak? No dobra. Jest tu takie miejsce, gdzie możesz odpocząć... Dam ci znać, jak pokażą się jakieś potwory."~ */
  IF ~~ THEN REPLY #32017 /* ~"Dzięki."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
