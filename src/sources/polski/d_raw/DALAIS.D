// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~Pierwszak patrzy na ciebie z odrazą. "A czego TY chcesz?" Sposób, w jaki akcentuje on zaimek prawie doprowadza do furii, a z pewnością jest obraźliwy.~ */
  IF ~~ THEN REPLY #11435 /* ~"Uspokój się. Chcę tylko zadać ci kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"Od ciebie? Nic."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"Z twego podejścia wnoszę, że nic więcej ode mnie nie potrzebujesz i wielce by mnie zadowoliło, jeśli nie przeszkadzałbyś mi swoją obecnością. Miłego dnia." Odwraca się od ciebie sztywno.~ */
  IF ~~ THEN REPLY #11438 /* ~"Słuchaj, przepraszam za to, co powiedziałem wcześniej. Po prostu chcę uzyskać odpowiedzi na kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"Powiedziałeś, co powiedziałeś i wziąłem to sobie do serca. Jednakże niech nie mówią, że jestem całkiem sztywny. O co chcesz mnie zapytać?"~ */
  IF ~~ THEN REPLY #11441 /* ~"Jeszcze raz, kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"Kim są klienci tej gospody?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"Szukam dziennika. Czy nie widziałeś jakiegoś ostatnio?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"Czy słyszałeś o Zbieraczu o imieniu Farod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"Chciałbym cię przeprosić."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"Chciałbym cię przeprosić."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~Jego oczy zapłonęły. "Już wystarczająco mnie obraziłeś, 'przyjacielu'. Nie będę dłużej z tobą dyskutował." Odwraca się tyłem, czerwieniejąc od urażonej dumy i żadne słowa przeprosin z twojej strony nie są w stanie sprawić, by ponownie z tobą zaczął rozmawiać.~ */
  IF ~~ THEN REPLY #11450 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"Jedyną osobą, jaką tu znam jest ten tam Ebb. Przybyłem tu niedawno i nie zajmuję się wciskaniem nosa w czyjeś sprawy. Czy masz do mnie jeszcze jakieś pytania, czy mogę dalej cieszyć się swoją samotnością?"~ */
  IF ~~ THEN REPLY #11454 /* ~"Cóż, właściwie to mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"Możesz wrócić do swoich zajęć."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~Wzdycha ciężko i patrzy na ciebie z pogardą. "Więc skończ z tym, człowieku z bliznami, pytaj i kończ."~ */
  IF ~~ THEN REPLY #11458 /* ~"Jeszcze raz, kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"Kim są klienci tej gospody?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"Szukam dziennika. Czy nie widziałeś jakiegoś ostatnio?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"Czy słyszałeś o Zbieraczu o imieniu Farod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"Chciałbym cię przeprosić."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"Chciałbym cię przeprosić."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"To jest oberża, jeden z widoków przypominających mi dom. A przynajmniej byłby taki, gdyby nie te kaduki w rogu i niekończąca się obcość, która paraduje przed moimi oczami. Odnajduję w tym miejscu przynajmniej trochę człowieczeństwa, za co jestem mu wdzięczny."~ */
  IF ~~ THEN REPLY #11470 /* ~"Och, to się zgadza. Jesteś tępakiem, prawda?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"Jesteś pierwszakiem, prawda?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"Wyobrażam sobie. Jeszcze kilka pytań, jeśli pozwolisz."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"Wyobrażam sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"Dziennik? Gdzież miałbym go widzieć? Skoro jestem tu od niedawna, w jaki sposób miałbym pamiętać o DZIENNIKU? Nie tylko mnie obrażasz i jesteś pełen agresji, ale zdaje się, że również i głupi."~ */
  IF ~~ THEN REPLY #11475 /* ~"Umówmy się, że wyrównaliśmy już rachunki co do obraz, dobrze?"~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"Czy starasz się mnie sprowokować?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"To bez sensu. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"Powiedziałem ci już, że jestem tu od niedawna, za co mnie wyśmiałeś. Oczywiście, że nie wiem nic o tych 'Zbieraczach'. A teraz, czy zostawisz mnie w spokoju?"~ */
  IF ~~ THEN REPLY #11525 /* ~"Jeszcze nie. Wciąż potrzebuję od ciebie odpowiedzi."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"Chciałbym cię przeprosić."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"Chcę jakoś ci to zadośćuczynić."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"Z pewnością. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~Zdaje się być tym całkowicie wstrząśnięty, jakby myśl o przeprosinach była dla niego obca. "Chcesz... przeprosić?"~ */
  IF ~~ THEN REPLY #11530 /* ~"To właśnie powiedziałem."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"Tak właściwie to nie. Zmieniłem zdanie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"Zatem... zatem... zatem jak podejrzewam, zgodnie z honorem muszę przyjąć twoje przeprosiny. Doskonale. W zamian za to ja również pragnę cię przeprosić. Odłóżmy tę sprawę na bok i nie mówmy już o niej."~ */
  IF ~~ THEN REPLY #11533 /* ~"Doskonale. Czy mógłbyś odpowiedzieć mi na kilka pytań?"~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"Mogę być głupcem, ale nie takim głupcem, abym przełknął twoje obrazy i wybaczył ci tak łatwo. Możesz iść się nadziać, panie, jeśli o mnie chodzi. Mogę mieć tylko nadzieję, że zdobędziesz kolejne blizny i może trochę więcej honoru. Miłego dnia." Odwraca się sztywno i całkowicie cię ignoruje.~ */
  IF ~~ THEN REPLY #11536 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"Już po raz drugi mnie obraziłeś, sirrah, a ja dłużej tego słuchać nie będę. Broń się!"~ */
  IF ~~ THEN REPLY #11539 /* ~"Możemy jakoś z tego wybrnąć..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"Jeśli rozumiesz przez to, że pochodzę z prawdziwego świata, zatem tak, jestem pierwszakiem. Jestem tam wojownikiem o drobnej sławie. I, pomimo iż mogę nie znać wszystkich luk tego nowego miejsca, nie nazwałbym się 'tępakiem', jak czynią to miejscowi sługusi."~ */
  IF ~~ THEN REPLY #11541 /* ~"Nie, w porządku. Po prostu odwołajmy obrazy, dobrze?"~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"Naprawdę? Ja bym tak cię nazwał."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"Wyrównane rachunki? Nie, dopóki nie przeprosisz, złoczyńco." Patrzy na ciebie, jakby przygotowywał się do walki. "Czy może mam cię prowokować jeszcze bardziej?"~ */
  IF ~~ THEN REPLY #11546 /* ~"Zatem dobrze. Przepraszam."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"Przeprosić? Ciebie? Nigdy."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"Jesteś zwykłym kmieciem, słabeuszem bez honoru, ożywionym kawałkiem mięsa bez prawdziwej duszy, starzejącym się mężczyzną pokrytym bliznami bez nadziei na odkupienie, skazanym na wędrówkę przez życie bez tej cząstki, która czyni człowieka człowiekiem. Skończyłem z tobą, panie, gdyż czuję dla ciebie tylko żal. Miłego dnia." Odwraca się do ciebie tyłem.~ */
  IF ~~ THEN REPLY #11550 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"Jakiej wiedzy poszukujesz?"~ */
  IF ~~ THEN REPLY #11555 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"Kim są klienci tej gospody?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"Szukam dziennika. Czy nie widziałeś jakiegoś ostatnio?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"Czy słyszałeś o Zbieraczu o imieniu Farod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~"Widzisz schludnego, umięśnionego mężczyznę, ubranego w szare i zwyczajne szaty w porównaniu do większości kreacji, jakie widziałeś w tym mieście. Nosi się z pogardliwą arogancją. Wygląda też wyjątkowo nie na miejscu. "Czego chcesz?" pyta.~ */
  IF ~~ THEN REPLY #11566 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"Kim są klienci tej gospody?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"Szukam dziennika. Czy nie widziałeś jakiegoś ostatnio?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"Czy słyszałeś o Zbieraczu o imieniu Farod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"Jestem Alais, sławny wojownik! Z pewnością o mnie słyszałeś?"~ */
  IF ~~ THEN REPLY #11588 /* ~Kłamstwo: "Tak."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~Prawda: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"W końcu! Nie wszyscy tutaj są ignorantami! Pozwolę ci zakupić mi napitek i wtedy możemy podzielić się opowieściami. Zabawię cię moimi ostatnimi przygodami, w tym opowieścią o tym, jak dotarłem do tego najcudowniejszego, przerażającego miasta."~ */
  IF ~~ THEN REPLY #11594 /* ~"Nie mogę się doczekać. A czy najpierw mógłbyś odpowiedzieć mi na kilka pytań?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"Skąd jesteś? Jak się tu DOSTAŁEŚ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"Czy to być może? Czy to być może, że nikt w tym mieście nie słyszał o mnie ani o moich wyczynach? Zatem... Ponownie będę musiał dowieść swojej wartości. Myślałem, że i tutaj moja sława dotarła poprzez świat."~ */
  IF ~~ THEN REPLY #11608 /* ~"Z jakiego świata *pochodzisz*?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"Jestem tego pewien. Czy odpowiesz mi na kilka pytań?"~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"Wszystkim nam zdarzają się rozczarowania. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"Pochodzę z miasta Aliburn stojącego nad rzeką Taime. Z pewnością słyszałeś o jego chwale i cudach? Nieważne, nieważne... to miejsce jest pełne ignorancji, jeśli chodzi o splendor prawdziwych miast. Powiedziano mi, że miejsce, z którego pochodzę nazywane jest przez tutejszych mieszkańców 'pierwszym' - ale pierwszym czego, tego nie wiem."~ */
  IF ~~ THEN REPLY #45189 /* ~"Jak się tu dostałeś?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"Zgadza się. Jesteś daleko od domu. Żegnaj i powodzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~Jerzy się i czerwienieje, a jego dłoń zaciska się mocno na rękojeści miecza. "Tępak, tak? Twoje słowa, sirrah, s dla mnie obrazą, a ja żegnam cię, mając nadzieję, że nasze drogi nigdy się już nie skrzyżują." Odwraca się od ciebie, wciąż zaczerwieniony z dumy i gniewu.~ */
  IF ~~ THEN REPLY #11638 /* ~"Chcę zadać ci kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"Spotkałem tylko starego Ebba Skrzypiącego, który opowiedział mi o mieście i 'sferach'. Zaklęcie mojego przeciwnika musiało przerzucić nas na drugą stronę świata, ponieważ nie wiem o żadnych sferach znajdujących się w pobliżu naszego poprzedniego miejsca pobytu."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"Nie, nie... sfery. Jak sfery egzystencji. To sfery wyobraźni, myśli i wiary. To nie są żadne fizyczne obiekty, ale inne wymiary."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"Nie, nie... sfery. Jak sfery egzystencji. To sfery wyobraźni, myśli i wiary. To nie są żadne fizyczne obiekty, ale inne wymiary."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"Rozumiem. Jesteś tępakiem."~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"Eee. Tak. Słuchaj, mam kilka innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"Zgadza się. Jesteś daleko od domu. Żegnaj i powodzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~Zdziwione spojrzenie pojawia się w jego oczach. "Ro... rozumiem. To, co powiedział starzec zaczyna nabierać sensu... wybacz mi. Muszę to przemyśleć. Żegnaj."~ */
  IF ~~ THEN REPLY #11647 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"Nie wiem. Gdy tu przybyłem, zdałem sobie sprawę, że muszę znaleźć miejsce, by odzyskać orientację. Wyobraź sobie mój wstrząs, gdy odkryłem, że nawet w prostej gospodzie w tej części świata znajdują się ekscentrycy i wariaci. Naprawdę przeniesiono mnie do domu szaleńców!"~ */
  IF ~~ THEN REPLY #11649 /* ~"Skąd pochodzisz?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"Z pewnością może się tak czasem wydawać. Chcę zadać ci jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~"Obawiam się, że nie szukałem takich przedmiotów. Czynię wszystko, co w mojej mocy, by przystosować się do tej nieznanej mi krainy i podczas gdy koncentruję się w swoich próbach na małych detalach, muszę się przyznać, że nie szukałem żadnych dzienników."~ */
  IF ~~ THEN REPLY #11653 /* ~"Zatem dobrze. Odpowiedz mi jeszcze na kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"Doskonale. Dzięki za to, że poświęciłeś mi tyle czasu."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"Farod? Zbieracz? Są to imiona i słowa mi nieznane, dopóki nie usłyszę ich w innym kontekście. Z pewnością zapamiętam twoją twarz. W rzeczy samej, nie byłbym w stanie jej zapomnieć."~ */
  IF ~~ THEN REPLY #11656 /* ~"Dzięki. Odpowiesz mi jeszcze na kilka pytań?"~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"Ścigałem mojego starego wroga, złego cienia życia - Tira Tanelela..." Milknie, czekając na znak, iż rozpoznajesz to imię, po czym kontynuuje. "Przyzwał swoją demoniczną magię, otworzył sobie bramę i rzucił się przez nią. Zanim jednak zdążył całkiem mi uciec, podążyłem za nim... i znalazłem się tutaj."~ */
  IF ~~ THEN REPLY #45193 /* ~"Rozumiem. Jesteś jednym z tępaków."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"To brzmi jak całkiem niezła przygoda. Mam do ciebie jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"Powodzenia w podróżach. Będziesz go potrzebował. Żegnaj."~ */ EXIT
END
