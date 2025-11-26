// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"Zase ty? Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #5827 /* ~Bojuj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"Zase ty? Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #5830 /* ~Bojuj.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"Dobrá, blbče... pohni se a nikdo nebude zraněný."~ */
  IF ~~ THEN REPLY #5833 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"Vítej zpět ve Slévárně, pane."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"Díky. Jdu si vyzvednout předmět."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"Díky."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"Vítej zpět ve Slévárně, pane."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"Díky. Jdu si vyzvednout předmět."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"Díky."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~Vidíš obtloustlého znuděného strážného. "Co zde pohledáváš?"~ */
  IF ~~ THEN REPLY #5841 /* ~"Jenom se tak rozhlížím."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"Přišel jsem si vyzvednout objednávku."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"Přišel jsem zadat objednávku."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"Kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"Co děláš?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"Pomáhám Xanderovi s Tvůrcem snů."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"Přišel jsem použít Tvůrce snů."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"Co jo tohle za místo?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"Mám zprávu pro vyvolávače Keldora z Giltspuru."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"Nic. Promiň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"Tak to jsem si jistý, že ti nebude vadit jenom tak projít."~ */
  IF ~~ THEN REPLY #5849 /* ~"Mohu vejít."~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"Vůbec ne."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"Ano, pane. Mohu vidět stvrzenku?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"Ano."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~Lži: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"Ne."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"Určitě jsem ji někde měl..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"Je mi líto, pane, ale momentálně nepřijímáme nové objednávky, protože pracujeme na velkém projektu. Zkus se zastavit za rok, pane. Děkujeme ti za tvůj zájem."~ */
  IF ~~ THEN REPLY #5857 /* ~"Dobře. Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"Jsem strážce Věřících ve Zdroj, pane."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"Věřící ve Zdroj?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"Oh. Aha.  Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"Hlídám bránu, pane."~ */
  IF ~~ THEN REPLY #5864 /* ~"Dobře. Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"Díky za tvůj čas."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"Jsi před Velkou Slévárnou, domovem Věřících ve Zdroj."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"Koho?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"Co je to Velká Slévárna?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"Oh. Díky. Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~Odejdi: "Oh."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"Vyslov povahu svého požadavku, pane."~ */
  IF ~~ THEN REPLY #5872 /* ~"Jenom se dívám kolem."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"Přišel jsem si vyzvednout objednávku."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"Přišel jsem sem zadat objednávku."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"Kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"Co děláš?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"Co je tohle za místo?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"Nic, omlouvám se."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"Ne dokud neprokážeš, co zde hledáš, pane."~ */
  IF ~~ THEN REPLY #5880 /* ~"Aha. Tak to mám ještě pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"Aha. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"Děkuji, pane. Úředník má kancelář v jižní zdi Slévárny." Otevřel ti bránu.~ */
  IF ~~ THEN REPLY #5883 /* ~Odejdi.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"Pane, vypadá to, že nemáš stvrzenku."~ */
  IF ~~ THEN REPLY #5885 /* ~"Určitě jsem ji někde měl..."~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"Hm. Ne. Ale mám ještě pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"Tak to se obávám, že budeš muset odejít, pane."~ */
  IF ~~ THEN REPLY #5889 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"Ano, pane, určitě ano. Ale dokud mi nedokážeš, že zde máš co pohledávat, nemohu tě pustit dovnitř."~ */
  IF ~~ THEN REPLY #5891 /* ~"Tak to mám ještě pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"Ano pane. Boží lidé, tak nám říkají."~ */
  IF ~~ THEN REPLY #5894 /* ~"Proč?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"To máte fajn. Na shledanou. "~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"Kromě toho, že je to domov Věřících ve Zdroj, je to také jedna z největších sléváren. Těmito branami prochází mnoho, přijímáme objednávky ze všech Sfér. Momentálně ale nepřijímáme žádné další, protože nejvíc našich řemeslníků pracuje na novém projektu a zbytek je na několik měsíců určen na nějaké menší objednávky. V podstatě to znamená, že se dovnitř nedostaneš, pokud nemáš stvrzenku na hotovou věc, nebo nemáš uvnitř důležitou věc k projednáni."~ */
  IF ~~ THEN REPLY #5897 /* ~"Mám důležitou věc!"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"Mám stvrzenku!"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"Jsme jedním z patnácti uznávaných společenství v Sigilu, pane. Věříme, že každá bytost v sobě má jiskřičku božství - nemusí být nutně zlá nebo dobrá, ale má potenciál stát se božstvem. Věříme, že za božstvím leží něco většího. Věříme, že všechen život má cíl a účel a jsme zasvěceni pochopení toho, co tyto cíle jsou. Každým krokem našich životů postupujeme k velikosti."~ */
  IF ~~ THEN REPLY #5901 /* ~"To zní důležitě.."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"To máte dobré. Pustíš mě dovnitř?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"To věříme, pane. Mohu ti ještě s něčím pomoct?"~ */
  IF ~~ THEN REPLY #5904 /* ~"Ano. Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"Ne."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"Díky, ne."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"Ano, pane. Vejdi."~ */
  IF ~~ THEN REPLY #5908 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"Ano, pane. Řekli nám o vás. Pojďte dál."~ */
  IF ~~ THEN REPLY #6481 /* ~"Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~Strážce se na tebe chvíli díval s nečitelným výrazem. "Přeji vám hodně úspěchů. Pokračujte."~ */
  IF ~~ THEN REPLY #6483 /* ~"Díky."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"Vítej zpět, pane? Určitě máš vevnitř nějaké záležitosti. Jdi prosím dál."~ */
  IF ~~ THEN REPLY #66286 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"Děkuju ti, pane. Najdeš ho ve Velké Hale Božích Lidí." Otevřel ti bránu.~ */
  IF ~~ THEN REPLY #67932 /* ~"Děkuju."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
