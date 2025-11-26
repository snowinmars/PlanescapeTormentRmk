// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~Wygląda na to, że ta wysoka, szczupła kobieta, która powoli popija wino z małego ceramicznego kubka, rozgląda się za kimś. Jej twarz wydaje się egzotyczna. Pod długimi włosami można dostrzec ostro zakończone uszy.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"Witaj."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"Witaj."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"Witaj."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~Zostaw kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~Kobieta odwraca się do ciebie, jej purpurowe oczy świecą jak nieskazitelne ametysty. Jej mowa brzmi jak muzyka. Gdy mówi, w jej głosie słyszysz lekkie dzwonienie setek maleńkich, kryształowych dzwoneczków. Każde jej słowo niechętnie opuszcza twoje ucho, jak gdyby twój organ słuchu nie chciał rozstać się z tym wspaniałym dźwiękiem. "Nemelle odwróciła się do smutnego, pokrytego bliznami przybysza. Zapytała czego od niej chce."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"Ty jesteś Nemelle? Podobno znasz słowo-rozkaz do tej karafki."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"Nemelle? Szuka cię Aelwina, twoja przyjaciółka."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Powiedziałem Nemelle, że szuka jej Aelwina. Nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"Szukasz kogoś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"Mam kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"Nie, nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~Kobieta odwraca się do ciebie, jej purpurowe oczy świecą jak nieskazitelne ametysty. Jej mowa brzmi jak muzyka. Gdy mówi, w jej głosie słyszysz lekkie dzwonienie setek maleńkich, kryształowych dzwoneczków. Każde jej słowo niechętnie opuszcza twoje ucho, jak gdyby twój organ słuchu nie chciał rozstać się z tym wspaniałym dźwiękiem. "Nemelle odwróciła się do smutnego, pokrytego bliznami przybysza. Zapytała czego od niej chce."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~Kobieta odwraca się do ciebie, jej purpurowe oczy świecą jak nieskazitelne ametysty. Jej mowa brzmi jak muzyka. Gdy mówi, w jej głosie słyszysz lekkie dzwonienie setek maleńkich, kryształowych dzwoneczków. Każde jej słowo niechętnie opuszcza twoje ucho, jak gdyby twój organ słuchu nie chciał rozstać się z tym wspaniałym dźwiękiem. "Nemelle odwróciła się do smutnego, pokrytego bliznami przybysza. Zapytała czego od niej chce."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~Kobieta nie wykonuje żadnego ruchu, aby dotknąć lub przyjrzeć się karafce, ale jedynie przemawia. "Nemelle wzięła ją od przybysza i trzymałą w ręku. Czy widziała coś podobnego już wcześniej, pomyślała? Może... Tak, teraz sobie przypomniała. Zwróciła karafkę obcemu, szepcząc mu przy tym do ucha..."~ */
  IF ~~ THEN REPLY #43936 /* ~"Uch..."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~Tajemnicza kobieta o imieniu Nemelle podała mi zaklęcie do znalezionej przeze mnie magicznej karafki. Brzmi ono: 'Nildennosaj'.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~Zdajesz sobie sprawę, że znasz już słowo - 'Nildenosaj' - choć kobieta na pewno ci go nie szepnęła, ale tylko opowiedziała o tym, co robi. Nemelle mruga do ciebie okiem. "Czy przybysz mógłby ją teraz opuścić, gdy już wie to, co Nemelle mu powiedziała?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"Jeszcze nie. Znalazłem Aelwinę."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Powiedziałem Nemelle, że znalazłem jej przyjaciółkę, Aelwinę. Nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"Jeszcze nie. Szuka cię Aelwina, twoja przyjaciółka."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Powiedziałem Nemelle, że szuka jej Aelwina. Nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"Jeszcze nie. Szukasz kogoś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"Nie... Mam kilka pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"Zgoda. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~Na ustach Nemelle pojawia się piękny uśmiech. Promienieje od niej zaraźliwe szczęście, które napiera na ciebie jak buchające ciepło. "Nemelle bardzo się ucieszyła z wieści o swojej przyjaciółce. Czy Aelwina była gdzieś blisko?"~ */
  IF ~~ THEN REPLY #43944 /* ~"Jest w innej kawiarni, na wschód stąd, po drugiej stronie dzielnicy."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"Nemelle podziękowała człowiekowi za wspaniałą wiadomość. Już wkrótce uda się, aby odwiedzić jej najstarszą przyjaciółkę, Aelwinę. Jednak teraz, przybysz dostanie nagrodę..."~ */
  IF ~~ THEN REPLY #43946 /* ~"Nie, w porządku... Nie potrzebuję nagrody."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~Poczekaj na nagrodę.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~Nemelle dotyka swoich ust palcem wskazującym, wydając przy tym uciszający dźwięk.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"Nemelle przytuliłaby przybysza, kładąc swoją dłoń na jego piersi i całując bladą skórę policzka. Życie napłynęło by do niego, dodając mu energii... taka miała być jego nagroda."~ */
  IF ~~ THEN REPLY #43950 /* ~Poczekaj.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~Kiedy tak czekasz, odczuwasz lekkie łaskotanie na swojej piersi i policzku. Po chwili to uczucie wypełnia całe twoje ciało i zaczynasz czuć się silniejszy.~ */
  IF ~~ THEN REPLY #43952 /* ~"Dziękuję. Mam kilka pytań."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"Dziękuję, Nemelle. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"Nemelle wysłuchała pytań przybysza, ale nie mogła odpowiedzieć na żadne z nich. Nieznajomy musiał poszukać odpowiedzi gdzie indziej."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"Dobrze. Ale... szukasz kogoś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"Ale... Nawet nie zapytałem..."~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"W takim razie, bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~Nemelle obdarza cię uśmiechem, lekko kręcąc przy tym głową. Twoja twarz odbija się w jej błyszczących oczach. "Sfrustrowany i zmieszany, przybysz w końcu dał spokój. Było oczywiste, że ta kobieta nie wiedziała nic, co mogłoby mu się przydać - a jeśli wiedziała, nie dało się jej przekonać, aby to wyjawiła."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"Dobrze. Ale... szukasz kogoś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"Co? Nie... Chcę się tylko czegoś dowiedzieć..."~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~Otwierasz usta, ale nie możesz wydobyć ani słowa. Próbujesz ze wszystkich sił, ale nie możesz zadać pytania. Nemelle smutno kiwa głową.~ */
  IF ~~ THEN REPLY #43961 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'Gdzie ona może być?' Zastanawiała się Nemelle. Aelwina, jej towarzyszka, powinna się z nią tu spotkać wiele dni temu." Kobieta wzdycha żałośnie; powietrze wokół niej robi się zimne od jej smutku. "Jak długo Nemelle będzie musiała przeszukiwać to ogromne, obce miasto, zanim znajdzie swoją najdroższą przyjaciółkę?"~ */
  IF ~~ THEN REPLY #43963 /* ~"Może pomogę ci szukać przyjaciółki. Jak ona wygląda?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"Może znajdę ją dla ciebie - oczywiście nie za darmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"Mam nadzieję, że ją znajdziesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~Kobieta klaszcze w dłonie i kłania się przed tobą. "Nemelle bardzo by chciała usłyszeć wieści o swej przyjaciółce! Powiedziałaby uprzejmemu przybyszowi, jak wygląda Aelwina, żeby mógł ją rozpoznać, jeśli ją zobaczy." W twojej głowie tworzy się obraz - to kobieta podobna do Nemelle, ale jej oczy są złote, a włosy ognisto purpurowe.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"Spotkałem już tę kobietę."~ */ JOURNAL #39493 /* ~Zaoferowałem swą pomoc Nemelle, tajemniczej kobiecie spotkanej przeze mnie. Mam dla niej znaleźć pewną osobę, Aelwinę. Jak się jednak okazało, spotkałem ją już wcześniej. Nemelle nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"Wrócę tu, gdy ją znajdę. Do zobaczenia."~ */ JOURNAL #39491 /* ~Zaoferowałem swą pomoc Nemelle, tajemniczej kobiecie spotkanej przeze mnie. Mam znaleźć kogoś o imieniu Aelwina. Wiem, że Aelwina jest wysoką, piękną kobietą o złotych oczach i karmazynowych włosach.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~Nemelle przemawia wolno, jej oczy są spuszczone: "Nemelle wiedziała, tak jak i obcy za chwilę się dowie, że nie ma nic do zaoferowania. Bez względu na to, jakiej ceny by zażądał, nie mogła sprostać jego żądaniom."~ */
  IF ~~ THEN REPLY #43970 /* ~"W takim razie wyświadczę ci przysługę."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"W takim razie zapomnij o tym. Bywaj zdrowa."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"W takim razie zapomnij o tym. Bywaj zdrowa."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~Przy powitaniu kobieta uśmiecha się do ciebie, a jej uroda ciągle zapiera ci dech w piersiach, tak jak za pierwszym razem. "Nemelle znowu spotkała przybysza. 'Dlaczego przychodzi do mnie jeszcze raz?' - zastanawiała się."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"Nemelle... Podobno znasz słowo-rozkaz dla tej karafki."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"Szuka cię twoja przyjaciółka, Aelwina."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~Powiedziałem Nemelle, że szuka jej Aelwina. Nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"Szukasz kogoś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"Mam kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~Przy powitaniu kobieta uśmiecha się do ciebie, a jej uroda ciągle zapiera ci dech w piersiach, tak jak za pierwszym razem. "Gdy nieznajomy zbliżył się do niej, Nemelle wstrzymała oddech. 'Czy odnalazł Aelwinę?' - zastanawiała się."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"Podobno znasz słowo-rozkaz dla tej karafki."~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"Odnalazłem Aelwinę. Ona też cię szuka."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~Powiedziałem Nemelle, że znalazłem jej przyjaciółkę, Aelwinę. Nagrodziła mnie magicznym pocałunkiem, który zwiększył moją maksymalną liczbę punktów życia o trzy.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"Nie udało mi się jej odszukać. Mam do ciebie parę pytań..."~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"Nie, tylko tędy przechodzę. Żegnaj."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~Kobieta klaszcze w dłonie i głęboko kłania się przed tobą. Kiedy w końcu podnosi na ciebie wzrok i uśmiecha się, twoje ciało opływa fala przyjemności - czujesz się wręcz oszołomiony. "Nemelle jeszcze raz podziękowała nieznajomemu. Bardzo chciała powiedzieć mu, jak bardzo cieszy się ze spotkania z Aelwiną."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"Ża... żaden problem. Po... powiedziano mi, że znasz słowo-rozkaz dla tej karafki."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"Chy... chyba tak. Żegnaj, Nemelle."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~Kobieta marszczy brwi, a jej purpurowe oczy lśnią jak dwa płomienie czystej nienawiści. Jest słowa brzmią tak, jakby czytała z książki: "'Głupcze!' - wykrzyknęła. - 'Jak śmiesz podnosić rękę na córkę Asaharma! Jesteś jak pies...' - zmrużyła oczy. - '...i umrzesz jak pies!'" Potem patrzy na ciebie zimnym wzrokiem, wolno popijając wino.~ */
  IF ~~ THEN REPLY #43987 /* ~"Co takiego...?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~Nie zwracaj na nią uwagi i rozpocznij atak.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~Padasz na ziemię skowycząc w agonii... czujesz, jak twoje wnętrzności palą się, a potem zaczynasz pluć parującą, czarną krwią. Czujesz, jak uchodzą z ciebie ostatnie krople życia...~ */
  IF ~~ THEN REPLY #43990 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END
