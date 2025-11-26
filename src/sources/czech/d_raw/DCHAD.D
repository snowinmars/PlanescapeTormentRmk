// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~Tato mrtvola spalovače s pískovými vlasy je strašně pokousaná. Krk tohoto mrtvého muže se stále svíjí, jako by se snažil odtrhnout od svého těla.~ */
  IF ~~ THEN REPLY #23967 /* ~"To je... zajímavé."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~Chadova mrtvola hovoří hlasem, který zní, jako když hází štěrk: "Co chceš, příteli?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"Kde jsi říkal, že je ten džbán?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"Rád bych věděl, kde je ta věc, o které jsi mluvil."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"Vyprávěj mi o sobě."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"Vyprávěj mi o ostatních Sběračích."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"Co mi můžeš říct o katakombách?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"Prozatím nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"Ahh, no tak." Odmlčí se. "Co bys rád?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"Kde jsi říkal, že je ten džbán?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"Rád bych věděl, kde je ta věc, o které jsi mluvil."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"Vyprávěj mi o sobě."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"Vyprávěj mi o ostatních Sběračích."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"Co mi můžeš říct o katakombách?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"Prozatím nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"Vplížíš se buď kolem umrlců nebo krys do Přemožených národů. Už jsi tam jednou byl. Půjdeš hlavní chodbou kolem tří dveří po tvé pravé ruce. Projdeš pod obloukem a potom vejdeš do prvních dveří po tvé levé ruce. Je to v tom nejbližším oblouku k zadní stěně. Neznám příkazové slovo... ale bude to na tebe pořád stříkat několik kapek. Je všechno jasné, příteli?"~ */
  IF ~~ THEN REPLY #23983 /* ~"Myslím, že ano. Měl bych několik dalších otázek, ačkoliv..."~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"Myslím, že ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"V pořádku, teď, o co se jedná: Je zde důvod, proč se Přemožené národy nazývají, tak, jak se nazývají. Je zde magická láhev, která je bezedná, džbán, který je schovaný v katakombách Přemožených národů. Získej ho a získáš tolik čerstvé vody, že ji nikdy nevypiješ."~ */
  IF ~~ THEN REPLY #23986 /* ~"Dobrá. Kde to je?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"Měl bych pro tebe několik dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"Já? Já jsem Chad. Bývalý umělec. Peníze, sláva, respekt, ženy... a potom bylo všemu konec. Připojil jsem se k Pharodovi a jeho družině a stal jsem se jedním z nejlepších vykradačů katakomb v bandě - mohl jsem cokoliv vyfouknout pod nosem samotné královny ghúlů. Potom... potom jsem se stal domýšlivým, stal jsem se součástí jedné z těchto podzemních katakomb - to je to, co nazývám *opravdovými* katakombami tady dole - a začal jsem jíst potravu vargouill. Skoro jsem se sám stal vargouillou. Odkázaný pouze sám na sebe a na sílu svojí vůle. Dobře, že jsi rychle dorazil."~ */
  IF ~~ THEN REPLY #23990 /* ~"Aha. Měl bych pro tebe několik dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~


"Skutečně dobrá věc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"Heh... bylo nás tu mnoho dobrých. Gris byl nejlepší, i když samozřejmě, až po mně."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"Gris je také po smrti."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"Měl bych několik dalších otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"On je?" Jeho hlas znatelně ožívá. "Alespoň nebude krákat o tom, jak je o tolik lepší než já."~ */
  IF ~~ THEN REPLY #23997 /* ~"Ne, pravděpodobně ne. Mohl bys, prosím tě, zodpovědět některé další otázky?"~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"Tak bych si to nepředstavoval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"Co bych ti řekl o katakombách? Spousta příšer a pokud jsi chytrý, nebudeš tam dole ztrácet čas. Vezmeš to, co potřebuješ a vypadneš. Je zde příliš mnoho míst, kde číhají nástrahy a tato místa se stala domovem věcí, které je lepší nepotkat. Moje rada zní: jakmile budeš moct, vem nohy na ramena a pryč odsud."~ */
  IF ~~ THEN REPLY #24000 /* ~"Jen mi odpověz na některé moje otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"Beru to v úvahu."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~Když se přiblížíš, mrtvola pokaždé zkroutí svůj krk. "Stále jsi nenašel toho, kdo mě zabil, že ano?" ptá se mrtvola.~ */
  IF ~~ THEN REPLY #24003 /* ~"Ještě ne. Pracuju na tom. Nejdřív ale potřebuju několik odpovědí."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"Ještě ne, ale pracuju na tom."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"Pohni se, troubo! Nevíš, jak dlouho může můj krk vydržet tuhle námahu..."~ */
  IF ~~ THEN REPLY #24006 /* ~"Řekni mi, co mi za to dáš, když to udělám."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"Povídej mi o sobě."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"Řekni mi něco o těch katakombách."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"Co jsi to chtěl, abych udělal?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"Dobrá, dobrá. Není třeba se rozčilovat."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"Slíbil jsem, že ti řeknu... jak najít... argh... magickou věc, která by se ti, myslím, mohla hodit..."~ */
  IF ~~ THEN REPLY #24012 /* ~"Dobře, dobře. Ještě víc informací, prosím..."~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"Je mi to jasný. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"Koukni... hlava se mi asi rozskočí... opravdu nemám *čas* se právě teď vybavovat... zeptej se mě... později."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"Co jsi to chtěl, abych udělal?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"Co ode mne potřebuješ?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"Mimochodem, co to chceš?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"Vidíš... tenhle... krk?" Krk se natahuje a stahuje jako karamela. "Zatracené vargouilly mě dostaly. Jsem mrtev a... já potřebuju mít hlavu, tam kde má být, pokud se nechci stát... jednou z těch zpropadených... věcí." S námahou hovoří. "V této sekci zabij... v... šech... ny... vargouilly... potom... mě od toho zachráníš."~ */
  IF ~~ THEN REPLY #24019 /* ~"Co mi za to dáš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"Máš to."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~Všímáš si, že Chadův krk je teď lepší... už se tak nevydouvá, jako by se chtěl oddělit od torza. "Díky, příteli... alespoň teď vím, že nebudu vargouillou na věky... Chceš teď svoji odměnu?"~ */
  IF ~~ THEN REPLY #24022 /* ~"Pověz."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"Ne. Zodpověz mi některé další otázky."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"Na oplátku... ti řeknu ... jak se dostaneš k... mocné kouzelné věci... moje mrtvé já mi říká... můžeš to potřebovat..."~ */
  IF ~~ THEN REPLY #24025 /* ~"Co to je?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"Jdu si po svých."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"Budu na to myslet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"Najdi to a ... potom ti řeknu. Dřív ne."~ */
  IF ~~ THEN REPLY #24029 /* ~"Fajn. Odcházím."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"Budu na to myslet. Sbohem."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~Tato mrtvola sběrače s pískovými vlasy je celá ošklivě pokousaná. Krk mrtvého muže se stále svíjí, jako by se snažil odtrhnout od svého těla. S námahou v hlase říká: "Hej... já jsem Chad... potřebuju tvoji pomoc..."~ */
  IF ~~ THEN REPLY #24032 /* ~"Co je s tebou?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"Co mi můžeš říct o těchto katakombách?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"Řekni mi něco o sobě."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"Kde jsme?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"Ne. Sbohem."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
