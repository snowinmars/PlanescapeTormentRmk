// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"Dzięki za pomoc. Może cię jeszcze spotkam... albo uczynią to moi przyjaciele. Jesteśmy wszędzie."~ */
  IF ~~ THEN REPLY #43056 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"Wciąż mamy sposoby, aby wyjść przed magazyn. Czego chcesz?"~ */
  IF ~~ THEN REPLY #43059 /* ~"Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"Nic."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~Inżynier patrzy na ciebie z pogardą. "Precz! Nie mam czasu na takich jak ty!"~ */
  IF ~~ THEN REPLY #43062 /* ~Zaatakuj ją.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~Patrzy na ciebie bez wyrazu i bez słowa, czekając aż nadejdą strażnicy.~ */
  IF ~~ THEN REPLY #43065 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~Dalej się w ciebie wpatruje. "Nie mam dla ciebie teraz odpowiedzi. Może gdy wrócisz."~ */
  IF ~~ THEN REPLY #43068 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"Cóż, udało ci się odkryć sposób na wydostanie się stąd? Nie pozwolą mi wyjść tak jak teraz. Potrzebuję jakiegoś przebrania albo czegoś podobnego."~ */
  IF ~~ THEN REPLY #43070 /* ~"Czy masz jakiś pomysł, za kogo mogłabyś się przebrać?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"Znalazłem dla ciebie przebranie kowala. Załóż je."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"Nie, jeszcze nie. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"Nie zatrzymują kowali przed opuszczaniem tego miejsca. Może udałoby ci się znaleźć dla mnie zestaw ekwipunku kowala i kilka szmat - nie tylko narzędzia, ale też resztę ubrania... nie mam pojęcia, gdzie to można zaleźć. Nie zabijaj już więcej ludzi tutaj, dobra? Już teraz mam wystarczająco dużo kłopotów - nie potrzebujemy tego, by wydostać się do miasta. Innymi słowy nie zabijaj kowali dla ich ubrań - poza tym wątpię, by pasowały."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"Znalazłem dla ciebie przebranie kowala. Załóż je."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"Dobra. Zobaczę, co się da zrobić. W międzyczasie odpowiedz mi na kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"W porządku. Zobaczę, co się da zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"Nałożę je jak tylko będziemy gotowi, by wyjść. Więc cóż? Musisz mnie stąd wyprowadzić."~ */
  IF ~~ THEN REPLY #43079 /* ~"Dobra. Chodźmy."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"Przejdziemy przez frontowe drzwi i skierujemy się do magazynu, który znam, gdzie czekają moi przyjaciele. Gotów?"~ */
  IF ~~ THEN REPLY #43083 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #43085 /* ~"Opowiedz mi o Lidze Rewolucyjnej."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"Czemu to wszystko niszczysz?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"Opowiedz mi o sobie."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"Co z Sarosem?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~Mruży oczy, jakby cię oceniając, i mówi: "Wierzymy, że władza deprawuje samą swoją istotą. Istniejemy, aby niszczyć ją tam, gdzie może powstać. Dlatego też frakcje w Sigil są naszym głównym celem - monopolizują Miasto Drzwi, miasto, które powinno być otwarte dla każdego, kto tamtędy przechodzi. Zamiast tego one niszczą wszystkich chcących przemawiać i uciszają tych, którzy czynią tak, jak im się podoba. Struktura władzy w Sigil musi zostać zniszczona!"~ */
  IF ~~ THEN REPLY #43092 /* ~"Jak wygląda struktura Ligi Rewolucyjnej?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"Jak w ogóle dołączyłaś do tych ludzi?"~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"Czemu nie pracować w systemie, aby go zmienić?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"Mój ojciec, Wolnoligowiec, został zabity w bójce ze Strażą Zagłady. Morderca nigdy nie stanął przed sądem. Moja matka dochodziła sprawiedliwości, ale została aresztowana przez Twardogłowych. Skorumpowany sędzia dopilnował, aby uznano ją winną zakłócania spokoju i tworzenia anarchii, tak więc Łaskobójcy ją stracili. Oczywiście, miałam zamiar odnaleźć Anarchistów - oni mają jedyne odpowiedzi, których teraz poszukuję."~ */
  IF ~~ THEN REPLY #43100 /* ~"Czemu nie pracować w systemie, aby go zmienić?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"W tym systemie? Zostałbyś zdeprawowany, zanim w ogóle udałoby ci się wywołać jakieś zmiany. Ten system nie jest zainteresowany pracą z czymkolwiek, co zmniejszy jego moc. Taka jest natura ludzi, że chcą trzymać się swojej władzy i ją konsolidować, nieważne kogo przy tym krzywdzą. Powiedz słowo przeciwko frakcjom, a już one dopilnują, żebyś umarł, zanim weźmiesz kolejny oddech. O wiele lepiej pozbyć się ich wszystkich i zbudować wszystko od nowa."~ */
  IF ~~ THEN REPLY #43105 /* ~"W ten sposób ucierpi wielu niewinnych ludzi."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"Jak w ogóle dołączyłaś do Anarchistów?"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~Wygląda, jakby wątpiła. "Przyłączyć się do nas? Hmmm. Uczyniłeś wystarczająco wiele, by był na ciebie hak, jeśli byś nas zakapował, więc jak na razie więcej z ciebie pożytku niż szkody." Milknie, aby przez chwile jeszcze się zastanowić. "W porządku. Idź porozmawiaj z Pennem Szydercą w drukarni. Powiedz mu, że powiedziałam 'Miasto musi spłonąć'. On będzie wiedział, co masz na myśli." Rzuca ci twarde spojrzenie. "Ale ostrzegam cię: jeśli *cokolwiek* mi się stanie, to hasło nie będzie warte nawet dwóch miedziaków."~ */
  IF ~~ THEN REPLY #43111 /* ~"'Miasto musi spłonąć.' Dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #68106 /* ~Bedai-Lin powiedziała mi, abym odszukał w sklepie z przyborami drukarskimi Penna Szydercę i odezwał się do niego następującymi słowy: "Miasto musi spłonąć."~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'Miasto musi spłonąć.' Dobrze. Żegnaj."~ */ JOURNAL #68106 /* ~Bedai-Lin powiedziała mi, abym odszukał w sklepie z przyborami drukarskimi Penna Szydercę i odezwał się do niego następującymi słowy: "Miasto musi spłonąć."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~Żachnęła się. "Jeśli martwiłbyś się o niewinnych, nigdy byś mi nie pomógł. A co z tymi pracownikami, których TY zabiłeś gdy niszczyłeś broń w Kuźni? W każdej wojnie cierpią niewinni - ale w końcu, gdy jesteś z nami, będą oni mieli szansę odpocząć. Pod berłem frakcji wszyscy zostaliby i tak zmiażdżeni."~ */
  IF ~~ THEN REPLY #43114 /* ~"Jak w ogóle dołączyłaś do Anarchistów?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"Jesteśmy podzieleni na komórki, każda z nich ma nieokreśloną liczbę członków. Ludzie z jednej nie wiedzą o tych z drugiej i w ten sposób nie mogą nikogo zdradzić. Jasne, że możemy czasami walczyć przeciwko sobie, ale demoralizujemy niszczące ducha frakcje w wystarczającym stopniu, że jest to tego warte."~ */
  IF ~~ THEN REPLY #43119 /* ~"Czy nie sądzisz, że może z powodu działań waszej grupy frakcje stają się jeszcze bardziej bojowe i zdeprawowane?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"Jak w ogóle dołączyłaś do Anarchistów?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"Czemu nie pracować w systemie, aby go zmienić?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"Nie. Ich hipokryzja zostaje ujawniona, gdy próbują zniszczyć tych ludzi, których zobowiązali się chronić. Ci, co twierdzą, iż utrzymują strukturę Sigil są pierwszymi, którzy ją zniszczą, gdy poczują się zagrożeni. Pokazujemy, jak puste są ich idee o rządzeniu. Jesteśmy katalizatorem, ale nie przyczyną."~ */
  IF ~~ THEN REPLY #43126 /* ~"Jak w ogóle dołączyłaś do Anarchistów?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"Czemu nie pracować w systemie, aby go zmienić?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"W jaki sposób można się przyłączyć do Ligi Rewolucyjnej?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"Bogowcy? Ha. Większość innych frakcji przynajmniej udaje, że ma odpowiedzi. Bogowcy są z nich wszystkich najgorsi - wchodzą w drogę każdemu, kto usiłuje zrozumieć, czym jest wielka tajemnica, ale sami nie mają o tym pojęcia. Psy w klatkach, wszyscy. Co gorsza, zanieczyszczają Niższą Dzielnicę, wypełniając ją tą śmiertelną mgłą, która zabija starych i słabych. Mówią, że są pomocni, ale tak naprawdę, to są kolejnymi zabójcami."~ */
  IF ~~ THEN REPLY #43132 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"Ponieważ stary porządek musi upaść. Niszcząc część budynków frakcji pomagam ludziom tracić wiarę w Bogowców. Niszcząc tę okropną broń, powoduję stratę zaufania klientów do Bogowców. Zabijając faktora pokazuję innym, że celem są możni i nikt nie powinien pożądać władzy w skorumpowanym systemie, skoro mogą wtedy stać się następnym celem. Każda z tych akcji jest także symbolem. Żadna nie jest zniszczeniem dla samego zniszczenia. To sprawiłoby, że bylibyśmy nie lepsi od Straży Zagłady."~ */
  IF ~~ THEN REPLY #43135 /* ~"Kogo?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"Straż Zagłady. Garść ludzi, którzy sądzą, że skoro wszystko się rozpada, to ich zadaniem jest upewnić się, że nic się nie ostanie. Teoretycznie jesteśmy z nimi sprzymierzeni, ale prawda jest taka, że oni też upadną. W końcu oni wszyscy upadną."~ */
  IF ~~ THEN REPLY #43139 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"O mnie? Nie ma wiele do opowiadania. Przysięgłam, że ujrzę upadek frakcji i uczyłam się inżynierii magicznej, która uczyniłaby mnie wartościową dla każdej z nich. Wiesz, przed Bogowcami byli inni - wielu innych. Przywdziewałam więcej twarzy niż pamiętam i miałam więcej imion, niż znajduje się ich w księdze umarłych. Nie potrafię nawet wymienić ci imion wszystkich tych, których zdradziłam."~ */
  IF ~~ THEN REPLY #43142 /* ~"Wygląda na interesujące życie. Czy jesteś szczęśliwa?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"Musi to być niezła zabawa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~Wydaje z siebie krótki, warczący śmiech i mówi gorzko: "Szczęśliwa? Od kiedy bycie szczęśliwą ma z tym coś wspólnego?"~ */
  IF ~~ THEN REPLY #43146 /* ~"Jeśli nie jesteś szczęśliwa, czemu z tym nie skończysz?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"Nigdy. Szczęście to fałszywy ideał, stworzony aby zamęczać słabych i naiwnych. Prawdziwe szczęście nie istnieje."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"Masz rację. Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"Masz rację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"Skończyć z tym? I stracić moją zemstę? To mnie określa. Oto kim jestem. To jakby prosić cię, abyś odciął sobie ramię i był w stanie żyć ze sobą." Patrzy na twoje blizny. "Choć prawdopodobnie ty byłbyś w stanie to zrobić."~ */
  IF ~~ THEN REPLY #43151 /* ~"Więc pozwalasz, aby kierowały tobą gorycz i nienawiść?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"Możliwe. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"Możliwe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"To stało się częścią mnie. Bez tego jestem niczym."~ */
  IF ~~ THEN REPLY #43155 /* ~"Wybierz zatem coś innego i stań się kimś więcej, niż jesteś."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"Zatem pogłębiaj swoją gorycz i pozwól się jej prowadzić. Twórz więcej smutku. Nie obchodzi mnie to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"Jasne. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"Ja... nie wiem jak."~ */
  IF ~~ THEN REPLY #43167 /* ~"Spróbuj. Spróbuj i zobacz."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"Zatem równie dobrze możesz się zabić, ponieważ życie nie ma sensu, skoro nie możesz się zmienić."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"Zatem doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"Zatem nie próbuj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"Zgadzam się. Powiedziano nam, że w naszej walce szczęście jest ostatecznym celem, ale tak niewielu zdaje się je odczuwać... a ci, co są szczęśliwi wydają się być imbecylami i ludźmi, którzy sami się zaspokajają i nie potrafią otworzyć oczu na przerażający świat wokół nich. Lepiej cierpieć, powiadam, niż płacić *taką* cenę za szczęście."~ */
  IF ~~ THEN REPLY #43172 /* ~"Zaprawdę. Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"Nie. Taka apatia jest dokładnie tym, przeciw czemu walczymy. Miłego dnia."~ */
  IF ~~ THEN REPLY #43175 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"Pomyślę o tym. Nic nie gwarantuję. Żegnaj, wędrowcze. Dałeś mi wiele do myślenia."~ */
  IF ~~ THEN REPLY #43177 /* ~"Mam nadzieję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"Myślałam nad tym i zdałam sobie sprawę, że przynajmniej ja tworzę różnicę, taką w którą wierzę. To mi wystarcza. Żegnaj."~ */
  IF ~~ THEN REPLY #43179 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~Patrzy na ciebie pogardliwie i śmieje się. "Co, wróciłeś z odmienionym umysłem, czy masz dla mnie jakąś robotę?"~ */
  IF ~~ THEN REPLY #43181 /* ~"Zmieniłem zdanie. Zabiję go dla ciebie."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"Nic. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"Miałeś swoją szansę. Czy sądzisz, że naprawdę ci uwierzę, że teraz to uczynisz? Nie sądzę. Zejdź mi z oczu."~ */
  IF ~~ THEN REPLY #43185 /* ~"Zatem odpowiedz mi na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"Nie chciałeś pomóc mojej misji, czemu jak mam ci pomóc w twojej? Miłego dnia, panie."~ */
  IF ~~ THEN REPLY #43188 /* ~"Miłego dnia."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"Czy wpisałeś już imię Sandoza do księgi umarłych?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"Tak. Jest martwy."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"Nie, jeszcze nie. Mam przedtem jeszcze kilka pytań..."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"Czy zdecydowałeś się już, czy godzisz się na tę robotę?"~ */
  IF ~~ THEN REPLY #43194 /* ~"Tak, uczynię to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"Nie, nie zrobię tego."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"Nie, jeszcze nie. Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"Chcę, abyś wykonał jeszcze jednego zadanie i zostawimy tych Bogowców ich własnym kłopotom. Wydostań mnie stąd - strażnicy będą szukać kogoś, kogo mogliby oskarżyć, a ja wolałabym, aby raczej nie wybrali sobie ciebie - gdy ja zniknę, będą wiedzieli, że to byłam ja, a ty będziesz miał kłopoty. Co ty na to?"~ */
  IF ~~ THEN REPLY #43199 /* ~"Daj mi trochę czasu do namysłu."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"Tak, uczynię to. Co mam zrobić?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"Nie. Sądzę, że chcesz mnie wystawić."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"Potrzebuję wydostać się z Kuźni. Zrobisz to, czy nie? Potrzebuję odpowiedzi TERAZ."~ */
  IF ~~ THEN REPLY #43203 /* ~"A co mi tam... dobra."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"Nie. Sądzę, że chcesz mnie wystawić."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"Powiedziałem, żebyś dała mi trochę czasu. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"O ile nie jesteś w stanie mi pomóc się stąd wydostać, nie mam ci nic więcej do powiedzenia."~ */
  IF ~~ THEN REPLY #43207 /* ~"Zatem dobrze. Pomogę ci się stąd wydostać."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"Nie, nie zrobię tego."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"Zatem nie mam ci nic do powiedzenia."~ */
  IF ~~ THEN REPLY #43211 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"Pytania? Nie masz czegoś, czym powinieneś się zająć?"~ */
  IF ~~ THEN REPLY #43213 /* ~"Opowiedz mi o sobie."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"Czemuż miałbym to robić?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"Czemuż miałbym to robić?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"Co ty tak właściwie masz przeciwko Bogowcom?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"Trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"Nazywam się Bedai Lin. Jestem inżynierem magii - nie magiem, ale teoretykiem - i mam zamiar upewnić się, że Bogowcy nie będą mieli okazji użyć tej broni ani uzyskać kontraktu na inne egzemplarze."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"Po co go zabijać?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"Po co niszczyć machinę?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"Dobrze. Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"Ponieważ kontrakty, które Bogowcy podpisują ze swoimi klientami są złe. Bogowcy pozwalają sobie na luksus udawania, że ich czyny nie będą miały konsekwencji. Cóż, będą miały, a ja mam zamiar pokazać im jakie - upewniając się przede wszystkim, że osoba odpowiedzialna za pozyskanie kontraktu nie przeżyje, aby uczynić to ponownie."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"W porządku. Zrobię to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"Nie sądzę, bym chciał to uczynić."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"Po co? Ponieważ ta broń jest diabelskim narzędziem... dosłownie. Biesy mają zamiar użyć jej, by szerzyć nieopisany chaos i zniszczenie na powierzchni stworzenia i nieważne, jak wiele 'pokojowych' użyć może mieć to piekielne urządzenie, żadnego z nich nie można porównać z cierpieniem, jakie ono spowoduje."~ */
  IF ~~ THEN REPLY #43229 /* ~"A co z robotnikami?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"Są ślepi jak inne frakcje. Trzymają miasto w żelaznym uścisku, pomimo tego, iż twierdzą, że nie mają takich planów. Ich filozofia afirmacji życia nie sięga rzeczywistej afirmacji życia. Czas zaaplikować im dawkę ich własnego lekarstwa."~ */
  IF ~~ THEN REPLY #43233 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"Słyszałam eksplozję aż tutaj. Doskonała robota. Czy jesteś zainteresowany kolejnym zadaniem?"~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"Jakim?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"Czemu nie zniszczyła cię eksplozja, tak jak innych pracujących nad tym projektem?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"Jakim?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"Fakton, Sandoz... jestem pewna, że go znasz? Był jedną z osób odpowiedzialnych za stworzenie tego diabelskiego urządzenia. To on zawiązał kontrakt i obiecał, że Bogowcy stworzą tę śmiertelną broń. To on jest tak naprawdę odpowiedzialny za śmierć tych inżynierów. Musi umrzeć."~ */
  IF ~~ THEN REPLY #43239 /* ~"Zrobię to."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"Nie mam mowy. Już dość ludzi zginęło."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"Nie chcesz tego uczynić? To niedobrze, ponieważ już się przyczyniłeś do tej sprawy. Czy naprawdę sądzisz, że jedno ciało więcej sprawi jakąś różnicę? Pomyśl o tym, co już zrobiłeś i o cenie, jaką przyjdzie ci zapłacić, jeśli się zatrzymasz. Nic się nie zmieni, jeśli to uczynisz i wszystkie twoje zabójstwa pójdą na marne. Czy naprawdę chcesz powstrzymać popierane przez frakcję morderstwa, czy tylko dużo mówisz?"~ */
  IF ~~ THEN REPLY #43242 /* ~"Zabiję go."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"Nie, nie chcę go zabijać."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"Dobrze. Na imię ma Sandoz. Sądzę, że już miałeś z nim jakiś kontakt. On nie będzie nic podejrzewał. Nie martw się też o zachowanie ciszy - Sandoz bywa na tyle głośny, że strażnicy nie zauważą tej odrobiny rumoru. Po prostu wróć do mnie, gdy skończysz, a powierzę ci jeszcze jedno zadanie - i to już będzie wszystko. A teraz ruszaj!"~ */
  IF ~~ THEN REPLY #43245 /* ~"Zmieniłem zdanie. Nie chcę go zabijać."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"Doskonale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~Jej oczy wypełniają się pogardą. "Naprawdę jesteś słabszy, niż myślałam... a nie myślałam wiele. Żegnaj zatem. Nie rozmawiaj więcej ze mną." Odwraca się do ciebie tyłem.~ */
  IF ~~ THEN REPLY #43248 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"Czy zniszczyłeś już tę piekielną machinę?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"Nie. Potrzebuję żetonu, żeby przedostać się za drzwi."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"Nie. Zgubiłem żeton potrzebny, żeby przedostać się za drzwi."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"Co z robotnikami?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"Jeszcze nie. Ale wkrótce to uczynię. Czy możesz mi powiedzieć o jej słabych punktach?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"Potrzebujesz żetonu? Zatem porozmawiaj z nadzorczynią kuźni... sądzę, że nazywa się ona Alissa Tield. Albo możesz spróbować z tym chłopakiem, Sarosem. Słyszałam, że on ma lepkie palce..."~ */
  IF ~~ THEN REPLY #43255 /* ~"Dobrze. Jakie są słabe punkty tej machiny?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"Dobrze, uczynię to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"Zatem musisz albo go znaleźć, albo wziąć od Sarosa lub Alissy Tield, nadzorczyni kuźni. Jeśli nie będziesz w stanie go od nich wyłudzić, to może będziesz musiał przebijać się do maszyny. Nie polecam tego sposobu."~ */
  IF ~~ THEN REPLY #43259 /* ~"Dobrze. Jakie są słabe punkty tej machiny?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"Powiedziałabym, żebyś skupił swoje siły na urządzeniu odpalającym. Polecam włożenie tam czegoś metalowego. Mocna stal przedmiotu roziskrzy się i rozpadnie, niszcząc rezonans magicznego pola tej broni, prowadząc do jej samozniszczenia. Gdy włożysz przedmiot do urządzenia, odejdź. Będziesz miał około pół godziny zanim ono wybuchnie."~ */
  IF ~~ THEN REPLY #43263 /* ~"Co z robotnikami?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"Doskonale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"Co z nimi? To niewolnicy frakcji i ona nie będzie płakać, kiedy oni odejdą. Czemuż zatem miałbyś się nimi przejmować?"~ */
  IF ~~ THEN REPLY #43267 /* ~"Troszczę się, ponieważ są niewinni."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"Masz rację. Wrócę z wiadomością o zniszczeniu machiny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"Niewinni? Ha. Tylko w aż tak zdeprawowanej organizacji mógłbyś nazwać tych, co pracują nad machinami śmierci 'niewinnymi'. Co za żart." Przerywa, żeby przełknąć ślinę. "Czy zniszczysz tę machinę, czy nie?"~ */
  IF ~~ THEN REPLY #43271 /* ~"Nie zrobię tego. Oni nie zasłużyli na śmierć."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"Dobrze. Wrócę z wiadomością o moim sukcesie."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"Miałeś swoją szansę. Czy sądzisz, że naprawdę zaufam ci, że to teraz uczynisz? Nie sądzę. Zejdź mi z oczu."~ */
  IF ~~ THEN REPLY #43274 /* ~"Zatem odpowiedz mi na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"Zatem nie mamy o czym mówić. Jeśli będziesz o tym milczał, to nie powiem nikomu, że zastanawiałeś się nad zdradą. Żegnaj. Nie rozmawiaj już ze mną."~ */
  IF ~~ THEN REPLY #43277 /* ~"Czekaj! Zmieniłem zdanie."~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"Zatem żegnaj."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"Jesteś teraz Bogowcem. Wciąż szczęśliwy?"~ */
  IF ~~ THEN REPLY #43280 /* ~"Tak."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"Nie, właściwie nie."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"Tyldon mówi, że jesteś Anarchistką."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Tyldon mówi, że jesteś Anarchistką."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"Dobrze. Cieszę się, że jesteś szczęśliwy z dokonanych wyborów. Co mogę dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #43285 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"Czemu nie?"~ */
  IF ~~ THEN REPLY #43288 /* ~"Nie jest to dokładnie to, co sobie wyobrażałem."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"Ponieważ zaczynam zdawać sobie sprawę, że jest to pusty tytuł."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"Jestem po prostu niezadowolony."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"Tak właściwie to sądzę, że jestem dość szczęśliwy."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"Jakie są twoje pytania?"~ */
  IF ~~ THEN REPLY #43293 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"Powiedz mi, co wiesz o morderstwie."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Tyldon mówi, że jesteś Anarchistką."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"Tyldon mówi, że jesteś Anarchistką i starasz się wrobić go w to morderstwo."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"Opowiedz mi o projekcie, nad którym pracujesz."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"Powiedz mi o innych pracujących tu osobach."~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"Kim jesteś?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~"Nic. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"Niewiele rzeczy dzieje się tak, jak byśmy chcieli i niezadowolenie często przychodzi do nas wszystkich. Członkostwo frakcji to niewidzialna nagroda. Pomyśl nad tym i wróć jeszcze kiedyś, dobrze?"~ */
  IF ~~ THEN REPLY #43302 /* ~"Jasne. Mam jednak kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"Czy zatem rzekłbyś, że jesteś oddany Bogowcom?"~ */
  IF ~~ THEN REPLY #43305 /* ~Prawda: "Tak."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~Kłamstwo: "Tak."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~Prawda: "Nie."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~Kłamstwo: "Nie."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"Nie wiem dlaczego miałoby cię to interesować."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~Kobieta tłumi ziewnięcie. "Możesz spytać prawie każdego o Kuźnię i dostaniesz dokładnie tę samą odpowiedź. Czemu sądzisz, że moja miałaby być inna? Spytaj o coś innego."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"Powiedz mi, co wiesz o morderstwie."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"Tyldon mówi, że jesteś Anarchistką i starasz się wrobić go w to morderstwo."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"Opowiedz mi o projekcie, nad którym pracujesz."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"Powiedz mi o innych pracujących tu osobach."~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~"Nic. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"Zobaczmy... prosiłam strażników, aby odeszli na noc, ponieważ pracuję nad bardzo delikatnym mechanizmem projektu w sąsiednim pokoju i nie chciałam, aby ich psychiczne emanacje zanieczyściły dość istotną pracę. Trochę się załamałam, gdy wychodząc z pokoju znalazłam ciało. Ponieważ nie mam innego alibi, zdaję sobie sprawę, że jestem podejrzana - i sądzę, że już wiesz, że nie poddam się zaklęciom, żeby zeznawać. Przyczyną jest to, że byłoby to pogwałcenie przysięgi tajemnicy, jaką złożyłam, by chronić projekt."~ */
  IF ~~ THEN REPLY #43317 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"Sądzę, że spytam o to Keldora."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~Żachnęła się. "Anarchistką? Jasne. Oto moja druga noga. Czy masz jakieś pytania, czy mogę wracać do pracy?"~ */
  IF ~~ THEN REPLY #43321 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"Wracaj do pracy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"Opowiedzieć ci o projekcie, którego przysięgaliśmy na własne życie skończyć i bronić? Hmm. Nie. Nie sądzę. Przynajmniej jeszcze nie. Powiedzmy tylko, że jest on potężny i będzie wart sił, jakie w niego wkładamy."~ */
  IF ~~ THEN REPLY #43324 /* ~"Dobrze. Odpowiedz mi zatem jeszcze na kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"Inni ludzie tutaj? Cóż, masz inteligentnego ale ekscentrycznego Nila Xandera, wyrzutka githzerai - Kel'lerę, Tyldona Szarego, którego serce jest o wiele mniej dwulicowe niż jego imię, faktora Keldora, faktora Sandoza, dwoje dzieci tego ostatniego, nadzorców, kowali i wielu innych. Wszyscy mijają mnie tu i tam i szczerze mówiąc nie starałam się specjalnie ich wszystkich poznać. Pracują dla mnie albo nie i obawiam się, że to wszystko, co mnie interesuje. Jestem raczej oddana mojej pracy."~ */
  IF ~~ THEN REPLY #43327 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"Nazywam się Bedai Lin. Jestem inżynierem magii - nie magiem, ale teoretykiem - i mam zamiar upewnić się, że Bogowcy nie będą mieli okazji użyć tej broni ani uzyskać kontraktu na inne egzemplarze."~ */
  IF ~~ THEN REPLY #43330 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~Uśmiecha się z satysfakcją. "Dobrze. Uderz w jeden ze słabych punktów tej maszyny i wróć, żeby mi dać znać."~ */
  IF ~~ THEN REPLY #43333 /* ~"Jakie są jej słabe punkty?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"Powiem ci, gdy skończę. W międzyczasie mam jeszcze kilka pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"Czemu chcesz to uczynić?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"Chyba zmieniłem zdanie. Mam zamiar cię wydać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"Czy powiedziałbyś, że twój brak oddania jest wystarczająco silny, że uderzyłbyś w Bogowców, gdybyś miał ku temu okazję?"~ */
  IF ~~ THEN REPLY #43339 /* ~"Tak, uczyniłbym to."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"Oczywiście, że nie!"~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"Nie interesuje." Odwraca się od ciebie. "Żegnaj."~ */
  IF ~~ THEN REPLY #43342 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"Nie domyśliłeś się? Przysięgałam pod fałszywym imieniem i fałszywą osobowością. Nie jestem tą samą osobą, która złożyła przysięgę, więc jestem odporna. A teraz, czy weźmiesz tę nową robotę, czy nie?"~ */
  IF ~~ THEN REPLY #43344 /* ~"Jaką?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"Ty to uczyń. On sprawdzi, co ci powiedziałam - on nakazał mi złożenie przysięgi, więc zna jej moc."~ */
  IF ~~ THEN REPLY #43346 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"Doskonale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~Jej oczy aż błysnęły z gniewu - ale pogarda pojawia się tam tak szybko, że nie jesteś pewien, czy dobrze to odczytałeś. "Anarchistką? Jasne. Oto moja druga noga. Czy masz jakieś pytania, czy mogę wracać do pracy?"~ */
  IF ~~ THEN REPLY #43349 /* ~"Co miał znaczyć ten błysk gniewu?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"Możesz wracać z powrotem do pracy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"Zatem przyszedłeś do właściwej osoby." Uśmiecha się i w jej oczach pojawia się nowy błysk. "W jaki sposób chciałbyś uderzyć zarówno w wojenną machinę baatezu oraz w Bogowców?"~ */
  IF ~~ THEN REPLY #43353 /* ~"Co masz na myśli?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"Niewiele."~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"On był użytecznym pionkiem, ale faktem jest, że był zbyt przywiązany do swoich koneksji osobistych by zrozumieć potrzebę ich zniszczenia. Jeśli on umrze, to niewielka strata. Jeśli przeżyje, również. Będę go miło wspominać jako chłopca, który zrobił, co do niego należało, ale któremu brakło możliwości."~ */
  IF ~~ THEN REPLY #43356 /* ~"W porządku. Odpowiedz mi jeszcze na kilka pytań."~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"To miłe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"Dobrze, dobrze. Miło wiedzieć, że ta frakcja nie rodzi zdrajców. Czy mogę ci w czymś jeszcze pomóc?"~ */
  IF ~~ THEN REPLY #43359 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~Uśmiecha się nieznacznie. "Nie straciłeś wiele, prawda? Pozwól mi powiedzieć to w ten sposób: jak ty byś się czuł, gdyby cię niesprawiedliwie oskarżono? Mój gniew wynika stąd, znikąd indziej." *Zdaje* się być szczera...~ */
  IF ~~ THEN REPLY #43362 /* ~"Nie kupuję tego."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"Będziesz musiał, ponieważ ode mnie nie dostaniesz innej odpowiedzi." Odwraca się sztywno od ciebie. "Żegnaj."~ */
  IF ~~ THEN REPLY #43366 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"To, co mam na myśli, to fakt, że tu, w Kuźni, budowana jest broń o niesamowitej mocy, a pieniądze na nią pochodzą od baatezu - diabłów, jeśli wolisz. Zniszczenie jej nie tylko pozwoli ci zemścić się na frakcji, której jak rzekłeś, się wypierasz, ale także utrzeć nosa całej rasie biesów. Co ty na to?"~ */
  IF ~~ THEN REPLY #43368 /* ~"Zrobię to."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"Nie. Nie zrobię tego."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"Zatem jesteś dla mnie bezużyteczny. Powstrzymaj swój język, a ja powstrzymam mój. Żegnaj."~ */
  IF ~~ THEN REPLY #43371 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"Czego chcesz?"~ */
  IF ~~ THEN REPLY #43373 /* ~"Opowiedz mi o Wielkiej Kuźni."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"Powiedz mi, co wiesz o morderstwie."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"Tyldon mówi, że jesteś Anarchistką i starasz się wrobić go w to morderstwo."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"Tyldon mówi, że jesteś Anarchistką i starasz się wrobić go w to morderstwo."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"Opowiedz mi o projekcie, nad którym pracujesz."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"Powiedz mi o innych pracujących tu osobach."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"Kim jesteś?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~"Nic. Nieważne."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~Widzisz poważną kobietę o płomienno-rudych włosach ściągniętych z tyłu w kuca, wydłużających jej twarz i nadających jej nerwowy wygląd. Zdaje się być głęboko zamyślona. Na twój widok podnosi wzrok i pyta: "Czy mogę ci w czymś pomóc?"~ */
  IF ~~ THEN REPLY #43382 /* ~"Tak, mam kilka pytań."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"Nie, przykro mi. Żegnaj."~ */ EXIT
END
