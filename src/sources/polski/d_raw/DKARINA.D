// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~Widzisz ładną, młodą kobietę ubraną w proste odzienie. Chodzi po rynku oglądając wszystko, ale nic nie kupuje. Zauważasz, że ludzie starają się jej unikać, ale nie chcą, żeby było to widoczne. Gdy podchodzisz, posyła ci ciepły uśmiech.~ */
  IF ~~ THEN REPLY #36100 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Uśmiecha się szerzej. "Witaj, jestem Karina. Miło mi cię poznać, śmiałku." Wciąż się uśmiecha, czekając na twoją reakcję.~ */
  IF ~~ THEN REPLY #36103 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~Kiwa głową. "Dobrze. Co chcesz wiedzieć?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"Szukam kogoś, kto nazywa się Lotar albo Pan Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"Miałem czaszkę, ale ktoś mi ją ukradł. Nie wiesz, kto mógłby zrobić coś takiego?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"Gdzie tu można kupić broń?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"Gdzie tu można kupić magiczne przedmioty?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"Ty, uch... naprawdę lubisz mówić, prawda?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~Marszczy czoło. "Lotar... nie znam nikogo, kto nazywa się Lotar. Nie pamiętam nawet, żebym słyszała to imię." Obdarza cię zatroskanym spojrzeniem. "Powiedziałeś Pan Kości? Brzmi złowrogo, prawda? Czemu ktoś chciałby być znany pod takim imieniem?"~ */
  IF ~~ THEN REPLY #36113 /* ~"No cóż... brzmi raczej imponująco..."~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"Cóż... chyba żeby straszyć ludzi."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"Czaszkę? Po co ci takie coś? To raczej makabrycznie, prawda? Och dobrze, jeśli chcesz czaszkę, chyba możesz ją dostać w Kostnicy... cóż, może nie. Teraz sobie myślę, że nie lubią rozdawać tam takich rzeczy... Tak czy owak, nie wiem, kto mógłby wziąć twą czaszkę. Po co ci ona?"~ */
  IF ~~ THEN REPLY #36118 /* ~"Jest moim przyjacielem."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"Jest dla mnie wartościową rzeczą."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~Uśmiecha się pokazując jeden ze straganów. "Anze sprzedaje broń. Każdego rodzaju. Jesteś wojownikiem? Ale jestem głupia, jasne, że jesteś. To znaczy, jak mógłbyś nim nie być mając te wszystkie blizny... Och, przepraszam, nie powinnam o nich mówić. Nie jesteś czuły na tym punkcie, prawda?"~ */
  IF ~~ THEN REPLY #36123 /* ~"Nie, przyzwyczaiłem się do nich."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"Tak i nie mów o tym więcej."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~Uśmiecha się pokazując jeden ze straganów. "Aalek sprzedaje magiczne przedmioty. Jesteś magiem? Nie wyglądasz na maga, ale chyba wygląd może mylić. Teraz sobie myślę, że właściwie nie wiem jak właściwie wygląda mag. A ty wiesz?"~ */
  IF ~~ THEN REPLY #36128 /* ~"Tak. Noszą płaszcze ze śmiesznymi symbolami i szpiczaste kapelusze."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"Nie, nie bardzo."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~Przytakuje. "Tak... chyba wiem, o co ci chodzi. Coś w tym jest. Hmmm. Całkiem chwytliwe, jak się o tym trochę pomyśli." Pogrąża się w myślach.~ */
  IF ~~ THEN REPLY #36132 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~Obrzuca cię zagadkowym spojrzeniem. "Naprawdę? Czaszka? Dziwnie to brzmi, wiesz? Nigdy nie słyszałam, żeby ktoś miał czaszkę za przyjaciela. Spotyka się ludzi ze zwierzątkami i w ogóle, ale nigdy z czaszką. A poza tym, nie powiedziałeś, że to maskotka, powiedziałeś, że to przyjaciel, a to jeszcze dziwniejsze." Przerywa, żeby się zastanowić.~ */
  IF ~~ THEN REPLY #36134 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~Wygląda, że jej ulżyło. "Och, to dobrze... nie chciałam obrazić twych uczuć, ani niczyich innych. Po prostu trzeba uważać, co się do kogo mówi, wiesz? To znaczy, ludzie są różni i nigdy nie wiadomo. Co jest obraźliwe dla jednego, dla drugiego nie jest. A więc... w każdym razie." Przerywa, żeby złapać oddech i uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #36136 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"Naprawdę? Dobrze wiedzieć. To znaczy, magowie mnie przerażają, więc wolę wiedzieć, jak wyglądają. To chyba przez tę ich moc i przez to, że robią tak niewiarygodne rzeczy i w ogóle, a nie wiem jak ich rozpoznać. Wojownicy i kapłani i... i... wiesz, inni potężni ludzie po prostu wyglądają na potężnych, z całym tym majdanem, który oznacza, że są potężni. Ale nie magowie." Przerywa.~ */
  IF ~~ THEN REPLY #36138 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~Palcem stuka w policzek i wygląda na pogrążoną w myślach. W końcu kiwa głową. "Tak... chyba masz rację. Samo myślenie o tym przyprawia mnie o dreszcze. 'Pan Kości' to raczej przerażający tytuł. Chyba nie chciałabym zadrzeć z kimś, kto ma taki tytuł." Znów się zastanawia.~ */
  IF ~~ THEN REPLY #36140 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~Wzrusza ramionami. "Och, cóż... No dobrze, więc chcesz mieć czaszkę, co wydaje się w porządku. Ludzie zbierają najdziwniejsze rzeczy. Ja sama nie, ale znam wielu, co zbierają. A jednak jesteś jedynym, kogo znam, który zbiera czaszki. Może ja też powinnam zacząć coś zbierać..."~ */
  IF ~~ THEN REPLY #36142 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~Wygląda na smutną i obdarza cię zatroskanym spojrzeniem. "Przykro mi. Mam nadzieję, że mi wybaczysz, nie chcę obrażać ludzi, ani ranić ich uczuć i w ogóle. To znaczy, nie lubię, gdy ktoś mnie rani, więc dlaczego ja powinnam robić to samo? Oni pewnie też tego nie lubią... chyba że są skrzywieni... albo coś takiego." Patrzy niewinnym wzrokiem.~ */
  IF ~~ THEN REPLY #36144 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~Nagle staje się podekscytowana i pokazuje cię palcem. "Widzisz! To właśnie chciałam powiedzieć. Mają tę całą budzącą respekt moc i potrafią robić naprawdę niesamowite rzeczy, ale nie można ich rozpoznać po wyglądzie. Dlatego mogą się do ciebie zbliżyć. To znaczy kapłani i wojownicy i w ogóle mają te wszystkie rzeczy i po prostu widać kim są, więc wiesz, że musisz uważać. Ale nie magowie." Obdarza cię rzeczowym spojrzeniem.~ */
  IF ~~ THEN REPLY #36146 /* ~"Mam kilka pytań..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~Przestępuje z nogi na nogę; wygląda na zmieszaną. "Ja, uch... No cóż... Powiedziano mi, że trochę za dużo mówię i, cóż... Ludzie mnie unikają... i właściwie nie mam żadnych przyjaciół ani zalotników... Czasami czuję się bardzo samotna..." Zniża głos tak długo, aż w ogóle jej nie słychać. Wzrok ma wbity w ziemię.~ */
  IF ~~ THEN REPLY #36148 /* ~"No cóż, chyba rozumiem dlaczego."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"Nie uważam, żebyś była zła, Karino. Przypadkiem cię lubię."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~Spotkałem młodą kobietę o imieniu Karina. Trochę za dużo mówi i ma skłonności do paplaniny, ale wydaje się miła. Powiedziała mi, że jest samotna.~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~Najpierw tylko stoi patrząc pod nogi, a po chwili zauważasz, że cicho popłakuje. Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #36152 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~Jej spojrzenie jest pełne nadziei. "Naprawdę? Tak bardzo ci dziękuję... nie znam twego imienia."~ */
  IF ~~ THEN REPLY #36154 /* ~Kłamstwo: "Jestem Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"Nie pamiętam swego imienia."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"Żegnaj, Karino."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~Uśmiecha się. "Dziękuję ci, Adahnie. Dobrze jest wiedzieć, że ma się przyjaciela."~ */
  IF ~~ THEN REPLY #36158 /* ~"Żegnaj, Karino."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~Marszczy czoło, zaczyna coś mówić, ale przestaje, żeby pomyśleć. Wzrusza ramionami. "Co kryje się w imieniu? Po prostu miło jest wiedzieć, że ma się przyjaciela." Uśmiecha się.~ */
  IF ~~ THEN REPLY #36160 /* ~"Żegnaj, Karino."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~Widzisz Karinę. Uśmiecha się, gdy podchodzisz. "Witaj ponownie. Jak się miewasz w tym pięknym dniu?"~ */
  IF ~~ THEN REPLY #36162 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Karina uśmiecha się i wygląda na zadowoloną. "Witaj, przyjacielu. Tak dobrze znów cię widzieć."~ */
  IF ~~ THEN REPLY #36165 /* ~"Chciałem się tylko przywitać Karino. Życzę dobrego dnia."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~Karina zauważa, że się zbliżasz i przesyła ci promienny uśmiech. "Witaj ponownie." Wygląda na pełną entuzjazmu. "Tak bardzo ci dziękuję, śmiałku! Jestem ci bardzo wdzięczna za to, co zrobiłeś."~ */
  IF ~~ THEN REPLY #36167 /* ~"A co takiego zrobiłem, Karino?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~Śmieje się. "Przysłałeś do mnie Korvusa, wiem, bo mi powiedział. Bał się do mnie podejść, myślał, że mam wielu zalotników... Cóż, chcę tylko powiedzieć: dziękuję." Przytula cię.~ */
  IF ~~ THEN REPLY #36169 /* ~"Proszę bardzo, Karino. Życzę wam obojgu szczęścia."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"Dziękuję ci, śmiałku. Mam nadzieję, że ty też znajdziesz w życiu szczęście."~ */
  IF ~~ THEN REPLY #36171 /* ~"Żegnaj."~ */ EXIT
END
