// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~Widzisz dobrze ubraną kobietę w średnim wieku. Minę ma nachmurzoną i zdaje się kogoś lub czegoś szukać.~ */
  IF ~~ THEN REPLY #58514 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~Kobieta zatrzymuje się i przygląda ci się uważnie przez chwilę, po czym odpowiada. "Kim jesteś i czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #58517 /* ~Kłamstwo: "Jestem Adahn i mam kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"Nie pamiętam jak mam na imię."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~Kobieta wita się, podając ci swoja dłoń. "Dzień dobry, śmiałku. Jestem Roberta."~ */
  IF ~~ THEN REPLY #58521 /* ~Ściskasz jej dłoń i kłaniasz się: "Miło mi cię poznać, Pani Roberto."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"Jak mniemam, masz do mnie kilka pytań?"~ */
  IF ~~ THEN REPLY #58524 /* ~"Tak, Pani."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"Nieważne, Pani. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"Jestem do usług. Pytaj proszę."~ */
  IF ~~ THEN REPLY #58527 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"Wyglądasz na zdenerwowaną. Czy stało się coś złego?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"Dzieje się tu coś godnego uwagi?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"Możesz mi opowiedzieć o Klątwie?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"Kto tutaj rządzi?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~Kobieta zastanawia się przez chwilę. "O tej pogłosce również słyszałam. Niestety nie mogę ci pomóc. Nie znam miejsca pobytu takiej istoty. Powinieneś zapytać w biurze administracyjnym znajdującym się na placu miejskim."~ */
  IF ~~ THEN REPLY #58534 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~Marszczy czoło. "Tak... Mojego męża, Karla Parfidora, nie ma tam, gdzie powinien być. Nie po raz pierwszy mnie okłamał i zaczynam myśleć, że on..." Robi krótką przerwę. "Zaczynam myśleć, że jest z inną kobietą. Z ladacznicą."~ */
  IF ~~ THEN REPLY #58539 /* ~"Dlaczego tak sądzisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~Wzdycha. "Był z niego niezły hulaka zanim się pobraliśmy, lubił zwłaszcza tego rodzaju kobiety i słyszałam plotki, że..." Wygląda na złą. "Jeśli plotki okażą się prawdziwe, czeka go z mojej strony niespodzianka."~ */
  IF ~~ THEN REPLY #58546 /* ~"Niespodzianka?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"Tak." Unosi spódnicę, pokazując wewnętrzną część uda. Widzisz sztylet przywiązany do jej nogi. Roberta wyciąga broń i pokazuje ci ją, śmiejąc się nikczemnie. "Myślę, że gdyby znalazło się to w jego plecach, to byłaby to niespodzianka. Zgadzasz się ze mną?" Odkłada ostrze na bok.~ */
  IF ~~ THEN REPLY #58555 /* ~"A więc zamierzasz go zabić?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~Niewiasta o imieniu Roberta Parfidor pragnie śmierci swojego męża, Karla. Wygląda na to, że Karl gustuje w towarzystwie innych kobiet, a Roberta nie myśli patrzeć przez palce na takie rzeczy. Interesujące. Szczęście od bogów, że jestem kawalerem. W każdym razie w tym życiu.~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~Uśmiech znika powoli z twarzy Roberty w miarę jak waży ona wypowiedziane przed chwilą słowa. W końcu wzdycha i chowa szylet. "Zrobiłabym to, gdybym mogła... ale nie, jestem głupia. Nie ma już między mną i Karlem... intymności. Nigdy nie byłabym w stanie zbliżyć się do niego na tyle blisko, aby zadać taki cios." Na chwilę odwraca od ciebie wzrok. "Mogłaby to zrobić tylko jedna z jego *kobiet*..."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"Znam ladacznicę o imieniu Kiri, która potrzebuje pieniędzy. Być może ona mogłaby zbliżyć się dość blisko, aby wykonać zadanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~Gapi się przez chwilę na ciebie. "Rozumiem..." Rozgląda się szybko wokół, po czym nachyla się ku tobie, aby powiedzieć coś szeptem. "Byłbyś gotów udać się do niej i zaproponować jej... robotę? Zapłacę ci pięćset sztuk monet po wykonaniu zadania."~ */
  IF ~~ THEN REPLY #58586 /* ~"To nie jest zbyt dużo brzdęku."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"Nie wydaje mi się. Żegnaj."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Nie zgodziłem się zabić dla Roberty Parfidor jej męża Karla.~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"Mogę wykorzystać ten brzdęk. Porozmawiam z Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Zgodziłem się pomóc Robercie Parfidorze w uśmierceniu jej męża Karla. Muszę tylko porozmawiać o tym z ladacznicą Kiri i spytać się, czy nie zechciałaby mi w tym nieco pomóc.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~Marszczy czoło. "Hmmm. Może i tak jest, ale tyle jestem gotowa zapłacić. Oboje możecie się wzbogacić o pięćset monet... albo i nie. Decyzja należy do ciebie."~ */
  IF ~~ THEN REPLY #58592 /* ~"Raczej na to nie pójdę. Żegnaj."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Nie zgodziłem się zabić dla Roberty Parfidor jej męża Karla.~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"Mogę wykorzystać ten brzdęk. Porozmawiam z Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Zgodziłem się pomóc Robercie Parfidorze w uśmierceniu jej męża Karla. Muszę tylko porozmawiać o tym z ladacznicą Kiri i spytać się, czy nie zechciałaby mi w tym nieco pomóc.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~Uśmiecha się. "Wyśmienicie. Jeśli się zgodzi, pozwól jej to zrobić w dogodnym dla niej momencie, ale nie zwlekajcie zbyt długo. Po wykonaniu zadania skontaktuj się ze mną, a ja dopilnuję byś otrzymał swoją zapłatę."~ */
  IF ~~ THEN REPLY #58595 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~Myśli przez chwilę. "Słyszałam, że ostatnio znikła młoda kobieta. Córka jakiegoś oberżysty. Nie znam szczegółów. Poza tym, nie przypominam sobie niczego niezwykłego."~ */
  IF ~~ THEN REPLY #58598 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~Uśmiecha się do ciebie i śmieje się. "Klątwa to kupa gnoju, a my jesteśmy odchodami, które ją wypełniają." Wzrusza ramionami. "Nic więcej nie trzeba dodawać w tym temacie."~ */
  IF ~~ THEN REPLY #58601 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"Tovus Giljaf. Możesz go znaleźć w biurze administracyjnym znajdującym się na placu miejskim."~ */
  IF ~~ THEN REPLY #58604 /* ~"Co możesz mi powiedzieć o Tovusie?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"Tovus potrafi być całkiem... nieobliczalnym osobnikiem." Robi przerwę, aby pomyśleć. "Niewiele o nim wiem, poza tym, że jest githzerai i czarodziejem."~ */
  IF ~~ THEN REPLY #58608 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"Muszę już lecieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~Patrzy na ciebie z lekka zaskoczona. "Naprawdę. Jesteś może oczekującym? O ile wiem oni często tracą swoje wspomnienia."~ */
  IF ~~ THEN REPLY #58611 /* ~"Kim są oczekujący?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~Robi przerwę, aby się zastanowić. "Oczekujący... to ci, którzy zmarli, a ich ciała odrodziły się na tej sferze, która najbardziej odzwierciedla wierzenia jakie mieli za życia. Zazwyczaj nie wiedzą nic o swoich poprzednich doświadczeniach. Być może twój przypadek jest podobny."~ */
  IF ~~ THEN REPLY #58613 /* ~"Być może... To odrodzenie... Ile razy może się to wydarzyć?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"Cóż... nie jestem ekspertem w tych sprawach, ale o ile rozumiem, dzieje się to tylko raz. W chwili śmierci, duch łączy się z samą sferą. Chyba że udałeś się na inną sferę. Jeśli tak, to w chwili śmierci zostajesz całkowicie zapomniany."~ */
  IF ~~ THEN REPLY #58615 /* ~"Rozumiem. W każdym bądź razie, nie mam żadnego imienia, które mógłbym ci podać."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"Dziękuję ci. Muszę cię teraz opuścić. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~Widzisz Robertę. Uśmiecha się, gdy się zbliżasz. "Dzień dobry śmiałku. W czym mogę pomóc?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"Czy w dalszym ciągu chcesz, aby zajęto się... twoim mężem?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"Czy w dalszym ciągu chcesz, aby zajęto się... twoim mężem?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"Czy w dalszym ciągu chcesz, aby zajęto się... twoim mężem?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~Uśmiecha się do ciebie. "Tak, oczywiście. Dlaczego pytasz?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"Znam ladacznicę o imieniu Kiri, która potrzebuje pieniędzy. Być może ona mogłaby zbliżyć się dość blisko, aby wykonać zadanie..."~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"Z ciekawości. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~Marszy czoło. "Tak, oczywiście. Jednakże odrzuciłeś moją ofertę pięciuset sztuk monet dla ciebie i twojej wspólniczki. Czy to oznacza, że rozważyłeś na nowo moją ofertę?"~ */
  IF ~~ THEN REPLY #58628 /* ~"Nie, nie bardzo. Żegnaj."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"Mogę wykorzystać ten brzdęk. Porozmawiam z Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~Ściąga brwi. "Tak, oczywiście. Zgodziłeś się na warunki umowy, czy wykonano zadanie?"~ */
  IF ~~ THEN REPLY #58638 /* ~"Nie, jeszcze nie. Pracuję nad tym. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~Widzisz Robertę. Wygląda na całkiem zadowoloną. Rozgląda się wkoło, badając dokładnie otoczenie. "Cześć. Zapewne przybywasz po swoje pieniądze?" Uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #58640 /* ~"Tak, zadanie do którego mnie wynajęłaś zostało wykonane."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~Przed udzieleniem odpowiedzi rozgląda się ponownie wkoło. "Bardzo dobrze. Oto monety, które ci obiecałam." Przez chwilę przybiera zatroskany wyraz na swojej twarzy. "Uch... twoja przyjaciółka wykonała... *dokładną* robotę na Karlu. Moje uznanie dla was obojga." Wręcza ci ciężką sakiewkę. "Oto twoja działka; zapłaciłam już Kiri."~ */
  IF ~~ THEN REPLY #58642 /* ~"Dziękuję. Miło mi się z tobą pracowało."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~Widzisz Robertę. "Witaj ponownie śmiałku. Mogę w czymś pomóc?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"Tak, chciałbym się zobaczyć z Tovusem Giljafem. Mogłabyś zaaranżować takie spotkanie?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"Nie, tylko przechodziłem. Na razie."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~Widzisz Robertę. Gdy cię zauważa, ogarnia ją wściekłość. "Ty! Ty robaczywa kupo gnoju! Patrz co się przez ciebie ze mną stało!" Jej twarz jest tak czerwona, że zdaje ci się iż pęknie.~ */
  IF ~~ THEN REPLY #58646 /* ~"Przeze mnie? Nie należę do tych, którzy knują jak zabić współmałżonka."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~Jej oczy zwężają się do cienkich szparek, a ona praktycznie pluje w ciebie swoimi słowami. "Nadużyłeś mojego zaufania! Karl chwalił się twoją zdradą zanim mnie tu przysłał! Ty pomiocie ladacznicy!"~ */
  IF ~~ THEN REPLY #58649 /* ~"Skoro mówimy o ladacznicach, czy Kiri również tutaj przybyła?"~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~Wydziera się na ciebie. "Arrrrrrhhh! Znasz odpowiedź, ty amatorze kóz! Chcesz mi zadać więcej bólu udając, że o niczym nie wiesz!"~ */
  IF ~~ THEN REPLY #58652 /* ~"Załóżmy, że nie wiem. Powiedz mi co się z nią stało."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"Zdradziecka dziewucha. Ustawiła się jako kochanka Karla i uniknęła więzienia!"~ */
  IF ~~ THEN REPLY #58655 /* ~"Sprytna dziewczyna... Cóż, muszę już lecieć. Żegnaj."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~Przeszywa cię wzrokiem, z którego aż kapie nienawiść. "Tak... odejdź stąd, ale wiedz jedno: kiedyś wydostanę się z tego piekła, i nie zapomnę ani ciebie, ani tej nierządnicy!"~ */
  IF ~~ THEN REPLY #58657 /* ~Zignoruj ją i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~Kłania ci się nieznacznie. "Mogę jeszcze w czymś pomóc?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"Tak, chciałbym się zobaczyć z Tovusem Giljafem. Mogłabyś zaaranżować takie spotkanie?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"Nie, nie wydaje mi się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~Uśmiecha się do ciebie. "Tovus... przykro mi śmiałku. Ostatnio jest bardzo zajęty i nawet mi nie udało się z nim skontaktować."~ */
  IF ~~ THEN REPLY #58662 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END
