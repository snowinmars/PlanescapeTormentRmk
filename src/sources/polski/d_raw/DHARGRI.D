// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~Szkielet ubrany jest w coś, co wydaje się być płaszczem starożytnego kapłana, ciężkim i bogato zdobionym. Ma ze sobą dużą, imponującą laskę, zwieńczoną zawile rzeźbionymi rogami, wisiorkami i pozłacaną czaszką.~ */
  IF ~~ THEN REPLY #2928 /* ~"Witaj..."~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~Zostaw 'kapłana' w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~Szkielet lustruje cię wzrokiem, ma oczy niczym płonące węgliki... ale nie odpowiada.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"Czy jesteś Milczącym Królem?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"Czy jesteś Hargrimmem?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~Uroczyście kiwa głową, wisiorki na jego lasce miękko pobrzękują. Jest coś niepokojącego w jego cichym, przeszywającym spojrzeniu.~ */
  IF ~~ THEN REPLY #21047 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~Pokazuje ci abyś kontynuował.~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"Czy wiesz, że Soe to szpieg czaszkoszczurów?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"Znalazłem i zabiłem stado czaszkoszczurów w ruinach starego korytarza."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~Powiedziałem Hargrimmowi, że znalazłem kilka czaszkoszczurów pośród Ziem Umarłych i że je zabiłem. Podziękował mi. Nic ponadto.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"Czy mogę mówić z Milczącym Królem?"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"Dlaczego chcecie mnie uwięzić?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"Gdzie jestem?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"Co tutaj robisz?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"Chciałbym cię o kogoś spytać..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"Wiedziałeś gdzieś tutaj małą kulę z brązu?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"Potrzebuję uzdrowiciela - możesz mi pomóc?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"Czy możemy tu odpocząć?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"Potrzebujemy uzdrowiciela - możesz nam pomóc?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~Potrząsa głową, obracając się z niesamowitą gracją i pokazuje na wschód. Potem znów odwraca się do ciebie.~ */
  IF ~~ THEN REPLY #21109 /* ~"Czy jesteś Hargrimmem?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"Czy mogę z nim pomówić?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~Podnosi kościstą dłoń. Jego szczęki otwierają się z trzaskiem i skrzypieniem; towarzyszy temu chmura kurzu. "Nie." Jego głos, niski i donośny, odbija się echem w sklepionej komnacie.~ */
  IF ~~ THEN REPLY #21114 /* ~"Dlaczego nie?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"Muszę mieć jego pozwolenie by odejść."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"Muszę mieć jego pozwolenie by odejść."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~Prawda: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~Blef: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~Jego głos grzmi w komnacie: "Żadne żywe stworzenie nie może przejść przez drzwi, które prowadzą do jego sali tronowej; a nawet, gdyby to było możliwe, nie umożliwiłbym ci audiencji. *Nie* zobaczysz go."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"Przecież bym mógł odejść, potrzebna mi jego zgoda."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"Przecież bym mógł odejść, potrzebna mi jego zgoda."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~Prawda: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~Blef: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"W takim razie, odpowiedz mi na kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"W takim razie, pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"Zaniosę twą prośbę Milczącemu Królowi."~ */
  IF ~~ THEN REPLY #21129 /* ~"Dzięki..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"Milczący Król zdecydował. Jesteś wolny. Nie będziemy cię więcej zatrzymywać."~ */
  IF ~~ THEN REPLY #21131 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~Hargrimm rozmawiał w moim imieniu z Milczącym Królem. Zostałem wypuszczony z niewoli w Ziemiach Umarłych.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~Hargrimm zauważa twoją obecność i delikatnie kiwa głową.~ */
  IF ~~ THEN REPLY #21134 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"Jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~Podnosi dłoń. "Nie. Na potęgę Milczącego Króla, nie wyjdziesz stąd."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"Co mam zrobić, by cię przekonać?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"Co mam zrobić, by cię przekonać?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"Ale... co *jeszcze* mogę zrobić, żeby cię przekonać?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~Spytałem Hargrimma, co takiego powinienem uczynić, aby mnie uwolnił. Hargrimm powiedział mi wówczas, że chce, abym znalazł sposób na usunięcie z Ziem Umarłych Soego, a jeżeli to uczynię, porozmawia na temat mojego uwolnienia z Milczącym Królem.~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~Prawda: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~Blef: "Pozwól mi się z nim zobaczyć, albo rozwalę cię na kawałki."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"W takim razie odpowiedz mi na parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"W takim razie pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~Jego głos grzmi w komnacie: "NIE ZROBISZ *NIC* TAKIEGO." Kurz opada z sufitu, od jego głosu brzęczy ci w uszach. Gdy wracasz do siebie, wokół niego pojawia się aura siły. Mimo to, nie atakuje.~ */
  IF ~~ THEN REPLY #21144 /* ~Zaatakuj go.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"W takim razie, mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"W takim razie, pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"Taka jest wola Milczącego Króla. Wszyscy żyjący, którzy zostaną tu złapani, będą marnieć w tych komnatach, tak długo jak nie dołączą do milczących."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"Czy można go przekonać, by jednak pozwolił mi odejść?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm powiedział mi, że jest szansa na przekonanie Milczącego Króla do uwolnienia mnie. Gdybym tylko mógł się z nim jakoś spotkać...~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"Milczących?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"Milczący to Naprawdę martwi. Ci, którzy nie mówią, śpią po wsze czasy. Oby Milczący Król miał ich w opiece!"~ */
  IF ~~ THEN REPLY #21155 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"Czy można przekonać Milczącego Króla, by mnie uwolnił?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm powiedział mi, że jest szansa na przekonanie Milczącego Króla do uwolnienia mnie. Gdybym tylko mógł się z nim jakoś spotkać...~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~Po chwili milczenia jego szczęki otwierają się ze zgrzytaniem: "Wątpię, ale być może. Niezbadane są wyroki Milczącego Króla."~ */
  IF ~~ THEN REPLY #21160 /* ~"Czy mogę z nim porozmawiać?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~Pokazuje wokół siebie. "W granicach Ziem Umarłych, w komnatach Milczącego Króla."~ */
  IF ~~ THEN REPLY #21164 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~Pokazuje swoją laskę i płaszcz. "Zwą mnie Hargrimmem. Jestem wielkim kapłanem tutejszych mieszkańców. Głoszę słowo Milczącego Króla jego wyznawcom."~ */
  IF ~~ THEN REPLY #21168 /* ~"Jak się tu znalazłeś?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"Jego wyznawcom? Kto jeszcze jest tutaj?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"My, szkielety. Inni nieumarli - zombie i ghule. Kiedyś były też cienie, ale upłynęło już dużo czasu, odkąd uciekły. Czasami, ktoś z Żyjących spędza tu ostatnie dni. A daleko na wschodzie mieszka wiele czaszkoszczurów."~ */
  IF ~~ THEN REPLY #21174 /* ~"Opowiedz mi o tutejszych mieszkańcach."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"Opowiedz mi o tych szczurach."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"Opiekujemy się milczącymi - prawdziwie martwymi i słuchamy słów Milczącego Króla. Nasza praca trwa już od wieków."~ */
  IF ~~ THEN REPLY #21180 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~Odpowiada, wydmuchując chmurę stęchłego kurzu: "O kogo pytasz?"~ */
  IF ~~ THEN REPLY #21185 /* ~"Zombie."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"Ghule."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"Co z tymi cieniami?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"Nieważne. Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"Służą Milczącemu Królowi i Ziemiom Umarłych jako robotnicy. Pracują pod kierunkiem Czerstwej Mary, najbardziej inteligentnej i najmądrzejszej z nich."~ */
  IF ~~ THEN REPLY #21192 /* ~"Opowiedz mi o Czerstwej Mary."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"Nie ufam ani im, ani ich matriarsze, Akaście. Obserwują nas głodnymi oczyma i bez wątpienia pożarłby nas wszystkich, gdyby nie nasza liczebność i słowo Milczącego Króla." Przestaje, jak gdyby chciał pomyśleć.~ */
  IF ~~ THEN REPLY #21197 /* ~"Mów dalej..."~ */ JOURNAL #21202 /* ~Hargrimm powiedział mi, że martwi się o Akastę. Sądzi, że tylko łączna liczba szkieletów i zombie, a także strach przed Milczącym Królem, powstrzymują Akastę i jej ghule przed zabijaniem i pożeraniem wszystkiego co znajduje się w katakumbach.~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"Opowiedz mi o Akaście."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"To szkodniki o jednym umyśle, które kiedyś licznie tu przybyły, karmiąc się ciałami, które mamy pod opieką. To głównie Ghule ich przegoniły - już nie mają swych kolonii na wschód stąd."~ */
  IF ~~ THEN REPLY #21204 /* ~"Czy mają jakieś słabe punkty?"~ */ JOURNAL #21209 /* ~Hargrimm powiedział mi, że chcąc lepiej zwalczać czaszkoszczury, powinienem wyszukiwać i niszczyć jak najwięcej mniejszych skupisk tych stworzeń. Tym samym, nie będą się mogły łączyć w większe grupy, a przez to dysponować będą mniejszą mocą w walce.~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"Opowiedz mi o ghulach."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"Kto jeszcze zamieszkuje to miejsce?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~Odpowiada, wydmuchując chmurę stęchłego kurzu: "O kogo pytasz?"~ */
  IF ~~ THEN REPLY #21211 /* ~"Opowiedz mi o sobie."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"Opowiedz mi o Czerstwej Mary."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"Opowiedz mi o Soem."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"Opowiedz mi o Soem."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"Opowiedz mi o Akaście."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"Nasz pan i wizjoner, ten, który stanowi prawo i chroni nas. Dobrze by było, gdybyś nie wszczynał tu awantur, przybyszu, gdyż Milczący Król widzi wszystko i szybko wymierza sprawiedliwość."~ */
  IF ~~ THEN REPLY #21220 /* ~"Dlaczego zwiecie go Milczącym Królem?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"Mówi tylko tyle, ile trzeba by nas prowadzić. Chwalmy Milczącego Króla."~ */
  IF ~~ THEN REPLY #21225 /* ~"Czy mogę z nim pomówić?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"Jest najbardziej inteligentną z tych, których czasem zwą 'gnijącą hordą', zombie, którzy zamieszkują Ziemie Umarłych. Inaczej niż u wielu z nas, jej serce nie umarło razem z nią. Tyle mniej więcej można powiedzieć."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"Nie masz kłopotów ze zrozumieniem jej?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Kiedy rozmawiałem z Hargrimem o niemożności zrozumienia Czerstwej Mary, odpowiedział mi, że muszę się *nauczyć* z nią rozmawiać. Być może ona będzie wiedziała co miał na myśli.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"Jak ją rozumiesz?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Kiedy rozmawiałem z Hargrimem o niemożności zrozumienia Czerstwej Mary, odpowiedział mi, że muszę się *nauczyć* z nią rozmawiać. Być może ona będzie wiedziała co miał na myśli.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"Opowiedz mi o... 'gnijącej hordzie'."~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~Zanim odpowie, milczy przez długą chwilę. "Musisz *nauczyć* się słuchać, to wszystko."~ */
  IF ~~ THEN REPLY #21237 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~Jego głos staje się jeszcze bardziej ponury: "Nie będę już o nim mówił. Niech będzie przeklęty!"~ */
  IF ~~ THEN REPLY #21241 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"Próbuje przekonać nas byśmy odrzucili te, jak je nazywa, 'pozory życia' i przeszli do Prawdziwej Śmierci. Twierdzi, że nasze namiętności wiążą nas z tym życiem i że musimy wyrzec się zarówno ich, jak i naszych obowiązków. Chce abyśmy umarli."~ */
  IF ~~ THEN REPLY #21245 /* ~"Mów dalej..."~ */ JOURNAL #21249 /* ~Hargrimm nie jest zadowolony z Soego, ponieważ Grabarz wciąż próbuje przekonać mieszkańców Ziem Umarłych do śmierci. Kapłan sądzi, że gdyby tak się stało, a ich liczba zbytnio by zmalała, cała ich cywilizacja zostałaby zagrożona, niezdolna do samoobrony przed takimi niebezpieczeństwami jak czaszkoszczury czy ghule Akasty.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"Niektórzy słuchają jego słów, ale nikt nie przyjął jego wiary. Ci, którzy by to zrobili, umilkliby na zawsze. Nasza liczba by zmalała, a wszystko, co tu mamy zostałoby zniszczone przez tych, którzy nas otaczają. Soe może wierzyć, że robi dobrze, ale naprawdę tylko szkodzi."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"Wiesz, że on jest szpiegiem czaszkoszczurów?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"Dlaczego pozwalasz mu tu być?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"Nie możemy zmusić go by odszedł. Wie, że nie możemy go zranić. Pakt Umarłych... żaden nieumarły nie może zranić Grabarza, chyba że w obronie własnej. A poza tym Milczący Król nie życzy sobie rzezi w tych komnatach."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"Czy wiesz, że jest szpiegiem czaszkoszczurów?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"Jest matriarchą stada ghuli, które tutaj przybyły. Jest silna i bardzo przebiegła."~ */
  IF ~~ THEN REPLY #21262 /* ~"Opowiedz mi o ghulach."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"Pozwól, że spytam o kogoś innego..."~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~Kręci głową. "Nie widziałem. Dlaczego jej szukasz?"~ */
  IF ~~ THEN REPLY #21267 /* ~"Dla człowieka, który zwie się Farod."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~Szkielet cofa się. Patrzy w górę i w dal, jak gdyby chciał wejrzeć na powierzchnię. "Krew wciąż bije w jego czarnym, robaczywym sercu? Ten rzężący wór wciąż każe swym stadom najeżdżać i grabić nasze domy." Znów patrzy ci prosto w oczy. "Przychodząc tutaj popełniłeś błąd... w naszych granicach nie tolerujemy takiej profanacji."~ */
  IF ~~ THEN REPLY #21271 /* ~"Ale ja nie jestem z jego stada..."~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"Co zamierzasz zrobić?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"Co zamierzasz zrobić?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~Patrzy na ciebie w ciszy. "Nic... Pakt Umarłych ochrania cię. Ale zostaniesz tu, aż do śmierci."~ */
  IF ~~ THEN REPLY #21275 /* ~"Ale ja nie mogę umrzeć."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"Nie jestem człowiekiem Faroda."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"Mam parę innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"To wszystko, co chcę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"Zabijemy cię zgodnie z prawem Milczącego Króla. Żadna cmentarna hiena nie może tu żyć."~ */
  IF ~~ THEN REPLY #21280 /* ~"Ale ja nie mogę umrzeć."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"Nie jestem człowiekiem Faroda."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~Patrzy ci w oczy jakiś czas, potem odpowiada. "To nie problem. Zostaniesz tu na zawsze, pod okiem Milczącego Króla. Być może pewnego dnia, ujrzysz jak szalony jest twój wybór i będziesz chciał przysłużyć się naszej społeczności."~ */
  IF ~~ THEN REPLY #21285 /* ~"W rzeczywistości nie jestem człowiekiem Faroda."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"Dlaczego więc tu jesteś, dlaczego nachodzisz nasz dom i pracujesz dla tej nieszczęsnej duszy?"~ */
  IF ~~ THEN REPLY #21289 /* ~"Szukam dla niego kuli w zamian za informacje, których potrzebuję. To cały układ między nami."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"To układ jednorazowy i wyłącznie obopólnej korzyści. Wynagrodzi mnie, gdy przyniosę mu tę kulę."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~Lustruje cię uważnie, klepiąc się w policzek kościstym palcem - *klik, klik, klik*. "Nie wydaje się, byś szedł w ślady takiego człowieka. Być może mówisz prawdę. Być może... twa obecność tutaj jest usprawiedliwiona."~ */
  IF ~~ THEN REPLY #21292 /* ~"Dobrze. Mam jeszcze inne pytania..."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"Dobrze. Żegnaj."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~Przysuwa się do ciebie, czuć od niego kurz i zapach gnijącego ubrania. "O czym ty mówisz? Jaki masz dowód na to, że Soe trzyma stronę tego plugastwa?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"Rozmawiałem z nimi i tak mi powiedzieli."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Ale on sam nie żyje."~ */ JOURNAL #21303 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Powiedział, że zajmie się tą sprawą, później.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"Dowód jest w jego kwaterze. Jego dziennik."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Mówiłem z nim o tym, ale zmienił się w człowieka-szczura i zaatakował mnie."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"Może okłamali cię, abyś zabił Soego. Myślałeś o tym w ten sposób?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Ale on sam nie żyje."~ */ JOURNAL #21303 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Powiedział, że zajmie się tą sprawą, później.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"Dowód jest w jego kwaterze. Jego dziennik."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Rozmawiałem z nim o tym, ale on zmienił się w człowieka-szczura i zaatakował mnie."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"W takim razie znajdę inny dowód. Mam jeszcze parę pytań."~ */ JOURNAL #21301 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami, lecz nie byłem w stanie tego wystarczająco udowodnić. Być może w otoczeniu Soego znajdę więcej przekonujących dowodów.~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"Nieważne, znajdę inny dowód. Żegnaj."~ */ JOURNAL #21301 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami, lecz nie byłem w stanie tego wystarczająco udowodnić. Być może w otoczeniu Soego znajdę więcej przekonujących dowodów.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"Zobaczymy. Porozmawiam z Soem na ten temat w jego komnatach. Jeśli to prawda, będę ci winien wdzięczność."~ */
  IF ~~ THEN REPLY #21310 /* ~Poczekaj.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~Zanim odpowie, myśli o tym, co powiedziałeś. "Udowodnij Ziemiom Umarłych, że nie chcesz im zaszkodzić. Aktem dobrej woli. Wtedy być może przedstawię twą prośbę Milczącemu Królowi."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"Czy wiesz, że Soe to szpieg czaszkoszczurów?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"Mogę powiedzieć Grabarzom, że Farod sprzedaje im ciała, które stąd ukradł. Jestem pewien, że go powstrzymają."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"Mogę powiedzieć Grabarzom, że Farod sprzedaje im ciała, które stąd ukradł. Jestem pewien, że go powstrzymają."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"Czy jest coś, co mogę dla ciebie zrobić?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm powiedział mi, abym rozglądał się wśród Ziem Umarłych i zabijał każdego czaszkoszczura jakiego napotkam.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"Czy chcesz, bym kogoś zabił?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm powiedział mi, abym rozglądał się wśród Ziem Umarłych i zabijał każdego czaszkoszczura jakiego napotkam.~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"Znajdę sobie coś do roboty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"Jestem pewien, że widzisz, jakie problemy niesie ze sobą twoja propozycja. Nie możemy pozwolić ci, byś odszedł i żyć nadzieją, że tak zrobisz."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"Czy wiesz, że Soe to szpieg czaszkoszczurów?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"Czy jest coś, co mogę dla ciebie zrobić?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm powiedział mi, abym rozglądał się wśród Ziem Umarłych i zabijał każdego czaszkoszczura jakiego napotkam.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"Czy chcesz, bym kogoś zabił?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~Hargrimm powiedział mi, abym rozglądał się wśród Ziem Umarłych i zabijał każdego czaszkoszczura jakiego napotkam.~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"Znajdę sobie coś do roboty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"Tak, być może. Od czasu do czasu ghule nie zauważają małych stad dobrze ukrytych czaszkoszczurów, które przychodzą tu na przeszpiegi. Gdybyś na nie natrafił, zabij je."~ */
  IF ~~ THEN REPLY #21326 /* ~"Opowiedz mi o czaszkoszczurach."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"Będę o tym pamiętać. Mam kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"Mogę to zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"Ich siła leży w ilości. Gdyby ktoś potrafił znaleźć i wybić małe, oddzielne grupy, silniejsze stada powoli straciły by swą siłę. W koloniach szczurów na południu są, na przykład, bardzo silne. A jednak zabicie tych w Ulu, tam na górze, bardzo by osłabiło ich pozycję tutaj."~ */
  IF ~~ THEN REPLY #21330 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~Przytakuje, wyraźnie zadowolony. "Dziękujemy ci. Niech Milczący Król ma cię w opiece."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"Więc... czy teraz porozmawiasz dla mnie z Milczącym Królem?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"Więc... czy teraz porozmawiasz dla mnie z Milczącym Królem?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"Pójdę już. Żegnaj."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~Hargrimm uroczyście się kłania.~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"Odnalazłem i zabiłem grupę czaszkoszczurów w ruinach starego korytarza."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"Czy mógłbym tu odpocząć?"~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"Potrzebuję uzdrowiciela - czy mógłbyś mi pomóc?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"Czy moglibyśmy tutaj odpocząć?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"Potrzebujemy uzdrowiciela - czy mógłbyś mi pomóc?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"Chcę z tobą porozmawiać o Czerstwej Mary... nie masz problemów ze zrozumieniem jej?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Kiedy rozmawiałem z Hargrimem o niemożności zrozumienia Czerstwej Mary, odpowiedział mi, że muszę się *nauczyć* z nią rozmawiać. Być może ona będzie wiedziała co miał na myśli.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"Chcę cię spytać o Czerstwą Mary... jak udaje ci się ją zrozumieć?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Kiedy rozmawiałem z Hargrimem o niemożności zrozumienia Czerstwej Mary, odpowiedział mi, że muszę się *nauczyć* z nią rozmawiać. Być może ona będzie wiedziała co miał na myśli.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"Czy widziałeś gdzieś tutaj małą kulę z brązu?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"Wiedziałeś, że Soe to szpieg czaszkoszczurów?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"Żegnaj, Hargrimmie."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~Kiwa głową. "Nie widziałem czegoś takiego. Może głębiej, poniżej Sigil... gdybyś przeszukał zatopione katakumby. Znajdziesz wejście do nich na zachód od miejsca, w którym znalazłeś się, gdy przyszedłeś tu po raz pierwszy. Uważaj, abyś nie przeszkadzał umarłym, albo rozgniewasz Milczącego Króla!"~ */
  IF ~~ THEN REPLY #21339 /* ~"Dzięki. Żegnaj, Hargrimmie."~ */ JOURNAL #21340 /* ~Hargrimm powiedział mi, że jeśli chcę odnaleźć kulę z brązu powinienem przeszukać zatopione katakumby za Ziemiami Umarłych.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"Nie wiemy. Może być tak, że włóczą się wszędzie. Rzadko opuszczamy to miejsce." Przerywa, jak gdyby nie był pewien czy kontynuować. "Kiedyś, żyło wśród nas wiele cieni, ale już do nas nie przychodzą. Odeszły dawno temu - i nie wiemy dokąd. Niektórzy mówią, że błądzą w sferach."~ */
  IF ~~ THEN REPLY #21342 /* ~"Błądzą w sferach?"~ */ JOURNAL #21346 /* ~Hargrimm powiedział mi, że swego czasu wiele cieni zamieszkiwało Ziemie Umarłych. Zgodnie z wizją Czerstwej Mary, wszystkie one dawno temu oddaliły się do jakiejś fortecy w Sferze Materii Negatywnej.~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"Raz o to spytałem. Mary mówi, że miała wizje, w której widziała ich przeznaczenie. Twierdzi, że wtrącono je do zniszczonej fortecy, która dryfuje w Sferze Materii Negatywnej, grobowcu żalu, z którego nie mogą uciec."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"Kim jest Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"Mary... Czerstwa Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"Forteca w Sferze Materii Negatywnej?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"Dlaczego tu jesteś?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~Przytakuje. "Czerstwa Mary, oby Milczący Król miał ją w opiece. Wieki temu, za życia była wizjonerką i wciąż zdarza się jej mieć wizje."~ */
  IF ~~ THEN REPLY #21356 /* ~"Opowiedz mi o niej."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"Wspomniałeś coś o fortecy?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"Dlaczego tu jesteś?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"Tak." Kapłan-szkielet kiwa głową. "Zwykła głupota."~ */
  IF ~~ THEN REPLY #21363 /* ~"Dlaczego?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"Kim jest Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"Wspomniałeś o Mary... Czerstwej Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"Dlaczego tu jesteś?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"Ta Sfera to miejsce, gdzie mają swe źródło wszystkie siły, które wypełniają pustkę nieumarłych. Gdy opuszcza nas życie, jest nadzieja, że dzięki magii i oddaniu... i może czemuś innemu... ta energia wypełni naszą pustkę, dając nam puste życie. Jednakże nie wiem, jak cokolwiek mogłoby tam *istnieć*."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"Kim jest Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"Wspomniałeś o Mary... Czerstwej Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"Dlaczego tu jesteś?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"Ten naród jest pod naszą opieką. Milczący - prawdziwie martwi - muszą mieć ochronę i opiekę... inaczej dosięgła by ich groza katakumb i zakłóciła sen. Naszym świętym obowiązkiem jest ich chronić."~ */
  IF ~~ THEN REPLY #21378 /* ~"Groza katakumb?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"Kim jest Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"Wspomniałeś o Mary... Czerstwej Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"Mówiłeś o jakiejś fortecy?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"Żyjący... ludzie-padlinożercy, mózgoszkodniki... wszyscy, którzy ignorują naszą służbę. Niech Milczący Król ma nas w opiece."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"Kim jest Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"Wspomniałeś Mary... Czerstwą Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"Mówiłeś coś o fortecy?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"Odszedłem dawno temu, i dowiedziałem się, że po śmierci istnieje tylko zapomnienie... na szczęście, w ostatniej chwili cofnąłem się znad krawędzi."~ */
  IF ~~ THEN REPLY #21393 /* ~"Cofnąłeś się?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"Wspomniałeś wyznawców. Kto jeszcze jest tutaj?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"Tak, obudziłem się tutaj. Błądziłem po katakumbach przez wiele dni zanim natknąłem się na tron mego pana, Milczącego Króla. Przemówił do mnie i po tamtym, przeznaczonym nam spotkaniu, narodziły się Ziemie Umarłych."~ */
  IF ~~ THEN REPLY #21399 /* ~"Wspomniałeś coś o wyznawcach. Kto jeszcze tu jest?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"Opowiedz mi o Milczącym Królu."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"Po pierwsze, chciałbym wiedzieć dlaczego tu jesteś."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"Szukam czegoś. Małej kuli z brązu."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"Przysłała mnie Wielojedność."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"Szukam Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"Bez powodu."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"To nie twoja sprawa."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~Szkielet wzrusza ramionami, a potem odprawia cię gestem. "Niech i tak będzie. Baw się dobrze."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"Szukam czegoś. Małej kuli z brązu."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"Przysłała mnie Wielojedność."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"Szukam Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"Bez powodu."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"Poczekaj. Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"Ilu jeszcze ludzi sprowadzi do naszych komnat ten bladolicy wyznawca?! Armię? Legion?! A może całe Sigil?!" Znów zwraca na ciebie uwagę. "Czy jesteś w zmowie z Grabarzami? Czy nosisz pęta ich wierzeń i kłaniasz się śmiesznemu pojęciu Prawdziwej Śmierci?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"Nie."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"Tak."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~Kłamstwo: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"Hmm!" Szkielet patrzy gdzieś w dal, kiwając głową.~ */
  IF ~~ THEN REPLY #21429 /* ~"Więc...?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"Naprawdę? Trudno mi w to uwierzyć."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"Szukam czegoś. Małej kuli z brązu."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"Przysłała mnie Wielojedność."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"Szukam Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"To prawda."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~Kłamstwo: "To prawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~Kłamstwo: "To prawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~Kłamstwo: "To prawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"Na Milczącego Króla! Jesteś w zmowie z *mózgoszkodnikami*!?" Ogarnia go furia. "Trzymasz z tymi padlinożercami o jednym umyśle, którzy profanują groby, które mamy pod opieką i karmią się ludzkimi szczątkami?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"Przepraszam..."~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"Tak. I co z tego?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"Tak. I co z tego?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"I powinieneś! Dlaczego cię tu przysłali?"~ */
  IF ~~ THEN REPLY #21445 /* ~"Aby zabić Milczącego Króla."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~Kłamstwo: "By wynegocjować układ."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~Kłamstwo: "Bez powodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~Mruży swe migoczące, karmazynowe oczy. "Ciężko mi w to uwierzyć. Być może podasz mi inną odpowiedź, bliższą prawdy?"~ */
  IF ~~ THEN REPLY #21449 /* ~"Aby zabić Milczącego Króla."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~Kłamstwo: "Aby wynegocjować układ."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"Nie ma czego negocjować. Pakt wszedł już w życie. Nauczyli się szanować nasze granice, a my szanować ich."~ */
  IF ~~ THEN REPLY #21452 /* ~"Jestem tu właśnie dlatego."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"Jak śmiesz wchodzić do naszych komnat i grozić naszemu panu?! I w dodatku na rozkaz mózgoszkodników. Będziesz cierpiał za swą zuchwałość!"~ */
  IF ~~ THEN REPLY #21454 /* ~"Jedynie mówiłem prawdę. Już nie chcę go zabić."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"Więc spraw bym cierpiał."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"Więc spraw bym cierpiał."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"Jeśli opuścisz te katakumby, to tylko jako odchody ghuli! Oby Milczący Król wspierał nas w walce!"~ */
  IF ~~ THEN REPLY #21458 /* ~Odeprzyj ich atak.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~Unosi swą laskę, lecz nagle przestaje. "Niestety! Masz szczęście! Tylko łasce Milczącego Króla zawdzięczasz to, że przestrzegamy Paktu Umarłych. Ale bądź pewien, że *nigdy* nie opuścisz tych katakumb. Żegnaj."~ */
  IF ~~ THEN REPLY #21461 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"Sprawdzę to. Jeśli to prawda, będę ci winien podziękowania."~ */
  IF ~~ THEN REPLY #21464 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"Są zawsze głodne; gdybyśmy ich nie kontrolowali, rozpleniłyby się w Zakopanej Wiosce i w koloniach czaszkoszczurów, zabijając wszystkich, by powrócić i pożreć wszystko, co znajduje się tutaj."~ */
  IF ~~ THEN REPLY #21467 /* ~"Opowiedz mi o Akaście."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"Kto jeszcze mieszka w tym miejscu?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"Mógł też uciec z innego powodu. Brałeś to pod uwagę?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"Dowód jest w jego kwaterze. Jego dziennik."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"Więc znajdę inny dowód. Mam jeszcze kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"Nieważne. Znajdę inny dowód. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"Stój! Przyszedłeś za daleko, przybyszu, i wkroczyłeś do Ziem Umarłych, królestwa Milczącego Króla! Czy poddasz się bez walki?"~ */
  IF ~~ THEN REPLY #21476 /* ~"Czemu mam się poddać?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"Oto wola Milczącego Króla: każdy, kto przechodzi przez bramy do naszego Królestwa, staje się naszym więźniem. Poddajesz się?"~ */
  IF ~~ THEN REPLY #21478 /* ~"Dobrze. Poddaję się."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"Nie."~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"Chodź więc... zaprowadzimy cię do Kaplicy. I wiedz, że wolno ci będzie poruszać się po komnatach, ale nigdy nie będziesz mógł opuścić katakumb. Będziesz tu uwięziony aż do śmierci; gdybyś potem odrodził się, jak my, będziesz wolny. Chwalmy Milczącego Króla; niech się stanie jego wola."~ */
  IF ~~ THEN REPLY #21481 /* ~Idź za nimi.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~Spotkałem nieumarłego czarnoksiężnika-kapłana o wielkiej sile, który oznajmił mi, że wdarłem się do Ziem Umarłych, która jest podległa władzy jakiegoś 'Milczącego Króla'. Zgodziłem się uznać tę władzę, a wówczas on odrzekł, że mogę bez skrępowania spacerować po salach, ale równocześnie nie mogę opuszczać katakumb. Kapłan-szkielet zdradził mi, że jestem tu więźniem do końca moich dni, ale kiedy zmartwychwstanę, tak jak inni, będę mógł pójść, dokąd zechcę. Nie mam zbyt wiele czasu, więc raczej postaram się znaleźć jeszcze inny sposób opuszczenie katakumb.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"Więc umrzesz tutaj, w komnatach Martwego Króla."~ */
  IF ~~ THEN REPLY #21483 /* ~"Dobrze. Poddaję się."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"Niech i tak będzie."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~Spotkałem nieumarłego czarnoksiężnika-kapłana o wielkiej sile, który oznajmił mi, że wdarłem się do Ziem Umarłych, która jest podległa władzy jakiegoś 'Milczącego Króla'. Ponieważ nie zgodziłem się uznać tej władzy, kapłan ten i jego nieumarli słudzy natychmiast się na mnie rzucili.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"A więc przyszedłeś." Szkielet odwraca się i spogląda na ogromny tron. "To, co tutaj widzisz, to koniec naszej kultury."~ */
  IF ~~ THEN REPLY #24110 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"Czy to jest Milczący Król?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~Nie mów nic, czekaj aż znowu zacznie mówić.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"Tak."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"Nikt nie może wiedzieć, że Król milczy."~ */
  IF ~~ THEN REPLY #24117 /* ~"Jak długo to trwa?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"Dlaczego milczy?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~Hargrimm wpatruje się w cień. "Przestał do nas mówić dawno temu - sam odszedł do po trzykroć przeklętej Prawdziwej Śmierci." W jego głosie słychać nutę wściekłości i rozpaczy. "Porzucił nas wszystkich, byśmy cierpieli wśród Żywych! Staliśmy się... ofiarą... wszystkiego, co żyje."~ */
  IF ~~ THEN REPLY #24121 /* ~"Więc dlaczego rządzi?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"Skoro tak... to jak rządzi?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"Kto zatem rządzi?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"Nie odzywa się, ponieważ opuścił to miejsce. Porzucił nas dla Prawdziwej Śmierci... zostały po nim tylko łuski."~ */
  IF ~~ THEN REPLY #24129 /* ~"Jak długo to trwa?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"Dlaczego jeszcze rządzi?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"Skoro tak... to jak rządzi?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"Więc kto naprawdę rządzi Ziemiami Umarłych?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"Rządzi, ponieważ musi."~ */
  IF ~~ THEN REPLY #24135 /* ~"Ale jeśli jest martwy... to jak?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"Więc kto naprawdę rządzi Ziemiami Umarłych?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"Tłumaczymy wolę Milczącego Króla, opierając się na tym, co mówił wiele lat temu. Nie jest to łatwe..." Hargrimm wygląda na zmęczonego; jak gdyby uginał się pod niewidzialnym ciężarem. "Mam do niego wiele pytań, tak wiele."~ */
  IF ~~ THEN REPLY #24139 /* ~"Dlaczego wciąż rządzi?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"Więc kto rządzi naprawdę?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"Mary i ja rozmawiamy z Milczącym Królem. Rządzimy zamiast niego."~ */
  IF ~~ THEN REPLY #24143 /* ~"Dlaczego nie powiesz swym ludziom prawdy?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"Chciałbym zachować to, co stworzyliśmy. Nie chcę umrzeć."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"Gdyby nasi ludzie mieli się o tym dowiedzieć... lub gdyby Akasta odkryła ten podstęp... albo Wielojedność, złożona jaźń czaszkoszczurów... wszystko, co tu stworzyliśmy zostałoby zniszczone. Ta łuska, to wszystko, co trzyma wewnętrznych i zewnętrznych wrogów na dystans. Gdyby znali prawdę, nasza mała cywilizacja obróciłaby się w pył."~ */
  IF ~~ THEN REPLY #24150 /* ~"Mów dalej..."~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"Nie mogę kazać ci milczeć. Ale proszę byś rozejrzał się, rozważył co by się stało, gdybyś wyznał to, co tutaj widzisz."~ */
  IF ~~ THEN REPLY #24152 /* ~Przyrzeczenie: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~Kłamstwo: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"Twoi ludzie powinni o tym wiedzieć. Jeśli wasza cywilizacja ma zginąć, niech i tak będzie."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"Dlaczego nikt inny nie zasiądzie na tronie?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~Hargrimm nie odzywa się przez chwilę. "Możesz stąd odejść. Idź już... i błagam cię: dotrzymaj danego słowa."~ */
  IF ~~ THEN REPLY #24164 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Skorzystałem z portalu, o którym opowiedziała mi Czerstwa Mary i dotarłem do komnaty tronowej Milczącego Króla. Tam też odkryłem, że niepodzielny władca Ziem Umarłych to właściwie wysuszone zwłoki. Obiecałem jednakże, że nie powiem nikomu o tym, co widziałem i w zamian za to Hargrimm wypuścił mnie z krainy Martwych Narodów.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~Hargrimm nie odzywa się przez chwilę. "I znowu nie mogę zmusić cię, byś milczał. Ale muszę wiedzieć, czy im powiesz, czy nie."~ */
  IF ~~ THEN REPLY #24166 /* ~"Powiem im."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~Prawda: "Nie powiem im."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~Kłamstwo: "Nie powiem im."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"Jestem ci wdzięczny. Możesz stąd odejść, jeśli chcesz. Użyj drzwi na południowym końcu sali tronowej."~ */
  IF ~~ THEN REPLY #24183 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Skorzystałem z portalu, o którym opowiedziała mi Czerstwa Mary i dotarłem do komnaty tronowej Milczącego Króla. Tam też odkryłem, że niepodzielny władca Ziem Umarłych to właściwie wysuszone zwłoki. Obiecałem jednakże, że nie powiem nikomu o tym, co widziałem i w zamian za to Hargrimm wypuścił mnie z krainy Martwych Narodów.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~Kiwa głową.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"Król musi być żywy. Inaczej nie może być. Gdy ktoś na nim usiądzie..." Głos Hargrimma staje się jeszcze bardziej złowrogi: "...już z niego nie zejdzie."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"Co z Soem?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"Jeśli taka jest twoja wola, będę waszym królem."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~Przyrzeczenie: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~Kłamstwo: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"Twoi ludzie powinni o tym wiedzieć. Jeśli wasza cywilizacja ma zginąć, niech i tak będzie."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"Soe nie byłby dobrym królem. Zbyt kocha swój głos, by milczeć. A poza tym, tron pozbawiłby go Prawdziwej Śmierci. Byłoby to bluźnierstwem, takim jak próba odebrania nam życia, które posiadamy."~ */
  IF ~~ THEN REPLY #24190 /* ~"Jeśli taka jest twoja wola, będę waszym królem."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~Przyrzeczenie: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~Kłamstwo: Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"Twoi ludzie powinni o tym wiedzieć. Jeśli wasza cywilizacja ma zginąć, niech i tak będzie."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"Gdy ktoś usiądzie na tronie, nigdy go nie opuści. Śmierć... Prawdziwa Śmierć... to jedyny sposób, by opuścić tron Milczącego Króla."~ */
  IF ~~ THEN REPLY #24194 /* ~"Tak. Zrobię to..."~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"W takim razie, nie."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"Tak jak myślałem." Hargrimm wzdycha, wypuszczając chmurę kurzu. "A więc... wciąż chcę wiedzieć, czy opowiesz o prawdziwej naturze Milczącego Króla, czy nie."~ */
  IF ~~ THEN REPLY #24196 /* ~Przyrzeczenie: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~Kłamstwo: "Chcę tylko stąd odejść, Hargrimmie. Pozwól mi na to, a zachowam milczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"Twoi ludzie powinni o tym wiedzieć. Jeśli wasza cywilizacja ma zginąć, niech i tak będzie."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~Hargrimm przytakuje, pokazując na tron. "Więc weź swój tron, Milczący Królu."~ */
  IF ~~ THEN REPLY #24199 /* ~"Zaczekaj... lepiej nie."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~Przejmij tron.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~Szkielet kiwa głową ze smutkiem. "Obawiam się, że na to nie możemy pozwolić, Żyjący. Oby Milczący Król wspierał mnie w walce!"~ */
  IF ~~ THEN REPLY #24201 /* ~Walcz.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~Uciekaj.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~Hargrimm uroczyście pokazuje szerokie drzwi na południowym końcu sali tronowej Milczącego Króla. "Odejdź, Żyjący, i zapamiętaj: nie opowiadaj o tym. Gdybyś chciał ze mną znowu porozmawiać, możesz to zrobić z tej świętej komnaty."~ */
  IF ~~ THEN REPLY #58915 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~Następuje długa chwila przerwy, zanim szkielet decyduje się odpowiedzieć. "Musisz *nauczyć się* słuchać, to wszystko."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"Rozumiem. A widziałeś gdzieś tutaj małą kulę z brązu?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"Może w takim razie porozmawiam z nią później. Żegnaj, Hargrimmie."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~Przez chwilę Hargrimm obserwuje cię w milczeniu, a potem miękko wzdycha. "Będziesz tu bezpieczny. Odpoczywaj."~ */
  IF ~~ THEN REPLY #63993 /* ~"Dzięki."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~Przysuwa się do ciebie, czujesz zapach kurzu i gnijącego ubrania. "O czym ty mówisz? Jakie masz dowody na to, że Soe trzyma z czaszkoszczurami?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"Rozmawiałem z nimi, a oni to potwierdzili."~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Choć teraz, on sam nie żyje."~ */ JOURNAL #21303 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Powiedział, że zajmie się tą sprawą, później.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"Dowód jest w jego kwaterze. Jego dziennik."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Rozmawiałem z nim o tym, ale on zmienił się w człowieka-szczura i zaatakował mnie."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"Może cię okłamali, żebyś zabił Soego. Myślałeś o tym w ten sposób?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Choć teraz, on sam nie żyje."~ */ JOURNAL #21303 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Powiedział, że zajmie się tą sprawą, później.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"Dowód jest w jego kwaterze. Jego dziennik."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"Dowód jest w jego kwaterze. Jego dziennik. Rozmawiałem z nim o tym, ale on zmienił się w człowieka-szczura i zaatakował mnie."~ */ JOURNAL #21302 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami. Hargrimm przestawił mu tę sprawę i uznając go winnym, skazał na uwięzienie w jego komnatach aż do śmierci. Wtedy Soe zmienił się w szczurołaka, zaatakował Hargrimma i został szybko zgładzony.~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"Nieważne, pójdę poszukać innego dowodu. Żegnaj."~ */ JOURNAL #21301 /* ~Opowiedziałem Hargrimmowi o związkach Soego z czaszkoszczurami, lecz nie byłem w stanie tego wystarczająco udowodnić. Być może w otoczeniu Soego znajdę więcej przekonujących dowodów.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"Sprawdzę to. Jeśli to prawda, będę ci winien podziękowania."~ */
  IF ~~ THEN REPLY #64963 /* ~"Pójdę już. Żegnaj."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~Kapłan-szkielet wydaje z siebie głębokie *hrmmm*. Gdy myśli, jego oczy tracą blask. "Soe. Pozbądź się tego przeklętego Grabarza, a ja porozmawiam o uwolnieniu cię z Milczącym Królem. Jednakże... *Nie* chcę, byś go zamordował. Po prostu znajdź powód, dzięki któremu będzie go można usunąć z Ziem Umarłych."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"Soe? Och... on nie żyje."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"Czy wiesz, że on jest szpiegiem czaszkoszczurów?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"Co cię tak martwi w Soem?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~"Sprawdzę to. Mam jeszcze inne pytania..."~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"Zobaczę, co da się zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"Tak...? Ba! Przypuszczam, że chcesz, abym porozmawiał w twoim imieniu z Milczącym Królem, więc... no cóż, nie zrobię tego! Tak długo, jak nie wyjaśnisz mi, dlaczego zabiłeś Soego, *nie* opuścisz tego miejsca."~ */
  IF ~~ THEN REPLY #67807 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"W takim razie spróbuję coś znaleźć."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"Nie. Gdybyś nie był więźniem oczekującym na śmierć, odpowiedź mogłaby być inna."~ */
  IF ~~ THEN REPLY #68090 /* ~"Dlaczego *jestem* więźniem?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
