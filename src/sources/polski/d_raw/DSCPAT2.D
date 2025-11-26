// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Ignus","GLOBAL",1)
NearbyDialog("DIgnus")
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Kiedy podchodzisz do kobiety, aby z nią porozmawiać, oczy Ignusa rozbłyskują. Zanim możesz go powstrzymać, obejmuje ją. Ona odwzajemnia jego uścisk, zatracając się w jego płomieniach. Nie krzyczy. Jej ostatni obraz wypala ci się w pamięci: jej oczy pełne są płomiennej namiętności i wszechogarniającej miłości. Nic z niej nie pozostaje - nie ma nawet popiołu.~ */
  IF ~~ THEN REPLY #10815 /* ~"Ignusie, to było dokładne i szybkie. Chciałem z nią porozmawiać."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
SetAnimState(Myself,ANIM_MIMEDIE)
SetGlobal("Drusilla","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10816 /* ~Jest to kobieta z bladymi siniakami na twarzy i ramionach. W jej zapadniętych oczach widać rozpaczliwą tęsknotę. Może kiedyś była ładna, ale te dni już dawno minęły. Powoli się odwraca i staje z tobą twarzą w twarz. Jej rysy nabierają życia. Wesołe iskierki tańczące w jej oczach każą ci zastanowić się, czy twoje oczy przypadkiem cię nie oszukały. "Witaj Pod Gorejącym Człekiem, człowieku z bliznami."~ */
  IF ~~ THEN REPLY #10817 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10818 /* ~"Szukam dziennika. Czy może gdzieś go widziałaś?"~ */ GOTO 4
  IF ~~ THEN REPLY #10819 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10820 /* ~"Kim jest ten płonący osobnik przy wejściu?"~ */ JOURNAL #68053 /* ~Drusilla, niewiasta stojąca w pobliżu wyjścia z gospody "Pod Gorejącym Człekiem" opowiedziała mi o człowieku płonącym nad rusztem. Jego imię brzmi Ignus i był on najprawdopodobniej najpotężniejszym magiem, jaki na przestrzeni ostatnich kilku wieków pojawił się w Sigil. Jednakże jego konkurenci wepchnęli go w pasaż do Sfery Żywiołowego Ognia, dlatego teraz trwa pogrążony w magicznym letargu, utrzymując się przy życiu samą siłą koncentracji. Faktycznie, potężny z niego czarodziej..."~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10821 /* ~"Szukam Zbieracza o imieniu Farod. Czy widziałaś go albo słyszałaś o nim?"~ */ GOTO 19
  IF ~~ THEN REPLY #10822 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10823 /* ~Tym razem Drusilla wydaje się być trochę bardziej ożywiona - przynajmniej nie widzisz już tej rozpaczy, którą wyczułeś, gdy rozmawiałeś z nią po raz pierwszy. "Witem ponownie, podróżniku."~ */
  IF ~~ THEN REPLY #10824 /* ~"Witaj, Drusillo. Chcę, abyś mi odpowiedziała na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10825 /* ~"Witaj, Drusillo, i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 7.0
  SAY #10826 /* ~"Ja? Jestem Drusilla. A ty pewnie jesteś tępakiem. Nie pytaj, w jaki sposób do tego doszłam. Po prostu to widać gołym okiem."~ */
  IF ~~ THEN REPLY #10827 /* ~"Tępakiem? No, nie sądzę."~ */ GOTO 8
  IF ~~ THEN REPLY #10828 /* ~"No tak, gołym okiem. Zgadza się. Odpowiedz mi na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10829 /* ~"Nie chcę tego słyszeć. Zwłaszcza od ciebie. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 7.1
  SAY #10830 /* ~"Dziennik? A pewnie. Miałam na oku wszystkie zawieruszone dzienniki. Po prostu na wypadek, gdyby jakiś człowiek z bliznami przyszedł do mojej ulubionej gospody i zaczął się o nie rozpytywać. Czy zadajesz to pytanie wszystkim, których spotkasz? Cóż za fascynujące życie."~ */
  IF ~~ THEN REPLY #10831 /* ~"Masz gadane, co?"~ */ GOTO 9
  IF ~~ THEN REPLY #10832 /* ~"Po prostu odpowiedz na moje pytanie i miejmy to za sobą."~ */ GOTO 7
  IF ~~ THEN REPLY #10833 /* ~"Założę się, że daleko bardziej niż twoje."~ */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2 7.2
  SAY #10834 /* ~"To gospoda 'Pod Gorejącym Człekiem', chociaż ten, który się pali, jeszcze nie umarł. Po prostu utrzymuje się przy życiu w oczekiwaniu na pojawienie się kogoś, kto go wyratuje. Przychodzą tu popaprańcy, którzy uwielbiają widok ludzi pogrążonych w bólu. Demony też ją lubią. Przychodzą też i tacy, którym nie przeszkadza, że inni ich zaczepiają... sama nazwa trzyma z dala trepów i takich tam."~ */
  IF ~~ THEN REPLY #10835 /* ~"Kimże on jest?"~ */ JOURNAL #68053 /* ~Drusilla, niewiasta stojąca w pobliżu wyjścia z gospody "Pod Gorejącym Człekiem" opowiedziała mi o człowieku płonącym nad rusztem. Jego imię brzmi Ignus i był on najprawdopodobniej najpotężniejszym magiem, jaki na przestrzeni ostatnich kilku wieków pojawił się w Sigil. Jednakże jego konkurenci wepchnęli go w pasaż do Sfery Żywiołowego Ognia, dlatego teraz trwa pogrążony w magicznym letargu, utrzymując się przy życiu samą siłą koncentracji. Faktycznie, potężny z niego czarodziej..."~ */ GOTO 6
  IF ~~ THEN REPLY #10836 /* ~"Rozumiem. Odpowiedz jeszcze na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10837 /* ~"Nazwa dobrze pasuje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 5.0 7.4
  SAY #10838 /* ~Rozpacz, którą widziałeś wcześniej na jej twarzy, pojawia się tam znowu niczym cień z czarnymi skrzydłami. Twoja rozmówczyni opanowuje się. "To jest Ignus, jeden z największych czarnoksiężników, jacy kiedykolwiek wynurzyli się z tej kloaki. Złapali go i poprzez niego otworzyli kanał do Sfery Ognia. Teraz jest po prostu drzwiami do tej sfery i utrzymuje się przy życiu tylko siłą woli. Gdyby ktoś mógł go polać obficie wodą, przywróciłoby mu to życie - ale nie ma na tyle wody, aby to zrobić."~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10839 /* ~"A ta karafka? Wieść niesie, że jest niewyczerpana."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10840 /* ~"Ktoś powinien na coś natrafić. No, dobrze. Czy możesz odpowiedzieć na jeszcze parę pytań?"~ */ GOTO 7
  IF ~~ THEN REPLY #10841 /* ~"Co cię z nim łączy?"~ */ GOTO 18
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20699 /* ~"A ta karafka? Wieść niesie, że jest niewyczerpana."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10842 /* ~"To fatalnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.1 4.1 5.1 6.1 8.0 9.0 18.0 19.0
  SAY #10843 /* ~"Tak, podróżniku. Czego poszukujesz?"~ */
  IF ~~ THEN REPLY #10844 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10845 /* ~"Szukam dziennika. Czy może zdarzyło ci się go gdzieś widzieć?"~ */ GOTO 4
  IF ~~ THEN REPLY #10846 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10847 /* ~"Szukam Zbieracza o imieniu Farod. Czy widziałaś go albo słyszałaś o nim?"~ */ GOTO 19
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10848 /* ~"Kim jest tamten płonący osobnik przy wejściu?"~ */ JOURNAL #68053 /* ~Drusilla, niewiasta stojąca w pobliżu wyjścia z gospody "Pod Gorejącym Człekiem" opowiedziała mi o człowieku płonącym nad rusztem. Jego imię brzmi Ignus i był on najprawdopodobniej najpotężniejszym magiem, jaki na przestrzeni ostatnich kilku wieków pojawił się w Sigil. Jednakże jego konkurenci wepchnęli go w pasaż do Sfery Żywiołowego Ognia, dlatego teraz trwa pogrążony w magicznym letargu, utrzymując się przy życiu samą siłą koncentracji. Faktycznie, potężny z niego czarodziej..."~ */ GOTO 6
  IF ~~ THEN REPLY #10849 /* ~"Nic. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #10850 /* ~Kobieta uśmiecha się głupawo, a jej siniaki prawie zanikają. "Cokolwiek powiesz, skarbie."~ */
  IF ~~ THEN REPLY #10851 /* ~"Cokolwiek. Odpowiedz mi na parę pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10852 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY #10853 /* ~"Ejże, zmyślna mowa ze zmyślnej głowy. Nie jestem takim pomyleńcem, jak mógłbyś sądzisz, gnojku. Mam swój rozum."~ */
  IF ~~ THEN REPLY #10854 /* ~"Jeśli jesteś taka bystra, powinnaś być w stanie odpowiedzieć na moje pytania."~ */ GOTO 7
  IF ~~ THEN REPLY #10855 /* ~"Fatalnie, że jest go tak mało. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY #10856 /* ~"Och, czyżby? Czy kiedykolwiek żywy płomień rozkochał cię w sobie? Czy kiedykolwiek nachodziło cię pragnienie całkowitego unicestwienia w ramionach drugiej istoty, całkowitego zagubienia się w ogniu namiętności? Twoje oczy mówią, że tak, ale szczęście ci nie dopisało. Nie mów mi o tym, co fascynujące. Blizny nie są fascynujące. Walki nie są fascynujące. Twardziele nie są fascynujący. TY też nie."~ */
  IF ~~ THEN REPLY #10857 /* ~"Naprawdę nie widzę potrzeby usprawiedliwiania się przed tobą."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #10858 /* ~"Od czego by tu zacząć? Jestem nieśmiertelny, tracę pamięć za każdym razem, kiedy umieram, za kumpla robi mi jakaś latająca czaszka. Gdyby zwykli śmiertelnicy mogli doświadczać rzeczy, których ja doświadczam, ich dusze wyfrunęłyby im oczami - a ty mi tu mówisz, że miłość do ognia jest czymś fascynującym. To nie jest fascynujące - to jest szalone."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #10859 /* ~"Od czego by tu zacząć? Jestem nieśmiertelny, tracę pamięć za każdym razem, kiedy umieram. Gdyby zwykli śmiertelnicy mogli doświadczać rzeczy, których ja doświadczam, ich dusze wyfrunęłyby im oczami - a ty mi tu mówisz, że miłość do ognia jest czymś fascynującym. To nie jest fascynujące - to jest szalone."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #10860 /* ~"Nasza rozmowa się skończyła."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #10861 /* ~"Nie, to byłoby zbyt trudne, nieprawdaż? Idź już. Nie chcę z tobą rozmawiać." Odprawiając cię, odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #10862 /* ~"Jeszcze się spotkamy."~ */ EXIT
  IF ~~ THEN REPLY #10863 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.2
  SAY #10864 /* ~Nagle cofa się i spogląda na ciebie z większą uwagą. W jej głosie słychać podniecenie. "Ty nim jesteś, tak? Jesteś nim!"~ */
  IF ~~ THEN REPLY #10865 /* ~"Co masz na myśli?"~ */ GOTO 13
  IF ~~ THEN REPLY #10866 /* ~"Nie. Odpowiedz mi na jeszcze parę pytań."~ */ GOTO 13
  IF ~~ THEN REPLY #10867 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #10868 /* ~"On powiedział, że przyjdziesz! Powiedział, że to ty go uwolnisz! Mówił do mnie we śnie i powiedział, że przyjdziesz z oceanem wody, aby przywrócić mu równowagę, by mógł płonąć poprzez sfery! Uwolnij go! Proszę, ocal go!"~ */
  IF ~~ THEN REPLY #10869 /* ~"Co cię z nim łączy?"~ */ GOTO 14
  IF ~~ THEN REPLY #10870 /* ~"Pomyślę o tym. Wpierw odpowiedz mi na jeszcze parę pytań."~ */ GOTO 15
  IF ~~ THEN REPLY #10871 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.1
  SAY #10872 /* ~"Byłam ukochaną Ignusa. Oboje kochaliśmy ogień, chociaż on kochał go bardziej niż ja. A teraz oglądam jego, Ignusa, piękno, jak się wije w samym środku płomieni, i ja, Drusilla, kocham je na równi z nim."~ */
  IF ~~ THEN REPLY #10873 /* ~"Ależ ty masz bzika. No dobrze, odpowiedz mi na kilka pytań."~ */ GOTO 15
  IF ~~ THEN REPLY #10874 /* ~"Całkiem ci już odbiło. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drusilla","GLOBAL",1)
~ THEN BEGIN 15 // from: 13.1 14.0 17.0 20.0 21.0 22.0 23.0
  SAY #10875 /* ~"Kiedy uwolnisz Ignusa?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10876 /* ~"Jak tylko będę mógł mu to dać. Powiadają, że ta karafka mieści w sobie niewyczerpany zapas wody."~ */ GOTO 16
  IF ~~ THEN REPLY #10877 /* ~"Kim ty właściwie jesteś?"~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10878 /* ~"Szukam dziennika. Czy może zdarzyło ci się go gdzieś widzieć?"~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10879 /* ~"Szukam Zbieracza o imieniu Farod. Czy widziałaś go albo słyszałaś o nim?"~ */ GOTO 20
  IF ~~ THEN REPLY #10880 /* ~"Co możesz mi powiedzieć o tej gospodzie?"~ */ GOTO 17
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20700 /* ~"Jak tylko będę mógł mu to dać. Powiadają, że ta karafka mieści w sobie niewyczerpany zapas wody."~ */ GOTO 16
  IF ~~ THEN REPLY #20710 /* ~"Kiedy się na to zdecyduję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.3 15.0 15.5
  SAY #10882 /* ~"Tak! Użyj jej na nim i to z pewnością go uwolni! Och, mój Ignusie, czekam na ciebie!" Na chwilę przerywa, z przerażeniem w oczach. "Czy znasz słowo-rozkaz dla karafki?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10883 /* ~"Jeszcze nie."~ */ GOTO 23
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #10884 /* ~"Tak."~ */ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY #10885 /* ~"To więzienie mojej miłości, miejsce, gdzie trzymają go okrutnie od wieków, miejsce do którego przychodzę od dziesięcioleci, aby współodczuwać jego ogniste męki. Jest to miejsce, przez które żyję dłużej i ponad stan. Nienawidzę tego miejsca."~ */
  IF ~~ THEN REPLY #10886 /* ~"Doskonale. Odpowiedz na kilka innych pytań."~ */ GOTO 15
  IF ~~ THEN REPLY #10887 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY #10888 /* ~Jej głos naprawdę pulsuje głębokim bólem: "Byłam ukochaną Ignusa, a on był moim ukochanym. On kochał ogień bardziej niż mnie i teraz sam stał się ogniem - a ponieważ go kocham, kocham ogień... ale to już się skończyło. Teraz czekam, aż ktoś go zanurzy w wodzie. Sprzedaję, co tam mam, a mam niewiele, aby tylko być blisko niego."~ */
  IF ~~ THEN REPLY #10889 /* ~"Doskonale. Odpowiedz na kilka innych pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10890 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.4 7.3
  SAY #10891 /* ~"Farod?" prycha. "Król Zbieraczy? Prawdopodobnie możesz znaleźć jego i innych śmierdzieli w śmieciowisku na obrzeżu Ula. Życzę powodzenia w wydobywaniu od niego jakichkolwiek odpowiedzi - chytry z niego diabeł, naprawdę."~ */
  IF ~~ THEN REPLY #10892 /* ~"Doskonale. Odpowiedz na kilka innych pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10893 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY #10894 /* ~"Farod?" prycha. "Król Zbieraczy? Prawdopodobnie możesz znaleźć jego i innych śmierdzieli w śmieciowisku na obrzeżu Ula. Życzę powodzenia w wydobywaniu od niego jakichkolwiek odpowiedzi - chytry z niego diabeł, naprawdę. Chociaż nie tak przebiegły, jak mój Ignus."~ */
  IF ~~ THEN REPLY #10895 /* ~"Doskonale. Odpowiedz na kilka innych pytań."~ */ GOTO 15
  IF ~~ THEN REPLY #10896 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY #10897 /* ~"O ile pamiętam, nie widziałam żadnego dziennika. Nie wiem. Może zapytasz któregoś ze Zbieraczy. Nie wiem!"~ */
  IF ~~ THEN REPLY #10898 /* ~"Ale mi pomoc. Odpowiedz na moje pytania, Drusillo."~ */ GOTO 15
  IF ~~ THEN REPLY #10899 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY #20711 /* ~Jej oczy rozbłyskują jeszcze bardziej, o ile to możliwe. "W takim razie użyj go! Użyj go natychmiast!"~ */
  IF ~~ THEN REPLY #20712 /* ~"Za chwilę. Potrzebuję od ciebie jeszcze kilku odpowiedzi."~ */ GOTO 15
  IF ~~ THEN REPLY #20713 /* ~"To właśnie mam zamiar uczynić."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #20714 /* ~Znajdź go więc, błagam! Uwiesza się na twoim ramieniu. W jej oczach dostrzegasz błysk szaleństwa.~ */
  IF ~~ THEN REPLY #20715 /* ~"Dobrze, uczynię to. Najpierw jednak potrzebuję paru odpowiedzi..."~ */ GOTO 15
  IF ~~ THEN REPLY #20716 /* ~"Tak. Żegnaj."~ */ EXIT
END
