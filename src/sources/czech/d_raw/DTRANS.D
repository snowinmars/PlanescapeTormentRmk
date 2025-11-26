// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~TAK JSI PŘIŠEL.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~NEJSI TU VÍTÁN, ZLOMENÝ. ~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"Co jsi provedl mým přátelům?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"Co jsi provedl mému příteli?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"Co jsi provedl mým společníkům?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"Co jsi provedl mému společníku?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"Znám tě, pokud jde o to, co jsi - ty jsi má smrtelnost. Tvá zbroj - zkroucená jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"Znám tě, pokud jde o to, co jsi - ty jsi má smrtelnost. Tvá zbroj - zkroucená jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"Kdo jsi?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~ZEMŘELI ZA TEBE, JAK ODPRADÁVNA MĚLI. TAKOVÝ JE CESTA VŠEHO SMRTELNÉHO.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~ZEMŘEL ZA TEBE, JAK ODPRADÁVNA MĚL. TAKOVÝ JE CESTA VŠEHO SMRTELNÉHO.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~ZEMŘELA ZA TEBE, JAK ODPRADÁVNA MĚLA. TAKOVÝ JE CESTA VŠEHO SMRTELNÉHO.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~TO JE OSUD VŠECH, KTEŘÍ TĚ NÁSLEDUJÍ, ZLOMENÝ. MNOHO SI ZAPOMNĚL. ~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"Proč jsi to udělal?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"Proč jsi to udělal?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"Proč jsi to udělal?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"Proč jsi to udělal?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~POKUSILI SE MI UBLÍŽIT. *TADY,* VŠUDE. BRÁNIL JSEM SE. A PŘITOM, SMRTELNOST SI JE VYŽÁDALA. JEJICH SMRT VZEŠLA Z JEJICH VLASTNÍCH RUKOU. ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~POKUSIL SE MI UBLÍŽIT. *TADY,* VŠUDE. BRÁNIL JSEM SE. A PŘITOM, SMRTELNOST SI HO VYŽÁDALA. JEHO SMRT VZEŠLA Z JEHO VLASTNÍCH RUKOU. ~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~POKUSILA SE MI UBLÍŽIT. *TADY,* VŠUDE. BRÁNIL JSEM SE. A PŘITOM, SMRTELNOST SI JI VYŽÁDALA. JEJÍ SMRT VZEŠLA Z JEJÍCH VLASTNÍCH RUKOU. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~POKUSILA SE MI UBLÍŽIT. *TADY,* VŠUDE. BRÁNIL JSEM SE. A PŘITOM, SMRTELNOST SI JI VYŽÁDALA. JEJÍ SMRT VZEŠLA Z JEJÍCH VLASTNÍCH RUKOU. ~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~DAL JSEM JIM PŘÍLEŽITOST TOTO MÍSTO OPUSTIT, ALE ONI SE ROZHODLI TI POMÁHAT. NAVZDORY CENĚ.~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"Takže si je *zabil*."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"Takže si je *zabil*."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"Takže si je *zabil*."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"Takže si je *zabil*."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~DAL JSEM MU PŘÍLEŽITOST TOTO MÍSTO OPUSTIT, ALE ON SE ROZHODL TI POMÁHAT. NAVZDORY CENĚ.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~DAL JSEM JÍ PŘÍLEŽITOST TOTO MÍSTO OPUSTIT, ALE ONA SE ROZHODLA TI POMÁHAT. NAVZDORY CENĚ.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~DAL JSEM JÍ PŘÍLEŽITOST TOTO MÍSTO OPUSTIT, ALE ONA SE ROZHODLA TI POMÁHAT. NAVZDORY CENĚ.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~BYLA OBZVLÁŠTĚ DIVOKÁ PŘI TVOJÍ OBRANĚ. JEJÍ CITY PRO TEBE ZAHOŘELI JASNĚJI NEŽ ELYSIJSKÉ OHNĚ. ~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~BYLA DOCELA SILNÁ. JEJÍ SCHOPNOST SNÁŠET BOLEST STÁLA ŽIVOT TŘI VELKÉ FIENDY.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~JEJICH SMRT MI NESKÝTALA ŽÁDNÉ POTĚŠENÍ~ */
  IF ~~ THEN REPLY #64051 /* ~"A tak, proč jsi to *udělal*?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~TO ZLODĚJSKÉ DĚVČE BYLO DOCELA SILNÉ. JEJÍ SCHOPNOST SNÁŠET BOLEST STÁLA ŽIVOT TŘI VELKÉ FIENDY. ~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~TO ZLODĚJSKÉ DĚVČE BYLO DOCELA SILNÉ. JEJÍ SCHOPNOST SNÁŠET BOLEST STÁLA ŽIVOT TŘI VELKÉ FIENDY. ~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~A TA TANAR'RI... BYLA OPRAVDU SILNÁ. JEJÍ SCHOPNOST SNÁŠET BOLEST STÁLA ŽIVOT SAMOTNÉHO BAATEZU.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~A TA TANAR'RI... BYLA OPRAVDU SILNÁ. JEJÍ SCHOPNOST SNÁŠET BOLEST STÁLA ŽIVOT SAMOTNÉHO BAATEZU.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~JEJICH SMRT MI NESKÝTALA ŽÁDNÉ POTĚŠENÍ~ */
  IF ~~ THEN REPLY #64049 /* ~"A tak, proč jsi to *udělal*?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~JEJICH SMRT MI NESKÝTALA ŽÁDNÉ POTĚŠENÍ~ */
  IF ~~ THEN REPLY #64050 /* ~"A tak, proč jsi to *udělal*?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~NEBYLA TO MÁ VŮLE. JÁ NEBYL TEN, KDO JE SEM PŘIVEDL.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~NEBYLA TO MÁ VŮLE. JÁ NEBYL TEN, KDO JE SEM PŘIVEDL.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~NEBYLA TO MÁ VŮLE. JÁ NEBYL TEN, KDO JE SEM PŘIVEDL.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~VŠICHNI MĚLI PRÁVO NA VÝBĚR. A ZVOLILI SI ZEMŘÍT ZA TEBE.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~MĚL PRÁVO NA VÝBĚR. A ZVOLIL SI ZEMŘÍT ZA TEBE.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~MĚLA PRÁVO NA VÝBĚR. A ZVOLILA SI ZEMŘÍT ZA TEBE.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~TO BYLA VŽDY CESTA VŠECH, KTEŘÍ TĚ NÁSLEDUJÍ. PRO SEBE JSOU UTRÁPENÝMI DUŠEMI HLEDAJÍCÍMI OSVOBOZENÍ. ALE PROČ, NEVĚDÍ.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~ZAPOMNĚL JSI TO. A MĚL BYS ZNOVU.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"Znám tě, pokud jde o to, co jsi - ty jsi má smrtelnost. Tvá zbroj - zkroucená jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"Znám tě, pokud jde o to, co jsi - ty jsi má smrtelnost. Tvá zbroj - zkroucená jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"Kdo jsi?! Proč jsi to udělal?!"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~MOHL BYS PROJÍT VŠEMI TĚMI CESTAMI A NEVĚDĚT CO LEŽÍ NA KONCI? ~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"Ne, vím co jsi - ty jsi má smrtelnost. Tvá zbroj - skroucena jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"Ne, vím co jsi - ty jsi má smrtelnost. Tvá zbroj - skroucena jako větve stromů. Takové věci vypovídají o Ravelině magii."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"Co tím myslíš?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~JSEM TEN, KDO KRÁČÍ S VEŠKERÝM ŽIVOTEM. MŮJ HLAS JE SMRTELNÝ RACHOT, POSLEDNÍ VÝDECH HRDLA, ŠEPOT UMÍRAJÍCÍHO MUŽE.~ */
  IF ~~ THEN REPLY #64065 /* ~"Ty... jsi má smrtelnost."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~ANO. JÁ JSEM TEN, KDO TĚ ROZDĚLIL SILOU ČARODĚJNICE. OSVOBODIL TĚ ZE ZAJETÍ TVÉHO MASA.~ */
  IF ~~ THEN REPLY #64066 /* ~"Osvobodil ode mne?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~ANO. JÁ JSEM TEN, KDO TĚ ROZDĚLIL SILOU ČARODĚJNICE. ~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~JSEM TEN, KDO KRÁČÍ S VEŠKERÝM ŽIVOTEM. MŮJ HLAS JE SMRTELNÝ RACHOT, POSLEDNÍ VÝDECH HRDLA, ŠEPOT UMÍRAJÍCÍHO MUŽE.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~BYL JSEM OSVOBOZEN ZE ZAJETÍ TVÉHO MASA.~ */
  IF ~~ THEN REPLY #64068 /* ~"Osvobodil ode mne?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~V TU CHVÍLI, KDY JSEM SE ODDĚLIL OD TVÉ NEMOCNÉ SCHRÁNKY, POZNAL JSEM ŽIVOT. POZNAL JSEM SVOBODU. NEMOHU SE TI VZDÁT.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"Neměli jsme se od sebe oddělovat. A Sféry kvůli našemu rozdělení trpěli."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"Pro mne a mé předchozí inkarnace jsi se ukázal jako problémový, duchu. Neměli jsme se od sebe oddělovat."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~NEVÍŠ *NIC* O SMYSLU ROZDĚLENÍ. DŘÍV NEŽ TVÁ PAMĚŤ OPĚT ZEMŘE, VĚZ, ŽE JSME NIKDY NECHTĚLI BÝT JAKO *JEDEN.* ~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~TOTO BUDE NAPOSLEDY CO JÁ A TY MLUVÍME, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #64074 /* ~"Pak je tu něco, co bych chtěl vědět, duchu - cestoval jsem daleko a je mnoho otázek, na které mi můžeš odpovědět."~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"Nespojím se s tebou. Připrav se, duchu. Uvidíme, zda-li může má smrtelnost zemřít." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~VYHOVÍM TI JEŠTĚ JEDNOU NAPOSLED. PAK BUDE TAHLE PEVNOST ZNOVU TICHÁ.~ */
  IF ~~ THEN REPLY #65848 /* ~"Pak jsou mé otázky tyto..."~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"Nevzdám se ti. Připrav se, duchu. Uvidíme, jestli může moje smrtelnost chcípnout."~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(This is a placeholder.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~MYSLÍŠ SI, ŽE SE *BOJÍM*  POSTAVIT SE TI, ZLOMENÝ? NE, NENÍ TOMU TAK.~ */
  IF ~~ THEN REPLY #65852 /* ~"Tak proto na mě posíláš stíny, místo aby ses mi postavil sám? Nikdy neuspěli, nepodařilo se jim zabít mě. A ani se jim to *nepovede*."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"Železný golem vykovaný z válečných zbraní mi řekl toto: Když někdo zabíjí z dálky a neukáže se, mluví to o slabosti. To je způsob, jakým bojují *zbabělci*."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"Tak proto na mě posíláš stíny, místo aby ses mi postavil sám? Nikdy neuspěli, nepodařilo se jim zabít mě... ale o to ani *nešlo*, že ano? Zabíjeli mě jenom proto, abych zapomněl."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"Jestli se mě ještě nebojíš, tak se budeš muset ještě jednu věc naučit. Ale prozatím je tady ještě pár věcí, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~ZASÍLÁM STÍNY, PROTOŽE MAJÍ DLOUHÝ DOSAH. ALE JSOU TO *MÉ* OČI, JEŽ JE VEDOU.~ */
  IF ~~ THEN REPLY #65857 /* ~"Takže stíny dokáží cestovat na vzdálenosti, kam se ty nedostaneš."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"Dobrá tedy. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~NENÍ *NIC*, CO BYCH NEDOKÁZAL.~ */
  IF ~~ THEN REPLY #65860 /* ~"Nikdy jsi nevyšel z těchto zdí, abys se mnou bojoval... jenom jsi posílal stíny. Takhle bojují *zbabělci*."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"Uvidíme. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~MÁ ENERGIE JE NUTNÁ K UDRŽENÍ TOHOTO MÍSTA, ZLOMENÝ, JINAK BY TO BYLA *MÁ* RUKA NA TVÉM HRDLE U KAŽDÉ TVÉ SMRTI. NEMOHU ODTUD ODEJÍT NA DELŠÍ DOBU.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"Nevěřím ti. Myslím si, že se *bojíš* utkat se se mnou... nebo mi lžeš a je tady další důvod, proč tu musíš zůstat..."~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"Nevěřím ti. Myslím si, že se *bojíš* utkat se se mnou... nebo mi lžeš a je tady další důvod, proč tu musíš zůstat..."~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"Nevěřím ti. Myslím si, že se *bojíš* utkat se se mnou... nebo mi lžeš a je tady další důvod, proč tu musíš zůstat..."~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"Ale i když už jsem byl za zdmi Pevnosti, poslal jsi Vhailora, aby se mě pokusil zastavit, když jsi mě klidně mohl zastavit sám."~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"Ale i když už jsem byl za zdmi Pevnosti, poslal jsi na mě to prázdné brnění,aby se mě pokusilo zastavit, když jsi mě klidně mohl zastavit sám."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"Ale i když už jsem byl za zdmi Pevnosti, poslal jsi Ignuse, aby se mě pokusil zastavit, když jsi mě klidně mohl zastavit sám."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"Ale i když už jsem byl za zdmi Pevnosti, poslal jsi za mnou toho šíleného hořící kouzelníka, aby se mě pokusil zastavit, když jsi mě klidně mohl zastavit sám."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"Pak ten krystal, který jsi postavil, abys mě mohl rozdělit a uvěznit - nechtěl jsi mě zabít, jenom mě uvěznit."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~POUŽITÍ DUCHA NEMILOSRDNÉHO BYLO... POHODLNÉ. MNOHO JE NESPRAVEDLNOSTÍ, JEŽ JSI NAPÁCHAL A MNOHO JE JIZEV, KTERÉ TVÉ ČINY ZANECHALY NA SFÉRÁCH. DAL JSEM DUCHOVI VE ZBROJI ŠANCI *NAPRAVIT* JE.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"Co jsi mu řekl, že se proti mě obrátil? Byl to můj spojenec a následoval mě -"~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"Pak jsi přichystal ten krystal, abys mě chytil a *to* selhalo."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~ŘEKL JSEM MU O TVÝCH *ZLOČINECH*. ŘEKL JSEM MU, ŽE JINÍ UMÍRAJÍ MÍSTO TEBE, ABYS TY MOHL ŽÍT. TO MU DODALO SÍLU.~ */
  IF ~~ THEN REPLY #65875 /* ~"Ale to je i TVŮJ zločin. Od té doby, co jsme od sebe odděleni, jiní umírají místo nás. Takže Vhailor měl zkusit zabít *tebe*."~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"Pak jsi přichystal ten krystal, abys mě chytil a *to* selhalo."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~*JÁ* JSEM NESPÁCHAL ŽÁDNÝ ZLOČIN.~ */
  IF ~~ THEN REPLY #65878 /* ~"To *ty* mě pořád zabíjíš, *ty* jsi ten, který způsobil tolik smrtí, že jsou místnosti této Pevnosti PLNÉ stínů, a pak se OPOVAŽUJEŠ říct, že ty jsi žádný zločin nespáchal? Máš štěstí, že je Vhailor mrtvý, jinak by zaťal svou sekeru do *tebe.*"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~TY MI NEŘÍKEJ NIC O SPRAVEDLNOSTI. BRZY TĚ BUDOU SOUDIT SFÉRY A BUDE TO KONEC ZÁLEŽITOSTÍ MEZI NÁMI, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #65880 /* ~"Ale i když Vhailor selhal, *nepostavil* ses mi, i když tvrdíš, že bys mohl. Použil jsi ten krystal a zkusil jsi mě uvěznit."~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~POUŽITÍ KOUZELNÍKA BYLO... POHODLNÉ. JEHO ZUŘIVOST A NENÁVIST K TOBĚ SAHÁ VELMI HLUBOKO. MYSLEL JSEM, ŽE BUDE VHODNÉ, KDYŽ MU UMOŽNÍM *POMSTU*. POKUD TĚ SFÉRY NEDOKÁŽÍ NAUČIT SOUCITU, MOŽNÁ TO DOKÁŽE *BOLEST*.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"Chtěl se pomstít? Za co? Protože jsem ho učil cestu Umění a nechal ho trpět?"~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"Chtěl se pomstít? Za co?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~ANO. MYSLEL JSEM, ŽE TAK JAKO BOLEST UČILA JEHO, MOHLA BY UČIT I TEBE. ALE KOUZELNÍK BYL SLABŠÍ, NEŽ JSEM OČEKÁVAL A TY JSI TEĎ ZDE. ALE BRZY UŽ BUDE MEZI NÁMI ÚPLNÝ KONEC, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #65885 /* ~"Ale i když Ignus selhal, *nepostavil* ses mi, i když tvrdíš, že bys mohl. Použil jsi ten krystal a zkusil jsi mě uvěznit."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~NA TOM NEZÁLEŽÍ. *ZAPOMNĚL* JSI TAKOVÉ VĚCI. A ZNOVU ZAPOMENEŠ.~ */
  IF ~~ THEN REPLY #65887 /* ~"Takže jsi ho za mnou poslal, aby mě zkusil zastavit. Ale i když selhal, *nepostavil* ses mi, i když tvrdíš, že bys mohl. Použil jsi ten krystal a zkusil jsi mě uvěznit."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~ANO, KRYSTAL JE VĚZENÍ, MOŽNÁ NEJLEPŠÍ, JAKÉ BYLO KDY VYMYŠLENO. ~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~POUŽIL JSEM HO, PROTOŽE MĚ UŽ NEBAVÍ STOPOVAT TĚ VE SFÉRÁCH, BEZEJMENNÝ. JE ...*SLOŽITÉ* HLEDAT TĚ. DÁM PŘEDNOST MÍT TĚ NABLÍZKU, KDE TĚ MŮŽU SLEDOVAT. KRYSTAL JE TAKOVÉ MÍSTO, KDE BYS MĚL BÝT ULOŽENÝ.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~ZJISTÍM *JAK* JSI UNIKL Z KRYSTALU.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"Proč je mě tak složité najít?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"Měl jsem pomoct. Žena, kterou jsem tu před dávnou dobou přivedl, Deionarra, ta mě uvolnila."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"To je moje věc. Věz, že mě to vězení nedokáže zadržet - stejně jako mě nedokážeš teď zastavit ani ty."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~TO NENÍ DŮLEŽITÉ.~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"Tak proč mi to neřekneš? Stejně to zase zapomenu a teď bych to rád věděl."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"Nestane se nic, když mi to řekneš."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~STEJNĚ JAKO JE MOC VE JMÉNĚ, JE MOC V TOM, *NEMÍT* JMÉNO. OČI SFÉR PO NĚKOM TAKOVÉM SKLOUZNOU. NĚKOM, JAKO JSI TY --- A JAKO JSEM JÁ.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~AH... LÁSKOU TRHANÝ DUCH. NĚKOLIKRÁT JSEM CÍTIL JEJÍ OZVĚNU V HALÁCH TÉTO PEVNOSTI. ONA UŽ TĚ ZNOVU *NEUVOLNÍ*.~ */
  IF ~~ THEN REPLY #65899 /* ~"Nebude *muset*. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~TAKOVÁ AROGANCE. DNES TVOU AROGANCI OTESTUJEME, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #65901 /* ~"Uvidíme. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~NEVÍŠ *NIC*.~ */
  IF ~~ THEN REPLY #65903 /* ~"Proč je pro tebe tak důležité udržování tohohle místa? Pokud jsi opravdu tak mocný, jak o sobě tvrdíš, proč zůstávat tady? Není tady NIC."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~JE TO MÁ PEVNOST. JE TO MŮJ DOMOV.~ */
  IF ~~ THEN REPLY #65905 /* ~"A jaký domov. Postavený z lítosti, haly zaplněné jenom stíny těch, které jsme zavraždili, zapomenuté relikvie chřadnoucí pod vrstvou prachu a život vysávající energie z Negativně Materiální Sféry. Existuje jedno slovo, který takové místo přesně popisuje. Je to slovo *vězení*."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~KAŽDÉ TVÉ SLOVO PROZRAZUJE TVOU IGNORANCI, ZLOMENÝ. PEVNOST JE *TICHÁ*. VŠE, CO SEM PŘICHÁZÍ, *ZEMŘE* DŘÍV NEŽ NARUŠÍ MŮJ KLID. A STINÝ JSOU TICHÁ STVOŘENÍ.~ */
  IF ~~ THEN REPLY #65907 /* ~"Myslím si, že tady *musíš* zůstat, se stíny a duchy, protože to je to, čím jsi se stal. Nemyslím si, že udržuješ tohle místo. Naopak. Myslím si, že tohle místo udržuje *tebe*."~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~ZŮSTÁVÁM ZDE, PROTOŽE JSEM SE TAK *ROZHODL*.~ */
  IF ~~ THEN REPLY #65909 /* ~"*Vážně?* Takže když jsi řekl, že nemůžeš z této Pevnosti odejít na delší dobu, lhal jsi? A jak je možné, že Pevnost vystavěná z MÉ lítosti potřebuje ke svému udržení TEBE?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"Uvidíme. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~ZA SVOU NESTOUDNOST ZAHYNEŠ *TISÍCEM* SMRTÍ, ZLOMENÝ. V TĚCHTO HALÁCH JSI VETŘELEC A JÁ DOHLÉDNU NA TO, ABY SES UŽ *NIKDY* NEVRÁTIL.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"Uvažuj nad tímhle: tvrdíš, že jsme spojeni. Takže když já trpím, musíš trpět i ty. Možná jsi tady uvězněný *kvůli* tomu, že trpíš, ale jinak, než já."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"Uvidíme. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"Už mě nebaví tvé hloupé výhružky. Připrav se, duchu. Uvidíme, jak umírá moje smrtelnost."~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~O JAKÉ HLOUPOSTI TO MLUVÍŠ?~ */
  IF ~~ THEN REPLY #65916 /* ~"Je možné, že tak jako já při každé své smrti umírám smrtí ducha, ty umíráš smrtí těla? Tak jako já ztrácím ducha, ty ztrácíš podstatu, hmotu. Proto je pro tebe těžší a těžší opustit Pevnost a cestovat mimo tuto sféru. Tahle pevnost není jenom tvoje vězení. Bude to také tvá hrobka."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"Uvidíme. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~NEMOŽNÉ.~ */
  IF ~~ THEN REPLY #65919 /* ~"Tak? Říkal jsi, že jsme propojeni. Určitě jsi cítil, jak tvé tělo poslední století chřadne - dokonce na sobě nosíš Ravelino větvení a to si ji *hnusíš*. Ale potřebuješ tu konstrukci na své spektrální formě, aby zpomalila tvůj rozpad."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"Uvidíme. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~I KDYBY V TVÝCH SLOVECH BYLA PRAVDA, NENÍ NIC, CO BY MOHLO BÝT VYKONÁNO. RADĚJI ZEMŘU SMRTÍ TĚLA V TÉTO PEVNOSTI, NEŽ ABYCH ZNOVU TRPĚL SPOLEČNOU EXISTENCÍ S TEBOU.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"Ale proč si vybrat pomalé, vtíravé zapomnění, když máme další řešení? Pokud bychom se znovu spojili, oba bychom přestali trpět, znovu bychom byli úplní."~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"Ale proč pomalu umírat, když se můžeme stát jedním? Alespoň se přestaneme navzájem mučit."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"Dobrá tedy. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~TVÁ SLOVA JSOU PRO MĚ *JED*. UŽ SI NEPŘEJI BÝT ČÁSTÍ TEBE A SDÍLET TVOU *BÍDNOU* EXISTENCI. PODÍVEJ SE NA SEBE. TVÁ SCHRÁNKA JE POLÁMANÁ A ZJIZVENÁ. RADĚJI ZEMŘU VOLNÝ, NEŽ BÝT ZNOVU UZAVŘENÝ V TVÉ ODPORNÉ SCHRÁNCE.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"A podívej se na *sebe*. Přeludová příšera, která se předvádí a naparuje, ale její život a moc jsou jenom zlomky toho, co dřív život byl. Chceš, aby si tě Sféry takhle zapamatovaly, až přejdeš do nicoty?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"Dobrá tedy. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~NECHCI VYMĚNIT JEDNO ZAPOMĚNÍ ZA JINÉ. A NECHCI OBÝVAT TVOU BÍDNOU SCHRÁNKU, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #65929 /* ~"*Nemusí* to být zapomnění. Kdo ví, co se stane, až se zase staneme jedním? Možná že ty budeš sám sebou a já budu ten, kdo zemře. Nebo se my oba možná staneme něčím větším, než jenom částmi."~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"Dobrá tedy. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~NEVÍŠ, O ČEM MLUVÍŠ. KDYBYCHOM SE ZNOVU SPOJILI, NASTANE KONEC. NEBUDE PRO NÁS ŽÁDNÁ *BUDOUCNOST*. BUDEME DÁL TRPĚT. JÁ TO VÍM.~ */
  IF ~~ THEN REPLY #65932 /* ~"Tak se těm mukám tedy postavíme společně, jako jedna bytost. A porazíme je."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~VĚZ, ŽE KDYŽ SE STANEME JEDNÍM, BUDEME TRPĚT. JE V NÁS *PŘÍLIŠ* POVAHY PRVNÍHO Z NÁS, ABYCHOM BYLI SPASENI. BUDEME PROKLETI.~ */
  IF ~~ THEN REPLY #65934 /* ~"Tak budeme s prokletím bojovat a pak budeme znovu volní."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~VĚZ, ŽE JSEM TĚ VŽDY *NENÁVIDĚL*, ZLOMENÝ. KDYŽ BUDEME JEDNÍM, BUDU TĚ DÁL *NENÁVIDĚT*. AŽ TVÁ CHRÁNKA NAKONEC ZEMŘE, VĚZ, ŽE TVÁ SMRT PRO MĚ BUDE *POTĚŠENÍM*.~ */
  IF ~~ THEN REPLY #65936 /* ~"S tím dokážu žít -  a stejně tak sféry. Pokud budeme zavržení, budeš mít potěchu z mého utrpění. Ale je pro tebe lepší přidat se ke mně a nenávidět mě, než pomalu umírat, rozpadat se s vědomím, že nás nečeká nic jiného, než nekonečná nicota."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~VĚZ, ŽE MÁ NENÁVIST PRO TEBE *ZNIČÍ* SFÉRY. PŘIPRAV SE. ZNOVU STANEME JAKO JEDEN - AŽ DO POSLEDNÍHO OKAMŽIKU TVÉHO ŽIVOTA.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"Než to uděláme, co s mými přáteli? Je možné zachránit je?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"Než to uděláme, co s mými společníky? Chci, aby se jejich životy znovu staly jejich vlastními."~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"Než se staneme jedním, chci abys vrátil život mým přátelům --"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"Než to uděláme, chci, abys oživil mé společníky."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"Dobrá tedy. Jsem připraven stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~JÁ JSEM SAMOTNÁ SMRTELNOST. POVAHA ŽIVOTA A SMRTI JE NĚCO, CO ZNÁM... DOBŘE. AŽ BUDEME JEDNÍM, MÉ ZNALOSTI BUDOU TVÉ. ~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"Dobrá tedy. Jsem připraven stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"Dobrá tedy. Jsem připravený stát se znovu smrtelníkem."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~V TVÉ MYSLI NENÍ NIC, CO JE DŮLEŽITÉ, ZLOMENÝ.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"Kromě jedné věci - teď vím, kde jsi a co jsi a můžu to říct ostatním, nebo tě sám znovu vyhledat. Jednou si možná zapamatuju, jak se k tobě dostanu a budeš se mi muset znovu postavit. Proto chceš, abych zapomněl, že je to tak?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"Kromě tohohle - podle toho, co mi řekl Pilíř Lebek byli tři, kteří věděli, kde tě najít a jak se k tobě dostat. Jedním z nich je Trias, druhý jsi ty a poslední jsem já. Pokud zabiješ Triase a mě, nebude už nikdo vědět, kdo jsi a kde tě najít."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"Kromě tohohle - podle toho, co mi řekl Pilíř Lebek byli tři, kteří věděli, kde tě najít a jak se k tobě dostat. Jedním z nich je Trias, ale ten je mrtvý. Druhý jsi ty a poslední jsem já. Pokud zapomenu, už nebude nikdo vědět, kdo jsi a kde tě najít."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"Dobrá tedy. Jsou ještě další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~ANO, ANDĚL, KTERÝ SE ZAŠTIŤUJE ZLATOU LŽÍ. KONEČNĚ JSI MĚ K NĚMU PŘIVEDL. STEJNĚ JAKO PO TOBĚ I PO ZRÁDCI SE TĚŽKOPÁTRÁ. ZEMŘE KONEČNOU SMRTÍ.~ */
  IF ~~ THEN REPLY #65949 /* ~"Takže ty jsi mě použil, abys ho našel? Chtěl jsi, abych ho zabil, že, aby s ním zemřela i jeho znalost. Pak jsi zkoušel zabít *mě*, abych zapomněl, jak tě najít."~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~VIDÍM, ŽE OSTŘÍ ČASU Z TVÉ MYSLI NEVYRVALO JEŠTĚ VŠECHEN ROZUM. TO BYL VŽDY MŮJ CÍL. ABYS ZAPOMNĚL.~ */
  IF ~~ THEN REPLY #65951 /* ~"Ale *proč?* Proč-"~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~PROTOŽE UŽ NIKDY NECHCI TRPĚT TVOU *PŘÍTOMNOSTÍ*, ZLOMENÝ. JSI OTRAVNÝ, PŘIPOMÍNÁŠ MI, CO DŘÍVE ŽIVOT BYL A JÁ TAKOVÉ PŘIPOMÍNKY NENÁVIDÍM. CHCI BÝT V KLIDU VE SVÉ PEVNOSTI, NIKÝM NEVYRUŠOVÁN. ~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~TAK JAKO JSI ZAPOMNĚL TY NA MNĚ, CHCI ZAPOMENOUT JÁ NA TEBE. NAVŽDY.~ */
  IF ~~ THEN REPLY #65955 /* ~"To je pro mě přijatelné. Ale věz, že už nebudu trpět tvé útoky. Budeš si stíny držet tady a necháš mě žít MŮJ život a já tě nechám žít TVŮJ."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"Nemyslím si, že je to ten důvod. Myslím si, že chceš zapomenout, protože se mně BOJÍŠ."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"Ale já už nezapomínám, když zemřu. Možná dříve, ale teď už ne."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"Dobrá tedy. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~LŽEŠ. VŽDY JSI ZAPOMÍNAL. A JÁ JSEM SI VŽDY PAMATOVAL. TAK TO BYLO VŽDY.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"Vždy' neznamená to, co dříve. Už jsem jednou zemřel a mé vzpomínky se mi vrátily, bez porušení."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"Vždy' neznamená to, co dříve. Už jsem zemřel, několikrát za sebou a ani jednou jsem nic nezapomněl."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~TVÉ LŽI TĚ TADY *NEZAŠTÍTÍ*, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #65962 /* ~"Je to pravda. Když mě zabiješ, nezastavíš mě - protože já už nezapomínám, když zemřu. Budu si tě pamatovat navždy, zapamatuju si vše, co jsi udělal a jak se sem dostat a stejně tak si i zapamatuju, jak tě zničit."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~TAK TĚ UVĚZNÍM, BEZEJMENNÝ. POKUD NEZAPOMENEŠ, TAK TI NEDOPŘEJU VOLNOST.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"Ale já už uprchl z toho  'nejlepšího vězení, jaké kdy bylo postaveno.' Nemůžeš mě zabít, nemůžeš mě držet a nemůžeš mě donutit, abych na sebe zapomněl."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"Ale já už jednou utekl z toho krystalického vězení, kam jsi mě hodil.  Nemůžeš mě zabít, nemůžeš mě držet a nemůžeš mě donutit, abych na sebe zapomněl."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~ANO... ALE TO NEBYLO TVÉ ČINĚNÍ. LÁSKOU TRHANÝ DUCH TĚ OSVOBODIL. UŽ TO ZNOVU NEUDĚLÁ. JAKMILE Z TVÉHO TĚLA VYMAČKÁM KOSTI, VEZMU SI TVOU SKOŘÁPKU A ZAPEČETÍM JI V KRYSTALU. UŽ NIKDY NEBUDEŠ KRÁČET SFÉRAMI.~ */
  IF ~~ THEN REPLY #65967 /* ~"Uvidíme. Jsou další věci, které chci vědět..."~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"Můžeš to zkusit. Připrav se, duchu. Uvidíme, jestli může smrtelnost zemřít."~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~TAK TEBOU NAKRMÍM STÍNY. PORAZÍM TĚ NA TOMTO MÍSTĚ A PAK TĚ VRHNU DO GALÉRIE STÍNŮ, KDE TĚ BUDOU MOCI POHLTIT. BUDOU TĚ ZABÍJET, PO MNOHO VĚČNOSTÍ. UŽ *NIKDY* NEBUDEŠ KRÁČET SFÉRAMI.~ */
  IF ~~ THEN REPLY #65970 /* ~"Uvidíme. Jsou další věci, které chci vědět..."~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"Můžeš to zkusit. Připrav se, duchu. Uvidíme, jestli může smrtelnost zemřít."~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~*NEMÁŠ* NA VÝBĚR, ZLOMENÝ. KDYŽ ODSUD ODEJDEŠ, ZAPOMENEŠ VŠE, CO SE UDÁLO. NEPŘEJI SI JIŽ, ABYS VĚDĚL, JAK MĚ NALÉZT. ZEMŘEŠ SMRTÍ MYSLI, ZNOVU A ZNOVU, PROTOŽE TAKOVÁ JE MÁ VŮLE.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"Ale já už nezapomínám, když zemřu. Možná dříve, ale teď už ne."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"Uvidíme. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~NA TOM NEZÁLEŽÍ. NEMŮŽEŠ ZEMŘÍT. TVÁ MYSL MŮŽE BÝT ZTRACENA, ALE MASO BUDE ŽÍT DÁL.~ */
  IF ~~ THEN REPLY #65976 /* ~"Mysl může být ztracena? Co tím myslíš?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~CÍTIL JSEM, JAK TVŮJ DUCH UPADÁ. ALE TY ŽIJEŠ DÁL. TO JE VŠE, CO JE TŘEBA.~ */
  IF ~~ THEN REPLY #65978 /* ~"'Co je třeba?' Proč?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~NA TOM NEZÁLEŽÍ. NEMŮŽEŠ ZEMŘÍT. TVÁ MYSL MŮŽE BÝT ZTRACENA, ALE MASO BUDE ŽÍT DÁL.~ */
  IF ~~ THEN REPLY #65980 /* ~"'Co je třeba?' Proč?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~SDÍLÍME SPOJENÍ, TY A JÁ, I KDYŽ SLABÉ. NEPŘEJI SI, ABYS BYL ZNIČEN, POUZE ABYS BYL DALEKO ODE MNĚ.~ */
  IF ~~ THEN REPLY #65982 /* ~"Tak proč ses mě celou tu dobu pokoušel *zabít*?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"Pokud jsme spojeni, znamená to, že když trpím já, musíš trpět i ty."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"Tak proto jsi mě nechtěl mrtvého, protože kdybych zemřel, to spojení by se přetrhlo.."~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~NA TOM NEZÁLEŽÍ.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"Počkej... ty stíny, které jsi proti mně poslal - nikdy se jim nepodařilo zabít mně... ale o to vůbec *nešlo*, že? Zabíjely mě jenom proto, abych zapomněl."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"Počkej... ty stíny, které jsi proti mně poslal - nikdy se jim nepodařilo zabít mně... ale o to vůbec *nešlo*, že? Zabíjely mě jenom proto, abych zapomněl."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"Počkej... ty stíny, které jsi proti mně poslal - nikdy se jim nepodařilo zabít mně... ale o to vůbec *nešlo*, že? Zabíjely mě jenom proto, abych zapomněl."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"Tak? Možná jsi mě nechtěl zabít, protože to by se potom to spojení mezi námi přetrhlo... a byl bys zničen i ty."~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~SLABÍ TRPÍ. JÁ *VYDRŽÍM*.~ */
  IF ~~ THEN REPLY #65991 /* ~"Takže kdybych zemřel, to spojení by bylo přetrženo..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~NEMŮŽEŠ ZEMŘÍT. ~ */
  IF ~~ THEN REPLY #65993 /* ~"No, když nemůžu zemřít, nemůžeš existovat. Jsi má *smrtelnost*."~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~MOŽNÁ DŘÍVE. TEĎ UŽ NE. ZMĚNIL JSEM SE. POVÝŠIL JSEM, TRANSCENDOVAL A STAL JSEM SE NĚČÍM VYŠŠÍM.~ */
  IF ~~ THEN REPLY #65995 /* ~"Možná - ale ve svém jádru jsi *stále* má smrtelnost. Pokud zemřu, zemřeš také."~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"Takže uznáváš, že stvoření *může* změnit svou povahu?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"Ale nic nemůže změnit povahu člověka. Tak jsi to sám řekl."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"Dobrá tedy. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~NEVÍŠ, CO ŘÍKÁŠ. TVÁ SLOVA JSOU PRÁZDNÁ - STEJNĚ JAKO TVÁ SKOŘÁPKA.~ */
  IF ~~ THEN REPLY #66000 /* ~"Myslím, že přesně vím, co říkám. Jestli budu zničen já, zničí to i tebe."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"Uvidíme. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~POSLOUCHÁŠ, ALE *NESLYŠÍŠ*. VĚZ, ŽE NEMŮŽEŠ ZEMŘÍT.~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"Vlastně můžu - teď. Železný golem mi ukoval zbraň, která může zabít i mně. Vše, co bylo třeba, bylo přinést ji na místo, které je odříznuté od zbytku Sfér, takže by má smrtelnost nemohla využít cizího života. A tak jsem tady."~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"Možná ne. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~*LŽEŠ*.~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Zvedni dýku: "Tak? Podívej se na tu zbraň - podívej se na její povahu. Jestli jsi tak vševědoucí a tak mocný, jak TVRDÍŠ, pak zjistíš, že tato zbraň má moc zničit i mne."~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Zvedni dýku: "Tak? Podívej se na tu zbraň - podívej se na její povahu. Jestli jsi tak vševědoucí a tak mocný, jak TVRDÍŠ, pak zjistíš, že tato zbraň má moc zničit i mne. A jelikož sdílíme spojení, je to zbraň, která může zničit i TEBE."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~Jak vyslovuješ ta slova a držíš při tom zbraň, cítíš, jak se ti v dlani mění, stává se něčím jiným. Něčím tak smrtonosným, že NIC podobného Sféry ještě neviděly.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~TOHO BY SES NEOPOVÁŽIL.~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"Ty *víš* že ano. Po všem tom utrpení, kterým jsem si kvůli tobě prošel, to do tebe zabodnu s největší radostí."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"Použiju zbraň na sobě, pokud se mi nevzdáš. Ty i já pak budeme zničeni."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Použij na sobě zbraň.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~POKUD ZEMŘU, *TY* TAKÉ ZEMŘEŠ. NAŠE SPOJENÍ BUDE PŘETRŽENO. ZEMŘEŠ KONEČNOU SMRTÍ.~ */
  IF ~~ THEN REPLY #66015 /* ~"Tak jak to vidím já, mám na výběr dvě věci - buď zemřeme oba nebo tě nechám, abys mě zabíjel znovu a znovu, pořád dokola, až ztratím ze své mysli kousek po kousku úplně vše. Dám přednost rychlé smrti - POKUD nemáš TŘETÍ řešení."~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Použij na sobě zbraň.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~BYLO BY TO GESTO HODNÉ JENOM HLUPÁKA. TVÁ SMRT BY NEMĚLA SMYSL.~ */
  IF ~~ THEN REPLY #66017 /* ~"Tak jak to vidím já, mám na výběr dvě věci - buď zemřeme oba nebo tě nechám, abys mě zabíjel znovu a znovu, pořád dokola, až ztratím ze své mysli kousek po kousku úplně vše. Dám přednost rychlé smrti - POKUD nemáš TŘETÍ řešení."~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Použij na sobě zbraň.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~TATO ZÁLEŽITOST NEMÁ ŘEŠENÍ. ODEVZDEJ ZBRAŇ A PAK SE MI VZDEJ. OPUSTÍŠ TUTO PEVNOST A OPUSTÍŠ JI BEZ SVÉ PAMĚTI. NENÍ ŽÁDNÉ *DALŠÍ* ŘEŠENÍ.~ */
  IF ~~ THEN REPLY #66020 /* ~"Je tady jedno. Spoj se se mnou. Znovu se staneme jedním, tak jak to bylo a jak to mělo zůstat."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~NEVÍŠ, CO DĚLÁŠ. POKUD BUDEME ZNOVU SPOJENI, BUDE TO KONEC. UŽ NEBUDEME MÍT *BUDOUCNOST*. BUDEME POUZE DÁL TRPĚT.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"Bude lepší, když se stane tohle, než aby kvůli nám mnohovesmír dál trpěl."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"Jsem ochotný riskovat to. Už mě unavuje bojovat s tebou, po celých sférách a celou tu dlouhou dobu. Je konec."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~POKUD SE STANEME JEDNÍM, BUDEME TRPĚT. JE TOHO *PŘÍLIŠ* Z POVAHY PRVNÍHO, CO JE V NÁS, ABYCHOM MOHLI BÝT SPASENI. BUDEME PROKLETI. NEVÍŠ, CO DĚLÁŠ.~ */
  IF ~~ THEN REPLY #66025 /* ~"Ne, vím moc dobře, co dělám. A tohle je jediná možná odpověď. Připrav se."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~VĚZ, ŽE JSEM TĚ VŽDY *NENÁVIDĚL*, ZLOMENÝ. AŽ BUDEME JEDNÍM, BUDU TĚ DÁL *NENÁVIDĚT*. AŽ NAKONEC TVÁ SKOŘÁPKA ZEMŘE, VĚZ, ŽE Z TVÉ SMRTI BUDU MÍT *POTĚŠENÍ*.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"To přežiju - a stejně tak sféry."~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"Neužiješ si žádné potěšení, stvoření. Budeš mým služebníkem a vše, co jsi nashromáždil bude jen mé."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NULOVÝ UZEL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~JMÉNO JE VĚC, KTEROU MUŽ ZÍSKÁ SVÝMI ČINY. KVŮLI TOMU JMÉNO, KTERÉ JSME KDYSI MĚLI, JIŽ NEMÁ VÝZNAM.~ */
  IF ~~ THEN REPLY #66031 /* ~"Ty *nevíš*, jak jsme se jmenovali, že?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~JMÉNO JE VĚC, KTEROU DAJÍ MUŽI TI, KDO HO VIDÍ TAKOVÉHO JAKO JE.  KVŮLI TOMU JMÉNO, KTERÉ JSME KDYSI MĚLI, JIŽ NEMÁ VÝZNAM.~ */
  IF ~~ THEN REPLY #66033 /* ~"Ty *nevíš*, jak jsme se jmenovali, že?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~JMÉNO JE OBAL Z PÍSMEN, KTERÝ JE UVRHNUT NA ČLOVĚKA. NEMÁ ŽÁDNÝ SMYSL.~ */
  IF ~~ THEN REPLY #66035 /* ~"Ty *nevíš*, jak jsme se jmenovali, že?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~NIKDY SE NEDOZVÍŠ NAŠE JMÉNO, ZLOMENÝ.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"Naše jméno je mi známo, stvoření. Tím věděním jsem se stal silným."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"Ty *nevíš*, jak jsme se jmenovali, že?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~NEEXISTUJE NIKDO, KDO BY ZNAL NAŠE JMÉNO. JE TO NÁŠ ŠTÍT. JMÉNA MAJÍ SVOU MOC. POKUD JE NĚKDO *BEZEJMENNÝ* JAKO JSME MY, JE SILNÝ. NEMOHOU NÁS SLEDOVAT, NEMOHOU NÁS HONIT. NEMOHOU NÁM UBLÍŽIT.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"Naše jméno je mi známo, stvoření. Tím věděním jsem se stal silným."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"Proč to bylo tak důležité? Sleduje nás snad někdo?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~*LŽEŠ.* NAŠE JMÉNO JE ZTRACENO, ZAPOMENUTO A TAK TO TAKÉ ZŮSTANE , DOKUD SAMA VĚČNOST NEZEMŘE.~ */
  IF ~~ THEN REPLY #66043 /* ~"Lžu? Pokud jsi vzešel ze mě, pak *víš*, kdy tě klamu. Teď nelžu."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~DOKONCE I S TAKOVOU ZNALOSTÍ NEMÁŠ MOC, ABYS MĚ PORAZIL.~ */
  IF ~~ THEN REPLY #66045 /* ~"Ano - a nedovolím ti vlákat mě do boje, která není nutná. Protože tím, že znám své jméno, své pravé jméno, znám také tvé. Už není nic víc, co bys mi mohl udělat."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"Uvidíme, duchu. Připrav se, hodlám zjistit, jestli může smrtelnost zemřít..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~*ZLIKVIDUJI* TĚ.~ */
  IF ~~ THEN REPLY #66048 /* ~"Ne, já zlikviduju *tebe*. Nepřeju si, abys dál pobýval ve Sférách... sbohem. Jdi se přivítat se zapomněním."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"Ne, ty ne - spojíš se se mnou a znovu se staneme jedním, jak to bylo a jak to také mělo zůstat."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~VŠE, CO ŽIJE, JE LOVENO. LOVCEM JE SMRT. NÁS UŽ NELOVÍ.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"Tak věz, že nás teď loví. Naše jméno je mi známo a tímto věděním jsem se stal silným."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"Ne,teď místo nás loví *jiné*. Bezpočet nevinných zemřelo, protože jsme od sebe byli odděleni. Takhle nemůžeme dál pokračovat, jinak budou místo nás umírat jiní."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"Dobrá tedy. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~VŠE CO ŽIJE TAKÉ ZEMŘE. STÍNY ZDE, ONY TRPÍ, ALE PRO NĚ JE TO URČITÝM DRUHEM NESMRTELNOSTI. JÁ JSEM SVĚTLO V TEMNOTÁCH TÉTO PEVNOSTI A ONI NENÁVIDÍ TEBE, NE MNE.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"Takže ty necháš nevinné, aby trpěli místo nás?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"Dobrá tedy. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~POKUD CHCEŠ UKONČIT JEJICH UTRPENÍ, VZDEJ SE MI. NECHEJ SE UVĚZNIT V TÉTO PEVNOSTI, UVNITŘ KRYSTALU, A NEVINNÍ JIŽ NEBUDOU DÁLE TRPĚT. TRPÍ KVŮLI *TOBĚ*, NE MNĚ.~ */
  IF ~~ THEN REPLY #66058 /* ~"Nedovolím, abys mě držel v zajetí... připrav se, duchu. Uvidíme, jestli může smrtelnost zemřít."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"Dobrá tedy. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~OTÁZKA NEMÁ SMYSL.~ */
  IF ~~ THEN REPLY #66061 /* ~"Stejně si ale chci poslechnout tvou odpověď."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~TAK PAK TOTO JE MÁ ODPOVĚĎ A TY JSI DŮKAZ. *NIC* NEDOKÁŽE ZMĚNIT POVAHU ČLOVĚKA.~ */
  IF ~~ THEN REPLY #66063 /* ~"Tak to je vše, co jsem chtěl vědět. Dokážu ti, že nemáš pravdu... připrav se, duchu. Uvidíme, jestli může smrtelnost zemřít."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"Pokud jsem se ze svých cest po Sférách něco naučil, je to vědění, že povahu člověka může změnit mnoho věcí. Ať už je to lítost, láska, pomsta či strach - cokoli, v co *věříš*, že může změnit povahu člověka, takovou moc má."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"Nemáš pravdu. Víra může změnit povahu člověka. Dokázal jsem zrušit Vhailora za pomocí víry - zajímalo by mně, jestli by to fungovalo i na mně."~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"Nemáš pravdu. Víra může změnit povahu člověka. Kdysi, před dávnou dobou, jsem dokázal stvořit člověka pomocí víry - zajímalo by mně, jestli bych ho dokázal i zrušit."~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"Tak to je tedy tvá odpověď. Je tady ještě něco, co chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~TAK SES NAUČIL NESPRÁVNOU LEKCI, ZLOMENÝ.~ */
  IF ~~ THEN REPLY #66069 /* ~"Tak? Viděl jsem víru, jak pohybuje městy, zachránila lidi před smrtí a překroutila srdce zlé čarodějnici o sto osmdesát stupňů. Celá tahle Pevnost je zkonstruována z víry. Víra proklela ženu, jejíž srdce se drželo naděje, že jí jiný miloval, zatímco to nebyla pravda. Jednou donutila muže hledat nesmrtelnost a dosáhnout jí. A vytvořila ducha, který si myslí, že je něco víc, než jenom jednou mou součástí."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~NA TOMTO MÍSTĚ TI TVŮJ VZDOR UBLÍŽÍ VÍCE NEŽ JAKÉKOLI ZRANĚNÍ. VÍRA NEMŮŽE ZMĚNIT POVAHU ČLOVĚKA.~ */
  IF ~~ THEN REPLY #66071 /* ~"Myslím, že může. Myslím, že by víra dokázala dokonce i zlikvidovat i mně, pokud bych věřil *dostatečně*..."~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"Možná si to později otestuju... ale teď chci vědět ještě pár věcí."~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~NEMÁŠ SÍLU VŮLE, ABYS DOKÁZAL TAKOVOU VĚC.~ */
  IF ~~ THEN REPLY #66074 /* ~"Takže uznáváš, že je to možné."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"Uvidíme... možná bych to měl zkusit."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"Nebo, jestli sdílíme spojení, jak tvrdíš, možná bych dokázal zničit i *tebe*."~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"Možná si to později otestuju... ale teď chci vědět ještě pár věcí."~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~NEPOKOUŠEJ MOU *TRPĚLIVOST*, ZLOMENÝ.~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Soustřeď svou vůli.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Pokus se soustředit svou vůli.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"Možná si to později otestuju... ale teď chci vědět ještě pár věcí."~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~JSI *HLUPÁK*, KDYŽ SI MYSLÍŠ, ŽE JE V TVÝCH SILÁCH TAKOVÁ VĚC. SOTVA DRŽÍŠ POHROMADĚ VLASTNÍ ROZPADLOU MYSL. UŽ NEMÁŠ DOST SIL, ZLOMENÝ. A ANI JSI NIKDY NEMĚL.~ */
  IF ~~ THEN REPLY #66083 /* ~Soustřeďuj se dál.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~Jak se soustřeďuješ, do jádra své bytosti, našel jsi jenom málo, čeho by jsi se mohl zachytit, jenom fragmenty a úlomky... uvědomil jsi si, že se nedokážeš zničit, protože na to prostě nemáš dostatečně silnou vůli.~ */
  IF ~~ THEN REPLY #66085 /* ~"Možná *tentokrát* ne, duchu.  Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*STOP.* *NEVÍŠ*, CO DĚLÁŠ.~ */
  IF ~~ THEN REPLY #66087 /* ~"Vím, co dělám. Už jsi mě mučil dost. Je konec."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~POKUD TO UDĚLÁŠ, BUDEME ZNIČENI. PAK NENÍ ŽÁDNÝ OSUD. ZNIČÍŠ NÁS OBA.~ */
  IF ~~ THEN REPLY #66089 /* ~"Tak jak to vidím já, mám na výběr dvě věci - buď zemřeme oba nebo tě nechám, abys mě zabíjel znovu a znovu, pořád dokola, až ztratím ze své mysli kousek po kousku úplně vše. Dám přednost rychlé smrti - POKUD nemáš TŘETÍ řešení."~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"Tak zemřeme oba. Zničím sebe i tebe."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~TATO  SITUACE NEMÁ ŘEŠENÍ.~ */
  IF ~~ THEN REPLY #66092 /* ~"Myslím, že má - staneme se znovu jedním, tak jak to bylo a jak to mělo zůstat."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"Tak zemřeme oba. Zničím sebe i tebe."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~NE. JSOU *MRTVÍ*. A MRTVÍ ZŮSTANOU.~ */
  IF ~~ THEN REPLY #66095 /* ~"Proč? *Nedokážeš* je zachránit? Nemáš dostatečnou moc?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"Takže ty nemáš moc zachránit je? Takže nakonec *je* tvá moc omezená..."~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"V tom případě se k nim PŘIDÁŠ.  Připrav se, duchu. Uvidíme, jak umírá smrtelnost."~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~NEOPOVAŽUJ SE *POCHYBOVAT* O MÉ MOCI, NE NA TOMTO MÍSTĚ. NENÍ NIC, CO BYCH NEDOKÁZAL, TEĎ, KDYŽ JSEM SE OD TEBE UVOLNIL.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"Tak co ti brání--?"~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~ALE NENÍ MOU *VŮLÍ*, ABY BYLI ZACHRÁNĚNI. POSTAVILI SE PROTI MĚ ZDE V MÉM DOMĚ A JEJICH SMRTI BUDOU VAROVÁNÍ VŠEM, KDOŽ SE OPOVÁŽÍ POSTAVIT SE MI.~ */
  IF ~~ THEN REPLY #66101 /* ~"*Nedokážeš* je oživit, že?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"Nemyslím si, že máš na výběr. Podle mě je *nedokážeš* oživit."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"Brzy se k nim přidáš. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"V tom případě budeš ležet mrtvý vedle nich. Připrav se, duchu. Uvidíme, jak umírá smrtelnost."~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~ZLOMENÝ, BĚHEM MNOHA TVÝCH ZAPOMENUTÝCH ŽIVOTŮ JSEM POZOROVAL, UČIL SE A ZÍSKÁVAL MOC.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~KDYŽ JSI BOJOVAL V TEMNÉ VÁLCE, VŠECHNA TVÁ VOJENSKÁ ZNALOST SE VRÝVALA DO MÉ MYSLI. KDYŽ JSI MAGICKY BOJOVAL S LUMEM ŠÍLENÝM, UČIL JSEM SE S TEBOU. VŠE, CO JSI TY ZAPOMNĚL, JÁ *ZNÁM*. MOC NAD ŽIVOTEM A SMRTÍ JE POUZE DROBNOU SOUČÁSTÍ MÝCH SIL.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"Říkal jsi, že ses učil *se* mnou. Co jsem zažil já, zažil jsi taky. Říkáš mi, že je mezi námi spojení...?"~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"Takže to spojení, které sdílíme... umožňuje ti prožívat to, co já, učit se to, co já..."~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~JE TO MALÁ VĚC, *NEDŮLEŽITÁ*.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"Ne, to si nemyslím - pokud *ty* tvrdíš, že máš tu moc, možná ji mám i já."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"Deionarra mi řekla, že mohu zvrátit smrt pouze tehdy, když oběť zemře v mé blízkosti. Ale to, co ve mně probudila - říkáš, že to je jenom zlomek mé moci nad životem a smrtí?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~TVÁ MYSL JE ROZTŘÍŠTĚNÝ OBLÁZEK, OTUPENÁ NEČINNOSTÍ. I KDYBYS ZNAL MOC, NEVĚDĚL BYS, JAK JÍ VYUŽÍT.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"Ne, to si nemyslím - myslím, že spojení je obousměrné. Pokud *ty* tvrdíš, že máš tu moc, možná ji mám i já."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"Když tvrdíš, že *ty* tu moc máš, tak ji musím mít i já - i když jsem nebyl přítomný okamžiku smrti."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~NEMÁŠ ROKY NUTNÉ K ZVLÁDNUTÍ UMĚNÍ ŽIVOTA A SMRTI. PADNI PŘEDE MNOU. VZDEJ SE.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~Cítíš, jak se v tvé mysli něco ozývá a náhle víš, že *máš* roky nutné k naučení - protože jsi to dříve věděl, během několika inkarnací. Ale ten proces zabere čas a ty víš, že tvá smrtelnost ti ten čas nedá. Zvládneš oživit jednoho ze svých společníků, ale pouze jednoho.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"Víš, jak jsem šel sem, otevřel jsem vnitřní svatyni. Ty vyšší stíny teď volně pobíhají po Pevnosti - už nejsou zamčeni v komnatě."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Oživ jednoho ze svých společníků.~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Oživ svého společníka.~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"Tak je nechám tam, kde leží. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Čas jako by se zpomaloval, když se pomalu natahuješ a ohmatáváš duši svého společníka. Dokážeš ji vtáhnout zpět do těla, tím jsi si jistý.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Oživ Morteho.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Oživ Annah.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Oživ Dak'kona.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Oživ Fall-From-Grace.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Oživ Nordoma.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Oživ Ignuse.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Oživ Vhailora.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"Tak je nechám tam, kde leží. Jsou další věci, které chci vědět..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~*LŽEŠ*.~ */
  IF ~~ THEN REPLY #66128 /* ~"Jdi se podívat sám, jestli mi nevěříš. Já nikam nepůjdu."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~VRÁTÍM SE A VYŘÍDÍM SI TO S TEBOU, ZLOMENÝ. JESTLI JSI UVOLNIL STÍNY, TAK JE TEBOU *NAKRMÍM*.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"Dobrá tedy... budu tady. POKUD se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"Dobrá tedy... Budu tady. JESTLI se dokážeš vrátit."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~DEJ MI SVÉ OTÁZKY ALE VĚZ, ŽE JE TO ZBYTEČNÉ. ODPOVĚDI SI NEZAPAMATUJEŠ.~ */
  IF ~~ THEN REPLY #66132 /* ~"Udělal jsi co jsi mohl, abys zabránil našemu setkání tváří v tvář. Proč?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"Proč jsi na mě poslal Vhailora, když jsi věděl, že mě může zabít?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"Proč jsi na mě poslal Ignuse, když jsi věděl, že mě může zabít?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"Říkal jsi, že sdílíme spojení, ty a já."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"Možná jsem nesmrtelný, ale Ravel mi řekla, že rituál má chybu: kdykoli zemřu, ztratím částečku své mysli. Za čas, po mnoha úmrtích ztratím dokonce i schopnost myslet."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"Neměli jsem být odděleni, naše rozpojení je nepřirozené. Nemohu takhle dále žít a umírat."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"Pokud jsme propojeni, jak říkáš, tak bych znal své jméno."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"Pokud jsme propojeni, jak říkáš, tak bych znal své jméno."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"Pokud jsme propojeni, jak říkáš, tak bych znal své jméno."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"Pokud jsme propojeni, jak říkáš, tak bych znal své jméno."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"Pokud jsme propojeni, jak říkáš, tak vyslov naše jméno."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"Pokud jsme propojeni, jak říkáš, tak vyslov naše jméno."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"Pokud jsme propojeni, jak říkáš, tak vyslov naše jméno."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"Pokud jsme propojeni, jak říkáš, tak vyslov naše jméno."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"Mí přátelé... chci, abys jim vrátil jejich životy a zaručil jim bezpečný odchod z tohoto místa."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"Mí společníci... jejich životy jsou moje, ne tvoje. Jenom já mohu s jejich životy nakládat. Oživ je. Teď hned."~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"Oživ mé přátelé a zajisti jim odtud volný odchod. *Jestli* to dokážeš."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"Chci, abys oživil mé společníky a zajistil jim odtud volný odchod. *Jestli* to dokážeš."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"Tak toto je tedy má poslední otázka: Co může změnit charakter člověka?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"Není už nic, co bych od tebe chtěl vědět. Připrav se, duchu. Uvidíme, jak umírá smrtelnost."~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~TAK SE PŘIPRAV ZEMŘÍT ZNOVU, ZLOMENÝ.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"Dokonce i když zemřu, vrátím se pro tebe. To *přísahám*. Znovu tě vystopuju, ať to zabere času kolik chce."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"Dokonce i když zemřu, vrátím se pro tebe. To *přísahám*. Znovu tě vystopuju, ať to zabere času kolik chce."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Dokonce i když zemřu, vrátím se pro tebe. To *přísahám*. Znovu tě vystopuju, ať to zabere času kolik chce."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Dokonce i když zemřu, vrátím se pro tebe. To *přísahám*. Znovu tě vystopuju, ať to zabere času kolik chce."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~TO TI *NEPOMŮŽE*. OŽIVIL JSI SVÉHO SPOLEČNÍKA JENOM PROTO, ABY ZNOVU ZEMŘEL.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"I když zemřeme, vrátím se pro tebe. *Přísahám*. Znovu tě vystopuju, ať to bude trvat jakkoli dlouho."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"I když zemřeme, vrátím se pro tebe. *Přísahám*. Znovu tě vystopuju, ať to bude trvat jakkoli dlouho."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"I když zemřeme, vrátím se pro tebe. *Přísahám*. Znovu tě vystopuju, ať to bude trvat jakkoli dlouho."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"I když zemřeme, vrátím se pro tebe. *Přísahám*. Znovu tě vystopuju, ať to bude trvat jakkoli dlouho."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~NENÍ MOU *VŮLI* ABY BYL TVŮJ SPOLEČNÍK ZACHRÁNĚN. TVŮJ SMTLENÝ... *PES* MĚ OHROŽOVAL V MÉM DOMĚ. JEHO SMRT BUDE VÝSTRAHOU VŠEM, KDOŽ BY SE OPOVÁŽILI POSTAVIT SE MI.~ */
  IF ~~ THEN REPLY #68453 /* ~"Ty *nedokážeš* oživit mého společníka, že?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"Nemyslím si, že máš na výběr. Nemyslím si, že *dokážeš* oživit mého společníka."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"Možná je budeš brzy následovat. Je ještě pár věcí, které chci vědět..."~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"Tak tedy zemřeš. Připrav se, duchu. Uvidíme, jak umírá smrtelnost."~ */ GOTO 141
END
