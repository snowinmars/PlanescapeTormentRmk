// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~Przed tobą stoi młody Grabarz z meszkiem zarostu na brodzie i ciemnymi kręgami pod oczami. Wpatruje się ponuro w ścianę.~ */
  IF ~~ THEN REPLY #14076 /* ~"Witaj."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~Widzisz Oczekującego Śmierci. Zdaje się nie zdawać sprawy z twojej obecności.~ */
  IF ~~ THEN REPLY #14078 /* ~"Witaj."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~Zignoruj go i przejdź obok.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~Gdy się zbliżasz, Oczekujący Śmierci zwraca się do ciebie. "Witaj ponownie." Na jego twarzy pojawia się delikatny uśmiech. "Dzięki za pomoc."~ */
  IF ~~ THEN REPLY #14080 /* ~"Cała przyjemność po mojej stronie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~Grabarz nie podnosi wzroku. Wpatruje się przed siebie, jakby widział coś kilka lig za ścianą karczmy.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"Czy mogę zadać ci kilka pytań?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"Czy mogę zadać ci kilka pytań?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"Czy mogę zadać ci kilka pytań?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"Żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"Żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"Żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"Żegnaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~Grabarz nie odpowiada. Cały czas wpatruje się w dal.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~Grabarz nie odpowiada. Cały czas wpatruje się w dal.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"Zatem żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"Zatem żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"Zatem żegnaj."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"Zatem żegnaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~Gdy odwracasz się, by odejść, Grabarz nagle przemawia, jego głos jest niewiele głośniejszy od pomruku - musisz wysilać się, żeby usłyszeć słowa. *Zdaje* ci się, że mówił coś o kontrakcie.~ */
  IF ~~ THEN REPLY #14092 /* ~"Co powiedziałeś?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~Zignoruj go i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~Grabarz odwraca się w twoją stronę. Twarz ma jakby z kamienia, a oczy martwe. "Dlaczego podpisałeś Kontrakt Umarłych?"~ */
  IF ~~ THEN REPLY #14094 /* ~Prawda: "Potrzebowałem pieniędzy."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~Prawda: "Chciałem wiedzieć, czy pobudzi to moją pamięć."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~Prawda: "Cóż, biorąc pod uwagę, że śmierć i ja nie rozmawiamy już ze sobą, uznałem to za zakład, którego nie mogę przegrać."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~Prawda: "Tak szczerze, to naprawdę nie wiem."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"Dlaczego cię to interesuje?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"To nie twoja sprawa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~Wygląda na zniesmaczonego. "Brzdęk. Powinienem się tego spodziewać."~ */
  IF ~~ THEN REPLY #14100 /* ~"A z jakiego innego powodu miałbym to robić?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"Pobudzi twoją pamięć?" Marszczy się. "I pamiętać tylko to życie, które zostawiłeś za sobą?"~ */
  IF ~~ THEN REPLY #14101 /* ~"A z jakiego innego powodu miałbym to robić?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~Wpatruje się w ciebie z dziwnym wyrazem twarzy. "Co masz na myśli?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"Widziałem, co leży za granicą śmierci."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"Nie wiem. Jeszcze muszę zobaczyć, co leży za granicą śmierci i pamiętać o tym. Jeśli ponownie umrę, to może o tym porozmawiamy."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"Umierałem już wcześniej. Nie pamiętam jednak z tego wiele."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"Po prostu tak się dzieje. Nazwij to podejrzeniem."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"Nieważne. Muszę odejść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~Grabarz *chrząka*. "I sprzedałeś swoje ciało bez namysłu, bez rozważenia... i to wszystko. Nie szukałeś niczego innego?"~ */
  IF ~~ THEN REPLY #14107 /* ~"Takiego jak...?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"Uwolnienie? Uwolnienie od tej egzystencji. Słuchaj... z pewnością widziałeś ciała, które chodzą ulicami Sigil?" Wzdycha. "Bezrozumne, niezdolne czuć ból, czy gniew, albo ciężar lat... oto kroczy Prawdziwa Śmierć. Oto doskonałość."~ */
  IF ~~ THEN REPLY #14108 /* ~"Któż mógłby pragnąć czegoś takiego?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"'Doskonałość'? Knebel. To nic, tylko gnijące mięso."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"Nie jesteś stary, tylko nieświadomy. Masz przed sobą całe życie bez szukania śmierci. Ona sama przyjdzie cię szukać już wkrótce, więc żyj, póki możesz."~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"Może. Nie mnie to oceniać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"Ja mógłbym. Uwolnienie jest tym, czego pragnę. Pustka. Koniec bólu i cierpienia."~ */
  IF ~~ THEN REPLY #14112 /* ~"Chcesz umrzeć?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"*Czyżby*? Widzisz tylko powierzchnię, ja dostrzegam uwolnienie od bólu i nieszczęścia."~ */
  IF ~~ THEN REPLY #14114 /* ~"Chcesz umrzeć?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~Gdy odwracasz się, by odejść, Grabarz nagle przemawia, jego głos jest niewiele głośniejszy od pomruku - musisz wysilać się, żeby usłyszeć słowa. *Zdaje* ci się, że mówił coś o chęci śmierci.~ */
  IF ~~ THEN REPLY #14116 /* ~"Co powiedziałeś?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~Zignoruj go i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~Wyraz twarzy chłopaka się nie zmienia. "Czy chcesz umrzeć?"~ */
  IF ~~ THEN REPLY #14118 /* ~Prawda: "Nie. A ty?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~Prawda: "Tak. A ty?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~Kłamstwo: "Tak. A ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"Naprawdę nie wiem. A czy *ty* chcesz umrzeć?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"Czy mi *grozisz*, chłopcze?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~Mruga. "Tak... tak. Czyżbyś miał zamiar mnie zabić?" Sztywnieje, jakby się decydował. "Dalej, nie dbam o to."~ */
  IF ~~ THEN REPLY #14125 /* ~"Jeśli takie jest twoje życzenie, spełnię je... gotuj się na śmierć."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"Ty *chcesz* umrzeć?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"Mnie też to nie obchodzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"Tak..." Przygląda ci się. "Czemu chcesz umrzeć?"~ */
  IF ~~ THEN REPLY #14128 /* ~Prawda: "Dlaczego warto żyć? Znajduję się w pułapce w mieście pełnym bestii i potworów, bez pamięci jak i dlaczego się tu znalazłem. Jestem obcy nie tylko temu miastu, ale także dla siebie. Życie nie ma dla mnie żadnej wartości."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~Prawda: "Ponieważ odmówiono mi śmierci. Samo to sprawia, że jej pożądam."~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~Prawda: "Jest coś... niepełnego wewnątrz mnie. Rozmawiam tu z tobą, ale wciąż w jakiś sposób czuję pustkę w środku. Nieważne, co robię, nie potrafię otrząsnąć się z tego odczucia. Sądzę, że śmierć może być lepsza."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~Prawda: "Sądzę, że możliwe jest, abym dowiedział się czegoś o sobie będąc martwym, czego nie byłem w stanie zrobić za życia."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~Prawda: "Kłamałem, gdy powiedziałem ci, że chcę umrzeć. Kto tego chce? Ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~Prawda: "Kłamałem, gdy powiedziałem ci, że chcę umrzeć. Kto tego chce? Ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"Nie chcę o tym z tobą rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"Tak..." Przygląda ci się. "Czemu chcesz żyć?"~ */
  IF ~~ THEN REPLY #14134 /* ~Prawda: "Po prostu chcę."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~Prawda: "Instynkt przetrwania. *Chcę* żyć."~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~Prawda: "Nie chcę jeszcze popadać w zapomnienie. Bycie żywym podoba mi się *o wiele* bardziej."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~Prawda: "Są pewne pytania dotyczące mego życia, na które muszę znaleźć odpowiedzi, zanim je porzucę. Chcę się dowiedzieć, kim jestem."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"Nie wiem."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"Nie chcę o tym z tobą rozmawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~Grabarz słucha w ciszy. Gdy skończyłeś mówić, nie odpowiada, tylko ci się przygląda. Wygląda, jakby się zastanawiał.~ */
  IF ~~ THEN REPLY #14140 /* ~"Czy chcesz umrzeć? Czy o to prosiłeś?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~Grabarz spuszcza wzrok i milknie. "Zatem nie mamy o czym rozmawiać... teraz lub kiedykolwiek. Żegnaj."~ */
  IF ~~ THEN REPLY #14142 /* ~"Zanim pójdę... czemu chcesz umrzeć?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"Zatem żegnaj."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"Tak."~ */
  IF ~~ THEN REPLY #14144 /* ~"Dlaczego chcesz umrzeć?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"Dlaczego nie chcesz żyć?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"Zatem dlaczego jeszcze się nie zabiłeś?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"Ta egzystencja... ta egzystencja to parodia życia. Nie chcę dalej kontynuować tej szarady." Jego twarz marszczy się z odrazą. "Czemu ktokolwiek chciałby pozostać w tym zatrutym mieście w centrum wieloświata, które żywi się bólem i nienawiścią? Śmierć... jest cicha... kojąca."~ */
  IF ~~ THEN REPLY #14148 /* ~"Z pewnością życie nie może być aż takie złe, jak o nim mówisz."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"To ponury punkt widzenia... życie to znacznie więcej niż ból i nienawiść."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"Zatem dlaczego jeszcze się nie zabiłeś?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"To jest *życie*?" Odsłania zęby, a jego dłonie zaciskają się. "Ta egzystencja... ta egzystencja to parodia życia. Nie chcę dalej kontynuować tej szarady. Śmierć jest cicha... kojąca."~ */
  IF ~~ THEN REPLY #14152 /* ~"Zaufaj mi, nie jest."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"Może po pierwszej śmierci."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"Zatem dlaczego jeszcze się nie zabiłeś?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"Jeśli to życie nie ma nic dla ciebie, zatem powinieneś umrzeć."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~Chłopak zdaje się być zirytowany tym komentarzem. "A skąd możesz wiedzieć?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"Widziałem, co leży za granicą śmierci."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"Nie wiem. Jeszcze muszę zobaczyć, co leży za granicą śmierci i pamiętać o tym. Jeśli ponownie umrę, to może o tym porozmawiamy."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"Sądzę, że umierałem wcześniej. Nie pamiętam jednak z tego wiele."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"Po prostu tak się dzieje. Nazwij to podejrzeniem."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"Nieważne. Muszę odejść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~Chłopak patrzy się na ciebie. "Mówisz prawdę." Patrzy na ciebie ze zdziwieniem. "Co tam jest? Co widziałeś?"~ */
  IF ~~ THEN REPLY #14162 /* ~Prawda: "Leżę na wyspie unoszącej się na oceanie ogromnej ciemności. Wyspa składa się z cienistych kamieni... ale te kamienie *nie* były kamieniami, ponieważ mruczały i szeptały do mnie w języku, którego nie potrafiłem zrozumieć. Nie ma tam ciszy ani ukojenia, a chłód wpija się w ciało i tonie w kościach."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"Nie będę rozmawiać o tym miejscu z nikim. I tak już zbyt dużo zostało powiedziane."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"*Musisz* mi powiedzieć! Muszę wiedzieć!"~ */
  IF ~~ THEN REPLY #14164 /* ~Prawda: "Leżę na wyspie unoszącej się na oceanie ogromnej ciemności. Wyspa składa się z cienistych kamieni... ale te kamienie *nie* były kamieniami, ponieważ mruczały i szeptały do mnie w języku, którego nie potrafiłem zrozumieć. Nie ma tam ciszy ani ukojenia, a chłód wpija się w ciało i tonie w kościach."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"Nic ci nie powiem."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"Nie będę o tym rozmawiać. Żegnaj."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"Musisz mi powiedzieć!" Zaciska pięść. "Czego ode mnie *chcesz*?!"~ */
  IF ~~ THEN REPLY #14167 /* ~"Prosiłbym cię, abyś żył."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"Nie daję nic i o nic cię nie proszę. Żegnaj."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"Drwisz ze mnie, panie. Naśmiewasz się z moich pytań..."~ */
  IF ~~ THEN REPLY #14169 /* ~"To *ty* jesteś głupcem, chcąc odrzucić tak beztrosko swoje życie. To obraża umarłych i obraża żywych."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"Nie mam nic więcej do powiedzenia. Żegnaj."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"Mów, co widziałeś! Czym jest Prawdziwa Śmierć?! Co tam widziałeś?" Jego głos narasta i staje się bardziej natarczywy, na tyle, że otaczający was Grabarze odwracają głowy w waszą stronę.~ */
  IF ~~ THEN REPLY #14171 /* ~Prawda: "Leżę na wyspie unoszącej się na oceanie ogromnej ciemności. Wyspa składa się z cienistych kamieni... ale te kamienie *nie* były kamieniami, ponieważ mruczały i szeptały do mnie w języku, którego nie potrafiłem zrozumieć. Nie ma tam ciszy ani ukojenia, a chłód wpija się w ciało i tonie w kościach."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~Kłamstwo: "To zapomnienie. Nic tam nie ma. To brak egzystencji."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~Kłamstwo: "To miejsce wielkiej radości, niebiańskiej piękności. Tam dusza może być szczęśliwa."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"Nie powiem. Żegnaj."~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"Nie ma różnicy..." Wpatruje się w podłogę i zagryza usta w dziwnym wyrazie. "Poza cieniem tej egzystencji oczekuje kolejne nieszczęście. Nie ma zapomnienia ani oczyszczenia... nic się nie zmienia. Sfery się obracają... i nic się nigdy nie zmienia."~ */
  IF ~~ THEN REPLY #14175 /* ~"Poza tobą. Ty wciąż możesz się zmienić."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"Jeśli w to uwierzysz, wtedy stanie się to prawdą."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"Odejdę. Żegnaj."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~Żachnął się "Nie, próbowałem. Wiele razy."~ */
  IF ~~ THEN REPLY #14178 /* ~"Jeśli w to uwierzysz, wtedy stanie się to prawdą."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"Zatem nie ma już nic więcej do powiedzenia. Odejdę."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"To więcej niż wiara, to rzeczywistość." Jego spojrzenie ciemnieje. "Czy widziałeś to miasto? Ono gnije, a wszystko w nim gnije wraz z nim... nie ma nadziei, nic o co warto by *walczyć*. Wszystko jest splamione ciemnością i cieniem."~ */
  IF ~~ THEN REPLY #14180 /* ~"Co z twoją wiarą Grabarza? Czy to nie jest wystarczająco szczytny cel?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"Zatem nie ma już nic więcej do powiedzenia. Odejdę."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"Tak jak podejrzewałem." Wzdycha. "Zatem powinno być to lepsze miejsce niż to tutaj. A ponieważ muszę umrzeć, aby tam dotrzeć..." Patrzy na ciebie. "Czy pomożesz mi umrzeć?"~ */
  IF ~~ THEN REPLY #14182 /* ~"Nie."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"Tak."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"To zależy... ile?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"Jeśli brakuje ci przekonania, aby się zabić, nie uczynię tego za ciebie."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"Nie... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~Grabarz uśmiecha się przez chwilę, po czym przygnębienie znowu spływa na jego twarz. "Zatem *muszę* umrzeć." Patrzy na ciebie z nadzieją. "Czy mi pomożesz?"~ */
  IF ~~ THEN REPLY #14187 /* ~"Nie."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"Tak."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"To zależy... ile?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"Jeśli brakuje ci przekonania, aby się zabić, nie uczynię tego za ciebie."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"Nie... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~Wpatruje się w ciebie przez chwilę, otwiera usta, po czym je zamyka. "Zatem odejdź. Nie będziemy więcej rozmawiać."~ */
  IF ~~ THEN REPLY #14192 /* ~Odejdź.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~Przytakuje. "Filozofia Grabarzy to szczytny cel. Inaczej nie stałbym się Grabarzem."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"Zatem posłuchaj tego: pałasz zbytnią chęcią, by osiągnąć zapomnienie. Według wierzeń Grabarzy właśnie ta chęć do osiągnięcia Prawdziwej Śmierci powstrzyma cię od niej na zawsze."~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"Zatem czemu nie skupisz się na wierzeniach Grabarzy? Może to i jest życie pełne bólu i nieszczęścia, ale jeśli skupisz się na wierze, która ma dla ciebie jakąś wartość, powinna ona ci pomóc przez nie przejść."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"Zatem nie ma już nic więcej do powiedzenia. Odejdę."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~Parska. "Mówisz, jak jeden z faktorów... oni nigdy nie przestają mnie *pouczać*..."~ */
  IF ~~ THEN REPLY #14196 /* ~"Mają rację tak czyniąc - widzą w twoim sercu tylko pragnienie śmierci. Jeśli chcesz osiągnąć Prawdziwą Śmierć, musisz najpierw pogodzić się z tym życiem, nieważne jak bolesne ci się zdaje. Jest to okazja, a ty wciąż jesteś młody. Może gdybyś ujrzał więcej życia, zmniejszyłaby się twoja chęć do umierania."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"Zatem nie będę cię już pouczać. Żegnaj."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"Ale jak..." Zdaje się być skonsternowany. "Jak powinienem sobie z tym poradzić?"~ */
  IF ~~ THEN REPLY #14198 /* ~"Po prostu spróbuj żyć najlepiej, jak potrafisz. Używaj tego życia, nieważne jak bardzo bolesnego, jako okazji. Jesteś młody. Może gdybyś ujrzał więcej życia, zniknęłoby twoje pragnienie śmierci."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"Musisz przetrwać to życie. Przetrzymując je, nauczysz się jak pozwolić bólowi i nieszczęściu spłynąć po tobie. Wkrótce nie będą one w stanie ciebie dotknąć, a wtedy zaczniesz zbliżać się do Prawdziwej Śmierci i zapomnienia, których tak szukasz."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"To zależy od ciebie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"Może..." Zastanawia się nad tym, co powiedziałeś. "Może masz rację. Ale... czasami ciężko jest zignorować ból tego życia. W jaki sposób powinienem sobie z tym poradzić?"~ */
  IF ~~ THEN REPLY #14201 /* ~"Po prostu spróbuj żyć najlepiej, jak potrafisz. Używaj tego życia, nieważne jak bardzo bolesnego, jako okazji. Jesteś młody. Może gdybyś ujrzał więcej życia, zniknęłoby twoje pragnienie śmierci."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"Musisz przetrwać to życie. Przetrzymując je, nauczysz się jak pozwolić bólowi i nieszczęściu spłynąć po tobie. Wkrótce nie będą one w stanie ciebie dotknąć, a wtedy zaczniesz zbliżać się do Prawdziwej Śmierci i zapomnienia, których tak szukasz."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"Całe nasze życia spędzamy na uczeniu się, jak umrzeć. Tylko ty możesz odpowiedzieć na zadane przez siebie pytania."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"To zależy od ciebie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~Chłopiec milknie, zamyślony. W końcu zwraca się z powrotem do ciebie. "Twoje słowa są wielkiej wagi, panie... i niosą świeżą perspektywę. Uczynię tak, jak powiedziałeś."~ */
  IF ~~ THEN REPLY #14205 /* ~"To wszystko, o co proszę... żyj, starzej się i ucz. Żegnaj."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"Szukałem środków, aby skończyć swoje życie. Czy możesz mnie zabić?"~ */
  IF ~~ THEN REPLY #14206 /* ~"Nie."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"Tak."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"To zależy... ile?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"Jeśli brakuje ci przekonania, aby się zabić, nie uczynię tego za ciebie."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"Dobrze. Zostaw mnie. Nie będziemy więcej rozmawiać."~ */
  IF ~~ THEN REPLY #14211 /* ~"Zatem żegnaj."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~Wzdycha z ulgą, po czym wyciąga zza pazuchy sakwę. Gdy kładzie ją przed sobą, rozlega się brzdęk. "Uczyń to teraz. Nie mogę dłużej czekać."~ */
  IF ~~ THEN REPLY #14212 /* ~"W porządku... zamknij oczy."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"Czekaj... nie chcę twoich pieniędzy. Chcę wiedzieć, czemu pragniesz umrzeć."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"Nie zrobię tego. Żegnaj."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~Zamyka oczy.~ */
  IF ~~ THEN REPLY #14215 /* ~Otocz dłońmi jego kark i uduś go.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~Weź pieniądze i cicho odejdź.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"Zatrzymaj swoje pieniądze. Chcę wiedzieć, czemu pragniesz umrzeć."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"Nie zrobię tego. Żegnaj."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~Delikatnie podnosisz sakwę z ziemi i cicho odchodzisz - w środku zdaje się być około pięćdziesięciu miedziaków. Grabarz trwa w bezruchu, gdy odchodzisz. Oczy ma zamknięte.~ */
  IF ~~ THEN REPLY #14219 /* ~"Zawartość tej sakwy to cena za twoją głupotę. Żegnaj..."~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~Kładziesz dłonie na jego karku i zaczynasz go powoli dusić. On wydaje z siebie ciche sapnięcie, a jego oczy rozszerzają się - z błagalnym wyrazem twarzy wczepia się on paznokciami w twoje ręce.~ */
  IF ~~ THEN REPLY #14220 /* ~Złam mu kark.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~Puść go.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~Chcesz dalej go dusić, gdy nagle, bez twojej najmniejszej chęci, odsuwasz dłonie z jego szyi. Oczekujący Śmierci bierze oddech - i wygląda tak, jakby chciał ci podziękować, że przestałeś - gdy zaciskasz swoje dłonie na jego skroniach i obracasz jego głowę ostro w lewo. Rozlega się trzask i chłopak opada bezwładnie w twoje ramiona.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"Do zobaczenia po drugiej stronie, Grabie..."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"Do zobaczenia po drugiej stronie, Grabie..."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~Ku twemu zaskoczeniu, ta czynność zdawała się być instynktowna, jakbyś robił to już wiele razy... wraz z nią pojawia się poszarpane wspomnienie, ale nie jest ono na tyle silne, by się wynurzyć.~ */
  IF ~~ THEN REPLY #14224 /* ~Pozwól ciału opaść na ziemię.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~Gdy chłopak opada na ziemię, w karczmie rozlega się ryk...~ */
  IF ~~ THEN REPLY #14225 /* ~"Ojej..."~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~Puszczasz go... i ku swemu zmieszaniu stwierdzasz, że czynisz to niechętnie. Chłopak chwyta oddech, mocno kaszląc.~ */
  IF ~~ THEN REPLY #14226 /* ~"Zmieniłeś zdanie?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~Chłopak przytakuje słabo.~ */
  IF ~~ THEN REPLY #14227 /* ~"Słuchaj... następnym razem, gdy będziesz chciał 'umrzeć', lepiej bądź tego cholernie pewny, ponieważ następny gość może się nie zatrzymać, gdy go o to poprosisz. A teraz przestań szlochać, jakby życie było okrutne, skoro najwyraźniej wciąż chcesz być jego częścią."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~Chłopak przez chwilę patrzy na ciebie w milczeniu, po czym powoli przytakuje, pocierając kark.~ */
  IF ~~ THEN REPLY #14228 /* ~"Zatrzymuje pieniądze jako cenę tej lekcji."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"Nie wypełniłem mojej części umowy, więc zatrzymaj swoje pieniądze."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~Chłopak przytakuje ponownie i w końcu chwyta oddech. "Bardzo... dobrze. Dziękuję... bardzo, panie. Za ukazanie mi... świeżej perspektywy."~ */
  IF ~~ THEN REPLY #14230 /* ~"Nie dziękuj mi, po prostu *żyj*. Gdy traktujesz życie beztrosko, obrażasz martwych. Żegnaj."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"To nie jest sprawa przekonania..."~ */
  IF ~~ THEN REPLY #14231 /* ~"Zatem musi to być inna sprawa. A więc pytam cię: co takiego jest w życiu, że sprawia, iż go nienawidzisz?"~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"Tak jest. Gdybyś naprawdę chciał umrzeć, już dawno znalazłbyś jakiś środek. Nie marnuj więcej naszego czasu tą czczą gadką. Żegnaj."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~Rzuca na stół małą sakwę. "W tej sakwie jest wszystko, co posiadam. Pięćdziesiąt miedziaków. Zabij mnie, a będą twoje."~ */
  IF ~~ THEN REPLY #14233 /* ~"W porządku... zamknij oczy."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"Czekaj... nie chcę twoich pieniędzy. Chcę wiedzieć, czemu pragniesz umrzeć."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"Nie zrobię tego. Żegnaj."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~Grabarz żachnął się. "Nie jest to zbyt przekonujące."~ */
  IF ~~ THEN REPLY #14236 /* ~"Zatem spróbuj mnie zabić. Zobacz, co się stanie."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"Mogę to udowodnić."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"Widziałem, co leży za granicą śmierci."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"Nie wiem. Jeszcze muszę zobaczyć, co leży za granicą śmierci i pamiętać o tym. Jeśli ponownie umrę, to może o tym porozmawiamy."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"Sądzę, że tylko ty sam siebie tutaj okłamujesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~Grabarz mruga, po czym parska. "Pierwsza śmierć? Czyżbyś został wskrzeszony?"~ */
  IF ~~ THEN REPLY #14241 /* ~"Wskrzeszony?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"Zatem spróbuj mnie zabić. Zobacz, co się stanie."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"Czy chcesz to zobaczyć?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"Widziałem, co leży za granicą śmierci."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"Nie wiem. Jeszcze muszę zobaczyć, co leży za granicą śmierci i pamiętać o tym. Jeśli ponownie umrę, to może o tym porozmawiamy."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"Jeśli kiedykolwiek ponownie umrę i będę o tym pamiętać, wrócę do ciebie, aby ci o tym opowiedzieć. Wtedy będziesz mógł ocenić, czy kłamię, czy nie. Żegnaj."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"Sądzę, że tylko ty sam siebie tutaj okłamujesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~Grabarz mruga, po czym parska. "Kłamiesz. Żaden człowiek nie może umrzeć więcej niż raz... chyba że zostanie wskrzeszony przy pomocy potężnej magii."~ */
  IF ~~ THEN REPLY #14248 /* ~"Wskrzeszony?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"Zatem spróbuj mnie zabić. Zobacz, co się stanie."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"Czy chcesz to zobaczyć?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"Jeśli kiedykolwiek umrę i będę o tym pamiętać, wrócę do ciebie, aby ci o tym opowiedzieć. Wtedy będziesz mógł ocenić, czy kłamię, czy nie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"Sądzę, że tylko ty sam siebie tutaj okłamujesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"Wskrzeszony... przywrócony do życia... magia do tego potrzebna jest naprawdę potężna."~ */
  IF ~~ THEN REPLY #14253 /* ~"Kto byłby w stanie czegoś takiego dokonać?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"Nie wierzysz, że mogę umrzeć? Zatem spróbuj mnie zabić. Zobacz, co się stanie."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"Nie wierzysz, że mogę umrzeć? Mogę ci to udowodnić."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"Jeśli kiedykolwiek umrę i będę o tym pamiętać, wrócę do ciebie, aby ci o tym opowiedzieć. Wtedy będziesz mógł ocenić, czy kłamię, czy nie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"Potężny czarodziej lub kapłan... albo jedna z Mocy... ale nikt, kogo bym znał." Marszczy się. "I nie sądzę, abyś ty również znał kogoś podobnego."~ */
  IF ~~ THEN REPLY #14258 /* ~"Nie wierzysz, że mogę umrzeć? Zatem spróbuj mnie zabić. Zobacz, co się stanie."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"Nie wierzysz, że mogę umrzeć? Mogę ci to udowodnić."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"Jeśli kiedykolwiek umrę i będę o tym pamiętać, wrócę do ciebie, aby ci o tym opowiedzieć. Wtedy będziesz mógł ocenić, czy kłamię, czy nie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"Sądzę, że tylko ty sam siebie tutaj okłamujesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~Patrzy na ciebie sceptycznie. "Nie, nie sądzę, nawet jeśli czułbym taką potrzebę."~ */
  IF ~~ THEN REPLY #14262 /* ~"Zatem zmuszę cię, abyś mi się przyglądał: pokażę ci, co niesie śmierć."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"Nieważne. Co miałeś na myśli, mówiąc 'wskrzeszony'?"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"Jeśli strach i wahanie rządzą wszystkimi twoimi działaniami, to wątpię, aby ta egzystencja sprawiała ci wiele radości."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"Zatem dość już o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"Co... masz na myśli?" Wygląda, jakby chciał się odwrócić, ale nie jest w stanie. "Nie możesz poważnie..."~ */
  IF ~~ THEN REPLY #14266 /* ~Schwyć głowę dłońmi i skręć sobie kark.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~Twój wzrok powoli wraca... śmierć była tym razem inna. Widzisz stojącego nad sobą Oczekującego Śmierci... wygląda na przerażonego i zafascynowanego. Pomaga ci usiąść na krześle i patrzy niepewnie na innych klientów... wydaje się, że tego nie zauważyli albo uznali cię za pijaka.~ */
  IF ~~ THEN REPLY #14267 /* ~"Jesteś teraz przekonany?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"Jesteś bzikiem." Wpatruje się w twoje rany. "Nie mogłeś umrzeć, tylko zostałeś zraniony."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"Czy... czy jesteś jednym z chodzących śmierci?"~ */
  IF ~~ THEN REPLY #14268 /* ~"Nie."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"Tak."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"Nie wiem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"Zatem czym jesteś?"~ */
  IF ~~ THEN REPLY #14271 /* ~"Nie wiem. Ale umieram i się odradzam."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"Ale... wciąż myślisz, wciąż czujesz?"~ */
  IF ~~ THEN REPLY #14272 /* ~"Tak."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"Tak, ale... jest pustka. Czegoś brakuje i to cię pożera, nigdy nie zostawia w spokoju."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"Być martwym... i *wciąż* myśleć i czuć?! Czy nieszczęście kiedykolwiek zostawi ciało w spokoju?" Ta myśl zdaje się go przerażać. "Nawet śmierć nie jest uwolnieniem."~ */
  IF ~~ THEN REPLY #14274 /* ~"W rzeczy samej. Może nie powinieneś tak szybko opuszczać tego życia, zanim nie dowiesz się, co szykuje ci następne."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~Oczekujący Śmierci ignoruje cię. Nie patrzy ci w oczy.~ */
  IF ~~ THEN REPLY #61497 /* ~Odejdź.~ */ EXIT
END
