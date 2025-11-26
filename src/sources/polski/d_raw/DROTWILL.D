// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~Widzisz postać mężczyzny o dobrze zarysowanych konturach. Rysy jego twarzy są ostre i wyrażają pewność siebie. Wygląda zarówno na rozleniwionego jak i zrównoważonego, zaś w swoich twardych dłoniach trzyma nóż. "Kolejny gość do Zgniłego Williama. Mów z czym przybywasz, podróżniku, postaraj się by zabrzmiało to dobrze, a my być może puścimy cię wolno."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"Szukam Faroda."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"Szukam dziennika."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"Przechodziłem tędy."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"Nie chcę żadnych kłopotów."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"Czarny Tulipan chce twojej śmierci."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"Krystal chce twojej śmierci."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"Nie twoja sprawa."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"Chcesz Faroda, ano? Cóż, mój piękny, za odpowiednią opłatą mogę ci powiedzieć, gdzie go znaleźć."~ */
  IF ~~ THEN REPLY #3718 /* ~"Ile?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"Obawiam się, że nie interesuje mnie to."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~Mężczyzna mierzy cię wzrokiem. "Jedyne pięć monet. Niezbyt wygórowana cena dla kogoś, kto wygląda na tak zdesperowanego jak ty."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"W porządku, oto one. Gdzie on jest?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"Nie jestem zainteresowany."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"Nie mam tyle."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"Znajdziesz go w pobliżu Placu Szmaciarzy. Szukaj jego i jego Zbieraczy, nie powinieneś mieć kłopotów z nakłonieniem go do współpracy."~ */
  IF ~~ THEN REPLY #3659 /* ~"Usłyszałem to już od ludzi!"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"Dzięki. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"Ano, być może jest coś, co cię zainteresuje. Jest taka jedna, na imię jej Krystal, która przewodzi tym słabowitym siostrom zwanym Kolczastymi Aniołami. Pozbądź się jej, a porozmawiamy o twojej nagrodzie."~ */
  IF ~~ THEN REPLY #3662 /* ~"Co ja z tego będę miał?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"Zrobię to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"Nie zrobię tego. Nie jestem zabójcą."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"Chcę się najpierw nad tym zastanowić."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"Ano, masz to za co płacisz. A zatem... co cię tutaj sprowadza?"~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"Szukam dziennika."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"Przechodziłem tędy."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"Nie chcę żadnych kłopotów."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"Czarny Tulipan chce twojej śmierci."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"Krystal chce twojej śmierci."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"Nie twoja sprawa."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"Czyż właśnie ci nie powiedziałem, że porozmawiamy jak załatwisz to zabójstwo? Myślę to co mówię, trepie. A teraz mów, zrobisz to czy nie?"~ */
  IF ~~ THEN REPLY #3674 /* ~"Chcę tylko wiedzieć co z tego będę miał."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"Nie. Nie jestem zabójcą."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"Jasne. Zrobię to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"Wyśmienicie! Wróć tutaj, gdy zakończysz sprawę i upewnij się, że dobrze to zrobiłeś. Nie chcę tu żadnych lamentów, że czegoś nie dało się zrobić. Zawarliśmy umowę i będziemy się jej trzymać."~ */
  IF ~~ THEN REPLY #3693 /* ~"Nie martw się o to."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"Nalegam, abyś przemyślał swoją decyzję. Nie spiesz się, dobrze? Co byś powiedział na dwieście monet?"~ */
  IF ~~ THEN REPLY #3694 /* ~"Co powiesz na czterysta?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"Nie. Nie zrobię tego."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"Zrobię to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Zgniły William zaproponował mi 200 monet za pozbycie się Krystal, przywódcy konkurencyjnego gangu w Alei Niebezpiecznych Węgłów. Zgodziłem się.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"Otrzymasz to na co zasługujesz, trepie. Niech będzie dwieście monet, co ty na to? Umowa stoi?"~ */
  IF ~~ THEN REPLY #3681 /* ~"Co powiesz na podniesienie stawki?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"Tak."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Zgniły William zaproponował mi 200 monet za pozbycie się Krystal, przywódcy konkurencyjnego gangu w Alei Niebezpiecznych Węgłów. Zgodziłem się.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"Nie. Nie zrobię tego."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"Niech będzie trzysta. To moje ostatnie słowo."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"Nie. Nie zrobię tego."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"Umowa stoi. Uważaj ją za martwą."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~Zgniły William zaproponował mi 300 monet za pozbycie się Krystal, przywódcy konkurencyjnego gangu w Alei Niebezpiecznych Węgłów. Zgodziłem się.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"Jeśli tego właśnie chcesz. Szkoda, że nie mogliśmy się dogadać." Podnosi głos. "Kosy! Brać stąd to ścierwo!"~ */
  IF ~~ THEN REPLY #3701 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"Dziennika? Nie pamiętnika? Nie księgi rachunkowej? Wyraźnie dziennika?" Przez chwilę milczy, po czym, gdy masz już odpowiedzieć, mówi, "Jeśli go tu znaleziono, prawdopodobnie trafił do ogniska. Ja go nie widziałem."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"Szukam Faroda."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"Przechodziłem tedy."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"Nie chcę żadnych kłopotów."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"Czarny Tulipan chce twojej śmierci."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"Krystal chce twojej śmierci."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"To i tak nie twoja sprawa."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"Tylko przechodziłeś, ano? A to szkoda. Nikt tędy nie przechodzi nie płacąc za to w taki czy inny sposób."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"Już zapłaciłem tę cenę."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Blef: "Złożyłem już ta ofiarę."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"Jaką cenę?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"Chcę zobaczyć jak to egzekwujesz."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~Mężczyzna wybucha śmiechem i wznosi do góry dłoń. "Nie tak szybko przyjacielu. To nie jest zapłata o jakiej mówię. To jest coś zupełnie innego. Widzisz, jest tu taka, która przewodzi wrogiemu gangowi po drugiej stronie rzeki, a ja chciałbym, żebyś wpisał ją do Księgi Umarłych... krwią. Ma na imię Krystal."~ */
  IF ~~ THEN REPLY #3713 /* ~"Co ja z tego będę miał?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"Zrobię to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"Nie zrobię tego. Nie jestem zabójcą."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"Chcę się najpierw nad tym zastanowić."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"To mała ofiara z krwi. Ciesz się z tego, że to nie twoja krew. To krew innej - o imieniu Krystal, która jest na tyle zuchwała, że próbuje pozbawić mnie części mojego terytorium. Chcę, abyś ją odnalazł i zabił."~ */
  IF ~~ THEN REPLY #3717 /* ~"Co ja z tego będę miał?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"Zrobię to."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"Nie zrobię tego. Nie jestem zabójcą."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"Chcę się najpierw nad tym zastanowić."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"Jest już martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"Ano, ciesz się z tego, że nie zamierzam cię skrzywdzić. Potrzebuję jedynie, abyś wyświadczył mi małą przysługą. Wysłuchaj mnie, dobrze?"~ */
  IF ~~ THEN REPLY #3723 /* ~"Co to jest?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"Ano. Jesteś gotów wypełnić swoje zlecenie?"~ */
  IF ~~ THEN REPLY #3724 /* ~"Tak."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"Nie jestem pewien."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"Nie traćmy więc czasu, ano? Moje Kosy będą mnie bronić."~ */
  IF ~~ THEN REPLY #3727 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"Musisz zawsze być pewien przyjacielu. Jestem pewien, że niedługo umrzesz." Wykonuje nieznaczny ruch ręką.~ */
  IF ~~ THEN REPLY #34384 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"Myśl co chcesz, wszystko co się tutaj dzieje to moja sprawa. Pytam po raz kolejny... czego tu szukasz?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"Szukam Faroda."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"Szukam dziennika."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"Nie chcę żadnych kłopotów."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"Czarny Tulipan chce twojej śmierci."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"Krystal chce twojej śmierci."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"Mówiłem już, że to nie twoja sprawa."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"Szkoda, że tak uważasz. Jeszcze większa szkoda, że umrzesz." Daje znak machając ręką i wyciąga nóż.~ */
  IF ~~ THEN REPLY #34392 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"Znalazłeś już samotnego łowcę, Czarnego Tulipana? Zgładziłeś go, jak ustaliliśmy?"~ */
  IF ~~ THEN REPLY #34394 /* ~"Jeszcze nie."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"Znalazłem go, ale przekonał mnie, abym zamiast niego zabił ciebie."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"Jest już martwy. Chcę teraz odebrać moją nagrodę."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"Jeszcze nie? A cóż to, nie dajesz rady? Idź, znajdź go i wracaj, gdy ostatecznie wykonasz robotę!" Odwraca się do ciebie tyłem zirytowany.~ */
  IF ~~ THEN REPLY #34397 /* ~"Najpierw odpowiedz na kilka pytań..."~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Oczy Zgniłego Williama rozświetlają się. "Dopadłeś ich wszystkich, ano? Oto więc twoja zapłata. Pozwól mi ją tylko wydobyć..." Z jego dłoni wysuwa się sztylet, którym rzuca w twój brzuch.~ */
  IF ~~ THEN REPLY #34399 /* ~Walcz.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Uciekaj.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~Jego oczy ciskają w ciebie sztyletami. "Zabiłeś tę nędzną sukę jak ci kazano, czy też przyszedłeś tu chełpić się swoją kolejną porażką?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"Jeszcze nie."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"Jest martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~Potrząsa głową. "Nawet te skurle, które mienią się moimi pomocnikami, potrafią zrobić coś, co jak mówią zamierzają zrobić. Jesteś do niczego, oto jak się sprawy mają. Pozbywając się ciebie przysłużymy się miastu." Wyciąga nóż.~ */
  IF ~~ THEN REPLY #34403 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"Ano, zaiste wykonałeś swoje zadanie. Potrzebuję jeszcze tylko żebyś pozbył się tego przeklętego zabójcy, przez którego giną moi ludzie. Podwoję nawet twoją stawkę. I jak, brzmi nieźle? Z pewnością nie odrzucisz takiej oferty."~ */
  IF ~~ THEN REPLY #34405 /* ~"Obawiam się, że muszę ją odrzucić."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"Zrobię to."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"Jest już martwy. Chcę teraz odebrać moją nagrodę."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"Jesteś tego pewien? Nie chcesz tej roboty?"~ */
  IF ~~ THEN REPLY #34407 /* ~"Nie."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"Pomyśl o tym, podwojenie stawki brzmi nieźle. Zrobię to."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"Szkoda. Ach, trudno. Chłopcy, nadszedł czas, aby spalić to ścierwo." Powoli wyciąga nóż i podchodzi do ciebie...~ */
  IF ~~ THEN REPLY #34409 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"Dobrze. Dobrze. Znajdziesz go w okolicach alei. Myślę, że stara się nie zwracać na siebie uwagi."~ */
  IF ~~ THEN REPLY #34411 /* ~"Znajdę go."~ */ JOURNAL #31878 /* ~Zgniły William poprosił mnie, żebym zabił Czarnego Tulipana, zabójcę, który najwyraźniej czai się gdzieś w Alei Niebezpiecznych Węgłów.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"Pozbyłeś się już tej nędznej suki Krystal?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"Jeszcze nie."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"Jest martwa."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~Mówi przez zaciśnięte zęby, wyraźnie wymawiając każde słowo. "Nie... wracaj... tutaj... dopóki... ona... nie będzie... martwa. Czy... to... rozumiesz?" Odwraca się od ciebie. "Dopóki ona żyje, nie chcę widzieć po tobie najmniejszego śladu."~ */
  IF ~~ THEN REPLY #34414 /* ~"W porządku. Żegnaj."~ */ EXIT
END
