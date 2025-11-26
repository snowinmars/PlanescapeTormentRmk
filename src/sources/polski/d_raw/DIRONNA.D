// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~Ta szeroka w ramionach kobieta biega wokół porozrzucanej na ulicy fasoli. Kopie fasole podkutymi żelazem butami; od czasu do czasu pochyla się i gołymi rękami wyciąga z tablicy gwóźdź. Podnosi go i wrzuca do skórzanej torby.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"Witaj..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"Witaj..."~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Zostaw ją, niech pracuje spokojnie.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Żelazna Nalls prostuje się i kładzie ręce na biodrach. "Znów tutaj, co? Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #13097 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"Nic. Żegnaj."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Żelazna Nalls prostuje się i kładzie ręce na biodrach. "Znów tutaj, co? Czego chcesz tym..." Nagle zauważa za tobą Annę. "No, śmiałku... kim jest twoja nowa przyjaciółka?"~ */
  IF ~~ THEN REPLY #64412 /* ~"Nazywa się Anna."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"To Anna, ale nie jestem pewien, czy mógę ją nazwać przyjaciółką."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Żelazna Nalls prostuje się i kładzie ręce na biodrach. "Znów tutaj, co?" Patrzy na ciebie najwyraźniej zakłopotana. "Powiedz no, śmiałku... gdzie jest ta młoda, ładna dzieweczka, co była poprzednio z tobą?"~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"Ona... nie żyje."~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Kłamstwo: "No nie wiem. Mam jeszcze parę pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~Kłamstwo: "No nie wiem. Mam jeszcze parę pytań..."~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Kłamstwo: "No nie wiem. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"No nie wiem. Żegnaj."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Żelazna Nalls prostuje się i kładzie ręce na biodrach. Na widok Anny szeroko się uśmiecha. "Znowu tutaj, co? Miło widzieć twoją uroczą twarzyczkę, panienko." Odwraca się do ciebie. "Czego chcesz, śmiałku?"~ */
  IF ~~ THEN REPLY #13105 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"Nic. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"Tobie niech też się wiedzie, śmiałku."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Odejdź.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Odjedź.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~Słysząc, że podchodzisz, prostuje się. Uśmiecha się grzecznie, ale po jej postawie i sposobie w jaki trzyma ręce - w pobliżu broni - widać, że jest przygotowana na kłopoty. Zauważasz, że jedno z jej oczu pokryte jest mleczną mgiełką. "To już wystarczająca odległość, śmiałku... Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #13109 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~Prostuje się, słysząc że podchodzisz. Jej broń jest w pochwie, ale widać, że jest przygotowana na kłopoty. Zauważasz, że jedno oko pokryte ma mleczną mgiełką. Zauważywszy Annę, uśmiecha się i kiwa jej głową, a następnie zwraca się do ciebie. "To już wystarczająca odległość, śmiałku... Czego chesz?"~ */
  IF ~~ THEN REPLY #13111 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~Kiwa głową. "Pytaj więc."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"Powiedziano mi, że mam spytać kobietę o imieniu Nalls, która kręci się gdzieś tutaj i grzebie w rupieciach, o zaśmiecone przejście na Placu Szmaciarzy. Czy możesz mi pomóc?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~Kobieta o imieniu Żelazna Nalls powiedziała mi, że zaśmiecone przejście na Placu Szmaciarzy to tak naprawdę portal, który przypadkiem odkryła. 'Kluczem' do niego jest po prostu garść rupieci, którą musi mieć przy sobie pierwsza osoba przechodząca przez bramę - w tym wypadku ja. Nalls wyjaśniła, że portal prowadzi na małą, otwartą przestrzeń, gdzie znajduje się brama prowadząca pod ziemię. Nalls była tam jednak sama i wolała nie iść dalej.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"Jeszcze raz: Kim jesteś?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"Jeszcze raz: Kim jesteś?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"Co robisz?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"Szukam dziennika, który mi zginął. Widziałaś jakiś?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~Z torby wyciąga trzy gwoździe, podrzuca je do góry i chwyta w palce. "Nazywają mnie Żelazna Nalls." Z powrotem wrzuca je do torby, towarzyszy temu stłumione *pobrzękiwanie*.~ */
  IF ~~ THEN REPLY #13123 /* ~"Dlaczego zbierasz gwoździe?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"Co ci się stało w oko?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"No nieźle. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"Odpowiednie imię. Żegnaj, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Twarz Nalls tężeje. "Nie twój interes, trepie. Dlaczego pytasz? Chcesz mieć podobną ranę w swojej kolekcji?"~ */
  IF ~~ THEN REPLY #13127 /* ~"Raczej nie. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"Nie, nie jest w 'moim' stylu."~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"Chciałabyś mi jakąś dodać? Straszysz mnie? Chętnie to zobaczę..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"Nie. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~Wywraca oczy. "A na co to wygląda, trepie? Zbierałam gwoździe!" Śmieje się łagodnie, potrząsając głową.~ */
  IF ~~ THEN REPLY #13131 /* ~"Dlaczego?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"Skąd jest to całe drewno?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"Mam jeszcze inne pytania."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"Sprzedaję je człowiekowi w Niższej Dzielnicy, który zwie się Hamrys. Wyrabia trumny."~ */
  IF ~~ THEN REPLY #13135 /* ~"Opowiedz mi jeszcze o Hamrysie."~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"Gdzie jest Niższa Dzielnica?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"Czy ktoś jeszcze zbiera tu gwoździe?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"Skąd jest to całe drewno?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~Wzrusza ramionami. "Z różnych miejsc. Czasami dabusy podrzucają je tutaj, a ja się tym zajmuje, zanim przyjdzie następna banda by to zabrać. Prawdopodobnie pochodzą z budynków lub ścian, które budują lub wyburzają."~ */
  IF ~~ THEN REPLY #13140 /* ~"Dabusy?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~"Mam jeszcze inne pytania."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"Tak, dabusy - słudzy Pani." Zakłopotana patrzy na ciebie. "Musisz być w Sigil od niedawna."~ */
  IF ~~ THEN REPLY #13143 /* ~"Opowiedz mi jeszcze o tych dabusach."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"Pani?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"Pracują w całym mieście, wykonując wolę Pani. Wciąż budują, lub przebudowują, korzystając z tego co zburzone lub zniszczone."~ */
  IF ~~ THEN REPLY #13147 /* ~"Pani?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~"Mam jeszcze inne pytania."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Nalls marszczy czoło. "Och, nie, nie! Nie powiem o niej więcej, niż dotąd usłyszałeś..." Palcem robi nad sercem znak półkola. "Poradzę ci coś, trepie... nie rozpytuj o Panią."~ */
  IF ~~ THEN REPLY #13150 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"Żegnaj więc."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"Nie ma zbyt wiele do powiedzenia... jest trochę gadatliwy - jak mu tylko pozwolić, będzie kłapał jadaczką tak długo, aż zwariujesz - ale uczciwie się targuje. Potrzebuje gwoździ, a ja pieniędzy, i to wszystko na temat."~ */
  IF ~~ THEN REPLY #13152 /* ~"Gdzie jest Niższa Dzielnica?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"Czy jeszcze ktoś zbiera tu gwoździe?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"Ech... kiedyś znałam drogę, ale dabusy znowu zmieniły ulice. Teraz nie wiem jak tam dojść - będę musiała znaleźć nową drogę - ale myślę, że dabusy w końcu wszystko uporządkują."~ */
  IF ~~ THEN REPLY #13156 /* ~"Dabusy?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"Opowiedz mi jeszcze o Hamrysie."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"Czy jeszcze ktoś zbiera tu gwoździe?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"Hmm. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"Może ktoś da mi lepsze wskazówki. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~Uśmiecha się potrząsając głową. "Nikt przede mną nie był na tyle mądry, ani nie miał ochoty. Tych, którzy rościli sobie to prawo już przegoniłam."~ */
  IF ~~ THEN REPLY #13161 /* ~"Rościli sobie 'prawo'?"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"Opowiedz mi jeszcze o Hamrysie."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"Gdzie jest Niższa Dzielnica?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"To dobrze. Żegnaj więc."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"Tak, właśnie tak to nazywam! Ciężko jest znaleźć uczciwą pracę w Ulu i nie mam zamiaru pozwalać, żeby jakiś skurlowaty szpicer wygryzł mnie z roboty. Niejeden już wiał stąd wyjąc i z własnymi flakami w... albo, jak nie miał szczęścia, brali go Zbieracze." Jej oko błyszczy złośliwie. "W Ulu wiedzą, że to teren Żelaznej Nalls."~ */
  IF ~~ THEN REPLY #13166 /* ~"Czy to tak straciłaś oko?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"Opowiedz mi jeszcze o Hamrysie."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"Gdzie jest Niższa Dzielnica?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"Rozumiem. Żegnaj więc."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~Śmieje się serdecznie. "Tak, a poza tym, chyba nie masz już miejsca na nowe blizny!"~ */
  IF ~~ THEN REPLY #13171 /* ~"Heh... mam jeszcze parę pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"Może masz rację. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"Słuchaj, śmiałku, mam dużo pracy; gwoździe nie wskoczą mi do torby, jak będę tak tu z tobą gadać. Może byś tak popytał kogoś innego przez jakiś czas?"~ */
  IF ~~ THEN REPLY #13175 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"Może tak zrobię. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~Kiwa głową. "Tak, słyszałam to imię. Przywódca grupy Zbieraczy, tak słyszałam. Nie jestem jednak pewna, gdzie można go znaleźć. Spróbuj może na Placu Szmaciarzy; to na północny zachód stąd. Wszyscy Zbieracze mają tam swoje leża..."~ */
  IF ~~ THEN REPLY #13173 /* ~"Rozumiem. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"Więc tam go poszukam. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"Nie, nie." Na chwilę przerywa. "Wiesz, to dobry pomysł, to jest... dziennik. Może powinnam zacząć pisać własny."~ */
  IF ~~ THEN REPLY #13177 /* ~"Tak. Zadziwiające, jak wiele można zapomnieć... dziennik może pomóc ci zachować wspomnienia."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"Może... Mam następne pytanie..."~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"Być może. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~Trawi to, co powiedziałeś. "Heh. Masz rację. Naprawdę masz rację, śmiałku! Tak zrobię. Dziękuję ci za podpowiedź." Uśmiecha się.~ */
  IF ~~ THEN REPLY #13180 /* ~"Oczywiście. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"Nic. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Nalls wygląda na prawdziwie posmutniałą. "Ech... ach... rozumiem. To smutne, naprawdę. Zbyt często się to zdarza w Ulu, mówię ci." Krótko potrząsa głową, jak gdyby chciała pozbyć się melancholii. "No cóż, czegoż to chciałeś?"~ */
  IF ~~ THEN REPLY #13182 /* ~"Mówiłem, że mam parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"Och?" W końcu znowu zwraca na ciebie uwagę i marszczy czoło. "To niedobrze. Czegoś ty chciał?"~ */
  IF ~~ THEN REPLY #13184 /* ~"Mówiłem, że mam parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~Z torby wyciąga trzy gwoździe, podrzuca je do góry i chwyta w palce. "Nazywają mnie Żelazna Nalls." Z powrotem wrzuca je do torby, towarzyszy temu stłumiony *brzęk*. Następnie patrzy na Annę - chce ujrzeć wyraz jej twarzy, ale widząc, że już się odwróciła, zwraca się do ciebie.~ */
  IF ~~ THEN REPLY #13186 /* ~"Dlaczego zbierasz gwoździe?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"Jak straciłaś oko?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"Dobrze. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"Prawidłowe imię. Żegnaj, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Ta uwaga wydaje się ją zniechęcać, ale szybko odzyskuje opanowanie. Uśmiecha się raczej smutno: "Jasne, że mogę, śmiałku. Czego szukasz?"~ */
  IF ~~ THEN REPLY #13190 /* ~"Szukam pracy."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"Chcę się zabawić."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"Właściwie nic. Pozwól, że spytam o coś jeszcze..."~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"Nieważne. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Nalls drapie się po głowie. "Tak naprawdę w Ulu możesz robić dwie rzeczy... możesz łapać mózgoszczury, albo zbierać truposzy."~ */
  IF ~~ THEN REPLY #13196 /* ~"Łapać mózgoszczury?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"Zbierać... truposzy?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"A jeśli chcę się zabawić?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"Szukam też kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~"Pozwól, że spytam o coś jeszcze..."~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"Tak. Miasto Sigil płaci, jeśli się im przyniesie ogony tych małych szpiców. Biuro znajduje się na południe stąd; tam powiedzą ci więcej."~ */
  IF ~~ THEN REPLY #13203 /* ~"Mówiłaś coś o zbieraniu 'truposzy'?"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"A jeśli chcę się zabawić?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"Szukam także kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"Może pójdę się z nim zobaczyć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~"Grabarze płacą, jak się im przyniesie truposza... to utrzymuje ulice w czystości i tak dalej. Trepy, które z tego żyją to Zbieracze... Grzebią w odpadkach, tak jak ja - ale gwoździe przynajmniej nie zalatują trupem." Pociąga nosem.~ */
  IF ~~ THEN REPLY #13209 /* ~"Mówiłaś coś o łapaniu mózgoszczurów?"~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"A jeśli chcę się zabawić?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"Szukam także kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"W porządku. Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"Cóż, to zależy od tego, co lubisz. Kilka najlepszych pubów w pobliżu to 'Proch do Prochu' i 'Pod Gorejącym Człekiem'. Jest tam całkiem niezłe towarzystwo, ale jeszcze raz - wszystko zależy od tego, jakiego towarzystwa szukasz." Patrzy na Annę, ale diabelstwo nie zwraca uwagi.~ */
  IF ~~ THEN REPLY #13215 /* ~"Jak tam dotrę?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"Jest tu jakaś praca?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"Szukam także kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"Właściwie każdy w Ulu to kłopoty... a patrząc na ciebie widać, że też nieraz w nie wpadałeś! Uważaj tylko, z kim rozmawiasz, to wszystko!" Znów ocenia cię wzrokiem. "Jestem pewna, że dasz sobie radę... a twoja urocza przyjaciółka, też nie wygląda na mięczaka." Patrzy na Annę, ale ta ignoruje jej komentarz.~ */
  IF ~~ THEN REPLY #13221 /* ~"Jest tu jakaś praca?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"A jeśli chcę się zabawić?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"Szukam też kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~Kiwa głową w stronę Anny. "Twoja ładna towarzyszka wygląda jakby sama była z Ula... pytałeś ją o to?" Nalls uśmiecha się do diabelstwa, choć jej chrome oko nieco psuje efekt.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Nalls myśli przez chwilę, drapiąc się w brodę. "Karczma 'Proch do Prochu' znajduje się w pobliżu Kostnicy; na południowy zachód od głównej bramy. 'Pod Gorejącym Człekiem' - z tych dwu tę bym wybrała - jest na wschód stąd. Poszłabym tam z tobą i napiła się, ale mam za dużo pracy."~ */
  IF ~~ THEN REPLY #13226 /* ~"Jest tu jakaś praca?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"Czy jest coś, na co muszę uważać?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"Szukam też kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"Właściwie każdy w Ulu to kłopoty... a patrząc na ciebie widać, że też nieraz w nie wpadałeś! Słyszałam, że jest kręci się w pobliżu naprawdę niebezpieczny krwawnik, który szuka okazji żeby pokryć czerwienią swój miecz. Wygląda na szlachcica." Znów ocenia cię wzrokiem. "Jestem pewna, że dasz sobie radę... a twoja urocza przyjaciółka, też nie wygląda na mięczaka." Patrzy na Annę, ale ta ignoruje jej komentarz.~ */
  IF ~~ THEN REPLY #13260 /* ~"Jest tu jakaś praca?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"A jeśli chcę się zabawić?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"Szukam też kogoś, kto nazywa się Farod."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~"Pozwól, że spytam o coś innego..."~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Nalls powoli kiwa głową. "To portal, wiesz. Wlazłam na niego przez przypadek, byłam... wszystko, co musisz zrobić to wziąć ze sobą kupę różnego śmiecia gdy się do niego zbliżasz, a uda ci się przejść. Obok portalu jest mała, otwarta przestrzeń i brama prowadząca do podziemi, ale nie widziałam sensu w proszeniu się o kłopoty, więc po prostu odwróciłam się i wycofałam. Masz..." Podaje ci trochę śmieci. "Użyj tego, jeśli chcesz. I tak miałam to wyrzucić."~ */
  IF ~~ THEN REPLY #48401 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"Dzięki Nalls. Żegnaj."~ */ GOTO 5
END
