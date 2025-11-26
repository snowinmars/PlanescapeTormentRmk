// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSANDOZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSANDOZ~

IF ~~ THEN BEGIN 0 // from:
  SAY #46769 /* ~Zza drzwi dochodzi stłumiony głos. "Idź sobie!"~ */
  IF ~~ THEN REPLY #46770 /* ~"Czy ty jesteś Sandoz?"~ */ GOTO 2
  IF ~~ THEN REPLY #46915 /* ~"Dobrze, odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46916 /* ~Głos Sandoza jest tłumiony przez grube drzwi. "Czego chcesz?" Wyczuwasz w nim desperację i samotność.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46917 /* ~"Jestem tu by z tobą porozmawiać, Sandozie."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46918 /* ~"Jestem tu by ci przekazać, co powiedziała twoja córka."~ */ GOTO 4
  IF ~~ THEN REPLY #46919 /* ~"Jestem tu by ci powiedzieć, że równie dobrze mógłbyś skończyć z tym wszystkim."~ */ GOTO 6
  IF ~~ THEN REPLY #46920 /* ~"Powiedzieli, że powinienem przyjść i porozmawiać z tobą. Myślę, że nie pragną twojej śmierci?"~ */ GOTO 8
  IF ~~ THEN REPLY #46921 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #46922 /* ~Głos warczy: "A kimże miałbym być? To są moje pokoje, to jest moja frakcja." Głos śmieje się gorzko. "Tutaj właśnie zamierzam umrzeć."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46923 /* ~"Opowiedz mi o sobie, Sandozie."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46924 /* ~"Chciałbyś usłyszeć, co powiedziała twoja córka?"~ */ GOTO 4
  IF ~~ THEN REPLY #46925 /* ~"W taki razie, powodzenia. Nikogo to tak naprawdę nie obchodzi."~ */ GOTO 6
  IF ~~ THEN REPLY #46926 /* ~"Powiedzieli, że powinnam przyjść i porozmawiać z tobą. Myślę, że nie pragną twojej śmierci?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #46927 /* ~"Chcesz rozmawiać? Czy tego właśnie chcesz? A może byś tak posłuchał?" Głos robi przerwę, po czym odzywa się ze zdwojoną siłą. "Chciałbym wiedzieć, jaki jest tego sens. Dlaczego robimy rzeczy, które robimy? Co nas ciągle pcha do przodu, hmm?"~ */
  IF ~~ THEN REPLY #46928 /* ~Poczekaj, aż zacznie mówić dalej.~ */ GOTO 15
  IF ~~ THEN REPLY #46929 /* ~"Myślę, że to życie nas pcha do przodu."~ */ GOTO 11
  IF ~~ THEN REPLY #46930 /* ~"Nie wiem, co?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #46931 /* ~Następuje chwila ciszy. Głos odzywa się, ale tym razem jest jeszcze bardziej drżący niż wcześniej. "Rozmawiałeś z moją córką?"~ */
  IF ~~ THEN REPLY #46932 /* ~"Tak. Oto co powiedziała: 'Całe życie jest sprawdzianem. Nie można od razu przeskoczyć na jego koniec. To nie jest żadne rozwiązanie. Jedynie Straż Zagłady i Grabarze wierzą w całkowity rozkład - a ty zawsze nimi gardziłeś. Pamiętaj o tym.'"~ */ GOTO 5
  IF ~~ THEN REPLY #46933 /* ~"Tak, i powiedziała, że równie dobrze możesz się zabić."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46934 /* ~Sandoz śmieje się głucho. "Naprawdę tak powiedziała? Daj mi jedną chwilę."~ */
  IF ~~ THEN REPLY #46935 /* ~"Nie spiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 4.1 9.2 10.4 13.1 15.1
  SAY #46936 /* ~Słyszysz stłumiony szloch i przekleństwo, a potem zapada cisza. Słyszysz skrobanie o deski podłogi, jakiś nagły ruch i charakterystyczny odgłos łamanej kości.~ */
  IF ~~ THEN REPLY #46937 /* ~"To by było na tyle..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
SetGlobal("G_Test3","GLOBAL",7)
MoveToPoint([337.740])
PlaySoundNotRanged("SPE_11")
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0 14.0
  SAY #46938 /* ~Gdy go znów słyszysz, głos zdaje się być bardziej zrównoważony. "Zejdź na dół i powiedz Keldorowi, że przemówiłeś mi trochę do rozsądku. Chcę się z nim zobaczyć, jeśli to możliwe... Wykonałeś swoje zadanie. Idź już."~ */
  IF ~~ THEN REPLY #46939 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("G_Test3","GLOBAL",6)
SetDoorLocked("ar0511d1",FALSE)
OpenDoor("ar0511d1")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 2.3
  SAY #46940 /* ~"Rozumiem... wysłać zainteresowanego sprawą nieznajomego, aby mi to wyperswadował, ech? Ha!" Głos się zniża do konspiracyjnego szeptu. "Czy powiedzieli, że możesz się do nich przyłączyć, jeśli przyjdziesz ze mną porozmawiać? Czy uważali, że dzięki temu bardziej się zaangażujesz?"~ */
  IF ~~ THEN REPLY #46941 /* ~Poczekaj, aż zacznie mówić dalej.~ */ GOTO 9
  IF ~~ THEN REPLY #46942 /* ~"Chciałem tylko sprawdzić czy mogę w czymś pomóc."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46943 /* ~"I jak? Powiedz coś! Oniemiałeś nagle? Ha! Gdybyś widział połowę rzeczy, które ja widziałem... połowę rzeczy, które ja widziałem..."~ */
  IF ~~ THEN REPLY #46944 /* ~"Co widziałeś?"~ */ GOTO 10
  IF ~~ THEN REPLY #46945 /* ~"Nie masz pojęcia co *ja* widziałem, Sandozie, a przecież nie grożę, że się zabiję, co? Weź się w garść człowieku i dorośnij wreszcie."~ */ GOTO 13
  IF ~~ THEN REPLY #46946 /* ~"Prawdopodobnie lepiej by było, gdybyś spróbował skończyć z tym wszystkim..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46947 /* ~"Widziałem rzeczy tak straszne, że trudno je sobie wyobrazić. Widziałem wijącego się z bólu, torturowanego boga, skrępowanego przez śmiejące się biesy. Widziałem jak warstwa Otchłani zamieniła się sama w esencję pojedynczego osobnika... Widziałem jak zostały wypaczone wszelkie prawa natury i widziałem jak wywrócono do góry nogami wszelkie prawdy człowieka. Nic z tego nie ma dla mnie już sensu i nie mogę już tego znieść! Jaki jest tego sens, pytam cię, jaki jest tego sens?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46948 /* ~"To jest cała podstawa filozofii Bogowców, Sandozie. Pamiętaj, że jesteś w trakcie wielu sprawdzianów. W tej chwili testowi poddany jest twój intelekt. Spójrz na to, co zrobiłeś i zapytaj się, czego powinieneś się z tego nauczyć."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #46949 /* ~"To jest cała podstawa filozofii Bogowców, Sandozie. Pamiętaj, że jesteś w trakcie wielu sprawdzianów. W tej chwili testowi poddany jest twój intelekt. Spójrz na to, co zrobiłeś i zapytaj się, czego powinieneś się z tego nauczyć."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46950 /* ~"To jest cała podstawa filozofii Bogowców, Sandozie. Pamiętaj, że jesteś w trakcie wielu sprawdzianów. W tej chwili testowi poddany jest twój intelekt. Spójrz na to, co zrobiłeś i zapytaj się, czego powinieneś się z tego nauczyć."~ */ GOTO 12
  IF ~~ THEN REPLY #46951 /* ~"Nie wiem jaki jest tego sens, ale wydaje mi się, że samo życie powinno stanowić ten sens."~ */ GOTO 11
  IF ~~ THEN REPLY #46952 /* ~"Nie ma żadnego sensu."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 3.1 8.1 10.3
  SAY #46953 /* ~Mężczyzna spluwa pogardliwie. Słyszysz jak ślina trafia w drzwi. "Idź sobie i nie wracaj dopóki nie rozwiniesz sobie mózgu albo znajdź sobie kogoś innego, żeby odpowiadał na twoje pytania." Mężczyzna przestaje odpowiadać na dalsze pytania.~ */
  IF ~~ THEN REPLY #46954 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2 16.0 17.1
  SAY #46956 /* ~Mężczyzna wyrzuca z siebie ostry śmiech. "Przynajmniej dobrze cię nauczyli. Niech się nad tym zastanowię. Mam nadzieję, że masz trochę czasu."~ */
  IF ~~ THEN REPLY #46957 /* ~"Mam tyle czasu, ile tylko dusza zapragnie. Przemyśl to."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #46958 /* ~Zza drzwi dochodzi cię krótki, ostry oddech, a następnie cichy chichot. "Nie masz za wiele wyczucia, co? A co by było gdybym ci powiedział, że mam teraz na szyi pętlę i chcę się powiesić?"~ */
  IF ~~ THEN REPLY #46959 /* ~"Powiedziałbym ci, żebyś przestał być śmieszny i stawił czoła rzeczywistości. Samobójstwo niczego nie zmieni. Będzie jedynie znaczyć, że nie zdałeś swojego testu."~ */ GOTO 14
  IF ~~ THEN REPLY #46960 /* ~"Zachęciłbym cię do tego. Szczerze mówiąc, jeśli jesteś takim tchórzem, że myślisz o samobójstwie, nie wydaje mi się, żebyś był na tyle odważny, aby dokończyć to dzieło."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46961 /* ~"Ty... Już dobrze... daj mi chwilę, abym mógł to przemyśleć..."~ */
  IF ~~ THEN REPLY #46962 /* ~"Nie spiesz się."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.2
  SAY #46963 /* ~"Duma! Duma i ego! Wciąż sobie powtarzamy, że możemy kimś być, że coś znaczymy, że jest powód, dla którego tu jesteśmy, ale ostatecznie... ostatecznie to wszystko to jedynie ciemność. *Widziałem* tę ostateczną ciemność i nie ma powodu, aby zaprzeczać jej istnieniu. A mimo to wciąż w to brniemy z powodu głupiej dumy. Nie ma w tym żadnej logiki."~ */
  IF ~~ THEN REPLY #46964 /* ~"Czy zastanowiłeś się nad tym, że przyłączyłeś się do Bogowców z pewnego powodu?"~ */ GOTO 16
  IF ~~ THEN REPLY #46965 /* ~"Skoro już o tym mówisz, masz rację..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #46966 /* ~"Co masz na myśli?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46967 /* ~"Kiedyś znałeś ten powód. Wierzyłeś, że wszystko czego doświadczamy jest testem. Wierzyłeś, że jesteśmy tutaj, aby przekroczyć tę ostateczną ciemność, pokonać ją. Nie mów mi teraz, że w to zwątpiłeś."~ */ GOTO 12
  IF ~~ THEN REPLY #46968 /* ~"Dlaczego przyłączyłeś się do Bogowców?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #46969 /* ~"Ponieważ myślałem, że jest jakieś znaczenie. Myliłem się. Nie ma znaczenia. Miłość, rodzina, majątek, osiągnięcia... to wszystko nic nie znaczy."~ */
  IF ~~ THEN REPLY #46970 /* ~"Wszystko? Czy jest coś co mogłoby dowieść, że się mylisz?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46971 /* ~"Tyle tylko, że to wszystko wciąż trwa. Stałeś się Bogowcem ponieważ nie wierzysz, że może ci się przytrafić coś tak wspaniałego. Zdaj ten test, Sandozie, a staniesz się jeszcze silniejszy."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #46972 /* ~"Znajdź kogoś, kto może mnie przekonać, że jest inaczej, kto może mi powiedzieć coś innego. Wygląda na to, że ty tego nie możesz... znajdź kogoś, kto może." Odchodzi od drzwi i dalsza rozmowa staje się niemożliwa.~ */
  IF ~~ THEN REPLY #46973 /* ~"Wrócę tu."~ */ EXIT
END

IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #46974 /* ~"Zawdzięczam ci życie, nieznajomy. Nie zapomnę tego. Ale w tej chwili muszę przemyśleć parę spraw. Mam nadzieję, że mi wybaczysz, ale nie będę z tobą już rozmawiał."~ */
  IF ~~ THEN REPLY #46975 /* ~"Jasne. Żegnaj."~ */ EXIT
END
