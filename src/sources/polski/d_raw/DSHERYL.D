// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHERYL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHERYL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64681 /* ~Widzisz urodziwą niewiastę odzianą w postrzępione szaty. Chodzi w kółko zamyślona i zmartwiona. Chyba w ogóle cię nie zauważyła.~ */
  IF ~~ THEN REPLY #64682 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #64683 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64684 /* ~Kiedy się odzywasz, kobieta wzdryga się i posyła ci badawcze spojrzenie. Czujesz jak jej wzrok prześlizguje się po twoich bliznach, a wyraz smutku na jej twarzy pogłębia się. "Ech... Witaj, śmiałku. Czym mogę ci służyć?"~ */
  IF ~~ THEN REPLY #64685 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64686 /* ~"Wydajesz się zmartwiona. Czy coś się stało?"~ */ GOTO 13
  IF ~~ THEN REPLY #64687 /* ~"Nie, nie jestem zainteresowany. Myślę, że już czas na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.2 8.2 11.1 12.1 13.1 20.0 23.0 29.1 30.1 31.0
  SAY #64688 /* ~"Pytania... Cóż, może okażę się pomocna." Milknie i czeka na twoje pytania.~ */
  IF ~~ THEN REPLY #64689 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #64690 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #64691 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~~ THEN REPLY #64692 /* ~"Wydajesz się zmartwiona. Czy coś się stało?"~ */ GOTO 13
  IF ~  Global("Mention_Catacombs","GLOBAL",1)
~ THEN REPLY #64693 /* ~"Napomknęłaś coś o katakumbach Łkających Kamieni. Możesz mi powiedzieć coś więcej o tym miejscu?"~ */ GOTO 29
  IF ~~ THEN REPLY #64694 /* ~"Nieważne. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64695 /* ~"Sheryl..." Kobieta wygląda na bardzo zmartwioną. "Mam na imię Sheryl."~ */
  IF ~~ THEN REPLY #64696 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64697 /* ~"Ach tak. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #64698 /* ~Kobieta długo zwleka z odpowiedzią. "Nic. Naprawdę nic takiego. Po prostu..." Wzrusza ramionami i odwraca oczy. Masz wrażenie, że coś ukrywa.~ */
  IF ~~ THEN REPLY #64699 /* ~"Hmm... Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64700 /* ~"Cóż, czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #64701 /* ~"Jesteś tu nowy?" Kobieta posyła ci zagadkowe spojrzenie, a potem wzdycha. "No jasne, że tak. Przepraszam. Jak mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #64702 /* ~"Szukam osoby o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 6
  IF ~~ THEN REPLY #64703 /* ~"Czy możesz mi powiedzieć o tym miejscu?"~ */ GOTO 12
  IF ~~ THEN REPLY #64704 /* ~"Hmm. Mniejsza z tym. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64705 /* ~"Nieważne. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #64706 /* ~"Farod..." Na dźwięk tego imienia kobieta nieruchomieje na chwilę, ale szybko to skrywa. "Znam go... Jesteś jego przyjacielem?"~ */
  IF ~~ THEN REPLY #64707 /* ~"Tak. Mamy ze sobą wiele wspólnego..."~ */ GOTO 7
  IF ~~ THEN REPLY #64708 /* ~"Nie, po prostu chciałbym z nim porozmawiać."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64709 /* ~Kobieta krzywi się i kiwa głową. "Zatem twój *przyjaciel* przebywa gdzieś na północ stąd. A teraz już czas na mnie. Żegnaj." Masz wrażenie, że kobieta nie zamierza już reagować na żadne próby wznowienia rozmowy.~ */
  IF ~~ THEN REPLY #64710 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64711 /* ~Kobieta patrzy na ciebie przez chwilę, a potem uśmiecha się. "Ach tak... Cóż, on przebywa gdzieś na północ stąd. Poszukaj przejścia, przed którym stoją dwa rzezimieszki. Mam wrażenie, że tam go znajdziesz."~ */
  IF ~~ THEN REPLY #64712 /* ~"Odnoszę wrażenie, że Farod nie jest osobą szczególnie bliską twojemu sercu."~ */ GOTO 9
  IF ~~ THEN REPLY #64713 /* ~"Masz jeszcze coś więcej do powiedzenia na temat tego miejsca?"~ */ GOTO 12
  IF ~~ THEN REPLY #64714 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64715 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64716 /* ~"Nie." Kobieta milknie na chwilę, a potem wzdycha. "On jest tutaj kimś w rodzaju samozwańczego władcy. Każdy wykonuje jego polecenia, wszyscy płacą mu haracz. A jeżeli ktoś nie zechce podporządkować się jego woli, to..." Kobieta wzrusza ramionami.~ */
  IF ~~ THEN REPLY #64717 /* ~"Haracz? Niby za co?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64718 /* ~Kobieta rozgląda się dookoła nerwowo, a potem przysuwa się do ciebie i szepcze. "Na południowy wschód stąd znajdują się katakumby Łkających Kamieni. Farod posyła tam swoich zbieraczy, żeby ograbiali zmarłych ze wszelkich kosztowności. Większość z tych skarbów trafia do jego rąk."~ */
  IF ~~ THEN REPLY #64719 /* ~"Nie przerywaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64720 /* ~Kobieta wzrusza ramionami. "Farod się bogaci, a jego Zbieracze... cienko przędą. Wszędzie jest ta sama historia. Bogaci się bogacą, a biedni biednieją."~ */
  IF ~~ THEN REPLY #64721 /* ~"Czy możesz mi powiedzieć coś o tym miejscu?"~ */ GOTO 12
  IF ~~ THEN REPLY #64722 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64723 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 8.1 11.0
  SAY #64724 /* ~"Nie. Po prostu musisz uważać. I nie nadużywaj słowa 'przyjaciel'. To wszystko."~ */
  IF ~~ THEN REPLY #64725 /* ~"Szukam osoby o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 6
  IF ~~ THEN REPLY #64726 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64727 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.3
  SAY #64728 /* ~Kobieta początkowo ociąga się z odpowiedzią, ale wkrótce potem mówi z powagą. "Chodzi o mojego ojca, Arkina... On zaginął i teraz nie wiem, co robić. Tracę już zmysły ze zmartwienia."~ */
  IF ~~ THEN REPLY #64729 /* ~"Jeżeli powiesz mi, co się stało, to może będę w stanie ci pomóc."~ */ DO ~SetGlobal("Mention_Catacombs","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #64730 /* ~"Hmm. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64731 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 24.1 25.1
  SAY #64732 /* ~"Na południowy wschód stąd znajdują się katakumby Łkających Kamieni. Miejsce to odwiedza wielu Zbieraczy. Między innymi również mój ojciec..." Kobieta wygląda na zakłopotaną. "Cóż... Zbieracze ograbiają zmarłych z kosztowności. Podczas jednej z takich łupieżczych wypraw, mój ojciec znalazł coś w rodzaju zapisu, z którego dowiedział się, że w Katakumbach są krypty, do których dotrzeć można tylko przez portale..." Kobieta milknie.~ */
  IF ~~ THEN REPLY #64733 /* ~"Nie przerywaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64734 /* ~"Mój ojciec doszedł do wniosku, że krypty te musiały być przeznaczone dla szczególnie wysoko postawionych osobistości... Bogaczy, wielmożów, kogo tam jeszcze... Tak czy siak, krypty te na pewno są też pułapką na grobowych rabusiów..."~ */
  IF ~~ THEN REPLY #64735 /* ~"Pułapką? W jakim sensie?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64736 /* ~"Do krypt tych można dostać się tylko przez portal. I wydostać się z nich można też tylko przez portal. Sęk w tym, że nie przez ten sam portal. Dlatego nawet jeżeli ktoś będzie miał przy sobie klucz do portalu wejściowego, znajdzie się w pułapce, jeżeli nie będzie miał przy sobie klucza do portalu wyjściowego..." Kobieta milknie, aby jej słowa zrobiły na tobie większe wrażenie.~ */
  IF ~~ THEN REPLY #64737 /* ~"Więc sądzisz, że twój ojciec został uwięziony w którejś z takich krypt?"~ */ GOTO 17
  IF ~~ THEN REPLY #64738 /* ~"A czy twój ojciec znalazł te klucze?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64739 /* ~Kobieta milknie i marszczy brwi w zamyśleniu. "Nie jestem pewna, ale to niewykluczone. Zawsze bardzo ekscytował się na myśl o tym, co też takiego może ukrywać taka krypta. Wciąż poszukiwał kluczy do portalu."~ */
  IF ~~ THEN REPLY #64740 /* ~"Czy twój ojciec odnalazł klucze?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #64741 /* ~"Możliwe. Powiedział mi, że musi się zobaczyć z tutejszą wiedźmą, kobietą o imieniu Ulthera. Chciał ją poprosić, aby czarodziejskim sposobem odgadła, jaki przedmiot służy za klucz wejściowy, a jaki za wyjściowy..."~ */
  IF ~~ THEN REPLY #64742 /* ~"Czy to naprawdę możliwe?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64743 /* ~Kobieta wzdycha. "Nie wiem. Naprawdę sprawa ta mnie nie ciekawi. Obawiam się jedynie, że tej Ultherze faktycznie udało się odgadnąć, co jest kluczem wejściowym do portalu, ale niepoprawnie określiła klucz wyjściowy. Chciała od niego jak najszybciej zainkasować zapłatę i nie interesowało jej, czy wróci stamtąd, czy nie. Albo na przykład celowo nie podała mu właściwego klucza powrotnego, żeby tam umarł z głodu, a ona by wtedy sama zbadała kryptę i zagarnęła tamtejsze skarby."~ */
  IF ~~ THEN REPLY #64744 /* ~"Nie próbowałaś sama z nią porozmawiać?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64745 /* ~Kobieta posyła ci zakłopotane spojrzenie, a potem odwraca się. "Hmm... Tak. Wydaje się mi się, że trochę poniosły mnie nerwy i nieco ją rozzłościłam. Dlatego Ulthera nie zechce już ze mną rozmawiać" Patrzy na ciebie z nadzieją. "Może byś tak odszukał ją dla mnie i porozmawiał z nią?"~ */
  IF ~~ THEN REPLY #64746 /* ~"Hmm. Pomyślę o tym, a tymczasem pozwól, niechaj spytam o coś innego..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #64747 /* ~"Nie. Nie chcę się do tego mieszać."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #64748 /* ~"Dobrze, pomogę ci. Powiedz mi tylko, gdzie mogę znaleźć tę czarownicę?"~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Młoda niewiasta o imieniu Sheryl martwi się o jej zaginionego ojca. Sheryl obawia się, że jej ojciec mógł wpaść w pułapkę w krypcie. Można się tam dostać tylko poprzez portal. Sheryl chce, abym porozmawiał z wiedźmą o imieniu Ulthera, która, w opinii Sheryl, dała jej ojcu klucz do portalu. Zgodziłem się spełnić prośbę zrozpaczonej dziewcznyny.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #64749 /* ~Kobieta marszczy brwi. "Ach tak. Cóż, dziękuję, że zechciałeś mnie wysłuchać. Zawsze to miło powiedzieć komuś, co leży na sercu. Wybacz, ale czas już na mnie."~ */
  IF ~~ THEN REPLY #64750 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 25.2
  SAY #64751 /* ~Dziewczyna wyraźnie rozluźnia się. Posyła ci wdzięczny uśmiech. "Wielkie dzięki. Trudno mi wprost powiedzieć, jak wiele to dla mnie znaczy... Czarownica Ulthera spaceruje gdzieś tutaj po mieście. Z tego co wiem, Ulthera nie ma jakiejś stałej siedziby. Poszukaj jej proszę i spytaj ją o mojego ojca."~ */
  IF ~~ THEN REPLY #64752 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #64753 /* ~Widzisz Sheryl. Chodzi w kółko z zamyśloną i zmartwioną miną. Na twój widok uśmiecha się blado. "Witaj ponownie, śmiałku. Co tam?"~ */
  IF ~~ THEN REPLY #64754 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64755 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 25 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #64756 /* ~Widzisz Sheryl. Chodzi w kółko z zamyśloną i zmartwioną miną. Na twój widok uśmiecha się blado. "Witaj znowu, śmiałku. Czy może zmieniłeś zdanie i zdecydowałeś się pomóc mi w odnalezieniu ojca?"~ */
  IF ~~ THEN REPLY #64757 /* ~"Nie. Ciągle się nad tym zastanawiam. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #64758 /* ~"A na czym polegał twój problem? Bo coś nie potrafię sobie przypomnieć."~ */ GOTO 14
  IF ~~ THEN REPLY #64759 /* ~"Tak. Przemyślałem całą sprawę i zdecydowałem się ci pomóc."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Młoda niewiasta o imieniu Sheryl martwi się o jej zaginionego ojca. Sheryl obawia się, że jej ojciec mógł wpaść w pułapkę w krypcie. Można się tam dostać tylko poprzez portal. Sheryl chce, abym porozmawiał z wiedźmą o imieniu Ulthera, która, w opinii Sheryl, dała jej ojcu klucz do portalu. Zgodziłem się spełnić prośbę zrozpaczonej dziewcznyny.~ */ GOTO 22
END

IF WEIGHT #2 /* Triggers after states #: 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #64760 /* ~Widzisz Sheryl. Chodzi w kółko z zamyśloną i zmartwioną miną. Na twój widok uśmiecha się blado. "Witaj znowu, śmiałku. Wiem, że nie zgodziłeś się mi pomóc, ale może byś jeszcze zastanowił się nad tym i jednak pomógł mi odszukać mojego ojca?"~ */
  IF ~~ THEN REPLY #64761 /* ~"Nie. Nie chcę się do tego mieszać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #64762 /* ~"A na czym polegał twój problem? Bo coś nie potrafię sobie przypomnieć."~ */ GOTO 14
  IF ~~ THEN REPLY #64763 /* ~"Tak. Przemyślałem całą sprawę i zdecydowałem się ci pomóc."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Młoda niewiasta o imieniu Sheryl martwi się o jej zaginionego ojca. Sheryl obawia się, że jej ojciec mógł wpaść w pułapkę w krypcie. Można się tam dostać tylko poprzez portal. Sheryl chce, abym porozmawiał z wiedźmą o imieniu Ulthera, która, w opinii Sheryl, dała jej ojcu klucz do portalu. Zgodziłem się spełnić prośbę zrozpaczonej dziewcznyny.~ */ GOTO 22
END

IF WEIGHT #1 /* Triggers after states #: 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #64764 /* ~Widzisz Sheryl. Chodzi w kółko z zamyśloną i zmartwioną miną. Na twój widok uśmiecha się blado i odzywa niespokojnym głosem. "Witaj znowu, śmiałku. I co? Dowiedziałeś się czegoś o moim ojcu?"~ */
  IF ~  !PartyHasItem("Arkring")
~ THEN REPLY #64765 /* ~"Nie, ale cały czas nad tym pracuję. Żegnaj."~ */ EXIT
  IF ~  PartyHasItem("Arkring")
~ THEN REPLY #64766 /* ~"Znalazłem ten pierścień przy zwłokach w krypcie, do której można dostać się tylko przez portal. Pomyślałem, że może należał do twojego ojca..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",4)
DestroyItemObject("Arkring",Protagonist,TRUE)
~ JOURNAL #64786 /* ~Przy ciele znajdującym się w krypcie, do której dostać można się jedynie przez portal, znalazłem pierścień. Pokazałem ten pierścień Sheryl, a ona stwierdziła, że przedmiot ten należał do jej ojca.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #64767 /* ~Sheryl bierze z twoich rąk pierścień, a jej oczy wypełniają się łzami. Szybko je jednak wyciera, a na jej twarzy pojawia się wymuszony uśmiech. "To pierścień mojego ojca. Dziękuję, śmiałku. Świadomość tego, że nie wiem co się z nim stało, była nie do zniesienia. Teraz już przynajmniej spoczywa dla mnie w pokoju. Ale za to co dla mnie zrobiłeś, nie potrafię odwdzięczyć ci się inaczej, jak zwykłym podziękowaniem."~ */
  IF ~~ THEN REPLY #64768 /* ~"Twoja wdzięczność mi wystarczy, Sheryl. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sheryl_Quest","GLOBAL",4)
~ THEN BEGIN 28 // from:
  SAY #64769 /* ~Widzisz Sheryl. Kobieta podnosi wzrok, kiedy do niej podchodzisz i uśmiecha się. "Witaj, śmiałku. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #64770 /* ~"W niczym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.4
  SAY #64771 /* ~"Katakumby... Jeśli tam trafisz, zachowaj dużą ostrożność. Osobiście nigdy tam nie byłam, ale mówiono mi, że krypty zamieszkują rozmaite stwory."~ */
  IF ~~ THEN REPLY #64772 /* ~"A jakie to stwory?"~ */ GOTO 30
  IF ~~ THEN REPLY #64773 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64774 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64775 /* ~"Cóż, są tam przede wszystkim nieumarli. Zombie i kościotrupy. I rogate jaszczury. Straszne w boju, z tego co wiem. Och, są tam też fruwające głowy. Na nie powinieneś szczególnie uważać."~ */
  IF ~~ THEN REPLY #64776 /* ~"Fruwające głowy?"~ */ GOTO 31
  IF ~~ THEN REPLY #64777 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64778 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64780 /* ~Kobieta wzrusza ramionami. "Wiem, że to brzmi nieprawdopodobnie. Ale, jak już wcześniej mówiłam, sama nigdy tam nie byłam, a tylko rozmawiałam ze Zbieraczami, którzy odwiedzają to miejsce. Jeden z nich napomknął coś o fruwających głowach."~ */
  IF ~~ THEN REPLY #64781 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64782 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END
