// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~Ta urodziwa kobieta, w średnim wieku, przechadza się zamyślona, w roztargnieniu ssąc kciuk. Jej oczy nie są skupione na niczym szczególnym. Jej strój, aczkolwiek w nieładzie, jest elegancki i wytworny, włosy z kolei nieco rozczochrane.~ */
  IF ~~ THEN REPLY #31262 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~Zostaw tę kobietę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"Hm?" Wyciąga kciuk z ust, odgarniając kosmyk włosów, który spadł jej na oczy.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"Czy przypadkiem nie jesteś Panią Thorncombe?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~Jej źrenice na chwilę się rozszerzają. Odwraca od ciebie wzrok. "Nie. Nie jestem, panie."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"Ale wydaje mi się, że jesteś, pani. Powiedziano mi, że jesteś nauczycielką magów w Miejskim Gmachu Rozrywki."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"Jesteś, pani, okropnym kłamcą."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"Kim zatem jesteś, jeśli mogę spytać?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"Tak czy inaczej, mam kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"Odchodzę zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~Pani Thorncombe przyjmuje ponury wyraz twarzy. "A gdybym była tą kobietą? To co?"~ */
  IF ~~ THEN REPLY #31274 /* ~"Miałem nadzieję, że wyszkolę się w sztukach magicznych."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~W jednym z wielu sensoriów Gmachu Rozrywki spotkałem Panią Thorncombe, nauczycielkę magii z Dzielnicy Urzędników. Nie chce mnie szkolić... choć nie jestem pewien dlaczego.~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"Mam zatem kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"Zatem muszę rozwiać twoje nadzieje. Już nie uczę magii... Teraz odejdź, zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #31278 /* ~"Ale, dlaczego nie?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"Nim odejdę, mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"Tak jakby cię to coś obchodziło!"~ */
  IF ~~ THEN REPLY #31282 /* ~"Ależ obchodzi... Potrzebuję treningu, a ty możesz mnie nauczyć. Chciałbym wiedzieć, jak mogę przekonać cię do szkolenia mnie."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"Dobrze, zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~Potrząsa głową. "To nie zawsze tak... Magowie są fizycznie ułomni, nasze czary ledwie nadrabiają tę ułomność. Kiedy ktoś zużyje swoje zaklęcia, istota walki wciąż pozostaje taka sama."~ */
  IF ~~ THEN REPLY #31285 /* ~"Rozumiem. Mam inne pytania..."~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"Rozumiem. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"Świetnie, powiedz czego pragniesz." Pyta apatycznie.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"Czy przypadkiem nie jesteś panią Thorncombe?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"Qui-Sai nie chce mnie szkolić... mówi, że w walce, czary są skuteczniejsze niż walka wręcz. Jakie jest twoje zdanie?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, zamiast tego zaczął wynosić pod obłoki korzyści profesji czarodzieja. Tymczasem rozmawiałem przecież z Panią Thorncombe, wychowawczynią czarodziejów z Miejskiego Gmachu Rozrywki, a ona zdradziła mi, że czarodzieje są generalnie fizycznie ułomni i na tej ułomności budują swoją moc. To może być dobry kontargument w debacie z Qui-Sai.~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"Mam kilka pytań dotyczących ciebie..."~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"Mam kilka pytań dotyczących tego miejsca..."~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"Właściwie, nic nie szkodzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~Wzdycha głośno i znowu zaczyna ssać kciuk. "Wątpię, by było coś czego sama nie mogłabym odkryć. Kamienie doznań zapewniają mi wszystko, czego moje pokaźne bogactwo kupić nie zdoła."~ */
  IF ~~ THEN REPLY #31294 /* ~"Kamienie doznań?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"Dobrze, zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"Mmm, tak... Każdy kamień ma w sobie zapisane takie czy inne doświadczenie. Kiedy po raz pierwszy przybyłam do tego gmachu, spędziłam z nimi niewiele czasu. Dopiero teraz uświadomiłam sobie ile straciłam."~ */
  IF ~~ THEN REPLY #31297 /* ~"Co takiego straciłaś?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~Wydaje się, że Pani Thorncombe jest uzależniona od kamieni doznań. Woli spędzać czas próbując doświadczeń innych osób, niż wypełniać obowiązki instruktora magii. Zastanawiam się, co można ją przekonać, by dalej nauczała...~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"Dobrze, zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~Kiwa głową, uśmiechając się. Jej oczy nabierają szklistego połysku. "Można by tutaj spędzić całe życie, pośród tych kamieni... doświadczyć cudownych chwil... słowa nie są w stanie wyrazić ich wspaniałości. Mogę jedynie zaproponować, byś sam spróbował, panie."~ */
  IF ~~ THEN REPLY #31301 /* ~"Mówisz jak... uzależniona."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"Być może tak zrobię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~Warczy na ciebie: "Bzdura! Mogę przestać kiedy zechcę! Tyle, że *wybrałam* napawanie się ich cudownością. Czemu miałabym tracić czas na uczenie leniwych, niewdzięcznyh 'magów', kiedy mogę zostać tu, wśród tych drogocennych kamieni, każdego dnia przeżywając sto nowych bytów?"~ */
  IF ~~ THEN REPLY #31304 /* ~"Wydaje mi się, że te kamienie temu nie służą. Czy nie powinnaś raczej szukać własnych doznań, którymi mogłabyś się podzielić?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"Zatem, mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"Phi! To, co ty o tym myślisz, niewiele dla mnie znaczy. Żegnaj."~ */
  IF ~~ THEN REPLY #31307 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~Kiedy zaczynasz zadawać pytanie, zdajesz sobie sprawę, że nie patrzy na ciebie... nie mówiąc, o tym, że nie zwraca na ciebie w ogóle uwagi.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"Hej? Mam pytanie..."~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"Pani Thorncombe? Moje pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~Zostaw ją.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~Pani Thorncombe uśmiecha się szyderczo. "Jesteś paskudnie naznaczoną ruiną człowieka, i mając na względzie, smutne pozory jakie przynosi życie, to bardziej trupem niż czymkolwiek innym. Teraz odejdź."~ */
  IF ~~ THEN REPLY #31313 /* ~"Mów do mnie w ten sposób a *obiecuję*, że skończysz w trumnie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"Zaczekaj... Miałem nadzieję, że wyszkolę się w sztukach magicznych."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"Jeszcze nie. Mam kilka pytań do ciebie..."~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~Rzuca ci w twarz kpiący śmiech. "Idź do kogoś, kogo uda ci się choć trochę przestraszyć. Jeszcze chwila i sama zacznę uznawać to bardziej za obraźliwe niż zabawne... i jestem pewna, że nie chciałbyś być wtedy tutaj."~ */
  IF ~~ THEN REPLY #31318 /* ~"Wprost przeciwnie: skończmy tę zabawę i zagrajmy w otwarte karty, ty wyniosła wiedźmo."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"Ja... nie chciałem, żeby to tak wyszło. Proszę o wybaczenie..."~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"Odchodzę, bo mam cię po prostu dość. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~Po prostu odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~Potrząsa głową, głośno wzdychając. "Z radością przyjmuję twoje przeprosiny, żeby tylko mieć spokój."~ */
  IF ~~ THEN REPLY #31323 /* ~"Ale miałem nadzieję, że wyszkolisz mnie w sztukach magicznych."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~W jednym z wielu sensoriów Gmachu Rozrywki spotkałem Panią Thorncombe, nauczycielkę magii z Dzielnicy Urzędników. Nie chce mnie szkolić... choć nie jestem pewien dlaczego.~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"Za chwilę. Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"Zatem, dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~Uśmiecha się nerwowo. "Nikim ważnym, zapewniam cię."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"Ale wydaje mi się, że jesteś, pani. Powiedziano mi, że jesteś nauczycielką magów w Miejskim Gmachu Rozrywki."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"Jesteś, pani, okropnym kłamcą."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"Kim zatem jesteś, jeśli mogę spytać?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"Tak czy inaczej, mam kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"Odchodzę zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"Och... Jestem, eee... Adhana?"~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"W porządku, dość już tego. Myślę, że *oboje* wiemy kim jesteś, Pani Thorncombe."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"W rzeczywistości jesteś Panią Thorncombe, nauczycielką magów w Miejskim Gmachu Rozrywki. Mam rację?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"Jesteś, pani, okropnym kłamcą."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~Kobieta błąka się nadal po sensorium, chodząc od kamienia do kamienia. Obserwuje cię, kiedy podchodzisz, ale wygląda na to, że cię nie poznaje.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"Czy przypadkiem nie jesteś panią Thorncombe?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~Pani Thorncombe patrzy na ciebie przez zmrużone oczy, jak gdyby starała się przypomnieć kim jesteś. Nagle znacząco marszczy brwi. "Ty! Mam nadzieję, że nie przyszedłeś tutaj z zamiarem zaciągnięcia mnie do sali ćwiczeń... bo z całą pewnością nie pójdę."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"Tylko tak się zastanawiam... Czy wiesz, pani, że Salabesz był szczęśliwy słysząć o twojej decyzji i złożył prośbę o ustanowienie go nowym nauczycielem magów?"~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"W zasadzie to mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"Salabesz?! Ta opasła niezguła... Ten człowiek tą swoją magią nie potrafiłby wydostać się ze spleśniałego worka! A o jakiej to *decyzji* mówisz?"~ */
  IF ~~ THEN REPLY #31346 /* ~"Dlaczego pytasz, pani? Mówiłem o twojej decyzji pozostania w sensorium i o rezygnacji ze szkolenia mniej doświadczonych magów."~ */ JOURNAL #31349 /* ~Powiedziałem Pani Thorncombe, że Salabesz ma zamiar przejąć jej pozycję jako nauczyciel magów w Gmachu Rozrywki... Ta dwójka najwyraźniej za sobą nie przepada i Pani Thorncombe szybko wróciła do komnat treningowych, by pokrzyżować jego plany.~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"Nieważne. Zapomnij, że o tym wspomniałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"Co?! Ale... ja..."~ */
  IF ~~ THEN REPLY #31351 /* ~"Tak, Pani Thorncombe?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~Przeszywa cię wzrokiem. "Idiotyzm. Zupełny idiotyzm. Jakby pojawił się Salabesz, powiedz mu, żeby się nie trudził. Zaraz wracam na sale ćwiczeń."~ */
  IF ~~ THEN REPLY #31353 /* ~"Być może tam się zobaczymy, Pani Thorncombe. Żegnaj."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~Pani Thorncombe marszczy na ciebie brwi. "Nie mam czasu rozmawiać, zatem... możesz się później ze mną spotkać w sali ćwiczeń magów, jeśli chcesz. Żegnaj."~ */
  IF ~~ THEN REPLY #31355 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~Pani Thorncombe kiwa ci głową, ale nie masz pewności, czy cię rozpoznała. Mimo swojego wieku, jest atrakcyjną damą... ciągle jednak sprawia wrażenie, że jest gdzieś indziej i łatwo się rozprasza. "Witaj... jesteś tu, by szkolić się w sztuce magii?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"Tak... pokaż mi jakich czarów musisz mnie nauczyć."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"Tak... chcę raz jeszcze podążyć ścieżką magii. Możesz wskazać mi drogę?~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"Tak, jestem."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"Nie, ale chciałbym kupić kilka zaklęć."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"Mój czas i uwaga zarezerwowane są dla moich uczniów, panie. Sugeruję by porozmawiać z jednym z nich... lub nawet lepiej, z kimś mniej zajętym."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"Zaczekaj: "Qui-Sai nie chce mnie szkolić... mówi, że w walce, czary są skuteczniejsze niż walka wręcz. Jakie jest twoje zdanie?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, zamiast tego zaczął wynosić pod obłoki korzyści profesji czarodzieja. Tymczasem rozmawiałem przecież z Panią Thorncombe, wychowawczynią czarodziejów z Miejskiego Gmachu Rozrywki, a ona zdradziła mi, że czarodzieje są generalnie fizycznie ułomni i na tej ułomności budują swoją moc. To może być dobry kontargument w debacie z Qui-Sai.~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~Potrząsa głową. "To nie zawsze tak... magowie są fizycznie ułomni, nasze czary ledwie nadrabiają tę ułomność. Kiedy ktoś rzuca czar, istota walki wciąż jest taka sama.~ */
  IF ~~ THEN REPLY #31366 /* ~"Rozumiem. Dziękuję i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~Kiedy odpowiadasz na jej ostatnie pytanie, potakuje głową, zadowolona. "Zakładam, tedy, że jesteś z zawodu magiem?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"Owszem."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"Nie, nie jestem."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"Nie, obecnie, nie... Chociaż szkolono mnie już wcześniej."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"Właściwie, mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~Zamyka oczy i wzdycha długo i przeciągle. "Czego zatem oczekujesz, że cię nauczę? Nie zawracaj głowy ani mnie, ani moim uczniom! Żegnaj."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"Zaczekaj... czy mogłabyś *uczynić* ze mnie maga?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"Zaczekaj... Chciałbym jeszcze raz podążyć ścieżką magów. Czy możesz wskazać mi drogę?"~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"Żegnaj, Pani Thorncombe."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"Świetnie. Odpowiedz mi na te pytania, jeśli możesz..." Przechodzi do testowania twojej inteligencji i umiejętności logicznego myślenia przy pomocy długiej serii zagadek logicznych i gier słownych...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~Odpowiedz na pytania najlepiej jak potrafisz.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~Odpowiedz na pytania najlepiej jak potrafisz.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"Przykro mi, ale po prostu brakuje ci inteligencji, żeby pojąć podstawowe pojęcia magii. Mimo wszystko dobrze ci życzę bez względu na to, jaką drogę życia obierzesz. Żegnaj."~ */
  IF ~~ THEN REPLY #31381 /* ~"Uch... w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"Mogę *spróbować*, to na pewno. Czy naprawdę jesteś w stanie zrezygnować ze swojej aktualnej profesji?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"Tak, chcę zrezygnować z miecza na rzecz magii i jeszcze raz zająć się Sztuką."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"Tak, chcę zrezygnować ze złodziejstwa i jeszcze raz zająć się Sztuką."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"Tak, chcę zrezygnować z miecza na rzecz magii. Poprowadź mnie drogą Sztuki."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"Tak, chcę zrezygnować ze złodziejstwa i zająć się Sztuką."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"Nie, lepiej nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"Świetnie. Razem przyjrzymy się temu co wiesz o Sztuce... Przygotujemy cię, byś rychło powrócił na jej drogę."~ */
  IF ~~ THEN REPLY #31389 /* ~Słuchaj i ucz się.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"Brak mi słów! Gdyby kamienie doznań wielokrotnie nie odsłoniły mi tego co niemożliwe, nie uwierzyłabym, że możesz tak szybko przypomnieć sobie arkana Sztuki. Czy gotów jesteś zatem zobaczyć, jakich czarów mogę cię nauczyć?"~ */
  IF ~~ THEN REPLY #31391 /* ~"Tak. Pokaż mi, proszę."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"Nie, nie teraz, ale wrócę później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"Czy gotów jesteś zatem zobaczyć, jakich czarów mogę cię nauczyć?"~ */
  IF ~~ THEN REPLY #31394 /* ~"Tak. Pokaż mi, proszę."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"Nie, nie teraz, ale wrócę później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"Świetnie. Nauczę cię tyle, ile zdołam." Przerywa na chwilę, zamyślona. "Sam talent do Sztuki nie wystarczy. Potrzebujesz środków, by się na niej skupić - zaklęć. Zaklęcia najczęściej zapisane są w księgach, chociaż spotykałam magów, którzy mieli je na zwojach papirusu, kamiennych tablicach... wyszywanym jedwabiu... skórach zwierzęcych..." Oczy zaczynają się jej szklić i zaczyna ssać kciuk.~ */
  IF ~~ THEN REPLY #31397 /* ~"Pani Thorncombe? Mówiłaś?"~ */ JOURNAL #39474 /* ~Szkoliłem się na maga pod okiem kobiety zwanej Panią Thorncombe, która jest nauczycielem magów w Gmachu Rozrywki.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"Hm? Och! Wybacz mi... tak jak mówiłam, do Sztuki potrzebna ci będzie księga, lub coś takiego, zanim zaczniesz rzucać zaklęcia. Potrafisz chyba czytać?"~ */
  IF ~~ THEN REPLY #31399 /* ~"Nie wiem."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"Tak."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"Sprawdzimy cię zatem, raz jeszcze." Wyciąga zwój ze skórzanego futerału uwieszonego u jej boku. "Czy mogłabym cię prosić o przeczytanie tego dla mnie?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~Obejrzyj zwój.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~Obejrzyj zwój.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~Litery na zwoju rozmywają ci się przed oczami, każdy znak uchodzi twojej uwadze, ilekroć usiłujesz go przeczytać. Niemal instynktownie rozluźniasz oczy, pozwalając im by uchwyciły całą stronę za jednym razem... i wtedy nagle znaki zaczynają tworzyć całość: na zwoju umieszczone są tajemne sylaby, magiczne składniki oraz sposoby mistycznego poruszania rękoma, używane do kontroli przepływu many... Wygląda to na pomniejszy czar zauroczenia.~ */
  IF ~~ THEN REPLY #31405 /* ~"To jest pomniejsze zauroczenie, prawda? Sądzę, że jest to zaklęcie, dzięki któremu wygląda się bardziej interesująco, bardziej charyzmatycznie."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~Litery na zwoju rozmywają ci się przed oczami, każdy znak uchodzi twojej uwadze, ilekroć usiłujesz go przeczytać.~ */
  IF ~~ THEN REPLY #31407 /* ~Przyjrzyj się znakom, zobacz czy możesz je rozszyfrować.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"Poddaję się, Pani Thorncombe... Co znaczą te napisy?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~W skupieniu przyglądasz się znakom. Bez względu na to jednak, jak bardzo się koncentrujesz, litery na zwoju zdają się uchodzić twojej uwadze, wyginając i skręcając się jak gniazdo węży. Oczy cię pieką, kiedy próbujesz nadążać za ich ruchem.~ */
  IF ~~ THEN REPLY #31410 /* ~Przyglądaj się dalej znakom i spróbuj rozwikłać co znaczą.~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"Poddaję się, Pani Thorncombe... Co znaczą te napisy?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~W dalszym ciągu przyglądasz się znakom przez kilka kolejnych minut, a Pani Thorncombe obserwuje cię w milczeniu. W końcu, przestaje się interesować, a jej oczy zaczynają błądzić po komnacie.~ */
  IF ~~ THEN REPLY #31413 /* ~Przyglądaj się dalej znakom i spróbuj rozwikłać co znaczą.~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"Poddaję się, Pani Thorncombe... Co znaczą te napisy?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~Kiedy masz już zrezygnować i odwrócić się, rozluźniasz oczy, obejmując całą stronę za jednym razem... i wtedy nagle znaki zaczynają tworzyć całość. Na zwoju umieszczone są tajemne sylaby, magiczne składniki oraz sposoby mistycznego poruszania rękoma, używane do kontroli przepływu many... Wygląda to na pomniejszy czar zauroczenia.~ */
  IF ~~ THEN REPLY #31416 /* ~"To jest pomniejsze zauroczenie, prawda? Sądzę, że jest to zaklęcie, dzięki któremu wygląda się bardziej interesująco, bardziej charyzmatycznie."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~Źrenice Pani Thorncombe rozszerzają się. "Kimże ty jesteś, by tak mnie nabierać?!" Wyrywa ci zwój. "Więc to były kłamstwa? Jesteś magiem? A może biesem? Odpowiadaj!"~ */
  IF ~~ THEN REPLY #31418 /* ~"O co chodzi?"~ */ JOURNAL #31420 /* ~Pani Thorncombe dała mi test... krótką recepturę, pomniejszą iluzję, napisaną językiem Sztuki. Byłem w stanie odszyfrować jej znaczenie bez żadnych przygotowań. Na pewno uczyłem się kiedyś odczytywania zaklęć.~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"Nie, o ile mi wiadomo, to nie. O co chodzi?"~ */ JOURNAL #31420 /* ~Pani Thorncombe dała mi test... krótką recepturę, pomniejszą iluzję, napisaną językiem Sztuki. Byłem w stanie odszyfrować jej znaczenie bez żadnych przygotowań. Na pewno uczyłem się kiedyś odczytywania zaklęć.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"Nie przypuszczałam... hm..." Długo i uważnie przygląda ci się. "To, co przeczytałeś, napisane jest w języku *Sztuki*. Gdybyś nie był magiem, to widziałbyś jedynie poprzekręcane znaki, całkowicie bez znaczenia. Jednak, jest jasne niczym amoriańskie niebo, że były one dla ciebie zrozumiałe. O co tu chodzi?"~ */
  IF ~~ THEN REPLY #31422 /* ~"Naprawdę nie wiem... Po prostu *wiedziałem* co tam było napisane."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"Wydaje mi się, że kiedyś wiedziałem, ale zapomniałem... Widok tych znaków poruszył moją pamięć."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"A może to naturalny dar... Zresztą, nieważne." Uśmiecha się. "Właśnie twoje szkolenie skróciło się o miesiące, jeśli nie *lata*. Tak więc... potrafisz już wystarczająco dobrze czytać zaklęcia, ale czy masz na nie księgę?"~ */
  IF ~~ THEN REPLY #31425 /* ~"Księgę zaklęć? Nie..."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"A co to jest?" Wskazuje na dziennik.~ */
  IF ~~ THEN REPLY #31427 /* ~"To mój dziennik. Zapisywałem tu różne ciekawe rzeczy... ludzi, których spotkałem i takie tam."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"Zatem, w nim również powinieneś zapisywać swoje zaklęcia." Patrzy krzywo na dziennik. "Trochę zniszczony... ale wystarczy." Stoi przez chwilę w milczeniu, patrząc na twój dziennik. Wygląda na zamyśloną i zczyna ssać kciuk.~ */
  IF ~~ THEN REPLY #31430 /* ~"Pani Thorncombe...?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~Znów zwraca swoją uwagę na ciebie: "Mm? Och... tak. A więc: tak długo jak twoje zaklęcia znajdują się w tej księdze, nie mają mocy - są tylko słowami. Sztuka wymaga, by uczyć się zaklęć - *zapamiętywać* je, zanim wykorzystasz ich moc. To wymaga czystego umysłu, więc najlepiej przedtem wypocząć. Rozumiesz?"~ */
  IF ~~ THEN REPLY #31433 /* ~"Tak, kontunuuj."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"Znakomicie. A więc: wybierz zaklęcia, które chcesz zapamiętać *przed* snem; to jest niezwykle ważne. Kiedy wstaniesz, będą świeże w twej pamięci, bogate w manę i gotowe, by je użyć."~ */
  IF ~~ THEN REPLY #31436 /* ~"Ile czarów mogę rzucić?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"Tylko jedno, góra dwa zaklęcia zanim znowu będziesz musiał odpocząć... jako początkujący mag, nie masz miejsca w umyśle na więcej mocy. Używaj swych zaklęć rozważnie, do czasu, aż osiągniesz biegłość w Sztuce... Radziłabym jednak i wtedy mądrze z nich korzystać. Kiedy wzrośnie twe doświadczenie, zauważysz, że możesz też zapamiętać więcej zaklęć."~ */
  IF ~~ THEN REPLY #31439 /* ~"W porządku... kontynuuj..."~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~"Możesz rzucać tylko zapamiętane zaklęcia. Zatem, jeśli twoim życzeniem byłoby, powiedzmy, użyć Sztuki, by rozpoznać dwa różne zaczarowane przedmioty, konieczne będzie zapamiętanie czaru Identyfikacja... ile razy?"~ */
  IF ~~ THEN REPLY #31442 /* ~"Raz."~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"Dwa razy."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"Uch..."~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"Dwa razy! Żeby rzucić zaklęcie *dwa razy*, trzeba *dwa razy* zapamiętać zaklęcie."~ */
  IF ~~ THEN REPLY #31447 /* ~"Rozumiem. W jaki sposób mogę zdobyć więcej zaklęć?"~ */ JOURNAL #31449 /* ~Pani Thorncombe nauczyła mnie podstaw Sztuki. Powiada, że przed odpoczynkiem powinienem określić zaklęcia, które chcę zapamiętać, wybierając je z mojej księgi czarów. Jeśli chcę rzucać jakieś zaklęcie wielokrotnie, będę musiał tyle samo razy nauczyć się go na pamięć. Gdy odpocznę, obudzę się następnego ranka pamiętając wszystkie zaklęcia i gotów do ich użycia. Powiedziała, że do czasu kiedy nie stanę się bardziej doświadczony, będę mógł rzucać jedynie niewielką liczbę czarów. Może znajdę innych nauczycieli w Sigil, którzy również będą mogli mnie czegoś o tym nauczyć.~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~Pani Thorncombe potakuje głową, uśmiechając się. "Tak, zgadza się, dwa razy."~ */
  IF ~~ THEN REPLY #31451 /* ~"W jaki sposób mogę zdobyć więcej zaklęć?"~ */ JOURNAL #31449 /* ~Pani Thorncombe nauczyła mnie podstaw Sztuki. Powiada, że przed odpoczynkiem powinienem określić zaklęcia, które chcę zapamiętać, wybierając je z mojej księgi czarów. Jeśli chcę rzucać jakieś zaklęcie wielokrotnie, będę musiał tyle samo razy nauczyć się go na pamięć. Gdy odpocznę, obudzę się następnego ranka pamiętając wszystkie zaklęcia i gotów do ich użycia. Powiedziała, że do czasu kiedy nie stanę się bardziej doświadczony, będę mógł rzucać jedynie niewielką liczbę czarów. Może znajdę innych nauczycieli w Sigil, którzy również będą mogli mnie czegoś o tym nauczyć.~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"Zawsze szukaj okazji, by nauczyć się więcej - nawet zwykli ludzie mogą cię nauczyć jakichś pomniejszych zaklęć. Są również receptury, księgi, a nawet dziwniejsze rzeczy, które mają wypisane na sobie zaklęcia. W razie natrafienia na nie, przyjrzyj się im bacznie i skopiuj, jeśli chcesz, zaklęcie do swojej księgi."~ */
  IF ~~ THEN REPLY #31454 /* ~"Jasne."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"Wydaje mi się Pani Thorncombe, że te podstawy są dla mnie jasne."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"W takim razie weź te zwoje... pomniejsze zaklęcia, aby zaostrzyć sobie apetyt na Sztukę." Uśmiecha się przebiegle. "Powróć tu, gdy ścieżki wieloświata staną się dla ciebie jaśniejsze... Nie możesz już szkolić się tutaj za darmo, ale będę mogła sprzedać ci potężniejsze zaklęcia, kiedy nabierzesz umiejętności w posługiwaniu się nimi."~ */
  IF ~~ THEN REPLY #31457 /* ~"Dziękuję, Pani Thorncombe. Żegnaj."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"Wrócę zatem później. Żegnaj."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
