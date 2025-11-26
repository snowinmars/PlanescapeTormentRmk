// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~Widzisz chłodną, opanowaną kobietę. Jej twarz pokrywają ostre, wyraziste rysy. Jej głos jest niski i pewny. "Jestem Krystal, przywódczyni Kolczastych Aniołów. Jesteś w naszym domu. Czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #3818 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"Opowiedz mi o Kolczastych Aniołach."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"Opowiedz mi o Alei."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"Szukam Faroda."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"Szukam dziennika."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"Czarny Tulipan chce twojej śmierci. Jestem tu, żeby cię zabić."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"Zgniły William chce twojej śmierci. Jestem tu, żeby cię zabić."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"Niczego."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~Wzrusza ramionami. "Jestem przywódczynią Kolczastych Aniołów. To naprawdę wszystko co musisz wiedzieć. Stworzyłam ich, słuchają moich rozkazów. A teraz, czego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #3826 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"Opowiedz mi o Kolczastych Aniołach."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"Opowiedz mi o Alei."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"Szukam Faroda."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"Szukam dziennika."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"Czarny Tulipan chce twojej śmierci. Jestem tu, żeby cię zabić."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"Nic."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"Przybyliśmy tutaj, gdy większe gangi przejęły Śmieciowisko, niedaleko Placu Szmaciarzy. Jesteśmy tutaj od mniej więcej tego samego czasu co Kosy z Ciemnej Alei, którzy założyli leże po drugiej stronie alei. To gang niebezpiecznych oprychów," i tutaj przerywa. "My sami jesteśmy opryszkami, ale nie zabijamy, jeśli nie musimy. Po prostu musimy z czegoś żyć, a w naszej sytuacji, ściąganie opłat jest na to najlepszym sposobem."~ */
  IF ~~ THEN REPLY #3833 /* ~"Wygląda na to, że się opłaca."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~"To miejsce zapaliło się, kiedy jakiś zbzikowany czaromiotacz dobrał sobie do głowy, że to miejsce wyglądałoby znacznie lepiej w popiele. Od tego czasu przewijają się tędy przestępcy i gangsterzy."~ */
  IF ~~ THEN REPLY #3835 /* ~"Łącznie z tobą?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"Rozumiem. Cóż, muszę już iść. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~Pluje. "Glistokudłego? Można go znaleźć w pobliżu Placu Szmaciarzy. Tam popytaj. Na pewno ktoś zwróci na ciebie uwagę."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"Czy nie widziałaś tu gdzieś dziennika?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"Dzięki. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"Dziennika? Księgi? Tutaj? W tej Alei? Ha! Przykro mi - wszystko co się pali trafia do pieca."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"Świetnie. Czy wiesz, gdzie mogę znaleźć człowieka o imieniu Farod?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"Zatem dziękuję. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"Zanim odejdziesz, chcę cię o coś prosić. Ten odcinek alei jest zbyt mały, by pomieścić zarówno nas, jak i Kosy z Ciemnej Alei. My mamy serce. Oni – nienawiść. Jeśli zabijesz ich przywódcę, Zgniłego Williama, zapewnimy ci darmowe przejście przez aleję do końca życia. Tak często tu bywasz, że zaoszczędzi ci to sporo brzdęku."~ */
  IF ~~ THEN REPLY #3844 /* ~"Opowiedz mi o swoim gangu."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystal, przywódczyni gangu Kolczastych Aniołów w Alei Niebezpiecznych Węgłów, poprosiła mnie o zlikwidowanie jej głównego rywala - człowieka o imieniu Zgniły William. W zamian za to otrzymam w przyszłości wolne przejście przez Aleję.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"To wygląda na dobry interes. Załatwione."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~Krystal, przywódczyni gangu Kolczastych Aniołów w Alei Niebezpiecznych Węgłów, poprosiła mnie o zlikwidowanie jej głównego rywala - człowieka o imieniu Zgniły William. W zamian za to otrzymam w przyszłości wolne przejście przez Aleję.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"Nie jestem zabójcą."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystal, przywódczyni gangu Kolczastych Aniołów w Alei Niebezpiecznych Węgłów, poprosiła mnie o zlikwidowanie jej głównego rywala - człowieka o imieniu Zgniły William. W zamian za to otrzymam w przyszłości wolne przejście przez Aleję.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"On już jest martwy."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"Nie. Nie opłaca się. Tyle, że nie mamy nic lepszego do roboty. Jesteśmy mieszkańcami Ula. Nawet niewielkie wykształcenie nie pozwoliło mi się stąd wyrwać. Nikt nie chce zatrudnić mieszkańca Ula, dbamy więc tylko, żeby nas zupełnie nie ignorowano."~ */
  IF ~~ THEN REPLY #3847 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"Tak. Ale wydaje mi się, że jeśli uda nam się utrzymać Aleję i pozbyć Kos, będziemy mieć spokój na jakiś czas."~ */
  IF ~~ THEN REPLY #3848 /* ~"Możliwe. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"Z niecierpliwością czekam na wieści o twoim sukcesie. Wróć i powiedz, kiedy skończysz, dobrze? Powodzenia."~ */
  IF ~~ THEN REPLY #3851 /* ~"Żegnaj."~ */ JOURNAL #3853 /* ~Zgodziłem się zabić Zgniłego Williama.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"Może i nie. To tak jakby wybierać pomiędzy zabiciem wściekłego psa i jego kundli, a płaceniem za każdym razem za przejście przez Aleję. Wybór należy do ciebie."~ */
  IF ~~ THEN REPLY #3854 /* ~"Nie ma mowy. Nie zrobię tego."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"Zatem zrobię to."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"Jesteśmy wędrowcami. Wielokrotnie zmuszano nas do przenoszenia się z miejsca na miejsce. Osiedliśmy tutaj w tym samym czasie co Zgniły William i Kosy z Ciemnej Alei, a teraz walczymy o nasze życie. Ściągamy tylko prostą opłatę za przejście tędy. Oni zabijają. W zasadzie jesteśmy dobrymi ludźmi. Oni są źli, wiedzeni przez złego człowieka."~ */
  IF ~~ THEN REPLY #3856 /* ~"Zabiję go."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"Wygląda mi bardziej na kogoś mojego pokroju. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"Nie zrobię tego."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"I tak będę cię prosić, za każdym razem, kiedy będziesz do mnie mówił. To musi być zrobione."~ */
  IF ~~ THEN REPLY #3859 /* ~"Zatem, lepiej żebym to zrobił."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"Nadal nie zamierzam tego zrobić. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"Czy posunąłeś się choć o krok naprzód, by zapisać Zgniłego Williama w księdze umarłych?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"Mówiłem ci, że tego nie zrobię!"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"Jeszcze nie."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"Tak. Nie żyje. Nie będziesz musiała się już martwić ani nim, ani jego gangiem."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"A ja mówiłam ci, że będę cię prosiła dotąd, aż się zgodzisz to zrobić."~ */
  IF ~~ THEN REPLY #34416 /* ~"Zrobię to, tylko przestań mnie już męczyć."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"Nadal nie mam zamiaru. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"Czemu zatem ze mną rozmawiasz? To jest robota, którą trzeba wykonać!" Odwraca się.~ */
  IF ~~ THEN REPLY #34418 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"Już po wszystkim? Nie ma już Zgniłego Williama? Jestem ci wdzięczna, wędrowcze. Nigdy więcej już nie zapłacisz za przejście przez tę Aleję. Mam do ciebie jeszcze tylko jedną prośbę."~ */
  IF ~~ THEN REPLY #34419 /* ~"Zapomnij."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"Jaką?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"Co ja z tego będę miał?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"Jest taki niebezpieczny zabójca, samotny wilk, znany jako 'Czarny Tulipan'. Poluje na moich ludzi. Proszę, byś go powstrzymał."~ */
  IF ~~ THEN REPLY #34422 /* ~"Zrobię to."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"Co ja z tego będę miał?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"Nie interesuje mnie to. Żegnaj."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"On również jest już martwy."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"Brzdęk. Monety. I to całkiem sporo. Co ty na to?"~ */
  IF ~~ THEN REPLY #34425 /* ~"Tak."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"Nie."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"Znajdź zatem tego świra, Czarnego Tulipana, i zapisz go w księdze umarłych. Kiedy będzie po wszystkim, wróć tutaj, a wynagrodzę cię."~ */
  IF ~~ THEN REPLY #34427 /* ~"Umowa stoi. Żegnaj."~ */ JOURNAL #34428 /* ~Czy jest jakaś osoba, której Krystal nie chce widzieć martwej? Teraz mam poszukać 'samotnego wilka' o imieniu Czarny Tulipan i zlikwidować także jego. Za wykonanie tego zadania obiecała mi pieniądze i przyjaźń.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~Uśmiecha się. "Zdajesz sobie sprawę, oczywiście, że będę nadal cię prosić, aż w końcu się zgodzisz. Do twojego powrotu, zatem, żegnaj."~ */
  IF ~~ THEN REPLY #34429 /* ~"Świetnie. Żegnaj."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"Pozbyłeś się już z alei Czarnego Tulipana?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"Jeszcze nie."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"Tak. Nie musisz się już nim martwić."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~Wręcza ci dużą, wypchaną sakiewkę. "Masz wdzięczność moją i Kolczastych Aniołów. Rozstajemy się w przyjaźni i będziemy cię pamiętać."~ */
  IF ~~ THEN REPLY #34432 /* ~"Jasne. Żegnaj."~ */ JOURNAL #34433 /* ~Za wysiłki w zlikwidowaniu Czarnego Tulipana otrzymałem sakiewkę pieniędzy. Całkiem niezła sumka.~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"Witaj, przyjacielu. Winna ci jestem wdzięczność. Czuj się na tej Alei jak u siebie w domu. Żegnaj."~ */
  IF ~~ THEN REPLY #34434 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"Spróbuj, proszę. Dziesiątkuje moich ludzi."~ */
  IF ~~ THEN REPLY #34435 /* ~"Idę szukać dalej. Żegnaj."~ */ EXIT
END
