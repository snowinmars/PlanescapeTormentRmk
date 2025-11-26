// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~Hromotluk je opravdu rozměrné postavy, tenká vrstva kožešiny jej pokrývá od hlavy až k ocasu. "Ojo je jako zeď," mluví smutně.~ */
  IF ~~ THEN REPLY #2830 /* ~"Co se tady stalo?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"Kam všichni šli?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"Ty jsi teď krysodlak?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"Tvá mluva se zlepšila, Ojo. Co se stalo?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"Tak to tě raději zabiju."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"Tak to je špatné. Sbohem"~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"Velkej chlupa. Zuba. Všichni kámoši koušeš. Někerý žrádlo. Někerý chlupatý. Oni Oja nechávaj na pokoji."~ */
  IF ~~ THEN REPLY #18844 /* ~"Tak kam všichni šli?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"Krysy přišly a napadly? Díky, Ojo. Sbohem."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"Krysy přijít. Každého napadnout. Oni potom odejít pryč na plačící místo. Ojo tomu nerozumět. Oni se vrátit. Oni chlupatí a přemýšlet."~ */
  IF ~~ THEN REPLY #18847 /* ~"Vidím. Je tu ještě něco, co bych o tom měl vědět?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"Vidím. Dík, Ojo. Sbohem"~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~Jak se otáčíš, všimneš si, že velký muž se přikrčil ke skoku. V jeho očích vidíš divokost a sliny stékají z jeho úst. Jeho zuby vypadají velice, velice ostré.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"Nedělej to Ojo, nechci tě zranit."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"Nedělej to, Ojo. Nechci tě zranit."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Napadni ho.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~Smutně sklopil zrak a pak se na tebe podíval. Zablýskly se mu zuby, jak promluvil, "Krysičky." Ďábelský úšklebek mu tančí kolem úst.~ */
  IF ~~ THEN REPLY #18854 /* ~"Je ještě něco jiného, o čem bych měl vědět?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"Dobře, to je hodně špatné. Sbohem, Ojo."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"Pak bych se měl ubezpečit, že nenakazíš jiné. Připrav se zemřít."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~Krčí rameny.~ */
  IF ~~ THEN REPLY #18858 /* ~"Je ještě něco jiného, o čem bych měl vědět?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"Pak tedy sbohem."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"Odejdi. Krysičky tě pokoušou. A pak tě kousnu já."~ */
  IF ~~ THEN REPLY #18861 /* ~"Velmi dobře. Pak tedy sbohem."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~Odmlčel se, jeho svaly se pomalu uvolňují. "Odejdi, nebo tě kousnu."~ */
  IF ~~ THEN REPLY #18863 /* ~Odejdi.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Napadni ho.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~Ignoruje tvá slova a skáče po tobě!~ */
  IF ~~ THEN REPLY #18866 /* ~"Ojo, počkej!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"Pokud je toto cesta, musí to tak tedy být..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~Velikánský muž se k tobě otočil, nahrbil se a pak se vymrštil!~ */
  IF ~~ THEN REPLY #18869 /* ~"Ojo, počkej!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"Pokud chceš tento způsob..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Ojo se odvrátil ode zdi a sklesle na tebe kouká.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Ojo se odvrátil ode zdi a upřeně se dívá na Morteho, v očích mu trochu doutná.~ */
  IF ~~ THEN REPLY #18873 /* ~"Dobrá, Morte, to by stačilo."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"Ojo, Mám nějaké otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"Vypadněme odsud. Sbohem, Ojo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Ojo jen zírá.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"Můžeš mi říci znovu o té postavě na zdi?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"Řekni mi opět o sobě."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"Co to děláš?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"Řekni mi o lidech z této vesnice."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"Řekni mi o katakombách."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"Řekni mi o Pohřbené vesnici."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~Mrká na tebe.~ */
  IF ~~ THEN REPLY #18885 /* ~Ukaž na něj: "Kdo jsi?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"Zapomeň na to. Mám jiné otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~Vidíš statného muže s uvolněnou čelistí. Záblesk inteligence v jeho očích je jen o trochu větší, než světélko vzdáleného majáku.~ */
  IF ~~ THEN REPLY #18889 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"Co děláš?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"Pověz mi o lidech této vesnice."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"Pověz mi o katakombách."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"Řekni mi o Pohřbené vesnici."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~Ten člověk na tebe mrká.~ */
  IF ~~ THEN REPLY #18896 /* ~"Pověz mi o sobě."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"Co děláš?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"Pověz mi o lidech této vesnice."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"Pověz mi o katakombách."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"Řekni mi o Pohřbené vesnici."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"Ojo."~ */
  IF ~~ THEN REPLY #18903 /* ~"Dobře, Ojo. Mám na tebe nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"Díky, Ojo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~Krčí rameny.~ */
  IF ~~ THEN REPLY #18906 /* ~"V pořádku... pak mi odpověz na nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"Ojo říká..." Neočekávaně se zastaví a začne si masírovat ruku.~ */
  IF ~~ THEN REPLY #18909 /* ~Prozkoumej jeho ruku.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"S kým mluvíš?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"S kým mluvíš?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"Co?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"V pořádku. Mám pro tebe nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~Na jeho kůži je malý, zanícený strup. Sleduješ, jak ho znovu slupuje.~ */
  IF ~~ THEN REPLY #18916 /* ~"Co se ti stalo s rukou?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"Mám pro tebe nějaké jiné otázky, Ojo."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"Ona být pokousaná."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"Kdo tě pokousal, Ojo?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"Kdo tě pokousal, Ojo?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"V pořádku. Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"Sbohem, Ojo."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"S cizinci já nemluvit." Kouká mimo tebe a mne si ruce.~ */
  IF ~~ THEN REPLY #18925 /* ~"Dobře. Pověz mi o sobě."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"Ojo říká." Odvrátil se od tebe.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"S kým mluvíš?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"S kým mluvíš?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"Dobře. Mám pro tebe nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~Podíval se na stěnu a pak zpět na tebe. "Postava na stěně."~ */
  IF ~~ THEN REPLY #18933 /* ~"Tam na stěně je postava?"~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"Uh, fajn. Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Ojo se dívá směrem k jedné stěně a pak se na tebe otočí zpět, oči zúžené a cukajíc koutky úst zasyčí. "Kdo ty být? Zmiz!"~ */
  IF ~~ THEN REPLY #18937 /* ~"Jen jsem se tě ještě chtěl zeptat na více věcí, Ojo."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"Ne! Zmiz!" Znervózňuje.~ */
  IF ~~ THEN REPLY #18940 /* ~"Jen pár otázek."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"Tak dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~Škobrtnul o roh a vrazil do něj, odvrátil se od tebe. Ani sebevětší přemlouvání ho nepřesvědčí, aby se na tebe podíval, nebo na tebe nějak reagoval.~ */
  IF ~~ THEN REPLY #18943 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~Podíval se na stěnu a pak zpět na tebe.~ */
  IF ~~ THEN REPLY #18945 /* ~"Co ta postava na stěně říká?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"Jak ta postava na stěně vypadá?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"Na které stěně je?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"Dobře. Mám pro tebe nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"Vyprávěj o místě plačícího kamene. Řekni příběh. Já také řeknu svůj příběh."~ */
  IF ~~ THEN REPLY #18951 /* ~"Příběhy o čem?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"Mám nějaké jiné otázky o té postavě na stěně..."~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~Podíval se na stěnu a ztichl.~ */
  IF ~~ THEN REPLY #18956 /* ~"Tak dobře. Pověz mi zase o té postavě na stěně."~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"Malá. Rudé oči. Chlupatá."~ */
  IF ~~ THEN REPLY #18960 /* ~"Vydává zvuky jako nějaká krysa."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"Dobře. Mám nějaké jiné otázky o tom člověku na zdi..."~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~Pokývl na pozdrav.~ */
  IF ~~ THEN REPLY #18965 /* ~"Dobře. Mám nějaké jiné otázky o té postavě na stěně..."~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"Díky Ojo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~Ukazuje na stěnu. Všiml sis na ní malého otvoru. Nakonec vidíš, že otvor je potrhaný, jako kdyby byl okousán nějakou krysou.~ */
  IF ~~ THEN REPLY #18969 /* ~"To vypadá, jako kdyby to bylo okousáno nějakou krysou."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"Je ta postava na zdi nějaká krysa?"~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"Aha... Ojo, mám nějaké jiné otázky k té postavě na zdi..."~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"Kdo?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"Annah."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"Annah."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"Marta."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"Pharod."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"Gris."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"Quint."~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"Místo toho mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~Bojácně se dívá na Annah.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"Nepříjemná dívka."~ */
  IF ~~ THEN REPLY #18985 /* ~"Dobrá. Pověz mi o nějakých jiných."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"Dobrá. Mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"Děsivá čarodějka."~ */
  IF ~~ THEN REPLY #18989 /* ~"Dobrá. Pověz mi o nějakých jiných."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"Dobrá. Mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"Podivná spravedlnost."~ */
  IF ~~ THEN REPLY #18993 /* ~"Dobrá. Pověz mi o nějakých jiných."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"Dobrá. Mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~Jeho oči se náhle zúžily. "Mrtvý."~ */
  IF ~~ THEN REPLY #18997 /* ~"Jak víš, že je mrtvý?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"Dobrá. Pověz mi o nějakých jiných."~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"Dobrá. Mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"Kwint."~ */
  IF ~~ THEN REPLY #19002 /* ~"Dobrá. Pověz mi o nějakých jiných."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"Dobrá. Mám nějaké jiné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"Postava na stěně mi to řekla."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"Co ti řekla?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"Pověz mi o nějakých jiných vesničanech."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"Grisova smrt."~ */
  IF ~~ THEN REPLY #19013 /* ~"Kde je Gris?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"Pověz mi o nějakých jiných vesničanech."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"V plačícím místě."~ */
  IF ~~ THEN REPLY #19019 /* ~"Myslíš katakomby Truchlícího kamene?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"Pověz mi o nějakých jiných vesničanech."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~Souhlasně kývá.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"Pověz mi o té postavě na stěně."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"Pověz mi o nějakých jiných vesničanech."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"Sbohem."~ */ EXIT
END
