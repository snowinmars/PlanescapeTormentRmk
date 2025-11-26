// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~Vidíš vysokého útlého muže, oči má tak trochu sklovité. Vypadá to, že ho zcela upoutal příběh, který vypráví obchodník. Občas přikývne, ale sám nemá žádné poznámky.~ */
  IF ~~ THEN REPLY #2908 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~Ignoruj muže.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~Muž se k tobě po tvém pozdravu natočil, jenom aby potvrdil tvou přítomnost. Všiml sis, že je tak trochu bledý. Dívá se na tebe prázdným pohledem. Obchodník si ničeho z toho nevšiml a pokračuje ve svém nesmyslném kecání.~ */
  IF ~~ THEN REPLY #35924 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"Jsi... v pořádku?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~Muž pomalu obrátil svou pozornost zpět k obchodníkovi a někdy během toho přikývl... kývnutí přišlo poněkud pozdě pro tvou konverzaci s ním, ale obchodník si to uvědomuje. Muž pomalu vrací svou pozornost k tobě, neustále prázdně zírá.~ */
  IF ~~ THEN REPLY #35928 /* ~"Jsi... v pořádku?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~Muž na tebe dál zírá a pomalu kývnul. Čekáš na další odpověď, ale neříká nic, jenom zírá. Už jsi se skoro naštvaně otočil, když sis uvědomil mužův podivný zápach.~ */
  IF ~~ THEN REPLY #35931 /* ~Přistup blíž a začichej.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~Ignoruj muže a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~Naklonil ses a čichnul si k muži, nejistý, co to asi je. Pach zaplnil tvé nozdry a ty sis vzpomněl. Je to stejný pach, který jsi cítil v márnici. Je to pach mrtvého masa uchovaného magií.~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"Ty jsi zombie, že?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"Ty jsi zombie, že?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~Muž opět pomalu kývnul, potom vrátil svou pozornost k obchodníkovi. Ignoruje jakékoli další pokusy o komunikaci.~ */
  IF ~~ THEN REPLY #35937 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~Stvoření na tebe dál prázdně zírá. Pomalu, jakoby s velkým úsilím, začíná odpovídat. Pouze tvá schopnost promlouvat s mrtvými ti pomohla porozumět mu. "Ano... já jsem... Kalnostrom."~ */
  IF ~~ THEN REPLY #35939 /* ~"Proč jsi tady, Kalnostrome?"~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~Kalnostrom se pomalu podíval na obchodníka a udělal jeho směrem slabé gesto. Vida v tom známku zájmu, obchodník zdvojnásobil svou snahu o vyprávění příběhu, který přiřazuje k ubohému stvoření. Kalnostrom se na tebe znovu podíval. "Hamrys... on mluví... Hamrys se nikdy nezastaví... chodí po městě... otravuje Mistra, otravuje každého... Mistr stvořil Kalnostroma... řekl Kalnostromovi: mluv s Hamrysem... Teď Hamrys zůstává v obchodě... Mistr šťastný... město šťastný... Kalnostrom smutný..."~ */
  IF ~~ THEN REPLY #35943 /* ~"Můžu ti nějak pomoct, Kalnostrome?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"Mám na tebe nějaké otázky...~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"Sbohem, Kalnostrome."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~Stvoření se odmlčelo a po chvíli pokračuje se svým pomalým proslovem. V jeho hlase jsi zachytil prosebný tón. "Ano... Najdi mistra... Sebastiona... požádej ho, ať mě uvolní... prosím..." Na chvíli se jeho pozornost obrátila k Hamrysovi. "Prosím..."~ */
  IF ~~ THEN REPLY #35947 /* ~"Proč tě prostě nemám zbavit tvé mizérie?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"Nevím... Promyslím si to. Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~Klanostrom slabě zavrtěl hlavou. "Ne... Mistr oživí... Musíš požádat Mistra... Sebastiona... prosím." Čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #35951 /* ~"Jistě, Kalnostrome. Uvidím, co pro tebe můžu udělat."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Souhlasil jsem, že pomůžu zombii Kalnostromovi. Musím najít někoho jménem Sebastion a požádat ho, ať Kalnostroma uvolní.~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"Promiň, Klanostrome, to není můj džob, víš?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"Nevím... Promyslím si to. Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~Téměř cítíš pocit ulehčení, vyvěrající ze zombie. "Kalnostrom... děkuje... příteli..."~ */
  IF ~~ THEN REPLY #35957 /* ~"Nemáš zač. Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"Sbohem, Kalnostrome."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~Ve vzduchu cítíš zklamání, jak se od tebe Kalnostrom odvrátil. Začíná přikyvovat obchodníkovi, který svůj vodopád slov ani na chvíli nezpomalil.~ */
  IF ~~ THEN REPLY #35960 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~Stvoření sotva znatelně pokrčilo rameny. "Nevědět... nic... Kalnostrom vyvolán... mistrem... zná tmu... mír... odpočinek... A pak Hamryse... Promiň... pomohl by... kdyby mohl..."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"Víš, kde bych mohl najít Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"Aha... Sbohem tedy."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~Vysoký muž stále rozmlouvá s obchodníkem. Veškerou řeč ale obstarává obchodník.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"Zdravím."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"Jenom jsem chtěl pozdravit... sbohem."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~Ignoruj ho.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~Kalnostrom se trochu natočil směrem k tobě. Ve vzduchu cítíš pocit očekávání. "Ty... našel... mistra? Kalnostrom uvolněný?"~ */
  IF ~~ THEN REPLY #35970 /* ~"Víš, kde bych mohl najít Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"Ještě ne, Kalnostrome. Pracuju na tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~Stvoření se odmlčelo. "Nevím... pamatuju hlas... dal rozkaz být tady... chodit... s Hamrysem... Nic víc... Promiň."~ */
  IF ~~ THEN REPLY #35973 /* ~"Aha. Sbohem tedy."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~Kalnostrom se trochu natočil směrem k tobě. Ve vzduchu cítíš pocit očekávání. "Ty... našel... mistra? Kalnostrom uvolněný?"~ */
  IF ~~ THEN REPLY #35975 /* ~"Ano, Kalnostrome. Vím, jak tě uvolnit."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"Teď zrovna ne, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~Kalnostrom se k tobě otočil a prosebně se tváří. "Prosím, příteli..."~ */
  IF ~~ THEN REPLY #35978 /* ~Řekni slova, která tě naučil Sebastion.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~Na chvíli ses odmlčel, aby sis srovnal myšlení a pak jsi pečlivě vyslovil slova, která tě naučil Sebastion. Pak jsi se natáhl a lehce se dotknul Kalnostroma na čele.~ */
  IF ~~ THEN REPLY #35981 /* ~"Odpočívej v pokoji, Kalnostrome."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~Seslal jsem na Kalnostroma kouzlo, které mě naučil Sebastian. Teď už odpočívá v pokoji, nemusí dál poslouchat Hamrysovo tlachání.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~S povzdechem se zombie zřítila k tvým nohám. Máš pocit, že jsi ucítil slabounké *díky příteli*, než tělo dopadlo na zem.~ */
  IF ~~ THEN REPLY #35983 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~Kalnostrom se k tobě otočil. "Ty... prosím, pomůžeš? Najdi... Sebastiona... uvolni mě."~ */
  IF ~~ THEN REPLY #35985 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Souhlasil jsem, že pomůžu zombii Kalnostromovi. Musím najít někoho jménem Sebastion a požádat ho, ať Kalnostroma uvolní.~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"Ne, to není můj problém."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"Nevím, promyslím si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~Téměř cítíš pocit ulehčení, vyzařující ze zombie. "Kalnostrom... děkuje... příteli..."~ */
  IF ~~ THEN REPLY #35990 /* ~"Kde můžu najít Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"Nemáš zač. Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~Kalnostrom se k tobě otočil. "Proč ty tady... Ty odmítl pomoct... Ty rozmyslel... najdeš Sebastiona... uvolníš Kalnostroma... prosím?"~ */
  IF ~~ THEN REPLY #35993 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Souhlasil jsem, že pomůžu zombii Kalnostromovi. Musím najít někoho jménem Sebastion a požádat ho, ať Kalnostroma uvolní.~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"Ne, to není můj problém."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"Nevím, promyslím si to. Sbohem."~ */ EXIT
END
