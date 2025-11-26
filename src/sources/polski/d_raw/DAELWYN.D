// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~Ta wysoka, szczupła kobieta od czasu do czasu spogląda znad swego pucharu z winem, by rozejrzeć się po otaczających gościach i przechodniach. Jej twarz jest elegancko egzotyczna, a gdy się rozgląda, jej złote oczy błyszczą, odbijając światło.~ */
  IF ~~ THEN REPLY #43391 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~Zostaw kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~Przygląda ci się dokładnie przez chwilę, zanim odpowiada. Mówi powoli i ostrożnie, unikając z tobą bezpośredniego kontaktu wzrokowego: "Aelwina, również cię wita."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"Aelwina? Szuka cię twoja przyjaciółka, Nemelle."~ */ JOURNAL #56704 /* ~Znalazłem Aelwinę i powiedziałem jej, że Nemelle jej poszukuje.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"Czy kogoś szukasz?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"Pozwolisz, że już odejdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~Zaczyna się uśmiechać, ale nagle zasłania usta dłonią i spogląda do swego pucharu. "Aelwina jest bardzo szczęśliwa, słysząc o Nemelle. Czy pozwolisz Aelwinie skłonić się do opowiedzenia jej o tym miejscu?"~ */
  IF ~~ THEN REPLY #56706 /* ~"Tak, zrobię to dla ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Obiecałem, że powrócę do Nemelle i powiem jej, gdzie jest Aelwina.~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"Nie robię za darmowego posłańca. Uczynię to, jeśli mi zapłacisz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"Zastanowię się nad tym. Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~Patrzy bezpośrednio na ciebie i - przez króciutką chwilę, zanim spuści wzrok do swego pucharu - twoje zmysły wypełniają się ciepłym, miłym uczuciem: czystym szczęściem. "Aelwina dziękuje ci."~ */
  IF ~~ THEN REPLY #56712 /* ~"Cała przyjemność po mojej stronie. Czy mogę cię jednak o nią spytać?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~Aelwina powoli przytakuje.~ */
  IF ~~ THEN REPLY #56715 /* ~"Sposób w jaki mówi i to, co czynią jej słowa... jak?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"Tak właściwie, to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"Aelwina może tylko powiedzieć, że przybywamy z innego miejsca, innego świata. Nie jesteśmy jak tutejsi ludzie, których słowa, myśli - nawet same uczucia - niczego nie dotykają bezpośrednio."~ */
  IF ~~ THEN REPLY #56718 /* ~"Kontynuuj..."~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"Później będę chciał usłyszeć więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"Aelwina stara się ze wszystkich sił nie wpływać na tych dookoła niej zbyt mocno. Nemelle jest tu nowa i nie potrafi tego czynić. To coś, czego musi się nauczyć, jeśli chce pozostać tu trochę dłużej."~ */
  IF ~~ THEN REPLY #56721 /* ~"Ale dlaczego?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"Jest wiele powodów. Aelwina czuje, że nie jest słusznym narzucanie rzeczywistości tym, którzy nie posiadają umiejętności narzucania ich własnej rzeczywistości Aelwinie."~ */
  IF ~~ THEN REPLY #56725 /* ~"Czy jest coś, czego nie potrafisz uczynić po prostu mówiąc o tym?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~Marszczy się. Dziwne, niemiłe uczucie pojawia się w twoim żołądku. "Proszę... Aelwina nie chce już o tym rozmawiać."~ */
  IF ~~ THEN REPLY #56728 /* ~"Jeszcze tylko jedno pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"W porządku. Żegnaj, Aelwino."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~Patrzy prosto na ciebie, a twoja twarz odbija się w błyszczących złotych kręgach jej oczu. "On nie będzie już o tym mówił Aelwinie i w ten sposób nie będzie zmuszał jej, by w ten sposób się do niego odzywała." Stwierdzasz, że nie jesteś w stanie wypowiedzieć następnego pytania... twoje słowa grzęzną ci w gardle, gdy próbujesz pytać.~ */
  IF ~~ THEN REPLY #56731 /* ~"Zatem dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~Przytakuje. "Aelwina rozumie. Czy jesteś Czuciowcem?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"Tak, jestem."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"Nie, nie jestem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~Potrząsa głową. "Zatem Aelwina nie potrafi cię wynagrodzić."~ */
  IF ~~ THEN REPLY #56736 /* ~"Zrobię to i tak."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Obiecałem, że powrócę do Nemelle i powiem jej, gdzie jest Aelwina.~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"Czy Aelwina nie wydaje ci się znajoma?"~ */
  IF ~~ THEN REPLY #56740 /* ~"Nie. A powinna?"~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"Nie, nie sądzę."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"To nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"Jest tak, jak Aelwina myślała. Umysł mężczyzny jest dla niego stracony."~ */
  IF ~~ THEN REPLY #56744 /* ~"Co masz na myśli? Czy wiesz, kim jestem?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"Możesz mieć rację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"Aelwina spotkała cię już wcześniej i o tym spotkaniu może porozmawiać, jeśli jej pomożesz."~ */
  IF ~~ THEN REPLY #56747 /* ~"Zatem tak zrobię."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~Obiecałem, że powrócę do Nemelle i powiem jej, gdzie jest Aelwina.~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~Kobieta potrząsa głową, jej karmazynowe loki chwytają światło i rozświetlają się jak szalejący płomień. "Aelwina nie posiada odpowiedzi, nieznajomy. Najlepiej byś zrobił, szukając ich gdzie indziej."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"Mówisz, że nazywasz się Aelwina? Szuka cię twoja przyjaciółka, Nemelle."~ */ JOURNAL #56704 /* ~Znalazłem Aelwinę i powiedziałem jej, że Nemelle jej poszukuje.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"Czy kogoś szukasz?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"Zatem żegnaj..."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~Przytakuje, wpatrując się tęsknie w puchar wina. "Namelle ma na imię Aelwiny przyjaciółka. Aelwina martwi się o nią w tym miejscu i zastanawia, czemu nie przyszła się z Aelwiną jeszcze spotkać."~ */
  IF ~~ THEN REPLY #56756 /* ~"Mogę pomóc ci odnaleźć twoją przyjaciółkę."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Obiecałem Aelwinie - kobiecie, którą spotkałem, że odszukam dla niej kogoś o imieniu Nemelle.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"Mogę odnaleźć ją dla ciebie. Oczywiście, nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"Mam nadzieję, że ją odnajdziesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"Uczyniłbyś to?" Spogląda znad pucharu, uśmiechając się, a ty nagle czujesz się przepełniony uczuciem nadziei i radosnej wdzięczności. Widząc, jak tężejesz, ona zakrywa usta i ponownie odwraca wzrok... i uczucie znika. "Aelwina dziękuje."~ */
  IF ~~ THEN REPLY #56761 /* ~"Co... co to było?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"Oczywiście. Jak ona wygląda?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"Co było co, miły nieznajomy?" Zagryza dolną wargę. "Aelwina nie wie, o czym mówisz."~ */
  IF ~~ THEN REPLY #56764 /* ~"Dobrze. Jak wygląda Nemelle?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"Taka jak Aelwina ona jest, ale z kruczymi włosami i oczami koloru jasnego fioletu."~ */
  IF ~~ THEN REPLY #56766 /* ~"Zatem powiem jej, że tu na nią czekasz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~Przytakuje. "Aelwina rozumie. Czy jesteś Czuciowcem?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"Tak, jestem."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"Nie, nie jestem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~Potrząsa głową. "Zatem Aelwina nie potrafi cię wynagrodzić."~ */
  IF ~~ THEN REPLY #56771 /* ~"Zrobię to i tak."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Obiecałem Aelwinie - kobiecie, którą spotkałem, że odszukam dla niej kogoś o imieniu Nemelle.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"Czy Aelwina nie wydaje ci się znajoma?"~ */
  IF ~~ THEN REPLY #56775 /* ~"Nie. A powinna?"~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"Nie, nie sądzę."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"To nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"Jest tak, jak Aelwina myślała. Umysł mężczyzny jest dla niego stracony."~ */
  IF ~~ THEN REPLY #56779 /* ~"Co masz na myśli? Czy wiesz, kim jestem?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"Może masz rację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"Aelwina spotkała cię już wcześniej i o tym spotkaniu może porozmawiać, jeśli jej pomożesz."~ */
  IF ~~ THEN REPLY #56783 /* ~"Zatem tak zrobię."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~Obiecałem Aelwinie - kobiecie, którą spotkałem, że odszukam dla niej kogoś o imieniu Nemelle.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~Patrzy bezpośrednio na ciebie i - przez króciutką chwilę, zanim spuści wzrok do swego pucharu - twoje zmysły wypełniają się ciepłym, miłym uczuciem: czystym szczęściem. "Aelwina dziękuje ci."~ */
  IF ~~ THEN REPLY #56787 /* ~"Co... co to było?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"Oczywiście. Jak ona wygląda?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~Aelwina tylko na chwilę podnosi oczy znad pucharu, by cię pozdrowić. "Droga Aelwiny ponownie krzyżuje się ze szlakiem nieznajomego. Czego sobie życzysz?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"Szuka cię twoja przyjaciółka, Nemelle."~ */ JOURNAL #56704 /* ~Znalazłem Aelwinę i powiedziałem jej, że Nemelle jej poszukuje.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"Czy kogoś szukasz?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"Pozwolisz, że już odejdę. Żegnaj."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~Aelwina tylko na chwilę podnosi oczy znad pucharu, by cię pozdrowić. "Aelwina oczekuje wieści o Nemelle. Czy ją znalazłeś, nieznajomy?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"Tak, znalazłem ją."~ */ JOURNAL #56799 /* ~Powiedziałem Aelwinie, że odnalazłem dla niej Nemelle.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"Jeszcze nie. Możesz mi przypomnieć, jak wyglądała?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"Nie, jeszcze nie. Wrócę, gdy ją odnajdę. Żegnaj."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~Aelwina tylko na chwilę podnosi oczy znad pucharu, by cię pozdrowić. "Aelwina wciąż oczekuje na przybycie Nemelle. Nie przekazałeś jej wiadomości?"~ */
  IF ~~ THEN REPLY #56801 /* ~"Nie, jeszcze nie. Znajdę ją jeszcze raz i powiem, że tu jesteś."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~Aelwina klaszcze w dłonie i skłania ci się w podzięce, a łzy radości spływają z jej złotych oczu. W chwili gdy twoje oczy stają się wilgotne, ona wyciera łzy i uśmiecha się - sprawiając, że przez całe twoje ciało przepływa fala ogromnej przyjemności. "Aelwina *podziękowała* nieznajomemu! Pojednała się z jej najdroższą przyjaciółką, Nemelle!"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"Cała przyjemność po mojej stronie."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"Cała przyjemność po mojej stronie."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"Oczywiście. A teraz opowiedz mi o naszym poprzednim spotkaniu."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~Kobieta o imieniu Aelwina powiedziała mi, że byłem niegdyś, a bardzo prawdopodobne, że nadal jestem, członkiem Stronnictwa Doznań... czyli po prostu Czuciowcem.~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~Przytakuje, po czym ponownie spuszcza wzrok. Uczucie, jakie wywołał jej śmiech, staje się miłym wspomnieniem.~ */
  IF ~~ THEN REPLY #56807 /* ~"Jak to się dzieje, że ty i Nemelle potraficie wpływać na moje zmysły i emocje?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"Pozwolisz, że już odejdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~Przytakuje, po czym ponownie spuszcza wzrok. Uczucie, jakie wywołał jej śmiech, staje się miłym wspomnieniem. "Aelwina coś ci teraz opowie, nieznajomy."~ */
  IF ~~ THEN REPLY #56810 /* ~"Tak? Kontynuuj..."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~Kobieta o imieniu Aelwina powiedziała mi, że byłem niegdyś, a bardzo prawdopodobne, że nadal jestem, członkiem Stronnictwa Doznań... czyli po prostu Czuciowcem.~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"Imię, które Aelwina wybrała dla ciebie - 'nieznajomy' - nie do końca jest właściwe. Ty i Aelwina spotkaliście się już wcześniej... w Gmachu Rozrywki. W miejscu, w którym nie mógłbyś być, gdybyś sam nie był Czuciowcem. Czy sobie to przypominasz, czy też nie, o ile nie zdradziłeś kiedyś Stronnictwa Doznań, wciąż jesteś Czuciowcem."~ */
  IF ~~ THEN REPLY #56814 /* ~"Rozumiem... mów dalej."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"Posłucham reszty innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~Przytakuje. "Ty i Aelwina spotkaliście się przy dwóch różnych okazjach. Pierwsza miała miejsce nie mniej niż dwa wieki temu, ostatnia bardziej niedawno. Nie więcej niż pięćdziesiąt lat temu."~ */
  IF ~~ THEN REPLY #56817 /* ~"To dość dawno temu..."~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"Posłucham reszty innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~Ponownie przytakuje. "Lud Aelwiny jest wyjątkowo długowieczny, Zapominalski." Wzdycha nieszczęśliwie, sprawiając, że przechodzą cię dreszcze. "Zdawałeś się wtedy być innym człowiekiem... mniej ponurym, mniej poznaczonym bliznami. Tak chętnym by ujrzeć wszystko, co wieloświat miał do zaoferowania. Zalecałeś się do Aelwiny i prawie wzięła cię za kochanka... ale wtedy zniknąłeś."~ */
  IF ~~ THEN REPLY #56820 /* ~"Dokąd się udałem?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"Posłucham reszty innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"Powiedziano Aelwinie że cię zabito... zamordowano." Podnosi przez chwilę wzrok i wpatruje z ciekawością w twoje oczy. "Spotkała cię później jeszcze tylko raz."~ */
  IF ~~ THEN REPLY #56823 /* ~"Czy pamiętałem cię wtedy?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"Posłucham reszty innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"Nie." Potrząsa smutno głową, po czym dotyka gardła. "Nie pamiętałeś. Rzuciłeś się na Aelwinę aby ją zabić. Krzyczałeś, jak to Aelwina nie może cię oszukać, nie omami i nie zamorduje..."~ */
  IF ~~ THEN REPLY #56826 /* ~"Co się stało?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"Posłucham reszty innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"Spotkaliśmy się w jednej z północnych wież Gmachu Rozrywki, na szóstym piętrze. Zanim zdołałeś wydusić z Aelwiny życie, Aelwina użyła swoich mocy, by zmusić cię do samobójczego skoku przez okno. Gdy w końcu Aelwina udała się na poszukiwanie twego połamanego ciała, już cię tam nie było..."~ */
  IF ~~ THEN REPLY #56829 /* ~"*Co* zrobiłaś?"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"Rozumiem..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"To cała Aelwiny opowieść dla ciebie. Kiedyś nie byliście nieznajomymi, ale teraz tacy się staliście. Żegnaj, nieznajomy, i niech fortuna kroczy z tobą w twoich podróżach."~ */
  IF ~~ THEN REPLY #56832 /* ~"Dzięki, Aelwino. Żegnaj."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~Aelwina tylko na chwilę podnosi oczy znad pucharu, by cię pozdrowić. "Droga Aelwiny ponownie krzyżuje się ze szlakiem nieznajomego. Aelwina, pozdrawia go."~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"Opowiedz mi, jak kiedyś spotkaliśmy się ponownie, Aelwino."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~Kobieta parska w twoją stronę, jej złote oczy lśnią jak płonące punkty czystej nienawiści. "Ty głupcze! Jak śmiesz atakować w ten sposób córkę Asaharm! Jesteś psem..." Mruży oczy, patrząc na ciebie. "...i jak pies umrzesz!" Spogląda na ciebie zimno, sącząc wino z pucharu.~ */
  IF ~~ THEN REPLY #56838 /* ~"Hę...?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~Zignoruj ją, atakuj dalej.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~Upadasz na ziemię, wyjąc w agonii... twoje wnętrzności zdają się wywracać, a ty wykasłujesz potężne hausty parującej, czarnej krwi. W końcu upadasz na ulicę, dygocąc, a resztki życia uchodzą z twojego ciała...~ */
  IF ~~ THEN REPLY #56841 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END
