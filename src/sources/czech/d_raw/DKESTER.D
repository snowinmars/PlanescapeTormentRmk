// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"Děkuju za pomoc. Zorganizuju své přátele..." Odmlčel se. "A teď jdi."~ */
  IF ~~ THEN REPLY #58986 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~Vidíš shrbeného muže s hnědou kůží a ostrýma zelenýma očima. "Vítej v Destilerii Bratří Malaků!" vykřikl, jako by nikoho neviděl raději než tebe. "Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #58988 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"Pochopil jsem, že máš nějaké problémy s bratrem. Rád bych pomohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"Neslyšel jsi něco o devovi, který by měl být v tomhle městě?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"Rád bych si něco koupil."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"Poslal mě tvůj bratr. Vzkazuje, že chce vyjednávat ohledně dědictví."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"Jsem Kester Malako, držitel a poloviční majitel Distilérie Bratří Malaků. Můžu ti něco nabídnout? Mám spoustu zajímavého zboží."~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"Poloviční majitel?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"Kdo je ten druhý bratr?"~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"Zrovna teď ne, díky. Pochopil jsem, že máš nějaké problémy s bratrem. Rád bych pomohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"Neslyšel jsi něco o devovi, který by měl být v tomhle městě?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"Ukaž, co máš."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"Poslal mě tvůj bratr. Vzkazuje, že chce vyjednávat ohledně dědictví."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~Podíval se na tebe blíž. "Tohle je destilérie, lihovar. Prodávám tady kde co, od pití po elixíry, amulety a tak. Chceš si něco koupit?"~ */
  IF ~~ THEN REPLY #59008 /* ~"Ano."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"Právě teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"Co, v Curstu?" Dobrosrdečně se zasmál. "Příteli, jsi v Curstu. Tady není žádný deva. Zkus Naději nebo jiné město na druhé straně Velkého Prstence. Tak, chceš si něco koupit?"~ */
  IF ~~ THEN REPLY #59011 /* ~"Ano."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"Ne, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"Ano, jistě. Mému bratrovi taky patří podíl tohohle, i když nevím proč, když se o to vůbec nestará. Hele, chceš si něco koupit?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"Co mi můžeš říct o svém bratrovi?"~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"Ano. Co máš?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"Poslal mě tvůj bratr. Vzkazuje, že chce vyjednávat ohledně dědictví."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"Ne, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~Jeho tvář ztuhla. "Jmenuje se Pěstidrť. Je to místní kovář. Snaží se co může, aby můj obchod neuspěl a ... a proč ti to vlastně říkám? Jsi cizinec."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"Rád bych pomohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"Nevím. Co máš na prodej?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"Nevím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"Tak? Dobrá, koukni na tohle. Tohle je moje kopie odkazu našeho otce. Tady: Jasně vidíš, že peníze se mají použít na vystavění téhle destilérie, ne že se mají jenom rozdělit mezi nás. Ale můj hloupý bratr pořád trvá na tom, že vezmeme prachy, místo toho, abychom budovali do budoucnosti. Vezmi mu jeho kopii odkazu, nebo mu narvi do hlavy trochu rozumu a já tě odměním."~ */
  IF ~~ THEN REPLY #59022 /* ~"Potřebuju tvoji kopii odkazu, ať si ji můžu prohlédnout."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~Souhlasil jsem, že pomůžu lihovarníku Kesterovi s hádkou s jeho bratrem kovářem Pěstidrťem ohledně rozdělení dědictví.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"Dobrá. Já se vrátím. Sbohem."~ */ JOURNAL #59024 /* ~Souhlasil jsem, že pomůžu lihovarníku Kesterovi s hádkou s jeho bratrem kovářem Pěstidrťem ohledně rozdělení dědictví.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~Podezřívavě se na tebe dívá, ale pak změkne. "Pokud to tak pro mě bude rychlejší a lepší, tak dobrá. Tady." Podal ti to.~ */
  IF ~~ THEN REPLY #59026 /* ~"Skvělý. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"Vítej zpátky u Bratří Malaků! Co pro tebe můžu udělat dneska?"~ */
  IF ~~ THEN REPLY #59028 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"Pochopil jsem, že máš nějaké problémy s bratrem. Rád bych pomohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"Neslyšel jsi něco o devovi, který by měl být v tomhle městě?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"Rád bych si něco koupil."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"Poslal mě tvůj bratr. Vzkazuje, že chce vyjednávat ohledně dědictví."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"Co chceš?"~ */
  IF ~~ THEN REPLY #59035 /* ~"Rád bych si něco koupil."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"Přesvědčil jsem tvého bratra, ať souhlasí s vyjednáváním. Co ty?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"Přesvědčil jsem tvého bratra, ať souhlasí s vyjednáváním. Co ty?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"Tvůj bratr mi nabídl, ať vyřeším vaši hádku k jeho prospěchu."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"Rád bych si něco koupil."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"Nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"No, já... zatraceně! Ano. Tady. Tady je kopie mého odkazu. Prohlídni si to a řekni jednomu z nás, jak ses rozhodl."~ */
  IF ~~ THEN REPLY #59042 /* ~"Já se vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"No, já... Zatraceně! Dobrá. Prohlídni si naše odkazy a řekni jednomu z nás, jak ses rozhodl."~ */
  IF ~~ THEN REPLY #59044 /* ~"Já se vrátím. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"Už ses rozhodnul?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"Rozhodl jsem se pro tebe. Po prostudování odkazů je mi jasné, že bys měl dostat celé dědictví."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"Rozhodl jsem se, že tvůj bratr dostane všechny peníze. Je jasné, že on má pravdu."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~Vyřešil jsem hádku mezi lihovarníkem a kovářem ve prospěch kováře. Lihovarník z toho radost neměl.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"Měli byste si to rozdělit na půl. Je jasné, že tak si to váš otec přál."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"Ani jeden z vás si peníze nezaslouží. Předám odkazy někomu, kdo ty peníze využije správně. Sbohem."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~Vyřešil jsem hádku mezi lihovarníkem a kovářem. Ošidil jsem je oba, moc velkou radost z toho neměli.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"Ještě ne. Ale rád bych se podíval na tvoje zboží."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"Oh, to udělal? No, tvá odměna bude rozhodně větší, jestli se rozhodneš pro mne... Já ti něco povím: Vezmi si jeho poslední vůli, prohlídni si ji a přesvědči ho, že to vyřešíš. Dostaneš odměnu. Jak ti to zní?"~ */
  IF ~~ THEN REPLY #59022 /* ~"Potřebuju tvoji kopii odkazu, ať si ji můžu prohlédnout."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"To zní jako dohoda. Půjdu si s ním promluvit. Sbohem."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"Myslím, že v tomhle jsem s ním. Měl by dostat celé dědictví."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"HA! Ha ha ha ha! Věděl jsem to!" Podal ti váček plný mincí. "Máš mý díky, kámo, přijď kdykoli budeš mít chuť. Jestli mě omluvíš, já si jdu dát přípitek!"~ */
  IF ~~ THEN REPLY #59057 /* ~"Jasná věc. Sbohem."~ */ JOURNAL #59004 /* ~Vyřešil jsem hádku mezi lihovarníkem a kovářem ve prospěch lihovarníka. Dostal jsem od něj váček měďáků.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~Jeho tvář zrudla a on zaječel. "CO? TY ZATRACENY ZRÁDNÝ ZLODĚJI! VYPADNI Z MÝHO KŠEFTU! VYPADNI!"~ */
  IF ~~ THEN REPLY #59059 /* ~"Dobře, dobře, Jdu pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~Vyprskl. "Ale... ale... to není... ale..." Povzdychl si. "Dobrá. Přijímám tvé rozhodnutí, ale nečekej za to ode mně projevy přátelství. Vypadni odtud." S kyselým výrazem ve tváři ti hodil pytlík mincí. "Slíbil jsem ti to, tady to máš. Vem si to."~ */
  IF ~~ THEN REPLY #59061 /* ~"Díky. Sbohem."~ */ JOURNAL #61386 /* ~Rozhodl jsem tu dědickou záležitost tak, že oba zůčastnění si mezi sebou majetek rozdělí. ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"Vítej zpátky! Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #59063 /* ~"Rád bych se podíval na tvé zboží."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"Nic, dík. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"Vypadni z mýho kšeftu, než zavolám stráže. Teď."~ */
  IF ~~ THEN REPLY #59067 /* ~"Dobrá. Jdu pryč."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"Pomoz mi! Zastav je!"~ */
  IF ~~ THEN REPLY #67919 /* ~"Uvidím, co s tím půjde udělat..."~ */ EXIT
END
