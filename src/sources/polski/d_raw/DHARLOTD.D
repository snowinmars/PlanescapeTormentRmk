// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~Kobieta wpada na ciebie i cofa się o krok. Ogląda cię, zdawkowo się uśmiechając. Śmierdzi jak gorzelnia.~ */
  IF ~~ THEN REPLY #1893 /* ~"Uch... Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"Patrz gdzie leziesz kobieto!"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"Wiii-*taj*..." Macha do ciebie, potem zaczyna chichotać. "Wiii-taj, wielki śmiałku..." Znów zaczyna się śmiać.~ */
  IF ~~ THEN REPLY #7486 /* ~"Wszystko w porządku?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~Zezując na ciebie kładzie dłonie na biodrach i pochyla się na tyle, że widzisz jej biust. "No i jak się *prezentuję*, śmiałku?! W porządku?" Zaczyna się kiwać i znów zaczyna się śmiać. "Wyglądasz mi na takiego, co to mu trzeba trochę miłości i ciepła!" Dla podkreślenia swych słów szturcha cię palcem w pierś.~ */
  IF ~~ THEN REPLY #7491 /* ~"Składasz mi propozycję?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"Tak, no dobra. Słuchaj, może mogłabyś mi pomóc. Mam kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~Obdarza cię niby-surowym spojrzeniem. "Taa, mogę być, znaczy jak twa propozycja mi się spodoba." Opiera się na tobie. "O co biega?"~ */
  IF ~~ THEN REPLY #7497 /* ~"Nie, dzięki. Ale mam parę pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"Nie, dzięki."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"No pewnie."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~Wydyma wargi. "A żebyś tak dostał syfa! Zobaczymy, czy jesteś lepszy niż ja z tym twoim wyglądem."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"No dobra." Mierzy cię wzrokiem od góry do dołu, wydaje się, że trochę trzeźwieje. "Eee... nie, nie, myślę, że jesteś trochę dla mnie za dobry."~ */
  IF ~~ THEN REPLY #7508 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"Rozumiem... Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"Rozumiem... Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"Rozumiem... Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"Rozumiem... Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"Rozumiem... Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"To co, myślisz, że *ja* mogę pomóc *tobie*?! Taa, nie jesteś zbyt wymagający, śmiałku! No dobra, zwaliłeś mnie z nóg tym pochlebstwem!" Uśmiecha się~ */
  IF ~~ THEN REPLY #7513 /* ~"Czy możesz mi opowiedzieć o tym mieście?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"Czy powiesz mi coś o tym miejscu?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"Szukam dziennika. Widziałaś go?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"Szukam kogoś, kto nazywa się Farod. Wiesz gdzie mogę go znaleźć?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"Tak!" Ogarnia ją pijacki śmiech.~ */
  IF ~~ THEN REPLY #7521 /* ~"Tak, co?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"Nieeeee!" To słowo wydaje się ją bawić, chcąc to podkreślić klepie cię w pierś. "Nie! Nie!"~ */
  IF ~~ THEN REPLY #7527 /* ~"Uch... mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"Nieważne."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"Nieważne."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"Taaahhhhhh?" Zezuje na ciebie. "Tsoojezd?"~ */
  IF ~~ THEN REPLY #7532 /* ~"Czy możesz mi opowiedzieć o tym mieście?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"Czy powiesz mi coś o tym miejscu?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"Szukam dziennika. Widziałaś go?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"Szukam kogoś, kto nazywa się Farod. Wiesz gdzie mogę go znaleźć?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"Nieważne. Żegnaj."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~Już masz się odwrócić, ale nagle zatrzymujesz się. Masz uczucie, że coś jest *nie tak*... zdajesz sobie sprawę, że kobieta udaje, że jest pijana. Przyglądasz się jej bliżej i widzisz, że wkłada coś w rękaw... wygląda, że to coś twojego.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Złap ją za rękę.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Złap ją za rękę.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Zaatakuj ją.~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~Szybko i bardzo mocno chwytasz jej przegub. Natychmiast trzeźwieje, rozpaczliwie próbując wyszarpnąć dłoń i jednocześnie zaczyna krzyczeć ile sił w płucach.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Cicho: "Przestań wrzeszczeć, albo wyrwę ci płuca."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"Uspokój się! Cicho babo!"~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Skręć jej kark wolną ręką.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Puść ją.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~Cofa rękę, zanim udaje ci się ją złapać. Pijacki wyraz na jej twarzy znika i zaczyna krzyczeć ile sił w płucach.~ */
  IF ~~ THEN REPLY #7553 /* ~"No dobrze..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~Pijacki wyraz na jej twarzy znika i zaczyna krzyczeć ile sił w płucach.~ */
  IF ~~ THEN REPLY #7554 /* ~"No dobrze..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~Wciąż próbuje wyszarpnąć rękę, jednocześnie wzywając pomocy. Nie możesz uwierzyć, że ma tyle sił w płucach... Zaczyna dzwonić ci w uszach.~ */
  IF ~~ THEN REPLY #7555 /* ~Zaatakuj ją.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Skręć jej kark wolną ręką.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Puść ją.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~Wciąż próbuje wyszarpnąć rękę, jednocześnie wzywając pomocy. Nie możesz uwierzyć, że ma tyle sił w płucach... zaczyna dzwonić ci w uszach.~ */
  IF ~~ THEN REPLY #7558 /* ~Zaatakuj ją.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Skręć jej kark wolną ręką.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Puść ją.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Być może to twe własne umiejętności kieszonkowca każą ci być ostrożnym, ale gdy odwracasz się by odejść, instynktownie sprawdzasz sakiewkę... i widzisz, jak wyciąga z niej rękę. Wydaje się, że nie wie, że to widziałeś.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Złap ją za rękę.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Złap ją za rękę.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Skuś ją, żeby cię znów okradła i obserwuj jej technikę.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Zaatakuj ją.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~Pochylasz się, śmiejąc razem z nią i patrzysz jak znowu wkłada ci rękę do sakiewki... jej technika, oraz sposób w jaki udaje pijaną (i jej biust), są wspaniałe. Wygląda na to, że rękawy jej sukni są celowo tak długie i workowate, by szybko mogła w nich ukryć kradzione przedmioty. Starasz się zapamiętać jej technikę... nawet wtedy, gdy jej ręce znów sięgają do twojej sakiewki.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Złap ją za rękę.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Złap ją za rękę.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"Hej! Co ty do diabła wyrabiasz?!"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Zaatakuj ją.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Zignoruj incydent, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~Musi być *coś* w tonie twego głosu, ponieważ przestaje i patrzy na ciebie wielkimi, przestraszonymi oczami.~ */
  IF ~~ THEN REPLY #7576 /* ~"Oddawaj to, co mi ukradłaś. Już."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Skręć jej kark wolną ręką.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Puść ją, potem odejdź.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~Kiwa głową. Odrywa swe długie, workowate rękawy i odsłania małą, podszytą torebkę, przywiązaną do przegubu. Wygląda na to, że wrzuca do niej skradzione monety; podszycie tłumi brzęk monet. Bez słowa, oddaje ci torebkę... jest wypełniona kilkoma miedziakami.~ */
  IF ~~ THEN REPLY #7579 /* ~"Jesteśmy kwita. I lepiej, żebyśmy się znowu nie spotkali. Rozumiesz?"~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Blef: "Daj mi wszystko co masz, a daruję ci życie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Prawda: "Daj mi wszystko co masz, a daruję ci życie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Kiwnij kłową w podziękowaniu i skręć jej kark wolną ręką.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Puść ją, potem odejdź.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~Sięga do podwiązki i wyciąga następną torebkę, którą wręcza tobie. Jest pełna miedziaków, które bierzesz dla siebie.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"Mówię *wszystko*, więc oddawaj *wszystko*."~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"Obyśmy się już więcej nie spotkali. Rozumiesz?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Kiwnij kłową w podziękowaniu i skręć jej kark wolną ręką.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Puść ją, potem odejdź.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~Wolno sięga do buta i wyciąga dziwny, niewielki sztylet, który wręcza ci trzymając za ostrze. Następnie sięga do drugiego buta i wyciąga *następny* nóż - z szerszym ostrzem niż ten pierwszy i jeszcze bardziej nieprzyjemny - który także ci wręcza. Wtedy odrzuca głowę do tyłu, odsłaniając mały kolczyk, ukryty dotąd pod masą jej włosów. Odpina go i także ci oddaje.~ */
  IF ~~ THEN REPLY #7588 /* ~"No dobra. I lepiej, żebyśmy się znowu nie spotkali. Rozumiesz?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Kiwnij kłową w podziękowaniu i skręć jej kark wolną ręką.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Puść ją, potem odejdź.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~Przytakuje.~ */
  IF ~~ THEN REPLY #7591 /* ~Skręć jej kark wolną ręką.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Puść ją, potem odejdź.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Jej oczy rozszerzają się, gdy twoja dłoń zaciska się na jej szyi. Pełna desperacji wbija paznokcie w twoje palce... Nim udaje się jej uwolnić, słyszysz *trzask* i kobieta przestaje się szamotać.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Puść ją.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Puść ją.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Puść ją, potem odejdź.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~Puszczasz ją a ona upada na ziemię. O wiele łatwiej było ją zabić niż Grabarzy. Patrząc na jej ciało czujesz dziwne mrowienie... *wiesz*, że w ten sposób już zabijałeś. Desperacko próbujesz sobie przypomnieć, ale wspomnienia wymykają ci się, zanurzając się w podświadomości.~ */
  IF ~~ THEN REPLY #7595 /* ~Odejdź.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~Puszczasz ją, a ona pada na ziemię. Patrząc na jej ciało czujesz dziwne mrowienie... *wiesz*, że w ten sposób już zabijałeś. Próbujesz przywołać wspomnienia, ale nie chcą się pojawić.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdź.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~Kobieta kiwa głową i czym prędzej odbiega.  Pewnie już nigdy jej nie zobaczysz.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdź.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~Kobieta kiwa głową i czym prędzej odbiega.  Pewnie już nigdy jej nie zobaczysz.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdź.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
