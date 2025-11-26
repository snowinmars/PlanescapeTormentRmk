// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~Ta ciemnowłosa młoda kobieta wpatruje się tępo w dal, wzdychając żałośnie i od czasu do czasu bawiąc się szwem swojej sukni z zielonego aksamitu. Trudno jest powiedzieć, czy jest przygnębiona, czy jedynie znudzona.~ */
  IF ~~ THEN REPLY #2984 /* ~"Witaj..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~Dziewczyna spogląda w twoją stronę przez ułamek sekundy, po czym na powrót kieruje swoje spojrzenie gdzieś daleko przed siebie. "Witaj, tak... mam na imię Julia. W czym mogę... och, nieważne. Zostaw mnie proszę w spokoju." Wzdycha poirytowana.~ */
  IF ~~ THEN REPLY #40280 /* ~"Co się stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"Najpierw odpowiedz na kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"W porządku; żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"Och, zupełnie nic. Tyle tylko, że spędzam swoje dni wpatrując się w przeciętność, starając się dostrzec coś, co mogłoby wymazać jej straszny, niewyobrażalnie nudny byt."~ */
  IF ~~ THEN REPLY #40283 /* ~"Czy twoje życie jest aż tak szare i nudne?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"Niestety, jest." Wzdycha zamykając oczy i masując sobie skronie. "Okropnie nudne!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"Być może mógłbym sprawić, że życie będzie dla ciebie mniej nudne, moja pani."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"Jestem pewien, że mógłbym dodać trochę emocji twojemu życiu..."~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"Jestem pewien, że mógłbym dodać trochę emocji twojemu życiu..."~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"Nie, nie... miło jednak z twojej strony, że to proponujesz. Jestem już z mężczyzną, panie, i kocham go serdecznie. Chciałabym jedynie..." Stuka palcem o podbródek. "...czegoś *więcej* od naszego związku."~ */
  IF ~~ THEN REPLY #66195 /* ~"Czy coś więc brakuje temu związkowi?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"Jest jakiś problem z tym związkiem?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~Patrząc na ciebie, dziewczyna marszczy brwi i przewraca oczami. "W najlepszym razie jest to wątpliwe. Jestem już z mężczyzną, panie, i kocham go serdecznie. Chciałabym jedynie..." Stuka palcem o podbródek. "...czegoś *więcej* od naszego związku."~ */
  IF ~~ THEN REPLY #66199 /* ~"Czy coś więc brakuje temu związkowi?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"Jest jakiś problem z tym związkiem?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"Jedynej rzeczy jakiej mu *brakuje* są emocje, panie. Nasze rodziny wyśmienicie przyjęły wiadomość o naszych wspólnych zalotach, jego rodzeństwo kocha moje rodzeństwo, a przyjaciele uważają, że naszemu związkowi błogosławią same Sfery. Wszystko dobrze, ale to się dzieje..." Marszczy czoło. "...tak *gładko*. Taki brak problemów jest nie w porządku."~ */
  IF ~~ THEN REPLY #66747 /* ~"Pierwsze słyszę..."~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"Tak, jest pewien problem..." Robi się rozdrażniona. "...w tym, że nie ma żadnych problemów! Nasze rodziny wyśmienicie przyjęły wiadomość o naszych wspólnych zalotach, jego rodzeństwo kocha moje rodzeństwo, a przyjaciele uważają, że naszemu związkowi błogosławią same Sfery. Wszystko dobrze, to się dzieje..." Marszczy czoło. "...tak *gładko*. Taki brak problemów jest nie w porządku."~ */
  IF ~~ THEN REPLY #66750 /* ~"Pierwsze słyszę..."~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"Naprawdę? Doświadczyłeś kiedykolwiek takiego związku?" Spogląda na ciebie przez krótką chwilę. "Wygląda, że twoje życie wypełnione jest problemami wszelakiego rodzaju, sądząc po bladości twojej cery."~ */
  IF ~~ THEN REPLY #66203 /* ~"To nie jest coś o czym chciałbym rozmawiać..."~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"Nie pamiętam, żebym się do kogoś zalecał, naprawdę."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"Nie przypominam sobie żadnych swoich związków. Pozostałości po tych, które napotkałem wskazują na to, że mogłem mieć pewne kłopoty."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"Chodzi o to, że wszyscy moi przyjaciele mają tak interesujące związki... obfitujące w kłótnie, wrogie sobie rodziny, ciosy zadawane sztyletem w plecy, otrucia, szalone rodzeństwo i wściekłych ojców z wielkimi mieczami. Mam kochanka, którego rodzina mnie kocha i którego kocha świat." Znowu wzdycha. "Rzecz wielce dokuczliwa. Jakżeż chciałabym znaleźć sposób na dodanie sprawom odrobiny pikanterii..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"To nie brzmi rozsądnie. Ciesz się tym co masz."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"Co masz na myśli?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"Chciałabym jednak doświadczyć kłopotów. Chciałabym doświadczyć wzlotów i upadków naszego związku... ale z nim, z nikim innym." Wzdycha. "Ach, taka jest miłość. Potrafi być tak szara, nudna i nie ma z niej pożytku dla ambitnego Czuciowca."~ */
  IF ~~ THEN REPLY #40307 /* ~"Co miałaś na myśli mówiąc 'dodać trochę pikanterii'?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"Ambitnego Czuciowca?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"Nie jestem pewna. Jakiś element niebezpieczeństwa. Albo zazdrości. Coś *intensywnego*."~ */
  IF ~~ THEN REPLY #40311 /* ~"Dlaczego nie wdasz się w jakiś romans?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"Dlaczego nie wymyślisz paru fałszywych listów miłosnych, pochodzących rzekomo z ukrytego romansu?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"Mogę udawać, że staram się o twoje względy, jeśli chcesz."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~Dziewczyna ssie wargę. "Nigdy nie mogłabym mieć *prawdziwego* romansu ponieważ za bardzo go kocham! Ale być może... mogłabym mieć udawany?" Mierzy cię krytycznym spojrzeniem. "Sprawiasz wrażenie człowieka obytego z niebezpiecznymi sytuacjami. Chciałbyś konkurować o moje względy?"~ */
  IF ~~ THEN REPLY #40316 /* ~"Dobrze. Zrobię to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"Co ja z tego będę miał?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"Nie... ale mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~Julia marszczy czoło. "Moje towarzystwo i wdzięczność wystarczą."~ */
  IF ~~ THEN REPLY #40320 /* ~"Dobrze. Zrobię to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"Nie."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"Zapomnij o tym. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~Bruzdy na jej czole pogłębiają się. "Co masz na myśli... To *nie* dotyczy dotykania mnie?"~ */
  IF ~~ THEN REPLY #40324 /* ~"Nie pochlebiaj sobie tak bardzo. Potrzebuję informacji."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"Potrzebuję pewnych informacji."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~Julia myśli nad tym, po czym przytakuje skinieniem głowy. "Zgoda. Dostarczę, gdy *ty* dostarczysz. Rozumiesz?"~ */
  IF ~~ THEN REPLY #40326 /* ~"Zgoda."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"Nie. To mi nie pasuje."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"A zatem mamy impas. Jesteś pewien, że nie chcesz tego przemyśleć?"~ */
  IF ~~ THEN REPLY #40328 /* ~"W porządku... zrobię to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"Nie, przykro mi. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"Nie. Żegnaj, Julio."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~Oczy Julii rozjaśniają się. "Wyśmienity pomysł! Najwspanialszy!" Nagle ściąga brwi. "Ale on zna charakter mojego pisma... napiszesz kilka za mnie?"~ */
  IF ~~ THEN REPLY #40331 /* ~"To nie jest w moim stylu. Mogę ci jednak kogoś znaleźć."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"Właściwie to zapomnij o tym. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"Wolałbym nie. Żegnaj, Julio."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"Och, naprawdę? Wyśmienicie! Gdy już je znajdziesz, daj je proszę mojej miłości, Montekowi... znajdziesz go w Gmachu Rozrywki. A co do listów... zajrzyj do Penna Szydercy, który prowadzi drukarnię w Niższej Dzielnicy. Dziękuję ci!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"Zaczekaj... Montek? Jest pewien problem. On ze mną nie porozmawia."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Julia poprosiła mnie, abym dostarczył parę "fałszywych" listów miłosnych jej kochankowi, Montekowi. Wyjaśniłem jej, że ostatnimi czasy Montek nie odnosi się do mnie zbyt przyjacielsko, dlatego zapewne nie będzie chciał poświęcić mi uwagi.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"Zaczekaj... Montek? Jest pewien problem... On został zabity."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Julia poprosiła mnie, abym dostarczył parę "fałszywych" listów miłosnych jej kochankowi, Montekowi. Wyjaśniłem jej, że wykonanie tego zlecenia przedstawia niejaką trudność, albowiem Monteka nie ma już pośród żywych.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"Oczywiście. Żegnaj."~ */ JOURNAL #39456 /* ~Podjąłem się zadania dostarczenia człowiekowi o imieniu Montek kilku fałszywych listów miłosnych, aby zaczął myśleć, że Julia ma romans. Najwyraźniej nie jest zadowolona z emocji płynących z ich związku. Gdy tylko znajdę jakieś listy, mam zanieść je do Gmachu Rozrywki, jako 'dowód' jej romansu. Julia zasugerowała, żebym porozmawiał z Pennem Szydercą, którego powinienem znaleźć w jego drukarni w Niższej Dzielnicy.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~Julia spogląda na ciebie, po czym krzywi się. "Och, wielce wątp... Hmm. Właściwie ten pomysł nie jest nawet w połowie tak pomylony jak mi najpierw się zdawało. Z pewnością wyglądasz dość *niebezpiecznie*." Dziewczyna przygląda się twojej twarzy, jakby szacowała wartość konia. "Jesteś tak surowy i twardy jak wskazuje na to twój wygląd?"~ */
  IF ~~ THEN REPLY #40335 /* ~"Nie ma twardszych ode mnie, zapewniam cię."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"Tak."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"Zrobisz więc to dla mnie?"~ */
  IF ~~ THEN REPLY #40337 /* ~"Tak, zrobię to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"A co ja będę z tego miał?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"Właściwie to... nie. Ale mam kilka pytań..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"Wyśmienicie! Moją miłość, Monteka, można znaleźć w Gmachu Rozrywki. Dziękuję ci!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"Zaczekaj... Montek? Jest pewien problem. On ze mną nie porozmawia."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Julia poprosiła mnie, abym odegrał przed jej kochankiem scenę zazdrosnego konkurenta. Wyjaśniłem jej, że ostatnimi czasy Montek nie odnosi się do mnie zbyt przyjacielsko, dlatego zapewne nie będzie chciał poświęcić mi uwagi.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"Zaczekaj... Montek? Jest pewien problem... On został zabity."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Julia poprosiła mnie, abym odegrał przed jej kochankiem scenę zazdrosnego konkurenta. Wyjaśniłem jej, że wykonanie tego zlecenia przedstawia niejaką trudność, albowiem Monteka nie ma już pośród żywych.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"Oczywiście. Pójdę i porozmawiam z nim... Żegnaj."~ */ JOURNAL #39455 /* ~Zgodziłem się udawać zazdrosnego adoratora Julii, jednej z kurtyzan z Przybytku Zaspokajania Żądz Intelektualnych. Mam znaleźć w Gmachu Rozrywki jej kochanka, Monteka i zażądać, by z niej zrezygnował na moją korzyść.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~Julia przewraca oczami, "Och, pytaj, jeśli musisz."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"Co tu robisz?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~"Możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"Co tu robisz?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"Możesz mi opowiedzieć o ty, miejscu?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~Julia powiedziała mi, że Kimasxi Żmijowy Język, jedna z kurtyzan z Przybytku Zaspokajania Żądz Intelektualnych, jest przyrodnią siostrą Kesai-Serris, która, jak słyszałem, jest córką Raveli Szaradnej.~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ JOURNAL #66727 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o osobistym zapachu Vivian. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ JOURNAL #66728 /* ~Jedna z kurtyzan poradziła mi, abym zwrócił się do Nenny i zorientował się, czy nie wie czegoś o zniknięciu karmazynowego welonu. Nenny uchodzi za osobę, która zawsze wie, co się dzieje w jej otoczeniu.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~Julia wydaje z siebie długie i pełne zrezygnowania westchnienie. Zdajesz sobie sprawę, że nawet na ciebie nie patrzy.~ */
  IF ~~ THEN REPLY #40358 /* ~"Julio? Słyszałaś co powiedziałem?"~ */ JOURNAL #66753 /* ~Julia, jedna z kurtyzan w Przybytku Zaspokajania Żądz Intelektualnych, nie ma ochoty odpowiadać na żadne z moich pytań. Wygląda na to, że jedyny temat, który Julia może bez końca roztrząsać to, używając jej własnych słów, "beznadziejnie nudne życie."~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"Hmm? Och, nie słuchałam uważnie - przepraszam. Ale z pewnością nie przybywasz tutaj z litanią pytań dotyczących mojego wiejącego nudą życia...?"~ */
  IF ~~ THEN REPLY #40360 /* ~"Czy twoje życie jest aż tak szare i nudne?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"Właściwie to tak, mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"Jestem tutaj, przygotowując się do zostania Czuciowcem. Pani Sława jest naszą nauczycielką. Wszystkie tutejsze kurtyzany są jej uczennicami."~ */
  IF ~~ THEN REPLY #40363 /* ~"Czuciowcem?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~Julia skina głową. "Czuciowiec to członek Stronnictwa Doznań, frakcji oddanej zmysłom i odczuwaniu. Pani Sława potrafiłaby lepiej odpowiedzieć na twoje pytania dotyczące Czuciowców niż ja."~ */
  IF ~~ THEN REPLY #40366 /* ~"Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~Julia uśmiecha się. "Przybytek ten... to szkoła dla ambitnych Czuciowców. Pani Sława jest naszą nauczycielką, a tak na marginesie, to jest ona bardziej kompetentna ode mnie, żeby odpowiedzieć na takie pytania. Być może powinieneś raczej porozmawiać z nią?"~ */
  IF ~~ THEN REPLY #40389 /* ~"Masz ambicje, aby zostać... Czuciowcem?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"Nie teraz. Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~Julia potrząsa ze smutkiem głową. "Taka szkoda! Biedna kobieta. Przyznaję, że kilka razy zakradłam się do jej komnaty, aby podkraść kroplę lub dwie z jej perfum... ale żeby być na tyle śmiałym, aby ukraść własny, osobisty zapach Vivian? Toż to niewyobrażalna obraza! W każdym bądź razie zapytaj o to młodą Nenny. Ona wiecznie pląta się wokół, podglądając co wszyscy robią."~ */
  IF ~~ THEN REPLY #40392 /* ~"Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"Och, któż kiedykolwiek miałby *szukać* tej rzeczy? Ja, na przykład, mam nadzieję, że ta źle wychowana i całkowicie nieprzyjemna kobieta zostanie w swojej komnacie dopóki ja nie będę bezpieczna i z dala od tego miejsca! Ale odpowiadając na twoje pytanie, nie; nie widziałam tego i nie mam pojęcia, gdzie mogłoby to być. Nenny mogłaby jednak wiedzieć - wiecznie się pląta po wszystkich kątach, przyglądając się wszystkiemu."~ */
  IF ~~ THEN REPLY #40394 /* ~"Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"Raveli Szara-co?" Juliette wygląda na zakłopotaną. "Czy to jest naprawdę czyjeś imię? Jeśli tak, to Yves mogła o niej słyszeć. Zna niezliczone historie i prawdopodobnie będzie mogła opowiedzieć ci o tej 'Raveli'."~ */
  IF ~~ THEN REPLY #40396 /* ~"Mniejsza o to. Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"Zapomnij o tym, Julio. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"O czymże ty *mówisz?*"~ */
  IF ~~ THEN REPLY #40398 /* ~"Dziesiąta uczennica - kto to jest?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"Mniejsza o to. Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"Zapomnij o tym, Julio. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"Nie mam pojęcia, o czym mówisz."~ */
  IF ~~ THEN REPLY #40401 /* ~"Mam więc jeszcze jedno pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~Widzisz smutną Julię, jak zwykle przygnębioną. Ledwie zauważa twoją obecność, patrzy się w twoją stronę zaledwie przez moment, a potem zaczyna się wpatrywać daleko przed siebie.~ */
  IF ~~ THEN REPLY #40403 /* ~"Co się stało, Julio?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"Tylko tędy przechodziłem, Julio. Żegnaj."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~Julia spogląda na ciebie z nadzieją. "I jak? Masz już coś?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"Jest pewien problem. On ze mną nie porozmawia."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Julia poprosiła mnie, abym dostarczył parę "fałszywych" listów miłosnych jej kochankowi, Montekowi. Wyjaśniłem jej, że ostatnimi czasy Montek nie odnosi się do mnie zbyt przyjacielsko, dlatego zapewne nie będzie chciał poświęcić mi uwagi.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"Jest pewien problem... On został zabity."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Julia poprosiła mnie, abym dostarczył parę "fałszywych" listów miłosnych jej kochankowi, Montekowi. Wyjaśniłem jej, że wykonanie tego zlecenia przedstawia niejaką trudność, albowiem Monteka nie ma już pośród żywych.~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"Tak, w rzeczy samej. Miał złamane serce i postanowił pozostawić cię twojej nowej miłości."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem, a ona rozpłakała się jak dziecko.~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"Montek zamierzał pozostawić cię twojej nowej miłości więc powiedziałem mu, że to wszystko to był tylko podstęp. Nie jestem pewien co on teraz zrobi."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"Montek zdawał się nie być tym zainteresowany... przypominam sobie jak powiedział, że jest 'tak czy inaczej wszystkim znudzony'."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"Dałem mu te listy, ale... nie zauważyłem żadnej reakcji. Proponuję, abyś sama z nim kiedyś porozmawiała."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"Montek zdawał się nie być tym zainteresowany... przypominam sobie, jak mówił coś o innej kochance."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"Dałam mu te listy, ale... nie zauważyłam żadnej reakcji. Proponuję, abyś sama z nim kiedyś porozmawiała."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~Julia wygląda na zszokowaną, a w chwilę później zaczyna popłakiwać żałośnie.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"Dość tego płaczu... chcę usłyszeć odpowiedzi na moje pytania, i to teraz - mamy umowę."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"Ja... mam kilka pytań, Julio..."~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"Szkoda, że tak to się skończyło. Wrócę tu innym razem, Julio. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~Odejdź niezauważony.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~Udaje jej się opanować szloch. Wycierając mokre od łez oczy, spogląda znowu na ciebie.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"Powiedziałeś mu...? Niech to szlag! Co mam teraz zrobić?!"~ */
  IF ~~ THEN REPLY #40418 /* ~"Skoro o wszystkim już wie, możesz teraz otwarcie rozmawiać o swoich uczuciach dotyczących tego związku."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"To twoja decyzja - ja zrobiłem co do mnie należało. Teraz chcę usłyszeć odpowiedzi na moje pytania..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"Nie jestem pewien. Mam jednak kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"Nie wiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~Julia kiwa głową. "To brzmi dość prawdziwie. Dziękuję ci."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"Oczywiście. A teraz chcę usłyszeć odpowiedzi na moje pytania..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"Oczywiście. Mam teraz kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"Cała przyjemność po mojej stronie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~Julia wygląda na zszokowaną. "On... on powiedział *co?!* Jak mogłam być tak... och! Wygląda na to, że w moim związku pojawiły się kłopoty, których tak pożądałam, a ja po prostu przegapiłam je, zatopiona w swojej melancholii!"~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"Być może. W każdym bądź razie zrobiłem to, co do mnie należało... chcę teraz usłyszeć odpowiedzi na moje pytania..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"Być może. Mam teraz kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"Być może. Żegnaj, Julio."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~Julia zaciska zęby sfrustrowana. "Ach! Jakżeż to jest frustrujące! Będę więc musiała spróbować czegoś innego."~ */
  IF ~~ THEN REPLY #40429 /* ~"Dlaczego z nim o tym nie *porozmawiasz*? Powinnaś otwarcie pomówić o swoim związku zanim zaczniesz knuć dalsze intrygi."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~"Być może. W każdym bądź razie zrobiłem to, co do mnie należało... chcę teraz usłyszeć odpowiedzi na moje pytania..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"Być może. Mam teraz kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"Być może. Żegnaj, Julio."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~Julia spogląda na ciebie z nadzieją. "I jak? Masz już coś?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"Jest pewien problem. On ze mną nie porozmawia."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Julia poprosiła mnie, abym odegrał przed jej kochankiem scenę zazdrosnego konkurenta. Wyjaśniłem jej, że ostatnimi czasy Montek nie odnosi się do mnie zbyt przyjacielsko, dlatego zapewne nie będzie chciał poświęcić mi uwagi.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"Jest pewien problem... On został zabity."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Julia poprosiła mnie, abym odegrał przed jej kochankiem scenę zazdrosnego konkurenta. Wyjaśniłem jej, że wykonanie tego zlecenia przedstawia niejaką trudność, albowiem Monteka nie ma już pośród żywych.~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"Tak, w rzeczy samej. Miał złamane serce i postanowił zostawić cię mnie."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem, a ona rozpłakała się jak dziecko.~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"Montek zamierzał pozostawić cię mnie więc powiedziałem mu, że to wszystko to był tylko podstęp. Nie jestem pewien, co on teraz zrobi."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Powiedziałem Julii, co wyszło na jaw w związku z Montekiem. Nie była zbyt zadowolona z przyniesionych przeze mnie wieści, ale pomimo tego zgodziła się odpowiedzieć na moje pytania.~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"Montek raczej nie był tym zainteresowany..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"Przedstawiłem swoje żądania... ale nie zauważyłem żadnej reakcji. Nie chciał jednak ze mną walczyć. Proponuję, abyś sama z nim kiedyś porozmawiała."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~"Montek raczej nie był tym zainteresowany..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"Przedstawiłem swoje żądania... ale nie zauważyłem żadnej reakcji. Proponuję, abyś sama z nim kiedyś porozmawiała."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"Nie zamierza więc o mnie walczyć?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"Nie, nie zamierza."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"Nie, nie zrobi tego. Przypominam sobie jak powiedział, że jest 'tak czy inaczej wszystkim znudzony'."~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"Nie, nie zrobi tego. Przypominam sobie jak mówił coś o innej kochance."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~Jeszcze nigdy nie widziałeś Julii w takim stanie. Jej twarz jest wychudzona i blada, z czarnymi podkowami pod przekrwionymi oczami. Dziewczyna uśmiecha się do ciebie niepewnie, jakby robiąc dobra minę do złej gry.~ */
  IF ~~ THEN REPLY #40443 /* ~"Mam kilka pytań, Julio."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"Tylko tędy przechodziłem. Żegnaj, Julio."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"Witaj. Jak mniemam przybywasz, aby zadać mi swoje pytania?"~ */
  IF ~~ THEN REPLY #40445 /* ~"Tak."~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"Tylko tędy przechodziłem. Żegnaj, Julio."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"Raveli... hm... ach! Myślę, że mogłam już słyszeć to imię. Nie wiem nic pewnego na ten temat, ale *z pewnością* słyszałam taką plotkę. Zadaj to samo pytanie Kimasxi Żmijowy Język... to jej siostra przyrodnia."~ */
  IF ~~ THEN REPLY #40447 /* ~"Naprawdę? Interesujące. Mam jeszcze jedno pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"Rozumiem... To wszystko, co chciałem wiedzieć. Żegnaj, Julio."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"Och, mówisz o Ecco. Mówi się, że z takiego czy innego powodu przysięgła milczeć na zawsze. Nie potrafię sobie wyobrazić, po co ktoś miałby robić coś takiego."~ */
  IF ~~ THEN REPLY #40449 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~Julia krzywi się. "Co? Z pewnością jest to jakaś okrutna gra, w którą ze mną grasz..." Nagle łapie zadyszkę i zakrywa usta dłonią. "Nie... nie! Widzę, że mówisz prawdę! On... znów się pojedynkował, nieprawdaż?"~ */
  IF ~~ THEN REPLY #66205 /* ~"Coś w tym rodzaju... tak."~ */ GOTO 37
END
