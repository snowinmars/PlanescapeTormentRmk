// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~Twoim oczom ukazuje się posunięty w latach mężczyzna odziany w postrzępione szaty. Kiedy się doń zbliżasz, dostrzegasz ze zgrozą, że człowiek ten nie ma obu oczu. Jego poznaczone bliznami powieki cofnęły się do pustych oczodołów, nadając jego twarzy makabryczny wygląd gnijącej czaszki.~ */
  IF ~~ THEN REPLY #38141 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~Zostaw starca w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~Starzec zwraca się w twoim kierunku i wyciąga ręce, jakby chcąc zbadać cię dotykiem. "Mroku ktoś w odezwał się? Słowami przemów chaosu, a przyjaciela jak powitam cię."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"Słowami chaosu mówię ja. Nie lękaj się, bowiem *jestem* członkiem frakcji Chaosytów."~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"Słowa... gada - skrada - zjada."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"Przemów słowami chaosu, a powitam cię jak przyjaciela? Czy ta bezładna gadanina jest naprawdę konieczna?"~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"Co takiego?"~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"Uch... Mniejsza o to. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"Ach... w chaosie my, zarówno ja, jak i ty." Ślepiec uśmiecha się i ostrożnie zbliża ku tobie. Kiedy się porusza, dostrzegasz, że powłóczy jedną nogą.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"Co jest z twoją nogą... Jesteś ranny?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"Czy możesz mi powiedzieć, jak można dostać się do Alei Uporczywych Westchnień?~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"Powiedziałeś, że znasz drogę, która omija grupę Wygłodzonych Psów i prowadzi do Alei?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"Możesz powtórzyć, gdzie są te sekretne drzwi?"~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"Tak... No cóż. Czas mi już w drogę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"Nie, dobrze będzie... to tylko zacięcie." Kiedy to mówi, chwyta za łachmany spowijające jego ciało i odsłania nogę, pokazując potworną ranę, ciągnącą się od kolana po udo.~ */
  IF ~~ THEN REPLY #38153 /* ~"Co się stało?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"Czy możesz mi powiedzieć, jak można dostać się do Alei Uporczywych Westchnień?~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"Tak... No cóż. Czas mi już w drogę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"Zakosztowałem ostrza jednego z Wygłodzonych Psów. Są w głównej sali. Stoją każdemu na drodze. Łowią - wyją - zabiją."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"Opowiedz mi o Wygłodzonych Psach."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"Jazgot Wygłodzonego Psa? Ilu ich tam jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"Ach tak. W taki razie, bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"Oni ze złośliwego chaosu. Wszyscy to bracia, ale bracia dla nikogo."~ */
  IF ~~ THEN REPLY #38160 /* ~"Jeżeli oni należą do Chaosytów, dlaczego cię zaatakowali?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"Ilu ich tam jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"Ach tak. Zatem żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~Starzec potrząsa głową. "Nie ma znaczenia. Atakować wszystkich i wszystko będą. Tak do nich przemawia chaos. Ciebie też potną, jeśli pójdziesz tam."~ */
  IF ~~ THEN REPLY #38163 /* ~"Ilu ich tam jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"Ach tak. Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~Stary Chaosyta milknie na moment, a jego niewidzący wzrok zatrzymuje się w pustce. "Wielu... silni i złośliwi. Ale inna droga istnieje. Sekretna droga, znana tylko mnie. Bezpieczna droga ku Alei."~ */
  IF ~~ THEN REPLY #38166 /* ~"Którędy wiedzie ta sekretna droga?"~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"Mniejsza o to. Sam znajdę drogę."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"Mrok to nie światło, a światło to nie mrok. Ale jasne, połyskliwe monety mogą dawać światło." Dla uwydatnienia swej wypowiedzi, starzec znacząca przebiera palcami.~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~Daj ślepcowi dziesięć miedziaków.~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~Daj ślepcowi dwadzieścia miedziaków.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"Nie zapłacę ci ani grosza. Powiesz mi, co chcę wiedzieć... albo też zaznajomię cię z prawdziwym wymiarem mroku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"A gdyby tak spróbować coś za coś, mrok za mrok. Mogę ci zdradzić kryjówkę pewnego złodzieja, który ukrywa się tutaj w Kamienicy. Co ty na to?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"Mniejsza o to. Sam znajdę drogę."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~Wkładasz w dłoń starca dziesięć monet. Ten czeka przez chwilę, potem zaś potrząsa w ręku garść miedziaków, jakby oceniał ich ciężar. Po chwili zastanowienia, zwraca ci pieniądze. "Mało. Czyż życie nie jest warte więcej niż dziesięć monet?"~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~Daj ślepcowi dwadzieścia miedziaków.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"Chcesz się targować? Bardzo dobrze... Co byś powiedział na taki układ, że ty powiesz mi to, co chcę wiedzieć, a ja w zamian za to pozwolę ci żyć.?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"A gdyby tak spróbować coś za coś, mrok za mrok? Mogę ci zdradzić kryjówkę pewnego złodzieja, który ukrywa się tutaj w Kamienicy. Co ty na to?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"Mniejsza o to. Sam znajdę drogę."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~Wręczasz starcowi monety, a on pośpiesznie umieszcza je w kieszeni. "Znajdziesz ty drzwi ukryte w południowo-zachodniej izbie. Otwierają się one w głębi głównego holu, niedaleko wyjścia do Alei."~ */
  IF ~~ THEN REPLY #38177 /* ~"Dzięki za pomoc. Bywaj zdrów."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~W Kamienicy Zbójców spotkałem starego, ślepego Kaosytę. Powiedział mi o sekretnych drzwiach, dzięki którym będę mógł przejść do Alei Uporczywych Westchnień, nie natykając się na gang Jazgoczących Psów. Drzwi znajdować się mają w południowo-zachodniej komnacie, przy głównej sali.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~Starzec robi wrażenie oburzonego twoimi pogróżkami. "Przyjacielem ty nie jesteś i przyjaciół tu nie masz! Przyjaciele, jakich mam, oto was wzywam!" Starzec zaczerpuje głęboko powietrza, jakby miał zacząć wrzeszczeć.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~Doskocz i skręć mu kark, zanim zdąży krzyknąć.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~Odejdź szybko.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~Błyskawicznie obezwładniasz ślepca. Jedną dłonią zasłaniasz mu usta, aby uciszyć jego wrzaski, a drugą chwytasz za kark i wykręcasz go tak długo, aż słyszysz charakterystyczny suchy chrzęst.~ */
  IF ~~ THEN REPLY #38181 /* ~"Wszystko to zbyt łatwe."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"Złodziej? Tutaj? Ktoś *okradł* Tejrezjasza... Może to ten, mówisz o którym ty?" Starzec w zamyśleniu głaszcze się w po policzku, jakby rozpatrywał twoją ofertę. "Zgoda... coś za coś, mrok za mrok. Pierwszy ty mówisz!"~ */
  IF ~~ THEN REPLY #38182 /* ~"Ten złodziej to nikt inny jak pewna młódka. Ukrywa się w przedsionku po drodze, niedaleko wejścia do głównego holu."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"Po namyśle, tutaj jest dwadzieścia miedziaków. Powiedz mi to, co wiesz."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"Po namyśle, proponuję następujący układ: ty powiesz mi to, co chcę wiedzieć, a ja w zamian za to pozwolę ci żyć. Co ty na to?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~Tejrezjasz kiwa głową z uznaniem "Młoda złodziejka, powiadasz. Zajmę się nią."~ */
  IF ~~ THEN REPLY #38186 /* ~"Dobra. A teraz opowiedz mi o tej sekretnej drodze."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"Osobiście w to wątpię. A teraz, starcze, powiedz mi, co wiesz."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"Tak. Tejrezjasz zna drogę. Droga do Alei wiedzie przez główny hol na południe, ale przejść tamtędy nie możesz. Wygłodzone Psy się tam zebrały i przejście zablokowały."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"Opowiedz mi o tych Wygłodzonych Psach."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"Jazgot Wygłodzonego Psa? Ilu ich tam jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"Ach tak. Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~Starzec przechyla głowę na bok, jego niewidzące spojrzenie utkwione w pustce. "Chaosu z jesteś ty nie. Nie! Źle! Wynoś się!"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"Eee... To nie trzyma się kupy."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"Czy wszyscy w tym miejscu postradali zmysły??"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~Zignoruj paplaninę starca, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"Spadać, nie gadać. Gadanie skończone. Zakończone do zakończenia!" Starzec odwraca się, najwyraźniej uznając rozmowę za zakończoną.~ */
  IF ~~ THEN REPLY #38195 /* ~"Słuchaj, starcze, lepiej formułuj swojej odpowiedzi jaśniej, bo jeśli nie, to wkrótce brak oczu nie będzie twoją jedyną skazą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"Nie da się ukryć, że taka dyskusja zmierza donikąd. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"W południowo-zachodniej izbie są ukryte drzwi. Nie te zwykłe drzwi, te prowadzą do sali gdzie ucztują Psy."~ */
  IF ~~ THEN REPLY #38197 /* ~"Dzięki za pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"Znajdziesz ty drzwi ukryte w południowo-zachodniej izbie. Otwierają się one w głębi głównego holu, niedaleko wyjścia do Alei."~ */
  IF ~~ THEN REPLY #38198 /* ~"Dzięki za pomoc. Żegnaj."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~W Kamienicy Zbójców spotkałem starego, ślepego Kaosytę. Powiedział mi o sekretnych drzwiach, dzięki którym będę mógł przejść do Alei Uporczywych Westchnień, nie natykając się na gang Jazgoczących Psów. Drzwi znajdować się mają w południowo-zachodniej komnacie, przy głównej sali.~ */ EXIT
END
