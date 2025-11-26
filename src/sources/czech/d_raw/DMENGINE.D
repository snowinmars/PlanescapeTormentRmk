// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~Vidíš kostku s dvěma rukama, dvěma nohama a dvěma malýma křídlama. Na přední části kostky je namalovaný pohyblivý obličej. Když ses přiblížil, stvoření na tebe zaměřilo oči.~ */
  IF ~~ THEN REPLY #48687 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~Ignoruj stvoření.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"Zdravím." Stvoření mluví monotónním bezpohlavním hlasem.~ */
  IF ~~ THEN REPLY #48690 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"No nic. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~Stvoření se na tebe dál prázdně dívá. "Vyslov svou otázku."~ */
  IF ~~ THEN REPLY #48693 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"Co jsi zač?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"Co jsi zač?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"Co přesně Rubikon dokáže?"~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"Chci vytvořit dungeon, kterým bych si mohl projít."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"Chci použít portálové čočky a jít někam jinam."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"Jak se odsud dostanu?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"Jsou tady v Rubikonu nějaká nebezpečí, o  kterých bych měl vědět?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"My jsme modron."~ */
  IF ~~ THEN REPLY #48701 /* ~"Jmenuješ se Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"My jsme modron. My nemáme jméno. My jsme modron. Vše, co zde vidíš, je modron. Jsme jedním."~ */
  IF ~~ THEN REPLY #48705 /* ~"Tak jak od sebe odlišujete jednotlivé modrony?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~Modron chvíli přemýšlí nad tvou otázkou. "My víme. My jsme modron. Jsme částí celku. Stejně jako ty rozeznáš prsty jako část ruky, my rozeznáme každou část celku."~ */
  IF ~~ THEN REPLY #48709 /* ~"A co ty, jako individualita..."~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"To je zajímavé. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"My jsme modron, jsme quadrone."~ */
  IF ~~ THEN REPLY #48713 /* ~"Co je to modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"Co je to quadrone?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"My jsme modron. Tak je identifikovaná naše rasa."~ */
  IF ~~ THEN REPLY #48718 /* ~"Tak co je to quadrone?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"V naší rase jsme identifikování jako typ quadrone."~ */
  IF ~~ THEN REPLY #48722 /* ~"Tak co je to modron?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"Toto je Projekt Rubikon - Konstrukt dungeonu."~ */
  IF ~~ THEN REPLY #48726 /* ~"A co přesně to je?"~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~Modron začal vydávat tiché bzučení, zatímco ti odpovídá: "Rubikon: Cílem projektu je určit dynamiku, jak sociální, tak asociální, která zahrnuje prostředí běžně zařazované jako dungeon a pokusit se o vysvětlení odchylek, jež nastávají v takovýchto prostředích."~ */
  IF ~~ THEN REPLY #48730 /* ~"A jak to chceš udělat?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"O jakých odchylkách to mluvíš?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"Rubikon dokáže vytvořit sérii propojených místností ve způsobu, jež se většinou označuje jako *dungeon*. Každý dungeon může mít jedno ze tří nastavení obtížnosti: lehkou, normální a těžkou, pak je zaplněn monstry, pastmi a poklady podle zvolené obtížnosti. Po vytvoření je možný průzkum dungeonu." Modron začal tiše bzučet.~ */
  IF ~~ THEN REPLY #48735 /* ~"Co je to za bzučení?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"Říkal jsi něco o odchylkách?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"Zajímavé. Rád bych si jeden takový dungeon vyzkoušel."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"Je nutné zodpovědět otázky: Co láká lidi do dungeonů? Proč tam lidé vcházejí, i když jsou to nebezpečná místa? Proč vůbec existují dungeony? Jaká je dynamika fungujícího dungeonu. Nerozumíme tomu..." Odmlčel se. "Já... já ne..."~ */
  IF ~~ THEN REPLY #48748 /* ~"Zajímavé. Rád bych si jeden takový dungeon vyzkoušel."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"Začal jsi říkat *já* místo *my*..."~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~Modron dlouho mlčel, než ti nakonec odpověděl. "Žádost zamítnuta... Projekt zastaven z důvodu... nehody."~ */
  IF ~~ THEN REPLY #48753 /* ~"Jaké nehody?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"Konstrukt dungeonu se stal nestabilním, důvod nejistý. Jističe se zaktivovaly a způsobily kolaps dungeonu, důvod nejistý. Funkce portálových čoček selhala a přerušila kontakt s domovskou sférou Mechanus, důvod nejistý. Reset dungeonu nutný."~ */
  IF ~~ THEN REPLY #48757 /* ~"Tak proč ho nezresetuješ?"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"Reset může být zahájen pouze ředitelem projektu. Ředitel projektu dezintegrován. Portálové čočky nefunkční, kontakt s Mechanem přerušen. Není možné získat náhradního ředitele z Mechanu."~ */
  IF ~~ THEN REPLY #48761 /* ~"Takže to shrneme. Nemůžeš resetovat bez ředitele, ale bez resetu nemůžeš získat ředitele?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~Modron se tváří, jakoby měl obavy. "Předpoklad správný. Projekt zastaven."~ */
  IF ~~ THEN REPLY #48765 /* ~"Hele, já jsem dobrodruh a už jsem pár dungeonů prolezl. Proč bych nemohl být tvůj ředitel, alespoň na čas?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~Místnost je najednou plná bzučivého zvuku, který stejně náhle utichl. "Asistence uvítána. Jsi nyní ředitel projektu. Zadej úkol."~ */
  IF ~~ THEN REPLY #48769 /* ~"Resetuj dungeon."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"Inicializuji reset..." Místnost se zaplnila hlubokým dunivým zvukem, který se dá spíš cítit, než slyšet. "Existující dungeon rozrušen..." Zvuk nabírá na intenzitě a podlaha začíná vibrovat. "Inicializuji nový dungeon..." Zvuk je teď tak hlasitý, že máš strach, aby ti nepraskla hlava. Najednou je ticho. "Reset dokončen. Status konstruktu dungeonu: Jednoduchý. Očekávám další instrukce, Řediteli."~ */
  IF ~~ THEN REPLY #48771 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"Rubikon dokáže vytvořit sérii propojených místností ve způsobu, jež se většinou označuje jako *dungeon*. Každý dungeon může mít jedno ze tří nastavení obtížnosti: lehkou, normální a těžkou. Dungeon je pak zaplněna monstry, pastmi a poklady podle zvolené obtížnosti. Po vytvoření je možný průzkum dungeonu." Modron se odmlčel. "Alternativní možnosti jsou přístupné pomocí portálových čoček."~ */
  IF ~~ THEN REPLY #48774 /* ~"Jaké alternativní možnosti?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"Rubikon dokáže vytvořit průchod do další lokace tak, že se dočasně připojí na známý existující portál. Tento efekt je známý jako *portálové čočky*. Tak je umožněno využití portálu z prostředí Rubikonu bez nutnosti cestovat do lokace portálu."~ */
  IF ~~ THEN REPLY #48778 /* ~"Takže pokud znám portál, můžu jím odsud projít?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"Správně, řediteli."~ */
  IF ~~ THEN REPLY #48780 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"Vyber úroveň obtížnosti."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"Už je to na lehké, takže jenom udělej nový dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"Teď je nastaven na lehkou, tak to změň na normál."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"Teď je nastaven na lehkou, tak to změň na těžkou."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"Už je to na normálu, takže jenom udělej nový dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"Teď je nastaven na normál, tak to změň na lehkou."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"Teď je nastaven na normál, tak to změň na těžkou."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"Už je to na těžké, takže jenom udělej nový dungeon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"Teď je nastaven na těžkou, tak to změň na normál."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"Teď je nastaven na těžkou, tak to změň na lehkou."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"No nic, nech to tak, jak to je."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"Inicializuji reset..." Místnost se zaplnila hlubokým dunivým zvukem, který se dá spíš cítit, než slyšet. "Existující dungeon rozrušen..." Zvuk nabírá na intenzitě a podlaha začíná vibrovat. "Inicializuji nový dungeon..." Zvuk je teď tak hlasitý, že máš strach, aby ti nepraskla hlava. Najednou je ticho. "Dungeon vytvořen. Očekávám další instrukce, řediteli."~ */
  IF ~~ THEN REPLY #48794 /* ~"To je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"Nechávám momentální nastavení. Očekávám další instrukce, řediteli."~ */
  IF ~~ THEN REPLY #48796 /* ~"To je prozatím všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"Uveď cíl určení, řediteli."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"Úl, blízko Hadrníkova náměstí."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"Úl, blízko Márnice."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"Úl, blízko tržiště."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"Úl, blízko Doutnajícího nebožtíka."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"Dolní Čtvrť."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"Úřednická Čtvrť."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"Katakomby Truchlícího kamene."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"No nic. To je prozatím všechno. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~Vidíš modronského inženýra. "Zdravím."~ */
  IF ~~ THEN REPLY #48914 /* ~"Mám nějaké otázky...~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"Já..." Modron se tváří zmateně, na chvíli se odmlčel. Místnost na chvíli zaplnilo bzučení, ale rychle utichlo. "My jsme modron. Jsme částí celku. Celek je modron. Není nic jiného."~ */
  IF ~~ THEN REPLY #48917 /* ~"To je zajímavé. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~Modron se na tebe znepokojeně podíval, pak se rozhlédl po místnosti. "Máš pravdu. My jsme modron. My jsme celek... A už o tom nebudeme diskutovat."~ */
  IF ~~ THEN REPLY #48920 /* ~"Dobrá. Rád bych si vyzkoušel nějaký ten dungeon."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"Vím, co jsem slyšel. Začal jsi říkat *já* a..."~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~Modron se na tebe mračí. V jeho odpovědi slyšíš náznak hněvu. "Ne. My jsme modron. My jsme celek... A už o tom nebudeme diskutovat." Místnost na chvíli zaplnilo rozzuřené bzučení.~ */
  IF ~~ THEN REPLY #48925 /* ~"Dobrá. Rád bych si vyzkoušel nějaký ten dungeon."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"Rubikon je cenný projekt a..." Na chvíli se odmlčel. "Já... My jsme spokojení."~ */
  IF ~~ THEN REPLY #48929 /* ~"Říkal jsi něco o odchylkách?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"Zajímavé. Rád bych si vyzkoušel nějaký ten dungeon."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~Modron zaváhal, než odpověděl. "Východ nepřístupný, projekt zastaven..." Místnost je zaplněna zmateným bzučením, které přestalo stejně náhle, jako začalo.~ */
  IF ~~ THEN REPLY #66395 /* ~"Jaký projekt? O čem to mluvíš?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"Ano, Řediteli. Neodděluj se od společníků, dokud budeš v bludišti. Pokud by bylo bludiště zresetováno, nebo by bylo zvoleno nové nastavení obtížnosti, každý, kdo by zůstal v bludišti, bude zabit."~ */
  IF ~~ THEN REPLY #68065 /* ~"Aha... nebudu předělávat svou partu, dokud budu v bludišti. Ještě něco?"~ */ JOURNAL #68071 /* ~Dokud budu v modronském bludišti, nemohu předělávat svou partu. Pokud by bylo bludiště zresetováno, nebo by se změnila obtížnost, každý, kdo by zůstal v bludišti, zemře.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"Ano, Řediteli. Neodkládej v bludišti předměty nebo vybavení. Pokud by bylo bludiště zresetováno, nebo by bylo zvoleno nové nastavení obtížnosti, vše ponechané v bludišti bude zničeno."~ */
  IF ~~ THEN REPLY #68067 /* ~"Aha... nesmím v bludišti odhodit nic důležitého. Ještě něco?"~ */ JOURNAL #68072 /* ~Dokud budu v modronském bludišti, nesmím odhodit nic důležitého. Pokud by bylo bludiště zresetováno, nebo by se změnila obtížnost, vše, co by zůstalo v bludišti, bude zničeno.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~Odmlčel se a chvíli přemýšlí. "Ne, Řediteli."~ */
  IF ~~ THEN REPLY #68069 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END
