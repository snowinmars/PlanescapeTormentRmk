// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~Tento zahalený muž se hrbí u brány Márnice. Jeho tvář je skryta ve stínu šedé kápě... můžeš jen vidět špičku jeho brady, zarostlou a pokrytou něčím, co vypadá jako zelenofialová vyrážka. Zdá se, že tato vyrážka pokrývá celou jeho šíji, potom mizí a objevuje se na špinavé bradě.~ */
  IF ~~ THEN REPLY #8005 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~Nechej postavu na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~Postava se ani nepohnula... až po chvíli ticha odpověděl muž vysokým hlasem, který by spíše seděl desetileté holčičce, než muži v letech. "Joj?"~ */
  IF ~~ THEN REPLY #8038 /* ~"Kdo vlastně jsi?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~Opusť ho.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"Joj?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"Kdo vlastně jsi?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"Jak ses dostal ke jménu jako je Syfl?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"Co tu děláš?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"Ztratil jsem deník... asi jsi žádný neviděl, nebo snad ano?"~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"Mohl bys mě propašovat do Márnice?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"Když budu předstírat mrtváka, dostaneš mě dovnitř?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"Promiň za vyrušení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"Syfl jsem já, joj."~ */
  IF ~~ THEN REPLY #8048 /* ~"Eh... Syfl?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"Co tu děláš?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"Ztratil jsem deník... asi jsi žádný neviděl, nebo snad ano?"~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"Promiň za vyrušení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"Čekání na mrtváky dělám já, joj."~ */
  IF ~~ THEN REPLY #8053 /* ~"'Mrtváky'? Mrtvoly? Proč?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"Najít mrtváka, donýst ho přes bránu, pak znova čekám já, joj."~ */
  IF ~~ THEN REPLY #8056 /* ~"Skrz bránu? Proč?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"Mrtváky Spalovačům, oni peníze Sběračům. Ty jim dáš mrtváka, oni tobě měďák u brány, tak je to, joj."  ~ */
  IF ~~ THEN REPLY #8060 /* ~"Proč Spalovači platí za mrtvé?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"Sběrač? Co je to?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"Ulice čistý, mrtváci na svým místě, ulice nesmrděj, mrtvoly neztrácej, jsou uvnitř brány a všichni šťastný, joj."~ */
  IF ~~ THEN REPLY #8065 /* ~"Co Spalovači dělají s těmi koupenými mrtvolami?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"Odtáhnou ho za brány, položej na stůl, rozřežou, spálej, nebo rozchoděj, joj."~ */
  IF ~~ THEN REPLY #8069 /* ~"Rozchodí je?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"Joj, některý vrátěj do života, když jejich svolení maj a z mrtváků rázem kostlivci a zombíci."~ */
  IF ~~ THEN REPLY #8073 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"Aha. měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"Máma a táta pojmenovali mě, přáli syfl-od-narození, kletbu dali, ta splnila se, joj." Tvé oči znovu zabloudily k zelenofialové vyrážce na Syflově krku a bradě. ~ */
  IF ~~ THEN REPLY #8076 /* ~"Oh... Rád bych se tě ještě na něco zeptal..."~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~Před bránou Márnice vidíš hrbícího se Syfla. Ona... on... nezdá se, že by se pohnul od té doby, co jste spolu naposledy mluvili.~ */
  IF ~~ THEN REPLY #8078 /* ~"Syfle, měl bych pro tebe ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~Zanechej Syfla samotného.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"Ukaž Syflovi, jak hraješ mrtváka. Když hraješ dobře, Syfl tě dostane dovnitř, joj." ~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~Předstírej mrtvého...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~Předstírej mrtvého...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~Předstírej mrtvého...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~Předstírej mrtvého...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~Předstírej mrtvého...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"Teď ne. Napřed se tě chci na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"Ani ne, možná příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~Syfl sledoval tvé představení beze zvuku. Když jsi opět vstal, řekl. "Spalovači nevěří ty jsi mrtvák. Vždycky kontrolujou, jestli mrtvák je mrtvák, a když mrtvák dejchá, oni neberou. Špatný kšefty, joj."~ */
  IF ~~ THEN REPLY #8087 /* ~"Co kdybych byl doopravdy mrtvý? Mohl bys prodat moje tělo?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"Tak to je problém. Měl bych ale ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~Syfl sledoval tvé představení beze zvuku. Když si opět vstal, řekl. "Joj, Syfl tě prodává. Chceš prodat hned?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"Ano."~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"Ano."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"Ne, ještě ne. Napřed bych se tě rád na něco zeptal."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"Díky, možná příště. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~Touhle otázkou se Syfl očividně příliš nezatěžoval. "Joj, můžu prodat, jako posledně, joj?"~ */
  IF ~~ THEN REPLY #8096 /* ~"Ano."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"Eh... 'posledně?'"~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"Hmm. Mám pro tebe další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"Joj. Hodněkrát ty ses ptal a Syfl vždycky udělal."~ */
  IF ~~ THEN REPLY #8100 /* ~"Uh... kolikrát přesně?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"Hmm. Mám pro tebe další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"Hodněkrát, joj."~ */
  IF ~~ THEN REPLY #8103 /* ~"Takže... my už jsme se potkali dřív?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"Hmm. Mám pro tebe další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"Joj."~ */
  IF ~~ THEN REPLY #8106 /* ~"Co o mně víš?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"Hmm. Mám pro tebe další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"Tys mrtvák, co nevydrží mrtvák dlouho. S tebou Syfl dobrej obchod, joj."~ */
  IF ~~ THEN REPLY #8109 /* ~"Víš o mně ještě něco jiného?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"Hmm. Mám pro tebe další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"Tys mrtvák, co nevydrží mrtvák dlouho. S tebou Syfl dobrej obchod, joj." ~ */
  IF ~~ THEN REPLY #8112 /* ~"No... a víš ještě něco jiného, kromě tohohle?"~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"Pak mě tedy zabij. Chci se dostal do Márnice."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"Uh, tak dobrá. Co kdybych radši předstíral smrt a ty bys mě dostal dovnitř?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"Hmmm. Ještě na něco se chci zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~Syfl vytáhl své ruce zpoza pláště a odkryl tak rezavé dýky v každé, vyrážkou poskvrněné, ruce. Během okamžiku udělaly tyto dýky dva dlouhé zářezy na tvém krku a tvůj zrak se zatemnil...~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~Propadni se do temnoty...~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~Propadni se do temnoty...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"Joj, Sběrač. Sbírá mrtváky a nosí je k bráně Spalovačů pro peníze."~ */
  IF ~~ THEN REPLY #8119 /* ~"Co Spalovači dělají s těmi mrtvými... s těmi mrtváky?"~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"Je tahle přední brána jediným vchodem do Márnice?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"Hmmm. Ještě na něco se chci zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"Joj, já žádnej dej-ník neviděl. V Úlu se věci ztrácej a nikdy nenacházej, dej-ník možná stejně tak."~ */
  IF ~~ THEN REPLY #8123 /* ~"Hmmm. Ještě na něco se chci zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"Joj, Pharod. Sběrač, velkej, jméno s velkou váhou, háže velkej stín, tak je to, joj."~ */
  IF ~~ THEN REPLY #8125 /* ~"Sběrač?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"Nevíš, kde bych ho mohl najít?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"Měl bych pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"Joj, Sběrač. Sbírá mrtváky a nosí je k bráně Spalovačů pro peníze."~ */
  IF ~~ THEN REPLY #8129 /* ~"Nevíš, kde bych ho mohl najít?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"Měl bych pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"Tak to by prozatím bylo všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"Joj, tady v Úlu, tady je. Někdekde, joj."~ */
  IF ~~ THEN REPLY #8132 /* ~"Můžeš být trošku specifičtější?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"Měl bych pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"Tak ho prostě zkusím nějak najít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"Joj, někde je v Úlu, joj. Pharod schovává se, tak. Těžký je ho najít, joj. Nemá cenu hledat ho, tak."~ */
  IF ~~ THEN REPLY #8135 /* ~"'Nemá cenu hledat ho'? Co tím myslíš?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"Měl bych pro tebe ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"Takže si ho najdu po svém. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"Joj, hodně ho nesnášej, i jiný Sběrači. Sharegrave nesnáší ho, ne jako Pharod, joj."~ */
  IF ~~ THEN REPLY #8138 /* ~"Sharegrave?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"Díky, víc už vědět nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"Joj, Sharegrave je velký jméno, má váhu, háže dlouhej stín, tak. Říká Syflovi co dělat, to dělá."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"Ale tvůj šéf... ten Sharegrave... ví, kde Pharod je?"~ */ JOURNAL #66542 /* ~Před Márnicí jsem potkal nemocného Sběrače jménem "Syfl". Syfl zná Pharoda, ale neví, kde bych ho mohl najít... Řekl mi, ať na Hadrníkově náměstí najdu muže jménem "Sharegrave". Hadrníkovo náměstí je několik bloků na západ od Márnice. Řekl mi, že Sharegrave Pharoda nenávidí a měl by vědět, kde Pharoda najdu.~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"Ale tvůj šéf... ten Sharegrave... ví, kde Pharod je?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~Před Márnicí jsem potkal nemocného Sběrače jménem "Syfl". Syfl zná Pharoda, ale neví, kde bych ho mohl najít... Řekl mi, ať na Hadrníkově náměstí najdu muže jménem "Sharegrave". Hadrníkovo náměstí je několik bloků na západ od Márnice. Řekl mi, že Sharegrave Pharoda nenávidí a měl by vědět, kde Pharoda najdu.~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"Hmmm. Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"Díky, víc už vědět nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"Joj, Sharegrave zná stíny, tak. Ví, že Pharod schovává se. Sharegrave na Hadrníkovým náměstí, hodně bloků západně, joj. Řekni Sharegravovi, že Syfl posílá tě, pověz, Sharegrave se potom se Syflem rozdělí o měďáky, joj."~ */
  IF ~~ THEN REPLY #8145 /* ~"Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"Hadrníkovo náměstí, na západ odsud? Dobrá, podívám se tedy po Sharegravovi tam."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"Joj, jenom Spalovači tam choděj, joj. Chceš aby tě Syfl udělal mrtvák znova?"~ */
  IF ~~ THEN REPLY #8147 /* ~"Uh... znova?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"Ano, udělej mě mrtvákem. Potřebuju se dostat do Márnice."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"Co kdybych místo toho mrtvolu jenom předstíral? Mohl bys mě tak propašovat dovnitř?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"Ne, ne... Chci se tě radši na něco zeptat..."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"Díky, ale snad někdy jindy. Sbohem."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
