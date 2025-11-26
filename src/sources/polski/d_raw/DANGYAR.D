// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~Ten mężczyzna wygląda na... nawiedzonego. Jego oczy są na wpół przymknięte, jakby miał problemy ze snem, a włosy ma długie i w nieładzie. W brodzie widzisz kawałki martwej skóry i jedzenia. Zdaje się ciebie nie zauważać.~ */
  IF ~~ THEN REPLY #3008 /* ~"Witaj..."~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~Zostaw mężczyznę jego własnym myślom.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~Mężczyzna podnosi wzrok na dźwięk twojego głosu i znika jego nieobecny wyraz twarzy... jakby ktoś zapalił dwa ogniki w jego oczach. "Jaki ty mieć interes włażonc do mego domu?" Jego oczy zwężają się, a zęby zaciskają. "Won! Albo odeślem ciem do grobu, z którego siem wyczołgałeś!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"Rozmawiałem z twoją żoną. Sądzę, że mogę pomóc ci z..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"Rozmawiałem z twoją żoną. Sądzę, że mogę pomóc ci z..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"Dalej, spróbuj, jeśli wydaje ci się, że jesteś wystarczająco silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"*Nikt* nie mówi do mnie w ten sposób... odszczekaj te słowa albo twój dom stanie się kryptą."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~Pokaż mu jego kontrakt z Grabarzami.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"Uspokój się. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"Zatem żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"Cóżeś robił, przeszkadzajonc mej żonie?! To nie jest noclegownia dla poszukiwaczy dziwek... najlepiej zostaw jom w spokoju i opuść mój dom zanim w ksiendze umarłych znajdzie siem nowe imie!"~ */
  IF ~~ THEN REPLY #11709 /* ~"Dalej, spróbuj, jeśli wydaje ci się, że jesteś wystarczająco silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"*Nikt* nie mówi do mnie w ten sposób... odszczekaj te słowa albo twój dom stanie się kryptą."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~Pokaż mu jego kontrakt z Grabarzami.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"Uspokój się. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"Zatem żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~Twarz mężczyzny nabiega czerwienią, a on zaczyna krzyczeć. "Głuchy jesteś?!" Parska i spluwa ci pod nogi. *"Ty brudny pokryty bliznami psie! Idź precz, albo nawet Moce nie bendom w stanie ocalić twej skóry!"*~ */
  IF ~~ THEN REPLY #11714 /* ~"Dalej, spróbuj, jeśli wydaje ci się, że jesteś wystarczająco silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"Zatem żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~Mężczyzna uderza cię na pożegnanie w plecy. "Nie przekraczaj wiencej tego progu, ty śmierdzoncy rzygami bękarcie."~ */
  IF ~~ THEN REPLY #11716 /* ~"Wystarczy. Zasłużyłeś na miejsce w grobie..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~Odejdź bez słowa.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~Widzisz Angyara - nie wygląda wcale lepiej, niż przedtem. Gdy podchodzisz do niego ponownie, on powoli odwraca się w twoją stronę. Jego twarz tężeje. "Znowu ty! Nie słyszał żeś mnie za PIERWSZYM razem, ty zasyfiony kundlu?! Won z mego domu albo, tak mi Moce dopomóżcie, potnem ciem tam, gdzie stoisz!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"Rozmawiałem z twoją żoną. Sądzę, że mogę pomóc ci z..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"Rozmawiałem z twoją żoną. Sądzę, że mogę pomóc ci z..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"Dalej, spróbuj, jeśli wydaje ci się, że jesteś wystarczająco silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"*Nikt* nie mówi do mnie w ten sposób... odszczekaj te słowa albo twój dom stanie się kryptą."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~Pokaż mu jego kontrakt z Grabarzami.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"Uspokój się. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"Zatem żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~Gdy wyciągasz kontrakt, krew odpływa z twarzy Angyara. Przez chwilę zdaje się, jakby brakowało mu słów, ale po chwili jego temperament szybko się wynurza. "Gdzie żeś to znalazł?! Na Moce, powiedz mi..."~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"Twoja żona powiedziała mi, gdzie on był. Martwiła się o ciebie."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"Twoja żona powiedziała mi, gdzie on był. Martwiła się o ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"Zabrałem go od Grabarza o imieniu Mortai. Jest na tym twoje imię."~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~Podrzyj kontrakt.~ */ JOURNAL #64584 /* ~Podarłem na drobne strzępy Kontrakt Umarłych Angyara. Kiedy szczątki fatalnego dokumentu sięgnęły podłogi, Angyarowi autentycznie ubyło lat.~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~Angyar pluje się przez chwilę, po czym jego gniew znajduje ujście. "Ja... ją *zabiję*! Ja..."~ */
  IF ~~ THEN REPLY #11729 /* ~"Nie *dotkniesz* jej, jeśli wiesz, co dla ciebie dobre."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"To tylko i wyłącznie twoja sprawa, ale najpierw rozstrzygnijmy sprawy między nami: Co mi dasz za ten kontrakt?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"Powiedziała mi, ponieważ się o ciebie martwiła... a twoją pierwszą reakcją jest chęć *ukarania* jej za to, że się o ciebie troszczy?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~Podrzyj kontrakt.~ */ JOURNAL #64584 /* ~Podarłem na drobne strzępy Kontrakt Umarłych Angyara. Kiedy szczątki fatalnego dokumentu sięgnęły podłogi, Angyarowi autentycznie ubyło lat.~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"*Śmiesz*... *śmiesz* mówić mi, co mam robić... w moim *własnym* domu...?" Bierze głęboki oddech, po czym wybucha. "Wynoś siem, przeklenty! I zabierz ten diabelski papier z sobom!"~ */
  IF ~~ THEN REPLY #11733 /* ~"Czemu mnie nie *wyrzucisz*, jeśli sądzisz, że jesteś na tyle silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"Czekaj! Powiedziała mi, ponieważ się o ciebie martwiła... a twoją pierwszą reakcją jest chęć *ukarania* jej za to, że się o ciebie troszczy?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"Złamała słowo dane mi, jej *mężowi*!" Dłoń Angyara zaciska się w pięść, a on sam wpatruje się w ciebie. "Powiedziałem jej, żeby nie mówiła o tym nikomu i okazuje siem, że wie o tym pierwszy obcy, któren wchodzi do mojego domu!"~ */
  IF ~~ THEN REPLY #11735 /* ~"Złamała obietnicę, ponieważ cię kocha. Prawa i obietnice czasami muszą ustąpić przed ważniejszymi sprawami."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"Masz powód, by się wściekać. Nie powinna była nic ci obiecywać, jeśli nie miała zamiaru tego dotrzymać. Nie mogę poważać krzywoprzysięzców, ale to jest już przeszłość."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"Masz powód, by się wściekać. Nie powinna była nic ci obiecywać, jeśli nie miała zamiaru tego dotrzymać. Nie mogę poważać krzywoprzysięzców, ale to jest już przeszłość."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"Cóż, uczyniła to, a ty musisz sobie z tym poradzić. Nie ma nic więcej do powiedzenia."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~Wygląda na to, że część gniewu uszła z Angyara. Mężczyzna mruczy. "Co siem stało, to siem nie odstanie..." Patrzy na ciebie podejrzliwie, po czym kiwa głową w stronę kontraktu. "Co zatem planujesz uczynić z tym papierzyskiem?"~ */
  IF ~~ THEN REPLY #11741 /* ~Podrzyj kontrakt.~ */ JOURNAL #64584 /* ~Podarłem na drobne strzępy Kontrakt Umarłych Angyara. Kiedy szczątki fatalnego dokumentu sięgnęły podłogi, Angyarowi autentycznie ubyło lat.~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"Oczekuję, że mi za to zapłacisz, podobnie jak tobie za niego zapłacono."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~Angyar zdaje się nie móc oderwać oczu od kontraktu. "Czemu mnie to przynosisz?" Spogląda podejrzliwie. "Chcesz okup?"~ */
  IF ~~ THEN REPLY #11740 /* ~Podrzyj kontrakt.~ */ JOURNAL #64584 /* ~Podarłem na drobne strzępy Kontrakt Umarłych Angyara. Kiedy szczątki fatalnego dokumentu sięgnęły podłogi, Angyarowi autentycznie ubyło lat.~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"Oczekuję, że mi za to zapłacisz, podobnie jak tobie za niego zapłacono."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~Przedzierasz pergamin, a pełne desperacji oczy Angyara podążają za opadającymi na podłogę kawałkami papieru, po czym prostuje się, jakby zdjęto z niego wielki ciężar. "Ty..." Patrzy na ciebie, jakby chciał ci podziękować, po czym powstrzymuje się i rzuca podejrzliwe spojrzenie. "Nic nie jest za darmo. Nie w Ulu, śmiałku."~ */
  IF ~~ THEN REPLY #11743 /* ~"To było za darmo. I możesz oczekiwać, że wiele z zasad w Ulu zmieni się, gdy będę w okolicy."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"Mogę potrzebować pomocy w przyszłości. Czy zgodzisz się na to?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"Cóż, jeśli czujesz potrzebę odpłacenia mi, to mam kilka pytań..."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"Zatem pomyśl teraz o sposobie, w jaki mi zapłacisz. Żegnaj."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~Wściekły wyraz twarzy Angyara rozpływa się. Zdaje się on być zmęczony walką ze swoim szczęściem. "Mu... mu... musiałem modlić siem do właściwych Mocy przez ostatnie pół miesionca." Wzdycha. "Masz mojom wdzienczność, śmiałku... o ile jest ona cokolwiek warta."~ */
  IF ~~ THEN REPLY #11747 /* ~"Właściwie to może potrafisz mi pomóc... Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"Tylko nie popełnij ponownie tej samej pomyłki... Następnym razem może mnie nie być w pobliżu."~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"To wiele dla mnie znaczy. Uważaj na siebie, Angyarze."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"Targowałem siem już o życie z jednym gościem i nie zamierzam robić tego ponownie, szczególnie z chodzoncym truposzem." Parska. "Wynoś siem z mojego domu albo dopilnujem, żebyś zginoł jeszcze raz!"~ */
  IF ~~ THEN REPLY #11750 /* ~Podrzyj kontrakt.~ */ JOURNAL #64584 /* ~Podarłem na drobne strzępy Kontrakt Umarłych Angyara. Kiedy szczątki fatalnego dokumentu sięgnęły podłogi, Angyarowi autentycznie ubyło lat.~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"Chcesz mnie zabić? Dalej, spróbuj..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"Dobrze. Będę nosić ten kontrakt przy sobie... abyś wiedział, że wciąż gdzieś tam jest i będzie aktualny, gdy umrzesz. Żegnaj, Angyarze."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~Angyar przytakuje. "Pytaj."~ */
  IF ~~ THEN REPLY #11753 /* ~"Czy mogę cię spytać, czemu podpisałeś kontrakt z Grabarzami?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"Szukam mężczyzny o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"Zginął mi dziennik. Czy widziałeś może gdzieś jakiś?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"Czy nie będziesz miał nic przeciwko, jeśli tu odpocznę?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~Angyar przytakuje. "Tak, znam ja to imie, a nie jest ono lubiane."~ */
  IF ~~ THEN REPLY #11758 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~Marszczy się. "To jeden z tych Zbieraczy i to z długim cieniem. Ma kilku chłopaków na zawołanie. Może i nie jest władcom krainy, ale na jego terenie bym z nim nie zadzierał."~ */
  IF ~~ THEN REPLY #11761 /* ~"Zbieracze?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"Rozumiem. Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"Ludzkie sempy, szakale, hieny... brudne trepy bez skrawka godności. Wienkszość z nich ma leże na Placu Szmaciarzy. Zbierajom truposzy, kradnom z ciał wszystko, co jest warte brzdęka, po czym sprzedajom je Grabom w Kostnicy."~ */
  IF ~~ THEN REPLY #11766 /* ~"Czemu to robią?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"A więc Farod jest jednym z tych Zbieraczy? Czy wiesz, gdzie mogę go znaleźć?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"Jeszcze raz, gdzie mogę znaleźć Faroda?"~ */ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"Graby płacom za ciała. Pomaga to utrzymać ulice w czystości gdy nie wystarczom deszcze."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"A więc Farod jest jednym z tych Zbieraczy? Czy wiesz, gdzie mogę go znaleźć?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"Jeszcze raz, gdzie mogę znaleźć Faroda?"~ */ JOURNAL #64576 /* ~Angyar powiedział mi, gdzie mogę znaleźć Faroda. Oznajmił, że siedziba Faroda jest pogrzebana *pod* Placem Szmaciarzy . Dodał również, że istnieje coś w rodzaju "portalu" do bramy ukrytej siedziby Faroda i do otwarcia tego portalu posłuży mi trochę "żelastwa".~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"Tak, ale nie oddam ci przysługi wspominajonc o tym..." Marszczy się jeszcze bardziej. "Jeden z mych kuzynów siem u nich zagnieździł kilka miesiency temu i sypnoł coś o starym Farodzie. Mówił, że Farod ma swe leże zakopane gdzieś *pod* Placem Szmaciarzy. Aby siem tam dostać, musisz znaleźć jakiś portal i przeskoczyć przez niego, niosonc ze sobom trochie śmiecia."~ */
  IF ~~ THEN REPLY #11775 /* ~"Gdzie jest Plac Szmaciarzy?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"To kilka budynków stond... Pójdziesz prosto na zachód od bramy Kostnicy i bendziesz szedł tak długo, aż zauważysz wszendzie leżonce sterty śmiecia. Najlepiej bondź tam ostrożny... tamtejsi Zbieracze nie zawsze czekajom, aż ciało umrze, żeby zgarnonć trupa, słyszysz?"~ */
  IF ~~ THEN REPLY #11778 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"Dzięki za informacje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"Może to oszałamiajonca ilość bogactwa, które ciem otacza tak ciem rozprasza..." Parska. "Mamy mniej niż nic, a ja potrzebujem brzdenku. Wtedy nieważne było, skond pochodzi, a sprzedanie ciała Grabom jest o wiele uczciwsze niż wienkszość tu dostempnej pracy..."~ */
  IF ~~ THEN REPLY #11780 /* ~"Co sprawiło, że zmieniłeś zdanie?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"Byłem tylko ciekaw. Żegnaj, Angyarze."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~"Ja tylko..." Wzdycha. "Pół miesionca temu ujrzałem jednego z tych zombich na ulicy... jednego z tych zombich, co pracujom dla Grabów i ten widok mnie uderzył prosto w serce. Wiedziałem, żem zrobił błond... Nie chciałem być tego czenściom po śmierci."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"Zatem nie powinieneś był podpisywać kontraktu."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"Zatem nie powinieneś był podpisywać kontraktu."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"Wszyscy popełniliśmy jakieś błędy."~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"Byłem tylko ciekaw. Żegnaj, Angyarze."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~Angyar czerwienieje. "Nie potrzebujem twoich kazań! Niech ciem cholera, jak *śmiesz* mówić do mnie z góry w moim własnym domu? Nie prosiłem ciem, abyś wydostawał dla mnie ten diabelski papier - *nic* ci nie jestem winien! Won! Nie chcem na ciebie wiencej patrzeć!"~ */
  IF ~~ THEN REPLY #11788 /* ~"Czemu mnie nie wyrzucisz, jeśli sądzisz, że jesteś na tyle silny..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"Zatem żegnaj."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~Gdy otwierasz usta, żeby coś powiedzieć, czujesz dziwne mrowienie w tyle czaszki... nagle zdajesz sobie sprawę, że Angyar nie przyjmie w spokoju twoich kazań.~ */
  IF ~~ THEN REPLY #11790 /* ~"Zatem nie powinieneś był podpisywać kontraktu, Angyarze."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"Wszyscy popełniliśmy jakieś błędy."~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"Byłem tylko ciekaw. Żegnaj, Angyarze."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~Angyar mruczy. "Tak mi siem wydaje..."~ */
  IF ~~ THEN REPLY #11794 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"Cóż, byłem tylko ciekaw. Żegnaj, Angyarze."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~Widzisz Angyara - wygląda o wiele lepiej niż przedtem. Na jego twarz wróciły kolory, oczy straciły nawiedzony wyraz. Gdy ponownie się do niego zbliżasz, on powoli odwraca się w twoją stronę i parska. "Hmm... jeśli to nie jest świenty skurli z Ula... skurli takich jak ja." Mruczy. "Co mogiem dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #11796 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"Chciałem tylko zobaczyć, jak sobie radzisz, Angyarze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~Angyar przytakuje. "Przynajmniej tyle jestem w stanie uczynić. Poproszem żone, aby przygotowała ci jakieś koce..."~ */
  IF ~~ THEN REPLY #11798 /* ~"Dzięki..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"Nie chcę jeszcze odpoczywać. Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"Jeszcze nie chcę spać. Może jednak wrócę, gdy będę potrzebować odpoczynku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~Angyar marszczy się, po czym potrząsa głową. "Nie widziałem nic takiego, śmiałku."~ */
  IF ~~ THEN REPLY #11801 /* ~"Może zatem jesteś w stanie odpowiedzieć mi jeszcze na kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"Dzięki tak czy inaczej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~"Targowałem siem o życie już z jednym gościem i nie mam zamiaru robić tego ponownie." Potrząsa głową. "Spłacem dług teraz."~ */
  IF ~~ THEN REPLY #11803 /* ~"Dobrze. Jeśli czujesz potrzebę odpłacenia mi, to możesz odpowiedzieć mi na kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"Przydałoby mi się trochę odpoczynku."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"Nie ma żadnego długu, Angyarze - to byłą zwykła przysługa. Żegnaj."~ */ EXIT
END
