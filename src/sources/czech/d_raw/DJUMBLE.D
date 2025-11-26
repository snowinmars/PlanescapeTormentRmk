// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~Nízký plešatějící muž v oranžové tunice a ohromným břichem připomíná chodící dýni. Bezmyšlenkovitě poklepává na své úctyhodné břicho v pomalém rytmu, jako by to byl buben. Podle mužova podivného úsměvu a zvláštní záře v očích máš pocit, že je asi tak trochu šílený.~ */
  IF ~~ THEN REPLY #2938 /* ~"Zdravím..."~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Nech ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~Muž ti věnoval přehnaně květnatý pozdrav a ukázal na kartičku, na které je napsáno 'Jumble Vraždosmysl - Chaotický mág eX-traordinální.' Pak ti kartičku vytrhl z ruky a snědl ji, šíleně se u toho šklebíc.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"Jumble mám pár otázek..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"Ty jsi ten kdo proklel Smradodecha, že jo?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~V Hale jsem potkal muže, který proklel Smradodecha. Je to Jumble Vraždosmysl.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"Byl bych rád, kdybys sejmul Smradodechovu kletbu."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Jumble se podíval stranou a dlaní si bubnuje na břiše.~ */
  IF ~~ THEN REPLY #41932 /* ~"Jumble? Co mé otázky?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"Nevadí... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Jumble protočil panenky. Otočil se k tobě, uculil se a začal si žmoulat palec.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"Odpověz apoň na tohle: Proklel jsi Smradodecha?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~V Hale jsem potkal muže, který proklel Smradodecha. Je to Jumble Vraždosmysl.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"Fajn. Ale chci, abys odstranil Smradodechovo prokletí."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"Jsi němý? To proto mi neodpovídáš?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~PRAVDA: "Potřebuju odpovědi, a když budu muset, tak je z tebe vymlátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~LEŽ: "Potřebuju odpovědi, a když budu muset, tak je z tebe vymlátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Jumble zvedl hlavu a věnoval ti přitroublý škleb. Pomalu pokrčil rameny... zavřel oči a vyplázl na tebe jazyk.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~PRAVDA: "Potřebuju odpovědi, a když budu muset, tak je z tebe vymlátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~LEŽ: "Potřebuju odpovědi, a když budu muset, tak je z tebe vymlátím."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Jumble zvedl obočí a o krok ustoupil. Najednou otevřel pusu a - skrz jeho rty a hlasivky neprošlo jediné slovo - jen hromada nesrozumitelného brblání.~ */
  IF ~~ THEN REPLY #41945 /* ~"Co to...?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~Jsem prokletý neustálou škytavkou, je to práce chaotického mága jménem Jumble Vraždosmysl. Doufám, že někdo jiný v Hale bude vědět, jak mě té otravné kletby zbavit... nebo jak donutí Jumbla, aby to udělal.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Jumble zavřel pusu a mumlání ustalo... zírá na tebe přivřenýma očima se sebeuspokojujícím úsměvem na baculatém obličeji. Najednou jsi škytl.

A zase jsi škytl. A zas. A znovu.

Jumble Vraždosmysl pouze otočil hlavu a přestal si tě všímat.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"Cos mi to udělal?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"Jumble... prosím vezmi to zpátky."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"Jumble aťs udělal cokoli, vem to zpátky - nebo se ti strašně pomstím."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"Asi bude lepší, když se podívám po někom, kdo mě zbaví té kletby. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Jumble tě naprosto ignoruje.~ */
  IF ~~ THEN REPLY #41952 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"Asi bude lepší, když se podívám po někom, kdo mě zbaví té kletby. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Jumble nasadil nevinný výraz a pokrčil rameny, jako by říkal 'no nevím.' Pak si zakryl pusu dlaní a začal se hihňat, jak malá školačka.~ */
  IF ~~ THEN REPLY #41955 /* ~"Chci se zbavit té kletby."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"Mám jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"To jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Jumble dělá, že tě neslyší, místo toho si stále bubnuje na břicho. Pokukuje po celé Hale.~ */
  IF ~~ THEN REPLY #41959 /* ~"Co mám udělat, abys zrušil Smradodechovu kletbu?"~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~PRAVDA: "Zruš tu kletbu Jumble dřív, než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~LEŽ: "Zruš tu kletbu Jumble dřív, než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Jumble se na tebe nepodíval, ale zatřásl hlavou.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~PRAVDA: "Zruš tu Smradodechovu kletbu Jumble dřív, než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~LEŽ: "Zruš tu Smradodechovu kletbu Jumble dřív, než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Jumble Vraždosmysl ti věnoval přehnaně přátelský podrav, poté naklonil hlavu na stranu a zvědavě tě pozoroval.~ */
  IF ~~ THEN REPLY #41968 /* ~"Jumble, mám pár otázek..."~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"Ty jsi ten, co proklel Smradodecha, že jo?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~V Hale jsem potkal muže, který proklel Smradodecha. Je to Jumble Vraždosmysl.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"Chci, abys odstranil Smradodechovo prokletí."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"Jen procházím. Sbohem."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Když jsi se objevil, Jumble se zamračil. Žmoulá si palec a pokynul ti, abys pokračoval směrem pryč.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Uvrhni na něj kletbu, kterou tě naučil Salabesh.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"Jumble, potřebuju, abys sejmul kletbu, kterou jsi na mě uložil."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~Protočil očima a významně zívnul.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Uvrhni na něj kletbu, kterou tě naučil Salabesh.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~PRAVDA: "Zruš tu kletbu Jumble, dřív než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~LEŽ: "Zruš tu kletbu Jumble, dřív než ti budu muset ublížit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Jumble Vraždosmysl předvedl šou zkoumání a čištění nehtů.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Uvrhni na něj kletbu kterou tě naučil Salabesh.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Zaůtoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Jumble na tebe zíral s jakýmsi skeptickým výrazem, když jsi pronášel tajemná zaříkadla Salabeshovy kletby. Po chvíli naprostého ticha, když si Xaositectský mág všiml, že se nic nestalo... se na jeho tváři usadil široký úsměv.~ */
  IF ~~ THEN REPLY #41986 /* ~Pokračuj...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~Otevřel ústa, aby ti oplatil další kletbou... ale zjistil, že ztratil hlas! Salabeshova kletba zbavila Jumbleho možnosti mluvit, a tím zničila i jeho schopnost uvalit kletby na jiné. Škrábal se na krku a v očích se mu usadil výraz paniky.~ */
  IF ~~ THEN REPLY #41988 /* ~"Zdá se, že se karta obrátila. Co si myslíš, že se stane, až někdo - *škyt!* - koho jsi kdysi proklel, zjistí, že nemůžeš mluvit - samozřejmě - navždy?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Jumble padl na kolena s prosebným výrazem v očích. Dost možná, že se brzo rozbrečí.~ */
  IF ~~ THEN REPLY #41990 /* ~"Odstraníš - *škyt!* - kletbu, kterou jsi na mne uvrhl? A zapřísáhneš se, že už neprokleješ nikoho, kdo ti nebude chtít ublížit?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Jumble si přitisl ruce k srdci a začal mohutně přikyvovat.~ */
  IF ~~ THEN REPLY #41992 /* ~"Dobře. Pak tedy sejmu kletbu..."~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~Donutil jsem Jumbla Vraždosmysla, aby sejmul kletbu, kterou na mě seslal. Pomohlo mi k tomu kouzlo, které jsem se naučil od Salabeshe Onyxového, 'Mistra Kleteb'.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Jumble si ulechčeně oddechl, sotva jsi sejmul Salabeshovu kletbu. On na oplátku odvolal svoji, a tvé škytání konečně přestalo. Pak ti poníženě pokynul a sklopil oči k podlaze.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"Ty jsi taky proklel Smradodecha, že ano?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~V Hale jsem potkal muže, který proklel Smradodecha. Je to Jumble Vraždosmysl.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"Chci, abys sejmul kletbu i ze Smradodecha."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Přesvědčil jsem Jumbla Vraždosmysla, aby sejmul Smradodechovo prokletí, to vše za pomocí jedné mé malé kletby.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"Sbohem Jumble."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Jumble přikývl a mávnutím ruky sejmul Smradodechovu kletbu.~ */
  IF ~~ THEN REPLY #41997 /* ~"Dík. Sbohem Jumble."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Jumble tě obdařil mrzutým pohledem. Je jasné, že už s tebou nechce mít nic do činění.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"Ty jsi taky proklel Smradodecha, že ano?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"Ještě chci, abys sejmul kletbu i ze Smradodecha."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Přesvědčil jsem Jumbla Vraždosmysla, aby sejmul Smradodechovo prokletí, to vše za pomocí jedné mé malé kletby.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"Jen procházím Jumble. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Zmatek si hlasitě povzdychl, zakoulel očima a nakonec přikývl.~ */
  IF ~~ THEN REPLY #67868 /* ~"Byl bych rád, kdybys z něj tu kletbu sejmul."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
