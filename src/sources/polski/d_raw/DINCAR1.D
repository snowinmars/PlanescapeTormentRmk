// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*W końcu*. Myślałem, że umrę ponownie, czekając by powstał."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"Uważaj *jak* się do mnie odzywasz, ty obłąkany wraku. Udało mu się dojść aż tutaj, mimo tych wszystkich pułapek, które *ty* rozrzuciłeś po Sferach. Daję słowo, gdybym tylko mógł przejść przez lata by uwolnić cię z tego *nieszczęścia*, zrobiłbym..."~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"Na wszystkie piekła, on stracił swoje wspomnienia! A niech to! Teraz na nic się już nam nie przyda!"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"Moja cierpliwość się *kończy*, gdy słyszę, jak zawodzisz! Bądź cicho, albo..."~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"Czas już nie jest naszym sprzymierzeńcem. Nie będę tu stał i trwonił czasu, gdy nasz przeciwnik bez wątpienia poluje na nas. Wystarczająco długo czekaliśmy, aż się obudzi - porozmawiam z nim *teraz*."~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~Mężczyzna przed tobą przypomina ciebie, ale nosi się bardziej jak moc niż jak człowiek. Obserwuje cię uważnie, a gdy próbujesz go ocenić, czujesz, że on robi to samo z tobą. "Więc... doszło do tego."~ */
  IF ~~ THEN REPLY #62918 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"Nie wyznam mego imienia ani tobie, ani żadnemu innemu człowiekowi." Jego głos jest równie szorstki jak twój, dziwnie dzwoni ci w uszach. "Jeśli chodzi o to 'kim jestem', powinieneś sam siebie o to spytać - jesteś jednym z *moich* wcieleń. Udało ci się tu dojść, dzięki moim wskazówkom."~ */
  IF ~~ THEN REPLY #62920 /* ~"My... jesteśmy różnymi wcieleniami? Jak to możliwe?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~Gdy podchodzisz, inkarnacja obdarza się kamiennym spojrzeniem. Wygląda, jak gdyby próbował wykryć twe słabe punkty.~ */
  IF ~~ THEN REPLY #62922 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"Jeśli jesteś częścią mnie, chciałbym wiedzieć kilka rzeczy."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~Zostaw to wcielenie w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~Przez chwilę nie odzywa się, następnie na jego twarzy widać pogardę.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"Jeżeli jest coś, czego w tobie *nienawidzę*, to twoje ciągłe wypytywanie - twoje rozpaczliwe szukanie znaczenia i odpowiedzi." Jego głos jest ostry, niczym topór; na twarzy odbija się złość. "Czas pytań minął. Teraz *wysłuchasz* mnie. Ja pierwszy dotarłem do Fortecy i cokolwiek tu na nas czeka, zdołało mnie pokonać. Ale drugi raz mu się nie uda."~ */
  IF ~~ THEN REPLY #62927 /* ~"Mówisz jakbyś zamierzał z tym walczyć, czymkolwiek by to nie było."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~Mężczyzna obdarza cię dziwnym spojrzeniem, a następnie uważnie cię studiuje. "Oczywiście. To jedyny powód, dla którego w ogóle rozmawiamy. Potrzebuję cię jako skorupy - ale twój umysł musi być *moim* umysłem. Rozumiesz?"~ */
  IF ~~ THEN REPLY #62929 /* ~"Chcesz powiedzieć, że masz zamiar mnie wchłonąć?"~ */ JOURNAL #68253 /* ~Po dotknięciu kryształu obudziłem się i znalazłem się uwięziony w pokoju, otoczony moim wcieleniami - jedno z nich, wcielenie pragmatyczne, powiedziało mi, że tylko *jeden* z nas może opuścić to miejsce. Moje wcielenie zdradziło mi, że albo będziemy musieli wszyscy zlać się w jedność, podporządkowując się woli jednego z nas albo też jeden z nas będzie musiał uśmiercić trzy pozostałe wcielenia. Będę musiał się nad tym porządnie zastanowić... A może powinienem z kimś na ten temat porozmawiać?~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"Tak." Rozgląda się po zakończonych kolcami ścianach, a potem odwraca się do ciebie. "Nie możemy stąd odejść w kawałkach. Tylko jeden może odejść."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"Jak mamy stać się jednością?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"O czym ty mówisz?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"O czym ty mówisz?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"Jak mamy to zrobić?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"Musisz mi oddać swą wolę - twoją wiedzę i umiejętności. Cokolwiek, co udało ci się zebrać w życiu, może okazać się przydatne." Znów mierzy cię wzrokiem. "W końcu będzie to tylko ułamek mojej mocy, ale może się przydać."~ */
  IF ~~ THEN REPLY #62933 /* ~"A jeśli postanowię NIE oddawać ci mojej woli?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"Jak mam oddać ci moją wolę?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"Nie masz w tej sprawie żadnego wyboru. Nie wiesz jak stąd uciec. Ja wiem. Jeśli nie zgodzisz się poddać, ja nie poddam się tobie - i żaden z nas nie zdoła stąd wyjść. Może odejść tylko jeden i to *nie* będziesz ty."~ */
  IF ~~ THEN REPLY #62939 /* ~"Mógłbym cię *zabić*."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"Jak mam oddać ci moją wolę?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"Mógłbyś spróbować." Mężczyzna wydaje się rozbawiony. "Nie jesteś dość potężny, by mnie pokonać, ani nie masz dość woli, żeby zmusić mnie bym się z tobą połączył. Wolałbym, żeby jedyną szansą na moją ucieczkę *nie* było zabicie ciebie, ale to niewielka cena za naszą wolność. Nie ma sensu by którykolwiek z nas ginął, skoro przez połączenie mógłbym stać się silniejszy."~ */
  IF ~~ THEN REPLY #62945 /* ~"Dlaczego ty nie połączysz się ze mną?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"Jak mam oddać ci moją wolę?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"Z tobą?" Jego krótki śmiech przypomina szczeknięcie. "Ponieważ nic to nie da. Twoje życie jest tylko cząstką tego, co ja przeżyłem. Nie powierzę mojej woli takiemu nowicjuszowi jak ty."~ */
  IF ~~ THEN REPLY #62951 /* ~"Jak mam oddać ci moją wolę?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"W uproszczeniu, po prostu popatrzymy sobie w oczy, a ty poddasz się. Połączysz się ze mną i będziemy jak jeden, ale mój umysł będzie dominował."~ */
  IF ~~ THEN REPLY #62956 /* ~Prawda: "Dobrze... Oddam ci moją wolę."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~Blef: "Dobrze... Oddam ci moją wolę."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~Mężczyzna marszczy czoło. "Wziął mnie znienacka. I nie oczekiwałem, że moi towarzysze zostaną ode mnie odcięci... To, co stało się potem... jest zagmatwane."~ */
  IF ~~ THEN REPLY #62962 /* ~"Więc nawet gdybym miał się tobie poddać, wciąż możemy przegrać?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"Wątpię. Jestem jedynym, który ma wiedzę niezbędną do tego, żeby się udało - ta chwila jest kulminacją wieków planowania. Wielu zginęło i cierpiało, byśmy mogli tu być... ich ofiary nie mogą być daremne." Ostatnie słowa wytrącają cię z równowagi - brzmią jak przemówienie i wypowiedziane są beznamiętnym głosem.~ */
  IF ~~ THEN REPLY #62966 /* ~"Nie wierzę ci i nie oddam ci mojej woli."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"A jednak już tu byłeś... i zostałeś pokonany."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"Dlaczego miałbym pozwolić ci się wchłonąć?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"Jeśli jesteś jednym z moich wcieleń, mam do ciebie kilka pytań..."~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"No to mamy dylemat. *Nie* oddam ci tego, co wiem. To oznacza, że nigdy nie uciekniesz z tego więzienia i nigdy nie uda nam się pokonać naszego zabójcy. Ani uwolnić od niego." Jego głos mięknie. "Jeśli jednak połączysz się ze mną, nie tylko możemy stąd uciec, ale naszą bronią będzie cała wiedza, jaką mam. Znajdziemy naszego wroga, pokonam go i w końcu zaznamy spokoju."~ */
  IF ~~ THEN REPLY #62972 /* ~Prawda: "Dobrze. Zgadzam się."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~Blef: "Dobrze. Zgadzam się."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"Pomyślę o tym. Ale najpierw chcę wiedzieć kilka rzeczy."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"Spełnię twoją zachciankę - ale tylko przez chwilę."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"Jesteś tym, który ocalił Dak'kona pod Shra'kt'lor. Tym, który uwięził Vhailora. I tym, który doprowadził do śmierci Deionarry."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"Jesteś tym, który ocalił Dak'kona pod Shra'kt'lor. I tym, który uwięził Vhailora."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"Jesteś tym, który ocalił Dak'kona pod Shra'kt'lor. I tym, który doprowadził do śmierci Deionarry."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"Jesteś tym, który uwięził Vhailora. I tym, który doprowadził do śmierci Deionarry."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"Jesteś tym, który ocalił Dak'kona pod Shra'kt'lor.~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"Jesteś tym, który uwięził Vhailora pod Klątwą."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"Jesteś tym, który doprowadził do śmierci Deionarry."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"Dałeś Dak'konowi Nieprzerwany Krąg Zerthimona. Dlaczego?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"W jakim celu ocaliłeś Dak'kona pod Shra'kt'lor?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"Ocaliłeś Dak'kona pod Shra'kt'lor z powodu jego miecza. Dlaczego?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"Dlaczego uwięziłeś Vhailora?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"Dlaczego Deionarra musiała umrzeć?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"Dlaczego Deionarra musiała umrzeć?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"Opowiedz mi o Zachariaszu."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"Opowiedz mi o łuczniku, który wyruszył do tej Fortecy."~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"Czy to ty nauczyłeś Ignusa Sztuki?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"To ty zbudowałeś grobowiec pod Sigil, prawda? Ten pełen pułapek?"~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"To ty zbudowałeś grobowiec pod Sigil, prawda? Ten pełen pułapek?"~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"Czy to ty zabrałeś Mortego ze Słupa Czaszek?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"Kim są ci inni?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"Kim jest ta inna wersja nas samych?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"Kim jest ta inna wersja nas samych?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"Kim były te inne wersje nas samych?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"Jak można stąd uciec?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"Czy wciąż chcesz walczyć z tym, co tu się czai?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~Prawda: "Mam zamiar połączyć się z tobą."~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~Blef: "Mam zamiar połączyć się z tobą."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"Nie połączę się z tobą - to ty połączysz się ze mną."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"Czy jesteś odpowiedzialny za tatuaże na moich plecach? Te, które przeczytałem, kiedy obudziłem się w Kostnicy."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"Czy to ty namówiłeś Faroda, żeby odnalazł Kulę z Brązu w katakumbach?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"Nie mam nic więcej do powiedzenia. Porozmawiamy jeszcze... później."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~Mężczyzna mruży oczy. "I co z tego? Wszystko miało swój cel."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"Dałeś Dak'konowi Nieprzerwany Krąg Zerthimona. Dlaczego?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"W jakim celu ocaliłeś Dak'kona pod Shra'kt'lor?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"Ocaliłeś Dak'kona z powodu jego miecza. Dlaczego?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"W jakim celu uwięziłeś Vhailora?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"Dlaczego Deionarra musiała umrzeć?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"Dlaczego Deionarra musiała umrzeć?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"Nieprzerwany Krąg? Ten zbiór kłamstw? Tak, wykucie go zajęło mi z tydzień - musiałem sprawić by Dak'kon przestał w siebie wątpić."~ */
  IF ~~ THEN REPLY #63037 /* ~"To ty go *zrobiłeś*? Ale powiedziałeś mu..."~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"Może było tam trochę prawdy - nie wiem. Wiem, że te napisy były nudne, ale wystarczyły, by dać mu wiarę."~ */
  IF ~~ THEN REPLY #63041 /* ~"Dlaczego?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"Twa ignorancja zdumiewa mnie." Wygląda na pełnego niedowierzania. "Czy to możliwe, że nie wiesz, co on nosi w dłoni? Ten miecz formują jego *myśli*. Takie narzędzie, używane prawidłowo, mogłoby uśmiercić sam wieloświat..." Wygląda na pogrążonego w myślach, następnie na jego twarzy pojawia się grymas obrzydzenia. "Choć oczywiście, gith został oddzielony, kiedy przybyliśmy do Fortecy, a ja nie mogłem użyć jego miecza." Marszczy czoło. "Pech."~ */
  IF ~~ THEN REPLY #63045 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~Mężczyzna kręci głową, jak gdyby był znużony. "Vhailor stawał się... dokuczliwy." Uśmiecha się bez humoru. "Te psy, Łaskobójcy, będą cię ścigać przez Sfery szukając 'sprawiedliwości' - a Vhailor był szczególnie wytrwały." Nieznacznie zniża głos. "I jak na mój gust, był zbyt blisko tej sprawiedliwości."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"Dlaczego nas ścigał?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"Dlaczego nas ścigał?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"Czy stanowił zagrożenie?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"Dobrze. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"Och, z dowolnego z niezliczonych powodów. Część z nich była moją zasługą - a reszta pochodziła z *rąk* innych wcieleń." Rzuca spojrzenie na wcielenie, które zawodziło, gdy przybyłeś tu po raz pierwszy. "Było wiele żywotów oczernionych przez wcielenia o uszkodzonych umysłach. Niektórzy z nas sprawiali... problemy. Ja wierzę w ich rozwiązywanie."~ */
  IF ~~ THEN REPLY #63054 /* ~"Czy Vhailor stanowił zagrożenie?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"Dobrze. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"Och, z dowolnego z niezliczonych powodów. Część z nich była moją zasługą - a reszta pochodziła od innych wcieleń. Jak pewnie zauważyłeś, dzięki temu obłąkanemu wrakowi, który był tu z nami, było wiele żywotów oczernionych przez wcielenia o uszkodzonych umysłach. Niektórzy z nas sprawiali... problemy. Ja wierzę w ich rozwiązywanie."~ */
  IF ~~ THEN REPLY #63058 /* ~"Czy Vhailor stanowił zagrożenie?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"Dobrze. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"Tak - w innym wypadku po prostu bym go zabił." Przytakuje. "Istnieje jakiś związek pomiędzy nim a samą sprawiedliwością, a to daje mu moc nawet nad nieśmiertelnymi, takimi jak my." Uśmiecha się lekko. "Szczególnie, jeśli niesprawiedliwości, których się dopuszczamy, są wielkie... a nasze są najczarniejszego rodzaju."~ */
  IF ~~ THEN REPLY #63062 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"Deionarra? Ta dziewczyna nie rozumiała Sfer i dlatego właśnie była mi potrzebna. Widzisz, Grabarze mają rację - czasami, kiedy za wiele jest w tobie pasji, zbyt mocno trzymasz się życia by odejść. I Deionarra właśnie tak postąpiła - jak miałem nadzieję, że zrobi."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"Dlaczego Deionarra musiała umrzeć?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~Wcielenie ledwo zwraca uwagę na zawodzącego, uśmiecha się tylko szyderczo.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"Fakt, że *ty* oskarżasz mnie o cokolwiek jest śmiechu wart." Znów zwraca się do ciebie. "Nie zrobiłem tego złośliwie - choć naprawdę stała się męcząca. Chodziło o to, że kiedy przybyłem do Fortecy, nie miałem zamiaru zostać. Chciałem tylko dostać się do środka, poświęcić ją i wynieść się stamtąd."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"Dlaczego ją zabiłeś?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"Potrzebowałem kogoś, kto byłby moimi oczami, tutaj, w Sferze Materii Negatywnej. Byłby zwiadowcą, który dowiedziałby się, kim jest mój zabójca. Tylko umarli mogą tu przeżyć tak długo - więc Deionarra musiała zostać poświęcona, by stać się kimś innym, niż była. Skomplikowana sprawa, ale zadziałało - pomogła ci, prawda?"~ */
  IF ~~ THEN REPLY #63081 /* ~"Nie musiałeś jej zabijać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"Tak, pomogła. Może tak właśnie należało zrobić."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"Nie chcę już o tym mówić. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~Przez chwilę obserwuje cię w ciszy, aż jego szyderczy uśmieszek wraca. "I dlatego właśnie zostaniesz pokonany, jeśli stawisz czoło naszemu zabójcy. Dlatego, że jesteś SŁABY. I dlatego, że nie widzisz, że pewne rzeczy są NIEODZOWNE."~ */
  IF ~~ THEN REPLY #63086 /* ~"To *nie było* nieodzowne. Po prostu tak było ci wygodnie. Powinieneś był znaleźć inne rozwiązanie."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"*Ośmielasz się* nazywać *mnie* słabym?! Stworzyłeś te wszystkie 'wspaniałe' plany pokonania tego niewidzialnego wroga, a I TAK skopał ci tyłek, a biedna dziewczyna musiała zginąć. Może gdybyś zrobił, co należało za pierwszym razem, nie byłoby sprawy!"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"Nie chcę już o tym mówić. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"OŚMIELASZ SIĘ robić mi *uwagi*?! Kobiety zawsze szły za nami - czy to Deionarra, czy Ravela, czy jakaś inna kobieta. I zawsze cierpiały. I zawsze był to ich WYBÓR. Deionarra umarłaby dla mnie, gdybym ją o to poprosił. To nie była ZBRODNIA."~ */
  IF ~~ THEN REPLY #63091 /* ~"Nie chcę już o tym mówić. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"O łuczniku? Cóż, stary skurl Zachariasz, tymi swoimi 'oczami' widział rzeczy, których ja nie potrafiłem zobaczyć - i udawało mu się w nie trafiać z łuku."~ */
  IF ~~ THEN REPLY #63094 /* ~"I co?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"Dobrze. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"No cóż, szedłem do Fortecy, będąc na swój sposób ślepy - nie wiedziałem, kim jest mój zabójca, więc potrzebny mi był ktoś, kto mógł zobaczyć to, czego ja nie mogłem. Wróg mógł przecież być poza zasięgiem mojego wzroku." Parska. "Zachariasz zginął zbyt szybko, więc w efekcie na nic się nie przydał."~ */
  IF ~~ THEN REPLY #63098 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"Już prawie o tym zapomniałem - tak, cóż to była za strata." Wydaje się poirytowany. "Oczywiście, *to* nie zadziałało. A kosztowało wiele krwi i pieniędzy." Marszczy czoło. "Zaraz po tym, jak zawiodła pułapka w grobowcu, zdecydowałem się poszukać zabójcy, zamiast dłużej czekać aż się sam pokaże."~ */
  IF ~~ THEN REPLY #63101 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"Czy Morte wciąż *żyje*?" Przez moment patrzy z niedowierzaniem, następnie ogarnia go śmiech. "Ha! Tej szpicowanej czaszce nie można było ufać bardziej, niż psu - mówił, że ma informacje, kiedy wcale ich nie miał. A gdy już przeszedłem męczarnie zdjęcia go ze Słupa Czaszek, *udawał ignoranta*." Śmieje się. "Spełniałem wszystkie jego zachcianki, bo powiedział mi wszystko, co chciałem wiedzieć."~ */
  IF ~~ THEN REPLY #63104 /* ~"Udawał ignoranta?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"Hmmm. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"O, tak." Uśmiecha się. "Kto raz kłamie, ten zawsze kłamie. Ale trzeba mieć silniejszy umysł niż ta czaszka, żeby mnie nabrać."~ */
  IF ~~ THEN REPLY #63108 /* ~"Jaką prowadził grę? O czym jeszcze kłamał?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"Hmmm. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~Uśmiecha się z wyższością. "To nie ma znaczenia. Pozwólmy mu mieć swoje tajemnice - są dla nas bez wartości."~ */
  IF ~~ THEN REPLY #63112 /* ~"Dobrze. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"Ignusa?" Patrzy na ciebie wzruszając ramionami. "Czy to imię? O kim ty do diabła mówisz?"~ */
  IF ~~ THEN REPLY #63115 /* ~"Odpowiedziałeś na moje pytanie. Chciałbym jednak wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"To inne wcielenia - odbicia nas samych. Sprawię, że połączą się ze mną, jak już uporam się z tobą." Rzuca okiem na przygarbionego, który zawodził, gdy pojawiłeś się tu po raz pierwszy. "Albo zabiję ich, jeśli odmówią. To bez znaczenia. Nie są niezbędni."~ */
  IF ~~ THEN REPLY #63118 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"Jest jednym z innych wcieleń - odbić mnie samego. Sprawię, że połączy się ze mną, po tym jak uporam się z tobą. Albo zabiję go, jeśli odmówi. To bez znaczenia."~ */
  IF ~~ THEN REPLY #63121 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~Mężczyzna spogląda na ciebie, a potem uśmiecha się z niedowierzaniem. "Nie poddam się nikomu. To ty zostaniesz wchłonięty przeze mnie."~ */
  IF ~~ THEN REPLY #63124 /* ~"Wątpię."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"Więc nie będę dziś z tobą walczyć. Jest jednak jeszcze kilka rzeczy, które chcę wiedzieć."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"W takim razie, nieważne. Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"Masz zamiar ze mną walczyć?" Wydaje się przede wszystkim rozbawiony. "Nie możesz się ze mną równać. Opór nie ma sensu."~ */
  IF ~~ THEN REPLY #63128 /* ~"Spróbuj."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"Więc nie będę dziś z tobą walczyć. Jest jednak jeszcze kilka rzeczy, które chcę wiedzieć."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"Nieważne. Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~Wasze spojrzenia się spotykają... ma kamienny wzrok; zaczyna cię przyciągać...~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~Spójrz mu w oczy i staraj się zmusić go, by połączył się z tobą.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~Spójrz mu w oczy i staraj się zmusić go, by połączył się z tobą."~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~Spójrz mu w oczy i staraj się zmusić go, by połączył się z tobą."~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~Poddaj się mu i pozwól, by cię wchłonął.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"Niech i tak będzie." Jego oczy stają się szare niczym mgła, uśmiecha się lekko i jakby wyczekująco. "Zobaczymy, co kryje twój umysł..."~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~Czujesz, jak twój umysł oddziela się pod wpływem jego spojrzenia. Nie czujesz bólu, tylko zimny dreszcz, gdy, kawałek po kawałku, odbiera ci osobowość. Przed oczami pojawia się ciemność. I nagle przestajesz istnieć.~ */
  IF ~~ THEN REPLY #63138 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~Czujesz, jak twój umysł oddziela się pod wpływem jego spojrzenia i *wiesz*, że ma silniejszą wolę, niż ty. Jeśli nie przestaniesz na niego patrzeć, wchłonie cię i przestaniesz istnieć...~ */
  IF ~~ THEN REPLY #63140 /* ~Pozwól, by cię wchłonął.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~Przestań na niego patrzeć, odwróć się.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~Oderwij od niego wzrok i zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~Gdy otwiera twój umysł, nie czujesz bólu tylko zimny dreszcz, gdy kawałek po kawałku, odbiera ci osobowość. Przed oczami pojawia się ciemność. I nagle przestajesz istnieć.~ */
  IF ~~ THEN REPLY #63144 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~Odrywasz od niego wzrok i widzisz jego wykrzywioną z gniewu twarz. "Co *robisz?!* Czy jesteś tak słaby, że nie potrafisz nawet stawić czoła przyszłości?! Na wszystkie piekła, ależ będziesz pustą skorupą!"~ */
  IF ~~ THEN REPLY #63146 /* ~"Może... tak... ale wciąż... mogę cię ZABIĆ... przygotuj się na ŚMIERĆ."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"Jest jeszcze... kilka rzeczy... które chciałbym wiedzieć."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"Najpierw... muszę pozbierać myśli... Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~Pogrążając się w zakamarkach jego umysłu, napotykasz zaskoczenie - a jego oczy rozszerzają się. Nie pochłania cię. Twoja wola okazuje się silniejsza i to ty wchłaniasz *jego*. Czujesz, że rozpaczliwie próbuje się oderwać, ale nie może - jest za słaby. Udaje ci się powstrzymać jego odwrót i wciągnąć jeszcze głębiej w twoją podświadomość.~ */
  IF ~~ THEN REPLY #63150 /* ~"Rozmawiamy po raz ostatni. Wracaj do śmierci - tam, gdzie twoje *miejsce*."~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~Nie może w to uwierzyć, a potem rozpada się i czujesz nagły PRZYPŁYW wiedzy, która próbuje się wydostać na powierzchnię... Wydaje się, że jest jej zbyt wiele, by wchłonąć ją na raz. Jesteś zdezorientowany. Tak wiele wiedzy - tak wiele doświadczeń, że...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~...i równie nagle jak przyszedł, przypływ ustępuje. Uspakajasz się. Okruchy wiedzy wirują w twoim umyśle i wiesz, że zrozumiesz je później. Na razie, tylko jedna informacja jest ważna - że to wcielenie NIE wiedziało jak opuścić to miejsce. Kłamał, byś się mu poddał.~ */
  IF ~~ THEN REPLY #63153 /* ~"Cholera..."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"Rozmawiając z nim tracisz tylko czas. Jego myśli są zawiłe i złośliwe i nic poza tym. Przestań marnować czas - jest wiele rzeczy, o których musimy porozmawiać."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"Nie *strasz* mnie, głupcze - ostrzegam cię. Jeśli ktoś tu jest złodziejem, to ty - chciałeś skraść naszą szansę uregulowania tej sprawy sabotując cały mój wysiłek!"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"Już prawie o tym zapomniałem - tak, cóż to była za strata." Wydaje się poirytowany. "Oczywiście, *to* nie zadziałało. A kosztowało wiele krwi i pieniędzy."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~Pierwsze wcielenie marszczy czoło na widok drugiego; wygląda jak gdyby ledwo powstrzymywało się przed zaatakowaniem go. "Jeszcze *jedna* rzecz, za którą mi odpowiesz..." Odwraca się do ciebie. "Choć przypuszczam, że i tak nie ma to znaczenia. Zaraz po tym, jak zawiodła pułapka w grobowcu, zdecydowałem się poszukać zabójcy, zamiast dłużej czekać aż się sam pokaże."~ */
  IF ~~ THEN REPLY #63158 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"Dość już usłyszałem. Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"To były inne wcielenia - odbicia nas samych. Chciałem, by się ze mną połączyły, ale to bez znaczenia. Nie są niezbędne."~ */
  IF ~~ THEN REPLY #63161 /* ~"Rozumiem. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"*Oczywiście*, że tak należało zrobić. Planowałem to przez dekady, w najdrobniejszych szczegółach." Spogląda gdzieś w dal. "Mimo to, byłem blisko."~ */
  IF ~~ THEN REPLY #63164 /* ~"Wyobrażam sobie. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"Masz na myśli wskazówki?" Poirytowany kiwa głową. "*Oczywiście*, że jestem odpowiedzialny. Wiedziałem, że istniała *możliwość*, że przegram i stracę wspomnienia. Chciałem, by przyszłe wcielenia skorzystały z pewnych... porad. Tak więc kazałem sobie wytatuować na plecach wskazówki, gdyż takie rzeczy, jak *dzienniki*..." Warczy, jak gdyby ze złości na siebie. "...gubią się tak *łatwo*."~ */
  IF ~~ THEN REPLY #63167 /* ~"Jednak wskazówki były cokolwiek niejasne..."~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"Dlaczego umieściłeś tam ostrzeżenie przed Mortem?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"Czy to ty namówiłeś Faroda, żeby odnalazł Kulę z Brązu w katakumbach?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"Rozumiem. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"Czy jesteś *głupcem*?" Wygląda na doprowadzonego do rozpaczy. "Wskazówki *musiały* być niejasne - nie mogłem dokładnie *opisać* tego, co nam się przytrafiło, więc zostawiłem tylko ślad. Jak myślisz, co by się stało, gdyby przeczytał je jakiś Grabarz? Albo ktoś jeszcze bardziej stuknięty? Jak *szybko* zostalibyśmy pochowani żywcem, albo spaleni?"~ */
  IF ~~ THEN REPLY #63173 /* ~"Dobrze. Ale dlaczego miałem odszukać Faroda?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"Dlaczego umieściłeś tam ostrzeżenie przed Mortem?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"Czy to ty namówiłeś Faroda, żeby odnalazł Kulę z Brązu w katakumbach?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"Rozumiem. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"Faroda?" Myśli przez chwilę. "Ach, tak - król śmieci i ci jego 'twardzi' krwawnicy, którym zdawało się, że jestem łatwym łupem..." Uśmiecha się lekko, jak gdyby przypomniał sobie coś miłego. "Po małym rozlewie krwi, dobiliśmy targu - miał dopilnować, że gdyby jego ludzie mnie znaleźli, mieli mnie bezpiecznie odprowadzić do Kostnicy - i, oczywiście, potrzebowałem ich oczu i rąk, by przetrząsnąć katakumby pod Sigil."~ */
  IF ~~ THEN REPLY #63179 /* ~"Po co?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"Szukali Kuli z Brązu?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"Rozumiem. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"Kula..."~ */
  IF ~~ THEN REPLY #63184 /* ~"...z brązu. Brzydka. W dotyku niczym jajo, a śmierdzi jak zgniły sos. Zgadza się?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"Tak. Powiedziałem Farodowi, że to jedyna rzecz, która może ocalić jego nędzne życie... Ależ był z niego płaczliwy chytrus." Uśmiecha się do ciebie. "Widzisz, temu staremu gnojowi przeznaczone było skończyć po śmierci na Słupie Czaszek i rozpaczliwie próbował się z tego wyślizgnąć. Więc powiedziałem mu, że pod Sigil jest przedmiot, który 'ocali' go przed przeznaczeniem, jeśli tylko uda mu się go znaleźć."~ */
  IF ~~ THEN REPLY #63186 /* ~"Ale kula *nie miała* go ocalić - była po prostu czymś, co chciałeś by odnalazł."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"*Oczywiście*, że dla niego była bez wartości. Nie można tak łatwo uciec przeznaczeniu." Poirytowany spogląda na ciebie. "Tym niemniej, nic nie motywuje tak bardzo, jak zapewnienie kogoś, że to, czego szuka, ocali jego duszę od wiecznego potępienia. Gdyby udało mu się ją znaleźć, miałem zamiar mu ją odebrać. Chodziło o to, że mnie samemu szukanie zabrałoby zbyt wiele czasu." Znowu się uśmiecha. "I dlaczego miałem to robić, kiedy ktoś inny mógł ją dla mnie zdobyć?"~ */
  IF ~~ THEN REPLY #63188 /* ~"Właściwie, to on przekonał *mnie*, bym ją dla niego odnalazł. Dlaczego była tak ważna?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"Uch, tak... prawda. Jestem pewien, że jeden z jego ludzi... eee... ją odnalazł. Dlaczego była tak ważna?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"Najpierw muszę pozbierać myśli, a potem porozmawiamy znowu."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"Ważna? Czyżbyś nie wiedział?" Milknie na chwilę. "Masz ją ze sobą?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"Nie, zginęła razem z Farodem. Do czego miała posłużyć?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"Nie, zginęła razem z Farodem. Do czego miała posłużyć?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~Kłamstwo: "Nie, zginęła razem z Farodem. Do czego miała posłużyć?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~Kłamstwo: "Nie, zginęła razem z Farodem. Do czego miała posłużyć?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"Tak. Mam ją ze sobą."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"To był martwy kamień doznań." Patrzy 'przez' ciebie, jak gdyby widział coś w oddali. "Czy wiesz, co zawierał?" Uśmiecha się smutno. "Były w nim ostatnie wspomnienia *pierwszego* z nas. Kiedy byliśmy jednym człowiekiem, a nie serią wcieleń." Jego głos opada. "Gdyby tylko można go było odblokować, byłbym w stanie wejrzeć w jego *umysł*..."~ */
  IF ~~ THEN REPLY #63202 /* ~"I dowiedzieć się, dlaczego tak się stało?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"Tak..." Jego twarz staje się ponura. "To odpowiedź, której zawsze szukałem. Dlaczego tak się stało. Dlaczego staliśmy się nieśmiertelni." Wzdycha. "Obawiam się, że nigdy się nie dowiemy."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"Wiesz co? Mam tę kulę ze sobą."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"Najpierw muszę pozbierać myśli, a potem jeszcze porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"*Masz* ją?!" Jego oczy płoną. "Więc mimo wszystko twoje życie nie okazało się bezużyteczne!" Patrzysz jak jego oczy migoczą, jak gdyby myślał, kalkulował. "Kiedy się połączymy, poszukam sposobu by ją otworzyć. Może jeszcze nie wszystko stracone..."~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"Czym jest ta kula? Dlaczego jest tak ważna?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"Nie mam zamiaru łączyć się z *tobą*."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~Prawda: "Dobrze. Jestem gotów, by się z tobą połączyć."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~Blef: "Dobrze. Jestem gotów, by się z tobą połączyć."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"Zobaczymy... ale najpierw, muszę wiedzieć jeszcze kilka rzeczy."~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"Najpierw muszę pozbierać myśli, a potem jeszcze porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"To jest martwy kamień doznań. Czy wiesz, co zawiera?" Uśmiecha się z zapałem. "Są w nim ostatnie wspomnienia *pierwszego* z nas. Kiedy byliśmy jednym człowiekiem, a nie serią wcieleń." Jego głos opada. "Jeśli tylko uda się go odblokować, będę w stanie wejrzeć w jego *umysł*..."~ */
  IF ~~ THEN REPLY #63215 /* ~"I dowiedzieć się, dlaczego tak się stało?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"Tak..." Jego twarz staje się ponura. "To odpowiedź, której zawsze szukałem. Dlaczego tak się stało. Dlaczego staliśmy się nieśmiertelni." Przygląda ci się. "Kiedy się połączymy, poszukam sposobu by ją otworzyć. Może jeszcze nie wszystko stracone..."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"Nie mam zamiaru łączyć się z *tobą*."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~Prawda: "Dobrze. Jestem gotów, by się z tobą połączyć."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"Zobaczymy... ale najpierw, muszę wiedzieć jeszcze kilka rzeczy."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"Najpierw muszę pozbierać myśli, a potem jeszcze porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*Ja* nie zawieram układów tam, gdzie panuje 'może' i 'przypuszczam'." Pierwsze wcielenie uśmiecha się szyderczo. "Szukam odpowiedzi. To dzięki temu zaszliśmy tak daleko." Z pogardą patrzy na trzecie wcielenie. "Gdybyśmy zostawili nasze życie w *twoich* rękach, nie mielibyśmy nawet cząstki tej wiedzy, którą posiadamy. A w tej prawdzie jest *moc*." Zwraca się do ciebie. "Zrozumiesz to, kiedy się połączymy."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"Wiesz co? Mam tę kulę ze sobą."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"Wiesz co? Mam tę kulę ze sobą."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"Zobaczymy... ale najpierw chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"Najpierw muszę pozbierać myśli, a potem jeszcze porozmawiamy."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*Ja* nie zawieram układów tam, gdzie panuje 'może' i 'przypuszczam'." Pierwsze wcielenie uśmiecha się szyderczo. "Szukam odpowiedzi. To dzięki temu zaszliśmy tak daleko." Z pogardą patrzy na trzecie wcielenie. "Gdybyśmy zostawili nasze życie w *twoich* rękach, nie mielibyśmy nawet cząstki tej wiedzy, którą posiadamy. A w tej prawdzie jest *moc*." Zwraca się do ciebie. "Zrozumiesz to, kiedy się połączymy."~ */
  IF ~~ THEN REPLY #63227 /* ~"Nie mam zamiaru łączyć się z *tobą*."~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~Prawda: "Dobrze. Jestem gotów, by się z tobą połączyć."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~Blef: "Dobrze. Jestem gotów, by się z tobą połączyć."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"Zobaczymy... ale najpierw chciałbym wiedzieć coś jeszcze."~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"Najpierw muszę pozbierać myśli, a potem jeszcze porozmawiamy."~ */ EXIT
END
