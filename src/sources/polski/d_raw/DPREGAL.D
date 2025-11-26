// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~W zdziwieniu obserwujesz spektakl, który rozgrywa się przed twoimi oczami. To, co wcześniej wydawało się być tylko zwykłym murem z cegieł, teraz faluje i pulsuje ruchem. Mur rozciąga się, jakby zrobiono go z jakiegoś elastycznego materiału, powstaje w nim wybrzuszenie, jakby jakaś niewidoczna siła próbowała przedostać się przez niego z drugiej strony. Pulsująca masa powoli zaczyna nieruchomieć, załamania w murze stają się coraz lepiej widoczne, a ty nagle stajesz oko w oko z kamienną karykaturą ludzkiej twarzy.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"Cóż to takiego?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~Poczekaj i zobacz, to się teraz stanie.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~Zignoruj twarz i odejdź.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~Nagle ogarnia cię silny powiew wiatru, a powietrze wypełnia się osobliwymi dźwiękami. Wiatr zaczyna przybierać na sile, tak że teraz możesz rozróżnić również inne dźwięki: skrzypienie desek, szelest liści i tarcie kamienia o kamień. Po pewnym czasie hałas przestaje być kakofonią pojedynczych dźwięków i zaczyna zlewać się w jeden głos. Głos, który przemawia spokojnie, ale wydaje się dochodzić ze wszystkich stron naraz. "TY? TO NIE MOŻESZ BYĆ TY."~ */
  IF ~~ THEN REPLY #52648 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"Co?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"Znasz mnie?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"Chyba mnie z kimś mylisz. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~Wiatr przestaje wiać, ale w dalszym ciągu słyszysz głos. "ZNOWU ŻYJESZ? PRZECIEŻ SAMA WIDZIAŁAM, JAK UMIERASZ."~ */
  IF ~~ THEN REPLY #52652 /* ~"Jak umieram? Gdzie?"~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"Czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"Gdzie ja jestem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"JESTEM MNĄ." Głos jest tak samo pozbawiony wyrazu, jak kamienna twarz, którą masz przed sobą.~ */
  IF ~~ THEN REPLY #52656 /* ~"Czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"Gdzie ja jestem?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"Powiedziałaś, że widziałaś, jak umieram? Gdzie to było?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"JESTEM MNĄ." Głos jest tak samo pozbawiony wyrazu, jak kamienna twarz, którą masz przed sobą.~ */
  IF ~~ THEN REPLY #52659 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"Gdzie ja jestem?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"Powiedziałaś, że widziałaś, jak umieram? Gdzie to było?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"STOISZ NA MNIE, WE MNIE. KAMIENIE, ZAPRAWA, POWIETRZE... TO WSZYSTKO TO JA."~ */
  IF ~~ THEN REPLY #52662 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"Czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"Powiedziałaś, że widziałaś, jak umieram? Gdzie to było?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"WIDZIAŁAM, JAK UMIERASZ W TYM MIEJSCU, PRZEDE MNĄ. WIDZĘ WSZYSTKO WEWNĄTRZ MNIE."~ */
  IF ~~ THEN REPLY #52665 /* ~"Czy wiesz, co się ze mną stało?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"RZECZY, KTÓRE NIE RZUCAJĄ CIENIA... KTÓRE BYŁY CIENIEM. WYROSŁY NAOKOŁO CIEBIE. ROZDARŁY CIĘ NA STRZĘPY. NIE PAMIĘTASZ?" Próbujesz się skoncentrować na dziwnym głosie złożonym z otaczających cię dźwięków. Gdzieś, w najgłębszych obszarach twojego umysłu, pojawia się krótkie wspomnienie. Czujesz, że w tych dźwiękach jest coś znajomego.~ */
  IF ~~ THEN REPLY #52719 /* ~Zamknij oczy i spróbuj sobie przypomnieć.~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"TAK... PAMIĘTASZ." Głos Alei dźwięczy w twoich uszach, rozsypując obrazy, które obudziły się w twoim umyśle, i przypominając ci o rzeczywistości. "JUŻ NIEDŁUGO ZOSTANĘ ZNISZCZONA. DŁUŻEJ JUŻ NIE MOGĘ ODWLEKAĆ PODZIAŁU. CIŚNIENIE ZWIĘKSZA SIĘ CORAZ BARDZIEJ. JUŻ NIEDŁUGO KAMIENIE ROZPADNĄ SIĘ, A UNOSZĄCY SIĘ NAD ZIEMIĄ, NAPRAWIAJĄC MNIE, DOPEŁNIĄ DZIEŁA ZNISZCZENIA."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"Nie rozumiem."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"Umierasz?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"Unoszący się nad ziemią?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"CIŚNIENIE JEST JUŻ ZBYT DUŻE. BRAKUJE MIEJSCA NA TO, CO JEST WEWNĄTRZ MNIE. MUSZĘ SIĘ PODZIELIĆ."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"Podzielić?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"Podzielić?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~Głos ciągnie dalej. "POMÓŻ MI SIĘ PODZIELIĆ. ROZGAŁĘZIĆ. ROZSZERZYĆ. OTWORZĄ SIĘ NOWE OTWORY. ONE UMOŻLIWIĄ CI PODRÓŻ DO NIŻSZEJ DZIELNICY."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"Czego potrzebujesz, żeby się podzielić?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"Czego potrzebujesz, żeby się podzielić?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"Czego potrzebujesz, żeby się podzielić?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"UNOSZĄCY SIĘ NAD ZIEMIĄ JEST TERAZ NA MNIE. NAPRAWIA. ON NIE POZWALA MI SIĘ PODZIELIĆ. MUSZĘ SIĘ ODNAWIAĆ PO JEGO NAPRAWACH. ALE ON CIĄGLE PRZYCHODZI I NAPRAWIA. MUSZĘ USUNĄĆ UNOSZĄCEGO SIĘ NAD ZIEMIĄ."~ */
  IF ~~ THEN REPLY #52675 /* ~"Chcesz, żebym *zabił* dabusa w Alei?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"USUŃ GO. TYLKO WTEDY BĘDĘ MOGŁA SIĘ PODZIELIĆ."~ */
  IF ~~ THEN REPLY #52676 /* ~"Dobrze. *Usunę* tego dabusa dla ciebie."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~Dowiedziałem, że Aleja Uporczywych Westchnień nie jest w żadnym wypadku nawiedzona. Jest po prostu żywą istotą. Aleja przemówiła do mnie iż, o ile zrozumiałem ją dobrze, jest ciężarna i chce, abym pomógł jej przy porodzie. Najprawdopodobniej dabus zajmuje się pracami, które mają na celu powstrzymanie procesu podziału Alei. Obiecałem Alei, że pozbędę się tego dabusa. W zamian za to, Aleja obiecała mi otworzyć drogę do Niższej Dzielnicy.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"NIE MA JUŻ NA MNIE UNOSZĄCEGO SIĘ NAD ZIEMIĄ. JUŻ NIC NIE NAPRAWIA. JUŻ NIE PRZESZKADZA."~ */
  IF ~~ THEN REPLY #52687 /* ~"Chodzi ci o tego dabusa na tyłach Alei? Tak, powiedziałem mu o martwym dabusie, którego znalazłem, a on poszedł go szukać."~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~Odkryłem, że Aleja Uporczywych Westchnień nie jest w żadnym wypadku nawiedzona. Jest po prostu żywą istotą. Aleja przemówiła do mnie i, o ile zrozumiałem ją dobrze, jest ciężarna i chce, abym pomógł jej przy porodzie. Najprawdopodobniej dabus, którego powiadomiłem o odkryciu ciała jego pobratymca, zajmował się pracami, które miały powstrzymać proces podziału Alei. A kiedy poszedł sprawdzić ciało kolegi, Aleja zamknęła go w pułapce w budynku, w którym leży trup.~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~"UNOSZĄCY SIĘ NAD ZIEMIĄ ZOSTAŁ ZNISZCZONY. JUŻ NIC NIE NAPRAWIA. JUŻ NIE PRZESZKADZA."~ */
  IF ~~ THEN REPLY #52692 /* ~"Chodzi ci o tego dabusa na tyłach Alei? Tak, już go nie ma... Zabiłem go."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~Odkryłem, że Aleja Uporczywych Westchnień nie jest w żadnym wypadku nawiedzona. Jest po prostu żywą istotą. Aleja przemówiła do mnie i, o ile zrozumiałem ją dobrze, jest ciężarna i chce, abym jej pomógł przy porodzie. Prawdopodobnie dabus, którego zabiłem, zajmował się pracami, które miały na celu powstrzymanie procesu podziału Alei.~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~Kiedy podchodzisz do kamiennej twarzy, różnorodne dźwięki otoczenia znowu zaczynają atakować twoje uszy, a z nich wyłania się głos. "A WIĘC WRÓCIŁEŚ."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"Dabus ciągle tam jest... Nie mogę znaleźć sposobu, żeby się go pozbyć."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"Udało mi się zabić dabusa. Nie będzie ci już przeszkadzał."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"Rozmawiałem z dabusem. Kiedy powiedziałem mu o jego martwym bracie, poszedł go szukać."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~Dowiedziałem się, że Aleja Uporczywych Westchnień jest nie tylko istotą żywą, ale i zdolną walczyć we własnej obronie. Wygląda na to, że dabus, z którym rozmawiałem, faktycznie poszedł sprawdzić zwłoki martwego dabusa, które odkryłem w tamtym budynku. A kiedy tam się udał, Aleja usunęła wyjście z budynku i zamknęła go w pułapce.~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"Jeszcze nie udało mi się odwrócić napraw dabusa. Powiedz mi jeszcze raz, co mam zrobić."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"Udało mi się odwrócić naprawy w jednym miejscu. Powiedz mi jeszcze raz, gdzie mam szukać drugiego."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"Udało mi się odwrócić naprawy w jednym miejscu. Powiedz mi jeszcze raz, gdzie mam szukać drugiego."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"Udało mi się odwrócić wszystkie naprawy tak, jak o to prosiłaś."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"TRZEBA GO USUNĄĆ. MUSI BYĆ NA TO JAKIŚ SPOSÓB. SPRAW, ŻEBY SOBIE POSZEDŁ. CZASU JEST CORAZ MNIEJ. MUSZĘ SIĘ PODZIELIĆ, ALBO ZGINĘ."~ */
  IF ~~ THEN REPLY #52701 /* ~"Nie martw się. Spróbuję coś wymyślić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~"UNOSZĄCY SIĘ NAD ZIEMIĄ ZOSTAŁ ZNISZCZONY. JUŻ NIC NIE NAPRAWIA. JUŻ NIE PRZESZKADZA."~ */
  IF ~~ THEN REPLY #52702 /* ~"Nie będzie ci już więcej przeszkadzał... Teraz możesz zacząć podział."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~Aleja na chwilę milknie, jakby zastanawiała się nad twoimi słowami. "NIE TRZEBA BYŁO NISZCZYĆ UNOSZĄCEGO SIĘ NAD ZIEMIĄ. TERAZ ZWRÓCIŁA SIĘ NA NAS UWAGA TEJ, Z KTÓREJ TWARZY WYCHODZĄ OSTRZA. A TO OZNACZA BÓL."~ */
  IF ~~ THEN REPLY #52703 /* ~"Musiałem go zabić... Tylko w ten sposób można było sprawić, żeby przestał ci przeszkadzać."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"Co się stało, to się nie odstanie. Ale dabusa już *nie ma*, więc możesz zacząć się dzielić."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"Poprosiłaś mnie, żebym go usunął... więc go wybebeszyłem. Teraz możesz się już dzielić, prawda?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"CIĄGLE NIE MOGĘ SIĘ PODZIELIĆ. JESTEM ZBYT SŁABA. NIE MOGĘ ODWRÓCIĆ ZMIAN, KTÓRE SPOWODOWAŁ UNOSZĄCY SIĘ NAD ZIEMIĄ. TRZEBA JE ODWRÓCIĆ, BO INACZEJ NIE BĘDĘ MOGŁA SIĘ PODZIELIĆ. MUSISZ ODWRÓCIĆ ZMIANY, KTÓRE ON SPOWODOWAŁ."~ */
  IF ~~ THEN REPLY #52706 /* ~"Mam odwrócić zmiany, których dokonał dabus? W jaki sposób?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"W jaki sposób mogę odwrócić te zmiany? Nie jestem cieślą."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~"ODSZUKAJ TE CZĘŚCI MNIE, KTÓRE ZMIENIŁ UNOSZĄCY SIĘ NAD ZIEMIĄ. ODWRÓĆ TE ZMIANY. ODWRÓĆ TO, CO ON NAPRAWIŁ. MUSISZ DZIAŁAĆ Z DOKŁADNOŚCIĄ I PRECYZJĄ. TYLKO WTEDY BĘDĘ MOGŁA SIĘ PODZIELIĆ."~ */
  IF ~~ THEN REPLY #52708 /* ~"Zgoda. Odszukam te zmiany i spróbuję je odwrócić. Pewnie będą mi potrzebne jakieś narzędzia... Młotek i łom powinny wystarczyć."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~Chociaż udało mi się pozbyć dabusa, to, aby Aleja mogła się rozdzielić, trzeba jeszcze usunąć rezultat jego prac remontowych. Podjąłem się tego i muszę teraz to w jakiś sposób załatwić. Wydaje mi się, że Aleja jest o krok od porodu i przez to jest zbyt słaba, aby własnym sumptem pozbyć się tych zabezpieczeń.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"TAK. UNOSZĄCY SIĘ NAD ZIEMIĄ PRZERWAŁ SWOJE NAPRAWY. TERAZ JEST Z TYM DRUGIM. ZAMKNĘŁAM SIĘ WOKÓŁ NIEGO. ZOSTANIE JUŻ W MOIM WNĘTRZU NA ZAWSZE."~ */
  IF ~~ THEN REPLY #52709 /* ~"Rozumiem. Teraz, gdy on jest uwięziony, nikt nie będzie ci przeszkadzał w podziale, prawda?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"DWA MIEJSCA NA MNIE. MUSISZ ODWRÓCIĆ ZMIANY, KTÓRYCH DOKONAŁ UNOSZĄCY SIĘ NAD ZIEMIĄ. SAMA NIE MOGĘ TEGO ZROBIĆ. MUSZĘ OSZCZĘDZAĆ ENERGIĘ NA PODZIAŁ. TY MUSISZ SIĘ TYM ZAJĄĆ."~ */
  IF ~~ THEN REPLY #52710 /* ~"Zgoda. Odszukam te zmiany i spróbuję je dla ciebie odwrócić."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"DWA MIEJSCA NA MNIE. JEDNO JEST NA ZACHÓD OD DRUGIEGO. DRUGIE LEŻY NA WSCHÓD OD PIERWSZEGO."~ */
  IF ~~ THEN REPLY #52711 /* ~"To było bardzo opisowe. Dziękuję za pomoc."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"TAK. WSZYSTKO JEST JUŻ W PORZĄDKU. JESTEM CI WDZIĘCZNA." Wiatr znowu zaczyna wiać wokół ciebie, ale tym razem jest o wiele silniejszy. Wszechobecne dźwięki Alei stają się coraz głośniejsze. "TERAZ MUSISZ IŚĆ. ZACZYNA SIĘ PODZIAŁ. DROGA JEST JUŻ DLA CIEBIE OTWARTA."~ */
  IF ~~ THEN REPLY #52712 /* ~"W takim razie, żegnaj."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~Kamienna twarz, przed którą stoisz, znowu zaczyna się zmieniać. Na twoich oczach cały mur zaczyna topnieć, ukazując wąskie przejście. Nagle ziemia pod twoimi stopami zaczyna się trząść, a delikatne westchnienia wiatru przechodzą w potężne zawodzenie. Kiedy rzucasz się w przejście, do twoich uszu dochodzi dźwięk roztrzaskiwanych kamieni i pękających desek.~ */
  IF ~~ THEN REPLY #52723 /* ~Odejdź.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~Udało mi się szczęśliwie dopomóc ciężarnej Alei w porodzie. I zgodnie z oczekiwaniami, narodziny doprowadziły do powstania nowej Alei, która pozwoli mi na podróżowanie pomiędzy Ulem a Niższą Dzielnicą.~ */ EXIT
END
