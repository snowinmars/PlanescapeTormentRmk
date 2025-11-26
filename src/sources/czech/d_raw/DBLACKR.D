// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~Muž se pohybuje se strašidelnou rychlostí. Oči má zamlžené, ale šílenství, které z nich vykukuje ven, ti vráží do těla ledové dýky. "TY!" Jeho hlas je jako poryv ledového vichru. "Řekni své přesvědčení. Jsi pro dobro nebo pro zlo?"~ */
  IF ~~ THEN REPLY #3749 /* ~"Věřím v pomoc těm, kteří jsou na tom hůře než já. Volím dobro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"Idea dobra je pro slabé. Já volím zlo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"Ani jedno. Extrémy jsou nebezpečné."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"Kdo jsi?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~"Je zde muž jménem Prohnilý William. Je to temný a nečestný muž, vůdce Shivů z temné uličky. Najdi ho, zabij a posloužíš dobru. Zklam a zlo povstane. Odmítni a já tě zabiju."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"Dobře. Udělám to."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"To neudělám. Nevraždím lidi."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Uteč~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"Prohnilý Willy je mrtvý. Zabil jsem je oba, jeho i Krystall."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"Prohnilý Willy je mrtvý."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"Jsem Černá Růže. Jsem lovec, jsem hlad. Jsem metla. Teď. Prohlas svou věrnost."~ */
  IF ~~ THEN REPLY #3757 /* ~"Věřím v pomoc těm, kteří jsou na tom hůře než já. Volím dobro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"Idea dobra je pro slabé. Já volím zlo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"Ani jedno. Extrémy jsou nebezpečné."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"Očekávám tě. Jdi. Teď."~ */
  IF ~~ THEN REPLY #3760 /* ~"Nejdřív mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"Mizím."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"Neexistují odpovědi. Pouze činy. Jdi."
~ */
  IF ~~ THEN REPLY #3763 /* ~"Fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"Je tady žena jménem Krystall. Je to vůdkyně Ostrých Andělů. Chce 'osvětlit' tuhle uličku a změnit ji na zářící příklad toho, co dokáže dobro. Zabij ji a budeš odměněn. Zklam a budeš loven a štván, dokud nepadneš."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"Udělám to."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"To si nemyslím."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"Ona i Prohnilý Willy jsou mrtví."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"Už je mrtvá."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~Jeho oči zaplanuly, pak se uklidnily. "Neutrál. Spojenec. Znáš rovnováhu. Pomoz mi. Likviduji extrémy."~ */
  IF ~~ THEN REPLY #3768 /* ~"Co můžu udělat?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"Nemyslím si, že ti chci pomoct."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"Lovím Ostré Anděly a Shivy z temné uličky. Vyber si vůdce jednoho z těch skupin a znič ho."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"Vyberu si Ostré Anděly."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"Vyberu si Shivy z Temné Uličky."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"Prohnilý William, šéf Shivů z Temné Uličky je už mrtvý. Zabiju Krystall."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"Krystall, šéfka Ostrých Andělů je už mrtvá. Zabiju Prohnilého Williama."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"Oba už jsou mrtví."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"Nemyslím si, že bych měl zájem pomáhat ti."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~Jeho planoucí oči se přimhouřily a on zašeptal. "Pak jsi tedy můj nepřítel." Bleskovým pohybem útočí!~ */
  IF ~~ THEN REPLY #3776 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"Teď prokážeme naše filozofie. Zápas. Vítěz zápasu je pravý vítěz v našem boji za pravdu."~ */
  IF ~~ THEN REPLY #3778 /* ~"Udělám to, ale já nemůžu zemřít. Nakonec prohraješ."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"Ty jsi vážně šílenec, že jo?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~Jeho oči se rozšířily. "Jsi věčný. Tvá pravda je věčná. Vzdávám ti poctu. Sbohem." ~ */
  IF ~~ THEN REPLY #3781 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"Zabil jsi Prohnilého Williama?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"Ještě ne.. A ani to neplánuju."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"Ne. Pracuju na tom."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"Ano."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"Ano."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"Pracuj *rychleji*. A teď jdi. Budu tě očekávat."~ */
  IF ~~ THEN REPLY #3786 /* ~"Tak fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"Tvůj další úkol je zabít Krystall, vůdkyni Ostrých Andělů. Rovnováha vyžaduje její smrt."~ */
  IF ~~ THEN REPLY #3787 /* ~"To neudělám."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"Já se vrátím."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"Zabil jsi Krystall?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"Ještě ne.. A ani to neplánuju."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"Ne. Pracuju na tom."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"Ano."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"Ano."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"Tvůj další úkol je zabití Prohnilého Williama, vůdce Shivů. Rovnováha vyžaduje jeho smrt."~ */
  IF ~~ THEN REPLY #3794 /* ~"To neudělám."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"Já se vrátím."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
