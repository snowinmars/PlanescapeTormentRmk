// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Przed tobą stoi wysoka, milcząca postać. Łatwo można by wziąć ją za posąg - choć na widok głębokich bruzd na twarzy tego mężczyzny, można się zastanowić, czy rzeźbiarz nie posunął się za daleko formując jego twarz przy pomocy dłuta. Milczący człowiek ma z pewnością dużo ponad pięćdziesiąt lat... ale trudno powiedzieć, ile naprawdę. Kiedy wolno obraca się w twoim kierunku, dostrzegasz w jego oczach tępy blask miedzi.~ */
  IF ~~ THEN REPLY #2475 /* ~"Witaj."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Zostaw tego człowieka w spokoju.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Miedziooki wpatruje się w ciebie. Ciężko dojrzeć coś w jego oczach, gdyż są skryte głęboko w studniach oczodołów, ale zdają się mieć miedziany połysk.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"Chcę podpisać Kontrakt Umarłych."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"Chcę anulować Kontrakt Umarłych, który z tobą podpisałem."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"Oddaj mi mój Kontrakt Umarłych, albo odbiorę ci go siłą."~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"Pomyliłem się... Wziąłem cię z kogoś innego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Miedziooki kłania się niedbale i powoli sięga obiema rękoma do swoich szat, które łatwo rozpoznajesz jako typowe odzienie Grabarzy. Lewą ręką wyciąga małą sakiewkę z ludzkiej skóry. Prawą ręką natomiast wyciąga kawałek pergaminu owiniętego na piórze z kości palca. Powoli kładzie sakiewkę i pergamin na stole przed tobą.~ */
  IF ~~ THEN REPLY #2482 /* ~Podnieś pergamin i przyjrzyj się mu uważnie.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Podpisz pergamin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Sprawdź sakiewkę.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Zabierz sakiewkę.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"Rozmyśliłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~To kontrakt, który upoważnia Grabarzy do objęcia w posiadanie ciała osoby, która go podpisała, gdy osoba ta przekroczy już Wieczną Granicę. Podpisany otrzymuje w zamian sumę pieniędzy, która została ustalona przed zawarciem umowy. Zakładasz, że pieniądze w sakiewce to suma, którą otrzymasz za podpisanie kontraktu.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Zamień pergamin na inny kontrakt, a potem go podpisz.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Zamień pergamin na inny kontrakt, a potem go podpisz.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Zamień pergamin na inny kontrakt, a potem go podpisz.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Dokładnie przyjrzyj się temu pergaminowi.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Podpisz pergamin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Sprawdź sakiewkę.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Zabierz sakiewkę.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"Rozmyśliłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Miedziooki nie robi nic, co świadczyłoby o tym, że zauważył zamianę. Kiedy kończysz podpisywać kontrakt, Grabarz wskazuje na sakiewkę po jego lewej stronie. Kiedy po nią sięgasz i przeliczasz sto miedziaków, pergamin z kontraktem znika ze stołu i ginie w fałdach jego szat.~ */
  IF ~~ THEN REPLY #2498 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Miedziooki nie robi nic, co świadczyłoby o tym, że zauważył zamianę. Kiedy kończysz podpisywać kontrakt, Grabarz wskazuje na sakiewkę po jego lewej stronie. Jednak zostawia pergamin z kontraktem na stole, jakby prosił o jego sprawdzenie... Ku swemu przerażeniu spostrzegasz, że twoja sztuczka się nie udała. Twoje ciało po śmierci będzie należało do Grabarzy.~ */
  IF ~~ THEN REPLY #2500 /* ~"Ee... czekaj... mogę jeszcze raz spojrzeć na ten kontrakt?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~Pergamin znika w fałdach szat Miedziookiego. Grabarz wskazuje na sakiewkę.~ */
  IF ~~ THEN REPLY #2503 /* ~"Daj mi ten kontrakt, albo cię zabiję!"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Zabierz sakiewkę i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Miedziooki nie reaguje, ale nagle w całym pomieszczeniu zalega ciemność...~ */
  IF ~~ THEN REPLY #2506 /* ~"Co to zn...?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~Sakiewka jest pełna miedziaków. Wygląda na to, że jest ich w niej około setki.~ */
  IF ~~ THEN REPLY #2508 /* ~Podnieś pergamin i przyjrzyj się mu dokładnie.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Podpisz pergamin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Jeszcze raz sprawdź sakiewkę.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Zabierz sakiewkę.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"Rozmyśliłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~Kiedy sięgasz po sakiewkę, ta znika ze stołu. Mrugasz oczyma, a ona znowu jest na stole. Miedziooki ciągle się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #2514 /* ~Podnieś pergamin i przyjrzyj się mu dokładnie.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Podpisz pergamin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Sprawdź sakiewkę.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Jeszcze raz sięgnij po sakiewkę.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"Rozmyśliłem się. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Miedziooki nie odzywa się ani słowem.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"Przychodzę podpisać Kontrakt Umarłych."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"Ee... mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~Kiedy kończysz podpisywać kontrakt, Miedziooki wskazuje na sakiewkę po jego lewej stronie. W tym samym momencie pergamin z kontraktem znika ze stołu i ginie w fałdach jego szat.~ */
  IF ~~ THEN REPLY #2521 /* ~"Mam kilka pytań, na które potrzebuję odpowiedzi..."~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Miedziooki nie mówi ani słowa, ale po prostu sięga po sakiewkę i pergamin i chowa je w fałdach swoich szat.~ */
  IF ~~ THEN REPLY #2525 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Miedziooki nie odzywa się ani słowem.~ */
  IF ~~ THEN REPLY #12006 /* ~"To twoja ostatnia szansa. Oddaj mi kontrakt, albo tego pożałujesz."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"Ee... mniejsza z tym. Żegnaj."~ */ EXIT
END
