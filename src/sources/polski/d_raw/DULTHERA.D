// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DULTHERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DULTHERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64787 /* ~Widzisz niemłodą, tłustą kobietę, odzianą w postrzępione szaty. Wydaje się, że bez żadnego celu snuje się ulicami, mamrocząc coś do siebie. Kiedy cię dostrzega, posyła ci uroczy uśmiech, w którym prezentuje znaczne braki w uzębieniu. "Przyszedłeś do Ulthery, czyż nie? Co stara Ulthera może dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #64788 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #64789 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64790 /* ~"Tak, tak. Witaj mi, witaj..." Starucha spogląda na ciebie uważnie, a jej uśmiech rozszerza się. "Rzadko tacy jak ty nawiedzają Ultherę. Czego ci potrzeba?"~ */
  IF ~~ THEN REPLY #64791 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64792 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.2 8.1 9.0 12.1 13.2 14.1 15.1 16.1 17.1 18.1 24.0 30.0
  SAY #64793 /* ~"Zatem pytaj, nie ociągaj się."~ */
  IF ~~ THEN REPLY #64794 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #64795 /* ~"Co tutaj robisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #64796 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 13
  IF ~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN REPLY #64797 /* ~"Chciałbym spytać o Arkina, ojca Sheryl."~ */ GOTO 16
  IF ~~ THEN REPLY #64798 /* ~"Niczego. Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64799 /* ~"Nie dosłyszałeś, co powiedziałam? Może w uszach też masz kupę blizn i przez to jesteś półgłuchy?" Starucha wyciąga szyję i przypatruje się uważnie twoim uszom. "Ech! Mniejsza o to. Jam jest Ulthera. Ulthera zwana wiedźmą."~ */
  IF ~~ THEN REPLY #64800 /* ~"Jesteś wiedźmą?"~ */ GOTO 4
  IF ~~ THEN REPLY #64801 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64802 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64803 /* ~Starucha wybucha jazgotliwym śmiechem, który sprawia twoim uszom dotkliwy ból. "Ależ oczywiście, że nie, trepie. Ludzie nie rozumieją Ulthery. Myślą, że jest szalona, dziwna. Myślą, że jest wiedźmą. To wszystko."~ */
  IF ~~ THEN REPLY #64804 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64805 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #64806 /* ~"Czym zajmuje się Ulthera?" Starucha marszczy brwi i jej twarz przeistacza się w jedną wielką masę zmarszczek. "Ulthera pomaga odnajdywać zgubione przedmioty. Ludziska przychodzą do Ulthery i zadają jej pytania. A Ulthera odnajduje rzeczy, których ludzie poszukują."~ */
  IF ~~ THEN REPLY #64807 /* ~"Straciłem swoją pamięć. Czy możesz ją dla mnie odnaleźć?"~ */ GOTO 6
  IF ~~ THEN REPLY #64808 /* ~"Straciłem swoje imię. Czy możesz je dla mnie odnaleźć?"~ */ GOTO 10
  IF ~~ THEN REPLY #64809 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64810 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64811 /* ~Starucha krzywi się na moment i wyciąga zasuszoną dłoń. "Dłoń. Pokaż Ultherze dłoń."~ */
  IF ~~ THEN REPLY #64812 /* ~Podaj jej rękę.~ */ GOTO 7
  IF ~~ THEN REPLY #64813 /* ~Odsuń się.~ */ GOTO 30
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64814 /* ~Wyciągasz do Ulthery rękę. Przez chwilę nie dzieje się nic. Nagle jednak czujesz w swoim umyśle czyjąś obecność, jakby jakaś ciekawska istota sięgnęła ku twoim najskrytszym myślom. Uczucie to jest osobliwe i wręcz przerażające. Twoja dusza instynktownie spręża się, próbując wyprzeć intruza ze swoich granic. Słyszysz, jak Ulthera krztusi się, kiedy puszcza twoją dłoń.~ */
  IF ~~ THEN REPLY #64815 /* ~"Więc?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64816 /* ~"Uch... Dziwnyś jest zaprawdę..." Starucha kręci głową ze smutkiem. "Ulthera nie wie, co z tobą. Twoja pamięć jest raczej ukryta niźli zgubiona... Albo może raczej znajduje się w czyimś władaniu... Ulthera wyczuwa w tobie wielką przepaść..." Starucha wzdycha. "Ulthera nie jest w stanie nic poradzić. Twój przypadek jest specjalny. Wymyka się zwykłym środkom zaradczym."~ */
  IF ~~ THEN REPLY #64817 /* ~"Nie rozumiem, o co ci chodzi? Nie możesz wysławiać się jaśniej?"~ */ GOTO 9
  IF ~~ THEN REPLY #64818 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64819 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #64820 /* ~Starucha prycha i potrząsa głową. "Ulthera wie jeszcze mniej, niż ty. Wybacz starej kobiecie. Ulthera nie potrafi ci pomóc."~ */
  IF ~~ THEN REPLY #64821 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64822 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #64823 /* ~Starucha krzywi się na moment i wyciąga zasuszoną dłoń. "Dłoń. Pokaż Ultherze dłoń."~ */
  IF ~~ THEN REPLY #64824 /* ~Podaj jej rękę.~ */ GOTO 11
  IF ~~ THEN REPLY #64826 /* ~Odsuń się.~ */ GOTO 30
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64825 /* ~Wyciągasz do Ulthery rękę. Przez chwilę nie dzieje się nic. Nagle jednak czujesz w swoim umyśle czyjąś obecność, jakby jakaś ciekawska istota sięgnęła ku twoim najskrytszym myślom. Uczucie to jest osobliwe i wręcz przerażające. Twoja dusza instynktownie spręża się, próbując wyprzeć intruza ze swoich granic. Słyszysz, jak Ulthera krztusi się, kiedy puszcza twoją dłoń.~ */
  IF ~~ THEN REPLY #64827 /* ~"Więc?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #64828 /* ~"Uch... Dziwnyś jest zaprawdę..." Starucha kręci głową ze smutkiem. "Ulthera nie wie, co z tobą, Twoje imię nie zostało zagubione, ale raczej dobrowolnie porzucone... Bezimienny jesteś i bezimiennym pozostaniesz. Taki był twój wybór. Ulthera nie może na to nic poradzić."~ */
  IF ~~ THEN REPLY #64829 /* ~"Nie rozumiem, o co ci chodzi? Nie możesz wysławiać się jaśniej?"~ */ GOTO 9
  IF ~~ THEN REPLY #64830 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64831 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #64832 /* ~Strarucha rozgląda się po okolicy i uśmiecha. "To królestwo Faroda. Zwie się Zakopaną Wioską... Ponad wioską leży Sigil, a pod wioską katakumby... Poza tym Ultherze nic więcej nie wiadomo..."~ */
  IF ~~ THEN REPLY #64833 /* ~"Poszukuję Faroda. Gdzie mogę go znaleźć?"~ */ GOTO 14
  IF ~~ THEN REPLY #64834 /* ~"Opowiedz mi o katakumbach..."~ */ GOTO 15
  IF ~~ THEN REPLY #64835 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64836 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #64837 /* ~"Musisz pójść w kierunku północy i wschodu. Ulthera nie wie, gdzie dokładnie leży to miejsce. Farod ma swoich strażników, tedy strażników będziesz musiał poszukać. Jeśli na nich trafisz, wówczas na pewno w pobliżu będzie bawił Farod."~ */
  IF ~~ THEN REPLY #64838 /* ~"Wspomniałaś coś o katakumbach? Możesz powiedzieć mi o nich coś więcej?"~ */ GOTO 15
  IF ~~ THEN REPLY #64839 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64840 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #64841 /* ~Kobieta wygląda na zmartwioną. "To krypty umarłych. Mówią na nie katakumby Łkających Kamieni. Zamieszkują tam nieumarli, przechadzają się po podziemnych salach... Tedy jeśli chcesz tam wędrować, miej się na baczności." Starucha wykonuje niezbyt precyzyjny ruch ręką. "Jeżeli szukasz Katakumb Łkających Kamieni, trzeba ci iść na południe i na wschód."~ */
  IF ~~ THEN REPLY #64842 /* ~"Wspomniałaś coś o Farodzie. Gdzie mogę go odnaleźć?"~ */ GOTO 14
  IF ~~ THEN REPLY #64843 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64844 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.3
  SAY #64845 /* ~"Och. Przysłała cię tutaj ta dziewka Sheryl!" Wypowiedź jej ma raczej formę kategorycznego stwierdzenia, niż pytania. Starucha przez chwilę milczy, mierząc cię spojrzeniem. "A cóż chcesz wiedzieć o Arkinie?"~ */
  IF ~~ THEN REPLY #64846 /* ~"Sheryl powiedziała, że Arkin zaginął. Bardzo się o niego martwi."~ */ GOTO 17
  IF ~~ THEN REPLY #64847 /* ~"Nieważne. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64848 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64849 /* ~Starucha powoli kiwa głową. "O tak... Zaginął on... A ta głupia dziewka przyszła do Ulthery i przymówiła jej... Co ja mówię! Oskarżyła Ultherę... Oskarżyła ją o nieudolność... Och! Ulthera czuje się bardzo dotknięta!"~ */
  IF ~~ THEN REPLY #64850 /* ~"Na pewno możesz wybaczyć ostre słowa dziecku zrozpaczonemu po utracie ojca."~ */ GOTO 18
  IF ~~ THEN REPLY #64851 /* ~"Nieważne. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64852 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #64853 /* ~Ulthera patrzy na ciebie gniewnie, ale niebawem wściekłość jej przechodzi i kiwa przyjaźnie głową. "Dobrze... Dobrze. Ulthera nie jest pamiętliwa, a młodzież przecie bywa krewka i nie zawsze liczy się ze słowami. Jak Ulthera może ci pomóc?"~ */
  IF ~~ THEN REPLY #64854 /* ~"Arkin poszukiwał kluczy do portalu. O ile mi wiadomo, przyszedł do ciebie, abyś pomogła mu je odszukać, czy nie?"~ */ GOTO 19
  IF ~~ THEN REPLY #64855 /* ~"Nieważne. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64856 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64857 /* ~"Och tak." Starucha kiwa głową. "Arkin przybył do Ulthery i poprosił ją, aby wywróżyła mu, jakie przedmioty będą kluczami... Żeby odnalazła dla niego zgubione klucze. Klucze stracone dla czasu, klucze stracone dla człowieka. A Ulthera powiedziała Arkinowi, gdzie ma szukać tych kluczy. Ulthera dała mu te klucze. A Arkin je wziął."~ */
  IF ~~ THEN REPLY #64858 /* ~"Więc czym są te klucze?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64859 /* ~"Och... Ulthera ma te klucze. Klucze to proste rzeczy." Starucha zaczyna grzebać w kieszeniach i przetrząsać ich zawartość. Po chwili na jej oblicze wstępuje radosny uśmiech. "Jest. Oto klucz wejściowy..." Ulthera wręcza ci świecznik.~ */
  IF ~~ THEN REPLY #64860 /* ~"...a klucz wyjściowy?"~ */ DO ~GiveItemCreate("Candle",Protagonist,1,0,0)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #64861 /* ~Z sobie tylko wiadomego powodu starucha zanosi się histerycznym śmiechem. "O tak. Klucz wyjściowy. Klucz wyjściowy to pusta sakiewka. Tak tak... Musisz wyjść z grobowca z pustą sakiewką..." Ulthera wręcza ci pustą sakiewkę.~ */
  IF ~~ THEN REPLY #64862 /* ~"A teraz wszystko, czego potrzebuję to dokładne określenie miejsca portalu. Zatem gdzie to jest?"~ */ DO ~GiveItemCreate("Purse",Protagonist,1,0,0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #64863 /* ~Starucha znów zanosi się śmiechem i wzrusza ramionami. "Ulthera nie wie. Nie wiadomo. Arkin wiedział, ale nie Ulthera." Ulthera przybiera uroczystą minę i ścisza głos do szeptu. "Ulthera może ci pomóc to odnaleźć, ale musisz w zamian przynieść jej coś."~ */
  IF ~~ THEN REPLY #64864 /* ~"Czego potrzebujesz?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #64865 /* ~Ulthera przytyka kościsty palec do policzka. "Hmm. Będziesz musiał odnaleźć jakiś miły grób. I przynieść stamtąd dla Ulthery kość z człowieczej nogi. Dzięki temu Ulthera powie ci, gdzie jest portal. A teraz już idź!"~ */
  IF ~~ THEN REPLY #64866 /* ~"Dobrze, Ulthero. Przyniosę ci tę kość z ludzkiej nogi. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, wiedźma, dała mi klucze do portalu, który przebył Arkin, ojciec Sheryl. Klucz wejściowy stanowi lichtarz, a klucz wyjściowy pusta sakiewka. Niestety Ulthera nie zna lokalizacji tego portalu. W związku z tym poprosiła mnie, abym znalazł kość z ludzkiej nogi. Stwierdziła, ze za pomocą tej kości będzie w stanie namierzyć portal. No cóż, zgodziłem się.~ */ EXIT
  IF ~~ THEN REPLY #64867 /* ~"Nie ma mowy. Nie podejmę się tego. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64868 /* ~"Hmm... Będę się musiał nad tym jeszcze zastanowić. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #64869 /* ~Widzisz Ultherę, wioskową wróżbitkę. Na twój widok, czarownica macha sękatą ręką. "Och... Wróciłeś do Ulthery... Czego ci potrzeba?"~ */
  IF ~~ THEN REPLY #64870 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64871 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #64872 /* ~Widzisz Ultherę, wioskową wróżbitkę. Na twój widok, czarownica macha sękatą ręką. "Och... Wróciłeś do Ulthery... Namyśliłeś się, co? Odszukaj dla Ulthery kość z człowieczej nogi, a Ulthera odnajdzie dla ciebie portal. Co ty na to?"~ */
  IF ~~ THEN REPLY #64873 /* ~"Dobrze, Ulthero. Przyniosę ci tę kość z ludzkiej nogi. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, wiedźma, dała mi klucze do portalu, który przebył Arkin, ojciec Sheryl. Klucz wejściowy stanowi lichtarz, a klucz wyjściowy pusta sakiewka. Niestety Ulthera nie zna lokalizacji tego portalu. W związku z tym poprosiła mnie, abym znalazł kość z ludzkiej nogi. Stwierdziła, ze za pomocą tej kości będzie w stanie namierzyć portal. No cóż, zgodziłem się.~ */ EXIT
  IF ~~ THEN REPLY #64874 /* ~"Nie ma mowy. Nie podejmę się tego. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64875 /* ~"Przemyślę to. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #64876 /* ~Widzisz Ultherę, wioskową wróżbitkę. Na twój widok, czarownica macha sękatą ręką. "Och... Wróciłeś do Ulthery... Nie chciałeś jej pomóc, ale teraz namyśliłeś się, co? Odszukaj dla Ulthery kość z człowieczej nogi, a Ulthera odnajdzie dla ciebie portal. Co ty na to?"~ */
  IF ~~ THEN REPLY #64877 /* ~"Dobrze, Ulthero. Przyniosę ci tę kość z ludzkiej nogi. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, wiedźma, dała mi klucze do portalu, który przebył Arkin, ojciec Sheryl. Klucz wejściowy stanowi lichtarz, a klucz wyjściowy pusta sakiewka. Niestety Ulthera nie zna lokalizacji tego portalu. W związku z tym poprosiła mnie, abym znalazł kość z ludzkiej nogi. Stwierdziła, ze za pomocą tej kości będzie w stanie namierzyć portal. No cóż, zgodziłem się.~ */ EXIT
  IF ~~ THEN REPLY #64878 /* ~"Nie ma mowy. Nie podejmę się tego. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #64879 /* ~"Przemyślę to. Żegnaj."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #64880 /* ~Widzisz Ultherę, wioskową wróżbitkę. Na twój widok, czarownica macha sękatą ręką. "Och... Wróciłeś do Ulthery... Zgodziłeś się pomóc. Odszukaj dla Ulthery kość z człowieczej nogi, a Ulthera odnajdzie dla ciebie portal. Masz tę kość?"~ */
  IF ~  !PartyHasItem("Legclub")
~ THEN REPLY #64881 /* ~"Nie, jeszcze nie. Ciągle jej szukam. Żegnaj."~ */ EXIT
  IF ~  PartyHasItem("Legclub")
~ THEN REPLY #64882 /* ~"Proszę, oto i kość. A teraz powiedz mi, gdzie leży portal."~ */ DO ~DestroyItemObject("Legclub",Protagonist,TRUE)
SetGlobal("Ulthera_Quest","GLOBAL",4)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #64883 /* ~Ulthera rozgląda się ostrożnie na wszystkie strony i wyjmuje ci z rąk kość. Przyciska kość do piersi i zaczyna kołysać ją, podśpiewując. Jej głos stopniowo napełnia się niepokojem, ale jednocześnie coraz bardziej cichnie, aż staje się niemal niedosłyszalny. Wreszcie, odkaszlnąwszy, czarownica pokazuje kością w kierunku północno-zachodnim. "Tak, to będzie na północ i na zachód stąd. Niedaleko wejścia do miasta. Masz, coś chciał od Ulthery, tedy idź!"~ */
  IF ~~ THEN REPLY #64884 /* ~"Dziękuję, Ulthero. Żegnaj."~ */ JOURNAL #64936 /* ~Znalazłem dla Ulthery kości z nogi i poprosiłem ją, żeby pomogła znaleźć mi miejsce, gdzie znajduje się portal, z którego korzystał Arkin. Wiedźma zaczęła przydługą i nudnawą śpiewkę, ale wreszcie wydusiła z siebie, że portal znajduje się na północny-zachód od jej siedziby, niedaleko wejścia do Zakopanej Wioski. Mam nadzieję, że jej wskazówki są trafne.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ulthera_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #64885 /* ~Widzisz Ultherę, wioskową wróżbitkę. Na twój widok, czarownica macha sękatą ręką. "Och... Wróciłeś do Ulthery... Czego ci potrzeba?"~ */
  IF ~~ THEN REPLY #64886 /* ~"Właściwie to niczego mi nie trzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 6.1 10.1
  SAY #64932 /* ~Ulthera krzywi się do ciebie i kładzie ręce na biodrach. "Boisz się starej kobiety? Boisz się, że Ulthera cię pogryzie? Zatem dajmy temu spokój. Chcesz jeszcze czegoś innego?"~ */
  IF ~~ THEN REPLY #64933 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64934 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END
