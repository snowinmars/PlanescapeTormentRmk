// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"Vítejte do Sklepení Devátého Světa! Jak ti mohu posloužit tohoto krásného dne, Sigilane?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"Co je to za místo?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"Co jsi zač?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"Slyšel jsem, že tady máte nějaké problémy s vyzvedáváním předmětů..."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"Sbohem."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"Dvakrát vítejte do Sklepení Devátého Světa! Jak ti mohu posloužit tohoto krásného dne, Sigilane?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"Co je to za místo?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"Co jsi zač?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"Chtěl bych něco uložit."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"Slyšel jsem, že tady máte nějaké problémy s vyzvedáváním předmětů..."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"Sklepení Devátého Světa je potěšeno, že může fungovat jako skladiště pro Dolní Čtvrť a pro všechny rozumné bytosti Sigilu. Naše motto je: Když jeden svět není zkrátka dost velký! Máme velké skladovací kapacity pro ty, kteří jich nemají dostatek. Naše ceny jsou bezkonkurenční! Naše služby příkladné! A naše slušnost k zákazníkům je známá po celých sférách!"~ */
  IF ~~ THEN REPLY #45856 /* ~"Co jsi zač?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"Sbohem."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"Jsem hlas Sklepení Devátého Světa. Jsem tady, abych ti sloužil, zákazníku. Pouč mě o svých touhách a přáních, ať ti je mohu splnit!"~ */
  IF ~~ THEN REPLY #45859 /* ~"Chtěl bych něco uložit."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"Proč se tomuhle místu říká Sklepení Devátého Světa?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"Je tohle místo opravdu velké jako celý svět?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"To nic. Díky."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"Na rovinu, nemám zdání! Myslím, že majitelé to považovali za chytré a krásné jméno."~ */
  IF ~~ THEN REPLY #45865 /* ~"Chtěl bych něco uložit."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"Je tohle místo opravdu velké jako celý svět?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"Oh. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"Ne, to je pouze obchodní nadsázka. Je tady spousta místa, ale ne tolik."~ */
  IF ~~ THEN REPLY #45870 /* ~"Chtěl bych něco uložit."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"Proč se tomuhle místu říká Sklepení Devátého Světa?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"Oh. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"Omlouvám se! Momentálně jsme bohužel plní. Co ještě pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #45875 /* ~"Myslel jsem, že tohle má být velké skladiště."~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"Mám ještě pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"Ne. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"Jistě! Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #45880 /* ~"Co je to za místo?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"Co jsi zač?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"Chtěl bych něco uložit."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"Proč se tomuhle místu říká Sklepení Devátého Světa?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"Je tohle místo opravdu velké jako celý svět?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"Slyšel jsem, že tady máte nějaké problémy s vyzvedáváním předmětů..."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"To nic. Díky."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"No... ano." Zvuk zní poněkud rozpačitě. "Došlo nám místo a děje se zde něco podezřelého a já nevím co. Podstata problému se dá popsat takto: Už nepřijímáme žádné předměty pro uložení."~ */
  IF ~~ THEN REPLY #45889 /* ~"Oh. Tak to mám pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"Aha. Sbohem tedy."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"A co přesně sháníš?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"Sháním velký pytel mincí."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"Sháním velký pytel mincí."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"Jsem tady pro polštář pro Hamryse, výrobce rakví."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"Bylo mi řečeno, že zde můžu vyzvednout nějaké plány na hrobku."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"Bylo mi řečeno, že mám říct, že jsem zde pro půjčku."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"Řekli mi, že mám říct: Rozesmál jsem Pikita."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"Řekli mi, že mám říct: Rozesmál jsem Pikita."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"Nic. Mám nějaké otázky, ačkoli..."~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"Nic. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"Ano. Mí pánové jsou velice zvědaví ohledně toho, co jsou. Já vím, já jsem jenom jedno velké kouzlo na hlavě! Nemám tušení, co se stalo se vším skladovacím prostorem. Ale pokud se bude někdo ptát, jsme otevření. Neměl bys mít problémy s vyzvedáváním uložených předmětů. Stačí se pouze zeptat!"~ */
  IF ~~ THEN REPLY #45902 /* ~"Dobrá tedy. Chtěl bych si něco vyzvednout."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"Místo toho mám pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"Díky. Ale později. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"Sbohem! My ve Sklepení Devátého Světa si ceníme tvého obchodu. Prosím, zase přijď."~ */
  IF ~~ THEN REPLY #45906 /* ~"Jo, na to si vsaď."~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"Omluvte mně. Prosím, neútočte na hlavu."~ */
  IF ~~ THEN REPLY #45909 /* ~"Správně. Mám jenom pár otázek..."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"Správně. Sbohem."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"Je mi líto, pane! Ten předmět už byl vybrán! Přejete si vybrat ještě něco jiného?"~ */
  IF ~~ THEN REPLY #45912 /* ~"Ano."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"Ne. Jenom potřebuju odpověď na pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"Ne. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"Máme tady velký pytel mincí, který jsi popsal, pane. Potřebujeme od tebe pouze jednu věc: Kolik je v něm?"~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~Tenhle tip ti nějak připadá správný...  "1123 mincí."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~Tenhle tip ti nějak připadá správný...  "1,123 mincí."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~Tenhle tip ti nějak připadá správný...  "1,123 mincí."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Hádej:"1,000 mincí."~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Hádej:"500 mincí."~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Hádej:"750 mincí."~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Hádej:"331 mincí."~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Hádej:"2,112 mincí."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"Tady máte, pane! Děkujeme, že si ukládáte zboží ve Sklepení Devátého Světa! Mohu pro vás udělat ještě něco?"~ */
  IF ~~ THEN REPLY #45984 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"Ne, díky. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"Omlouvám se, pane! Mohu pro tebe udělat ještě něco?"~ */
  IF ~~ THEN REPLY #45950 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"Ne, díky. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"Polštář? Opravdu by se mi hodil polštář... velký KAMENNÝ polštář! Tady je tvůj polštář, Mistře Hamrysi, a přeji hodně štěstí, až na něm budeš spát. Mohu pro tebe udělat ještě něco?"~ */
  IF ~~ THEN REPLY #45957 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"Ne, díky. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"Plány na hrobku? Nevypadáš mrtvě, sire, ne snad že by to byla moje starost, kdyby byl! Tady jsou tvé plány, pane! Mohu pro tebe udělat ještě něco?"~ */
  IF ~~ THEN REPLY #45965 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"Ne, díky. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"Ooh! Jedno z tajných hesel! Tady jsou papíry, po kterých toužíš, sire. Děkuji ti! Co ještě pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #45991 /* ~"Nic. Sbohem."~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"Ne, díky. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"To doufám, pane, ať už to znamená cokoli! Já jsem jenom velká blbá kamenná hlava. Tady jsou tvé papíry, pane! Děkuji ti. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #45994 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"Nic. Sbohem."~ */ GOTO 11
END
