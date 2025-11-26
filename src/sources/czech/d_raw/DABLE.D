// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DABLE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #2873 /* ~Starší muž vypadá tak trochu jako by vystoupil z nějaké knihy. Jeho oblečení je extrémně čisté, vyžehlené a zjevně se o něj dobře stará. Často se zastavuje, aby si z obleku oprášil neviditelnou částečku prachu nebo nějaké smítko. Na jeho tunice je vyšitý symbol stylizované dýky, probodávající plamen.~ */
  IF ~~ THEN REPLY #2874 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30849 /* ~Nechej muže být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 23.0
  SAY #30708 /* ~Mužovy oči tě přejely a zarazily se na Mortem. "Ale xakru! Podívejte se na to! Lítající lebka!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 292
END

IF ~~ THEN BEGIN 2 // from:
  SAY #30709 /* ~Muž zalapal po dechu. "U nespravedlivých zákonů Tueny Bezcitného!"~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30850 /* ~"Kdo?"~ */ GOTO 3
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30851 /* ~"Kdo?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30852 /* ~"Kdo?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #30710 /* ~Náhle si zakryl ústa a omluvně se kouká kolem. "Omlouvám se, omlouvám. Ten muž byl hrozivý tyran, teď už je dávno mrtvý. Jeho jméno by se nemělo vyslovovat, je dost vulgární."~ */
  IF ~~ THEN REPLY #30853 /* ~"Tak si hlídej jazyk."~ */ GOTO 7
  IF ~~ THEN REPLY #30854 /* ~"Mluv jak chceš, mě je těžké urazit."
~ */ GOTO 7
  IF ~~ THEN REPLY #30855 /* ~Kašli na to.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #30711 /* ~Náhle si zakryl ústa a omluvně se podíval na Fall-From-Grace: "Omlouvám se, omlouvám. Ten muž byl hrozivý tyran, teď už je dávno mrtvý. Jeho jméno by se nemělo vyslovovat, je dost vulgární Přijměte mé omluvy, Paní Grace. Nechtěl jsem urážet."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 128
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30712 /* ~"Ano, ano, asi máš pravdu."~ */
  IF ~~ THEN REPLY #30856 /* ~Zkus získat jeho pozornost.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #30713 /* ~Náhle si zakryl ústa a omluvně se podíval na Annah: "Omlouvám se, omlouvám. Ten muž byl hrozivý tyran, teď už je dávno mrtvý. Jeho jméno by se nemělo vyslovovat, je dost vulgární Přijměte mé omluvy, madam. Nechtěl jsem urážet."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 167
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 5.0
  SAY #30714 /* ~Otočil se zpět k Mortemu. "Sledujte! Lebka, vznášející se, levitující nad zemí, reagující na okolí, která má sluchové, mluvící a vizuální schopnosti."~ */
  IF ~~ THEN REPLY #30857 /* ~"On -"~ */ GOTO 8
  IF ~~ THEN REPLY #30858 /* ~"Já-"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30715 /* ~Otočil se k tobě, jako bys byl jeho důvěrník. "To je jeden z důvodů, proč se mi Sféry nikdy neomrzí, pane - když už si myslíš, že jsi viděl vše, Sféry ti ukáží další roh, za který můžeš nakouknout..." Slavnostně pozvedl paže. "... a nejednou se ti otevřou nové, zázračné výhledy.""~ */
  IF ~~ THEN REPLY #30859 /* ~"Vlastně, mluvící a lítající lebka je docela běžná - stejně jako neustále ožívající chlápci bez paměti, kteří pročesávají Sigil a pátrají po své ztracené identitě."~ */ GOTO 9
  IF ~~ THEN REPLY #30860 /* ~"Nejsem si jistý, jestli má Morte dostatečnou kvalifikaci na 'nové, zázračné výhledy'."~ */ GOTO 9
  IF ~~ THEN REPLY #30861 /* ~"Ano, ano... Mám nějaké otázky..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #30716 /* ~Muž tě ignoruje a dívá se na Morteho. "No teda, lebka..." začal.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 293
END

IF ~~ THEN BEGIN 10 // from:
  SAY #30717 /* ~Vypadá to, že na tebe muž úplně zapomněl, v šoku se otáčí a hledá 'další' létající lebku. "Ne! Kde? Kde?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 294
END

IF ~~ THEN BEGIN 11 // from:
  SAY #30718 /* ~"Kde? Nevidím ji!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 295
END

IF ~~ THEN BEGIN 12 // from:
  SAY #30719 /* ~Otočil se a říká: "Vidím, že si rád děláš z lidí blázny."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 296
END

IF ~~ THEN BEGIN 13 // from: 18.2 19.2 20.2 21.2 22.1
  SAY #30720 /* ~Vypadá to, jako by tě poprvé uviděl...~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #30721 /* ~Mužovy oči se rozšířily. "U nespravedlivých zákonu Tueny ..." Zarazil se a vypadá omluvně. "Chtěl jsem říct, jsi v pořádku? Vypadáš..." Pátrá v mysli po vhodném slově. "...zraněný."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #30862 /* ~"Jsem v pořádku. Mám nějaké otázky..."~ */ GOTO 16
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #30863 /* ~"Jsem v pořádku."~ */ EXTERN ~DANNAH~ 168
END

IF WEIGHT #4 /* Triggers after states #: 24 17 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #30722 /* ~Starší muž vypadá tak trochu jako by vystoupil z nějaké knihy. Jeho oblečení je extrémně čisté, vyžehlené a zjevně se o něj dobře stará. Často se zastavuje, aby si z obleku oprášil neviditelnou částečku prachu nebo nějaké smítko. Na jeho tunice je vyšitý symbol stylizované dýky, probodávající plamen.~ */
  IF ~~ THEN REPLY #30864 /* ~"Zdravím..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.0 18.1 19.1 20.1 21.1 22.0 25.3 26.1 27.1 28.2 29.3 30.3 31.2 32.3 33.1 34.6 35.1 36.3 37.1 38.1 40.1 41.1 42.1 43.4 45.2 47.2 49.10 50.9 52.3 54.3 55.2 57.2 61.3 63.2 64.4 65.2 66.2 67.2 70.2 71.2 75.3 76.2 77.2 79.2 81.1 82.0 83.3 84.1 86.0 87.1 102.0 103.0 104.0 105.0 106.0 107.0 108.0
  SAY #30723 /* ~Muž přikývl... netrpělivě. "Jistě, jistě! Vždy velice rád odpovídám na otázky, u kterých znám odpověď, mladý pane."~ */
  IF ~  Global("CW_Research_Language","AR0600",2)
~ THEN REPLY #30865 /* ~"Zjistil jsi něco o tom zápisu v 'deníku', který jsem ti ukázal?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ JOURNAL #30878 /* ~Schopný Přemýšlivě-myslící mi řekl, že jazyk v tom podivném deníku je mrtvý. Zmínil se, že slyšel o jazykovědci Finamovi v Městské hale, který by mi mohl text přeložit.~ */ GOTO 86
  IF ~  Global("CW_Research_Ravel","AR0600",2)
~ THEN REPLY #30866 /* ~"Zjistil jsi něco dalšího o Ravel Puzzlewell?"~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",3)
~ JOURNAL #30880 /* ~Schopný Přemýšlivě-myslící mi řekl, že Ravel byla uvězněna v jednom z bludišť Paní Bolesti, a že klíč k portálu do jejího bludiště by mělo být něco Ravelino. Moc mi to nepomohlo.~ */ GOTO 87
  IF ~  Global("CW_Research_Incarnations","AR0600",2)
~ THEN REPLY #30868 /* ~"Našel jsi něco zajímavého o mužích, kteří odpovídají mému popisu?"~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",3)
~ JOURNAL #30881 /* ~Schopný Přemýšlivě-myslící mi řekl o osobách, které považuji za své dvě předchozí 'inkarnace'... krvežíznivý vrah a podezřelý poustevník... a Vnímavý, což je divné... který před tím, než zmizel, zničil všechny své záznamy.~ */ GOTO 88
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30869 /* ~"Můžeš pro mě něco vyzkoumat?"~ */ GOTO 83
  IF ~~ THEN REPLY #30870 /* ~"Chtěl bych se zeptat na tebe..."~ */ GOTO 25
  IF ~~ THEN REPLY #30871 /* ~"Chtěl bych se zeptat na tohle místo..."~ */ GOTO 32
  IF ~~ THEN REPLY #30873 /* ~"Mám nějaké otázky ohledně města..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #30874 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 78
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #30876 /* ~"Co víš o Válce Krve?"~ */ GOTO 82
  IF ~~ THEN REPLY #30877 /* ~"Vlastně se nemám na co zeptat. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #30724 /* ~Starší muž vypadá tak trochu jako by vystoupil z nějaké knihy. Jeho oblečení je extrémně čisté, vyžehlené a zjevně se o něj dobře stará. Často se zastavuje, aby si z obleku oprášil neviditelnou částečku prachu nebo nějaké smítko. Na jeho tunice je vyšitý symbol stylizované dýky, probodávající plamen.~ */
  IF ~~ THEN REPLY #30882 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30883 /* ~Nechej muže být.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #30725 /* ~Mužův pohled tě přejel a zatřpytil se, když se zarazil na Nordomovi. "Quadrone?" Vypadá zmateně. "No.. oh! Toulavý modron! Oh jéje!" Vypadá docela úzkostlivě.~ */
  IF ~~ THEN REPLY #30887 /* ~"Co se děje?"~ */ GOTO 19
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30888 /* ~"Nezatěžuj se s tím. Mám ještě otázku..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30889 /* ~"Nezatěžuj se s tím. Mám nějaké otázky..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #30726 /* ~"No, je to tulák. Kontaminovaný modron, a takoví modroni získávají sílu ze své domovské Sféry, Mechanu. Víš. všichni modroni u sebe mají něco ze Zdroje Mechanu... a pokud jeden z nich nepracuje správně, nebo opustí ostatní modrony, oslabuje to celý Mechanus."~ */
  IF ~~ THEN REPLY #30890 /* ~"Pokračuj..."~ */ GOTO 20
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30891 /* ~"Na tohle nemám čas. Mám nějaké otázky..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30892 /* ~"Na tohle nemám čas. Mám nějaké otázky..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #30727 /* ~"Když ho ostatní - ostatní modroné- najdou, přivedou ho zpět na Mechanus a potrestají. Bude zničen. Poškozený modron se musí vrátit ke Zdroji."~ */
  IF ~~ THEN REPLY #30893 /* ~"Ale proč?"~ */ GOTO 21
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30894 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30895 /* ~"Aha. Mám nějaké otázky..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #30728 /* ~"Protože není modron, ale oslabuje je svou přítomností. Oslabuje Mechanus a nemá na to právo. Musí se stát součástí Mechanu, aby se křivda napravila."~ */
  IF ~~ THEN REPLY #30899 /* ~"*Nechci* ho napraveného. Nordomovi se líbí být takový, jaký je."~ */ GOTO 22
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30901 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30902 /* ~"Aha. Mám nějaké otázky..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #30729 /* ~"Tak to je tedy velice nesprávné! Existují lidé, které bych mohl kontaktovat..."~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30903 /* ~"Mám nějaké otázky..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30904 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF WEIGHT #1 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 23 // from:
  SAY #30730 /* ~Tohoto staršího muže jsi potkal již dříve. Ztratil se ve svých myšlenkách a tebe si ještě nevšiml.~ */
  IF ~~ THEN REPLY #30905 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30906 /* ~Nechej ho být.~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 24 // from:
  SAY #30731 /* ~Tohoto staršího muže jsi potkal již dříve. Ztratil se ve svých myšlenkách a tebe si ještě nevšiml.~ */
  IF ~~ THEN REPLY #30907 /* ~"Zdravím..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30908 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.4 26.0 27.0 28.1 29.2 30.2 31.1
  SAY #30732 /* ~"Já? Jistě..."~ */
  IF ~~ THEN REPLY #30909 /* ~"Kdo jsi?"~ */ GOTO 26
  IF ~~ THEN REPLY #30910 /* ~"Co tady děláš?"~ */ GOTO 27
  IF ~~ THEN REPLY #30911 /* ~"Co znamená ten symbol vyšitý na tvé tunice?"~ */ GOTO 28
  IF ~~ THEN REPLY #30912 /* ~"Vlastně bych se ještě chtěl zeptat..."~ */ GOTO 16
  IF ~~ THEN REPLY #30913 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #30733 /* ~"No, mé jméno je Schopný Přemýšlivě-myslící."~ */
  IF ~~ THEN REPLY #30914 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30915 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30916 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #30734 /* ~"Nedávno jsem prošel administrativní zkouškou a získal jsem status 'A9,' výzkumný konzultant v Hale Záznamů, jeden z mnoha pomocníků, specializujících se na fyzikální zákony a historii Sigilu. Zkoumám předměty a zákony, které zajímají ostatní. Je to vážně docela fascinující..."~ */
  IF ~~ THEN REPLY #30918 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30919 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30920 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #30735 /* ~"No, tohle je  symbol  Bratrstva Řádu. Jsme odpovědní za většinu zákonodárství a provozování soudů tady v Sigilu. Mnoho soudců, advokátů a úředníků patří mezi členy našeho Řádu. Jsme rádi, že pomáháme zákonům Sigilu a udržujeme věci v řádu. Snažíme se naučit se všechny řády, ať už týkající se Sigilu, Sfér nebo samotného mnohovesmíru."~ */
  IF ~~ THEN REPLY #30922 /* ~"V co věří Bratrstvo Řádu?"~ */ JOURNAL #31027 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Bratrstvo Řádu věří, že mnohovesmír je řízen zákony. Když někdo pozná všechny zákony, porozumí mnohovesmíru. Navíc pochopením zákonů a jejich omezení se naučí vyhýbat se některým zákonům.~ */ GOTO 29
  IF ~~ THEN REPLY #30923 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30924 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30925 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 45.0 49.0 50.0
  SAY #30736 /* ~"Bratrstvo Řádu věří, že mnohovesmír se řídí zákony. Když někdo zná zákony, rozumí mnohovesmíru. To je náš cíl. Porozuměním zákonů a jejich omezení se naučíme, jak se vyhnout některým zákonům."~ */
  IF ~~ THEN REPLY #30927 /* ~"Pokud ti nevadí, že se ptám, jakou výhodu má taková pozice?"~ */ GOTO 30
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #30929 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30930 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30931 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #30737 /* ~"No, naše společenstvo nám umožňuje snadno číst různé jazyky. A někdy můžeme využít řády mnohovesmíru ke svému prospěchu."~ */
  IF ~  PartyHasItem("P_JRNL")
~ THEN REPLY #30933 /* ~"Jazyky? Dokázal bys přečíst tohle? Myslím si, že je to nějaký deník."~ */ GOTO 31
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #30934 /* ~"Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30935 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30936 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #30738 /* ~S pozdviženým obočím si to prohlédl. "Divné, nerozumím tomu. Je to jazyk?"~ */
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30937 /* ~"Myslím si to. Můžeš to pro mě prozkoumat?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ JOURNAL #30941 /* ~V Úřednické čtvrti jsem potkal Schopného Přemýšlivě-myslícího, který pracuje jako výzkumný konzultant a je ochotný pro mě vyhledat pár věcí.~ */ GOTO 84
  IF ~~ THEN REPLY #30938 /* ~"Nejsem si jistý. Mám pro tebe ještě další otázky..."~ */ GOTO 25
  IF ~~ THEN REPLY #30939 /* ~"Opravdu nevím.. Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #30940 /* ~"Mě samotnému to není jasné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.5 33.0 34.5 35.0 36.2 37.0 38.0 40.0 41.0 42.0
  SAY #30739 /* ~"Musím se přiznat, že o téhle části Úřednické čtvrti moc nevím, pane, ale ptej se."~ */
  IF ~~ THEN REPLY #30942 /* ~"Proč se tomu Říká Úřednická Čtvrť?"~ */ GOTO 33
  IF ~~ THEN REPLY #30943 /* ~"Co je tady v okolí zajímavého?"~ */ GOTO 34
  IF ~~ THEN REPLY #30944 /* ~"Nevíš o nějaké práci v okolí?"~ */ GOTO 42
  IF ~~ THEN REPLY #30945 /* ~"Vlastně jsem se tě chtěl zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30946 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #30740 /* ~"Je to sídlo většiny Sigilských záznamů a administrace. Čtvrť dostala název podle svého osazenstva. Žije tady většina úředníků, písařek, kněží, byrokratů a administrativních důstojníků."~ */
  IF ~~ THEN REPLY #30947 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30948 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30949 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #30741 /* ~"Poblíž je jeden z nejlepších advokátů v Sigilu. Také je blízko Městská hala, domov Společenství Vjemu." Snížil hlas. "A také bordel, pane, Nevěstinec duševních rozkoší"~ */
  IF ~~ THEN REPLY #30950 /* ~"Pověz mi o advokátovi."~ */ GOTO 35
  IF ~~ THEN REPLY #30951 /* ~"Pověz mi o Hale."~ */ GOTO 36
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30952 /* ~"Řekni mi o bordelu."~ */ GOTO 38
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30953 /* ~"Řekni mi o bordelu."~ */ GOTO 39
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30954 /* ~"Řekni mi o bordelu."~ */ GOTO 41
  IF ~~ THEN REPLY #30955 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30956 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30957 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #30742 /* ~"Je jedním z Bratrstva Řádu, i když jeho pozice dost utrpěla od dob, kdy zažil několik nešťastných událostí. A já o nich mluvit nebudu. Jeho domov je přímo přes cestu,  na jih a východ odsud."~ */
  IF ~~ THEN REPLY #30958 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30959 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30960 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #30743 /* ~"Je to krásná budova, která slouží jako hlavní sídlo Společnosti Vjemu a také jako galerie umění ze Sigilu a sfér. Je to opera, muzeum, galérie, vinárna, taverna, tréninkové centrum, divadlo, sensoria... dá se tam nalézt spousta věcí."~ */
  IF ~~ THEN REPLY #30961 /* ~"Pověz mi o Společenství Vjemu."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Společenství Vjemu je nejprominentnější z patnácti Sigilských frakcí. Věří, že pravé tajemství mnohovesmíru se dají odhalit pouze přímým prožitím mnohovesmírů, jak jenom jeden dokáže, ochutnávajíc každou substanci, pociťujíc každou emoci a navštěvujíc každé místo v mnohovesmíru.~ */ GOTO 62
  IF ~~ THEN REPLY #30962 /* ~"Sensoria?"~ */ GOTO 37
  IF ~~ THEN REPLY #30963 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30964 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30965 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #30744 /* ~"Ano, Vnímaví vlastní mnoho senzorických krystalů, které v sobě obsahují zážitky lidí. Jakmile jsou jednou zaznamenány, stačí jinému, aby se kamene dotkl a zažije zkušenost zaznamenanou v kameni. Opravdu úchvatné!"~ */
  IF ~~ THEN REPLY #30967 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30968 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30969 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.2
  SAY #30745 /* ~Přikývl, vypadaje trochu zahanbeně. "Ano, občas tam chodívám... za konverzací. Je to velká kruhová budova v centru téhle části Čtvrti."~ */
  IF ~~ THEN REPLY #30970 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30971 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30972 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.3
  SAY #30746 /* ~Přikývl, vypadaje trochu zahanbeně. "Ano, občas tam chodívám... za konverzací." Otočil se k Fall-From-Grace. "Je to šlechetný cíl, který sledujete, Lady Grace. Přál bych si ale, abyste své studentky poučila o formálním režimu, možná jim dala přehled městských zákonů a pořádků, takže..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 129
END

IF ~~ THEN BEGIN 40 // from:
  SAY #30747 /* ~Chvíli si to probírá, pak přikývl a napřímil se. "Děkuji ti, Lady Grace." Otočil se zpět k tobě.~ */
  IF ~~ THEN REPLY #30975 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30976 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30978 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.4
  SAY #30748 /* ~Přikývl, vypadaje trochu zahanbeně. "Ano, občas tam chodívám... za konverzací." Pohlédl na Annah a zrudnul ještě více. "Je to velká, kruhová budova v centru téhle části Čtvrti."~ */
  IF ~~ THEN REPLY #30979 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30981 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30983 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 32.2
  SAY #30749 /* ~"Žádná současná."~ */
  IF ~~ THEN REPLY #30984 /* ~"Mám ještě nějaké otázky ohledně čtvrti..."~ */ GOTO 32
  IF ~~ THEN REPLY #30985 /* ~"Chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30986 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 16.6 45.1 47.1 49.9 52.2 54.2 55.1 57.1 61.2 63.1 64.3 65.1 66.1 67.1 70.1 71.1 75.2 76.1 77.1
  SAY #30750 /* ~"Otázky o Sigilu? Prosím, pane... ptej se, na co chceš!"~ */
  IF ~~ THEN REPLY #30987 /* ~"Zajímaly by mě společenstva."~ */ DO ~SetGlobal("Know_Factions","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #30988 /* ~"Zajímala by mě Paní Bolesti."~ */ GOTO 71
  IF ~~ THEN REPLY #30989 /* ~"Co je venku, za Sigilem?"~ */ GOTO 44
  IF ~~ THEN REPLY #30991 /* ~"Odkud přichází světlo? Nevidím slunce."~ */ GOTO 46
  IF ~~ THEN REPLY #30992 /* ~"Vlastně, Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #30993 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY #30751 /* ~"To nikdo neví, a ne snad, že by se to nepokoušeli zjistit. Na místech, kde nejsou žádné opravdové zdi, existují pevné zdi budov bez oken, kterými by se dalo nahlédnout dále. Někteří tvrdí, že se vyšplhali na zdi a podívali se přes zdi Sigilu, ale dokáží to něco popsat pouze jako *nic*..."~ */
  IF ~~ THEN REPLY #30994 /* ~Poslouchej dál.~ */ GOTO 45
  IF ~~ THEN REPLY #30995 /* ~Pokus se ho přerušit.~ */ GOTO 45
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #30996 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 89
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1 89.0
  SAY #30752 /* ~Pokračuje: "Je to nepřijatelné vysvětlení, ale je to stále záhada. Říká se, že krok za zdi Sigilu přenese cestovatele do náhodné sféry, ale nikdy to nebylo potvrzeno. Bratrstvo Řádu zorganizovalo mnoho výprav, ale ještě jsme nezískali žádné konkrétní informace."~ */
  IF ~~ THEN REPLY #30997 /* ~"Bratrstvo Řádu?"~ */ JOURNAL #31027 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Bratrstvo Řádu věří, že mnohovesmír je řízen zákony. Když někdo pozná všechny zákony, porozumí mnohovesmíru. Navíc pochopením zákonů a jejich omezení se naučí vyhýbat se některým zákonům.~ */ GOTO 29
  IF ~~ THEN REPLY #30998 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #30999 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31000 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY #30753 /* ~"Díky mlze je to docela obtížné zjistit najisto, takže ti rozumím. Světlo nepřichází ze slunce, ale z luminiscence, která zaplňuje nebe...""~ */
  IF ~~ THEN REPLY #31002 /* ~Poslouchej dál.~ */ GOTO 47
  IF ~~ THEN REPLY #31004 /* ~Pokus se ho přerušit.~ */ GOTO 47
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31006 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 90
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 90.0
  SAY #30754 /* ~Pokračuje: "Světlo dosáhne vrcholu, kterému se říká *vrchol*, potom tmavne, dokud není Sigil v úplné tmě, což je zvané *antivrchol*. Zdroj luminiscence je neznámý, ale pravděpodobně ho vyvolala Paní."~ */
  IF ~~ THEN REPLY #31007 /* ~"Paní?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #31009 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31010 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31011 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0
  SAY #30755 /* ~"Ano, v Sigilu existuje patnáct frakcí, zvaných též společenstva. Kdysi jich bývalo čtyřicet devět. Pak, asi před šesti sty léty, Paní Bolesti prohlásila, že zbude jenom patnáct. Později byla tahle událost nazvaná Velký Převrat..."~ */
  IF ~~ THEN REPLY #31012 /* ~Poslouchej dál.~ */ GOTO 49
  IF ~~ THEN REPLY #31013 /* ~Pokus se ho přerušit.~ */ GOTO 49
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31014 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 91
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 91.0
  SAY #30756 /* ~Pokračuje: "Byl to pořádný převrat, jelikož přes noc 34 frakcí vymřelo. Mnoho tisíců zemřelo meči nebo jinými prostředky... mnoho bylo prostě nalezeno v mrtvém stavu. Já jsem členem Bratrstva Řádu. Další jsou Věřící v pramen, Spalovači, Harmonium, Milosrdní zabijáci, Revoluční Liga, Společenství Vjemu a Chaotici."~ */
  IF ~~ THEN REPLY #31015 /* ~"Řekni mi o Bratrstvu Řádu."~ */ JOURNAL #31027 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Bratrstvo Řádu věří, že mnohovesmír je řízen zákony. Když někdo pozná všechny zákony, porozumí mnohovesmíru. Navíc pochopením zákonů a jejich omezení se naučí vyhýbat se některým zákonům.~ */ GOTO 29
  IF ~~ THEN REPLY #31016 /* ~"Řekni mi o Věřících v Pramen."~ */ JOURNAL #31028 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Věřící v Pramen, Boží Lidé, věří, že každá žijící věc v mnohovesmíru má potenciál a může se stát božstvem.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31017 /* ~"Řekni mi o Spalovačích."~ */ JOURNAL #31029 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Spalovači věří, že už jsme mrtví, že Sigil a Sféry jsou místo, kde skončíme poté, co zemřeme. Podle jejich víry je vše mrtvé a tato existence je falešná. Udržovat si k této existenci nějaká pouta nebo pocity jenom zabraňuje duši v pravé smrti.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31018 /* ~"Řekni mi o Spalovačích."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Spalovači věří, že už jsme mrtví, že Sigil a Sféry jsou místo, kde skončíme poté, co zemřeme. Podle jejich víry je vše mrtvé a tato existence je falešná. Udržovat si k této existenci nějaká pouta nebo pocity jenom zabraňuje duši v pravé smrti.~ */ GOTO 53
  IF ~~ THEN REPLY #31019 /* ~"Řekni mi o Harmoniu."~ */ JOURNAL #31031 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Harmonium je oddáno míru a harmonii ve Sférách... odtud také jejich jméno. Věří, že účel světí prostředky a jsou ochotni udělat téměř cokoli, aby lidé viděli věci 'jejich způsobem.'~ */ GOTO 55
  IF ~~ THEN REPLY #31020 /* ~"Řekni mi o Milosrdných Zabijácích."~ */ JOURNAL #31032 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Milosrdní Zabijáci věří, že spravedlnost je nade vše. Mallin, jejich poslední factol jednou řekl, že pokud je správně aplikován, vede trest k dokonalosti.~ */ GOTO 56
  IF ~~ THEN REPLY #31021 /* ~"Řekni mi o Revoluční Lize."~ */ JOURNAL #31033 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Revoluční Liga je po Sigilu velmi rozšířená. Věří, že všechny instituce jsou ustanoveny, aby jim blokovaly přístup k pravdě mnohovesmíru. Jediným způsobem, jak se dostat k pravdě, je zničit všechny organizace. Tvrdí, že pravda může být objevena pouze v případě, že budou všichni lidé úplně 'volní'.~ */ GOTO 58
  IF ~~ THEN REPLY #31022 /* ~"Řekni mi o Společenství Vjemu."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Společenství Vjemu je nejprominentnější z patnácti Sigilských frakcí. Věří, že pravé tajemství mnohovesmíru se dají odhalit pouze přímým prožitím mnohovesmírů, jak jenom jeden dokáže, ochutnávajíc každou substanci, pociťujíc každou emoci a navštěvujíc každé místo v mnohovesmíru.~ */ GOTO 62
  IF ~~ THEN REPLY #31023 /* ~"Řekni mi o Chaoticích."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Chaotici věří, že pouze přijmutím náhodného chaosu mnohovesmíru se může člověk naučit jeho tajemství.~ */ GOTO 64
  IF ~~ THEN REPLY #31024 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31025 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31026 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 29.1 30.1 52.1 54.1 55.0 57.0 61.1 63.0 64.2 65.0 66.0 67.0 70.0
  SAY #30757 /* ~"Oh? Která, pane?"~ */
  IF ~~ THEN REPLY #31037 /* ~"Řekni mi o Bratrstvu Řádu."~ */ JOURNAL #31027 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Bratrstvo Řádu věří, že mnohovesmír je řízen zákony. Když někdo pozná všechny zákony, porozumí mnohovesmíru. Navíc pochopením zákonů a jejich omezení se naučí vyhýbat se některým zákonům.~ */ GOTO 29
  IF ~~ THEN REPLY #31038 /* ~"Řekni mi o Věřících v Pramen."~ */ JOURNAL #31028 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Věřící v Pramen, Boží Lidé, věří, že každá žijící věc v mnohovesmíru má potenciál a může se stát božstvem.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31039 /* ~"Řekni mi o Spalovačích."~ */ JOURNAL #31029 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Spalovači věří, že už jsme mrtví, že Sigil a Sféry jsou místo, kde skončíme poté, co zemřeme. Podle jejich víry je vše mrtvé a tato existence je falešná. Udržovat si k této existenci nějaká pouta nebo pocity jenom zabraňuje duši v pravé smrti.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31040 /* ~"Řekni mi o Spalovačích."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Spalovači věří, že už jsme mrtví, že Sigil a Sféry jsou místo, kde skončíme poté, co zemřeme. Podle jejich víry je vše mrtvé a tato existence je falešná. Udržovat si k této existenci nějaká pouta nebo pocity jenom zabraňuje duši v pravé smrti.~ */ GOTO 53
  IF ~~ THEN REPLY #31041 /* ~"Řekni mi Harmonium."~ */ JOURNAL #31031 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Harmonium je oddáno míru a harmonii ve Sférách... odtud také jejich jméno. Věří, že účel světí prostředky a jsou ochotni udělat téměř cokoli, aby lidé viděli věci 'jejich způsobem.'~ */ GOTO 55
  IF ~~ THEN REPLY #31042 /* ~"Řekni mi o Nemilosrdných."~ */ JOURNAL #31032 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Milosrdní Zabijáci věří, že spravedlnost je nade vše. Mallin, jejich poslední factol jednou řekl, že pokud je správně aplikován, vede trest k dokonalosti.~ */ GOTO 56
  IF ~~ THEN REPLY #31043 /* ~"Řekni mi o Revoluční Lize."~ */ JOURNAL #31033 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Revoluční Liga je po Sigilu velmi rozšířená. Věří, že všechny instituce jsou ustanoveny, aby jim blokovaly přístup k pravdě mnohovesmíru. Jediným způsobem, jak se dostat k pravdě, je zničit všechny organizace. Tvrdí, že pravda může být objevena pouze v případě, že budou všichni lidé úplně 'volní'.~ */ GOTO 58
  IF ~~ THEN REPLY #31044 /* ~"Řekni mi o Společnosti Vjemu."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Společenství Vjemu je nejprominentnější z patnácti Sigilských frakcí. Věří, že pravé tajemství mnohovesmíru se dají odhalit pouze přímým prožitím mnohovesmírů, jak jenom jeden dokáže, ochutnávajíc každou substanci, pociťujíc každou emoci a navštěvujíc každé místo v mnohovesmíru.~ */ GOTO 62
  IF ~~ THEN REPLY #31045 /* ~"Řekni mi o Chaoticích."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Schopný Přemýšlivě-myslící mi vysvětlil, že Chaotici věří, že pouze přijmutím náhodného chaosu mnohovesmíru se může člověk naučit jeho tajemství.~ */ GOTO 64
  IF ~~ THEN REPLY #31046 /* ~"Vlastně, chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31047 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY #30758 /* ~"Věřící v Pramen neboli Boží lidé, věří, že každá žijící věc v mnohovesmíru má potenciál a může se stát Mocností..."~ */
  IF ~~ THEN REPLY #31053 /* ~Poslouchej dál.~ */ GOTO 52
  IF ~~ THEN REPLY #31054 /* ~Pokus se ho přerušit.~ */ GOTO 52
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31055 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 92
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 92.0
  SAY #30759 /* ~Pokračuje: "Boží lidé mají své velitelství ve Velké slévárně a už mnohokrát pomohli v Sigilu udržet mír... nechtějí, aby bylo jakékoli stvoření umístěno do knihy mrtvých, než dostane šanci dosáhnout svého potenciálu."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #31056 /* ~"Já sám podporuji jejich víru. Mám pocit, jako by jsi s nimi nesouhlasil..."~ */ GOTO 66
  IF ~~ THEN REPLY #31057 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31058 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31059 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31060 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.2 49.3 50.2 50.3
  SAY #30760 /* ~"Spalovači věří, že jsme všichni mrtví, že Sigil a Sféry jsou místa, kde všichni skončíme poté, co zemřeme. Podle jejich víry je vše mrtvé a tato existence je falešná. Udržovat si k této existenci nějaká pouta nebo pocity pouze znemožňuje duši Pravá smrt."~ */
  IF ~~ THEN REPLY #31061 /* ~Poslouchej dál.~ */ GOTO 54
  IF ~~ THEN REPLY #31062 /* ~Pokus se ho přerušit.~ */ GOTO 54
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31063 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 93
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 93.0
  SAY #30761 /* ~Pokračuje: "Víš, Spalovači věří, že smrt v této 'existenci' je pouze otázkou stupně a že ti, kteří jsou 'doopravdy mrtví' a kteří přerušili všechny pouta k této existenci mohou doufat v mír. Tato filozofie má nějaký základ, ale většina z ní by se měla ještě důkladně prozkoumat."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #31064 /* ~"Já sám podporuji jejich víru. Mám pocit, jako by jsi s nimi nesouhlasil..."~ */ GOTO 67
  IF ~~ THEN REPLY #31065 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31066 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31067 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31068 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.4 50.4
  SAY #30762 /* ~"Harmonium je oddané míru a harmonii mezi Sférami... odtud také pochází jejich jméno. Věří, že účel světí prostředky, takže jsou ochotni udělat téměř cokoli, aby lidé viděli věci 'jejich způsobem'. Ale ať už na ně má kdo chce jaký názor, strážením ulic Sigilu dělají rozhodně dobrou práci.""~ */
  IF ~~ THEN REPLY #31069 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31070 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31071 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."
~ */ GOTO 16
  IF ~~ THEN REPLY #31072 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 49.5 50.5
  SAY #30763 /* ~"Milosrdní zabijáci věří, že spravedlnost je vše. Mallin, jejich poslední factol, jednou řekl, že pokud je správně aplikován, vede trest k dokonalosti."~ */
  IF ~~ THEN REPLY #31073 /* ~Poslouchej dál.~ */ GOTO 57
  IF ~~ THEN REPLY #31074 /* ~Pokus se ho přerušit.~ */ GOTO 57
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31075 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 94
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 94.0
  SAY #30764 /* ~Pokračuje: "Nováčci v Sigilu se často dopustí chyby, když si myslí, že jejich jméno znamená, že zabíjejí pouze z milosrdenství. Ve skutečnosti se ale spíše pokoušejí zabít samotné milosrdenství. Členové frakce dělají, co mohou, aby potrestali vinu, ať to stojí, co to stojí."~ */
  IF ~~ THEN REPLY #31076 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31077 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31078 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31079 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.6 50.6
  SAY #30765 /* ~"Také se jim říká Anarchisti. Málokdo to ví, ale Revoluční Liga je v Sigilu docela rozšířená... a to je ostuda. Mají pochybnou víru, že všechny instituce byly ustanoveny jenom proto, aby jim blokovaly přístup k pravdě mnohovesmíru."~ */
  IF ~~ THEN REPLY #31080 /* ~Poslouchej dál.~ */ GOTO 59
  IF ~~ THEN REPLY #31081 /* ~Pokus se ho přerušit.~ */ GOTO 59
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31082 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 95
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1 95.0
  SAY #30766 /* ~"Jediný způsob, jak objevit pravdu, je svrhnout veškerou organizaci. Tvrdí, že pravda může být objevena pouze když budou lidé úplně 'volní'. " Potřásl hlavou. "Často si přeju, aby otevřeli oči a podívali se na pravdu *kolem* nich. Nedělají nic, pouze se sami oslepují a brání ostatním v přístupu k pravdě.""~ */
  IF ~~ THEN REPLY #31083 /* ~Poslouchej dál.~ */ GOTO 60
  IF ~~ THEN REPLY #31084 /* ~Pokus se ho přerušit.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #30767 /* ~Vydal ze sebe dlouhý vzdech, pak zamával prstem, jako by  mluvil k nějakému imaginárnímu zlobivému dítěti. "Je zajímavé, že nemají žádný plán, jak nalézt pravdu, kromě toho, že roztrhají vše, co uvidí. Vskutku velmi zajímavé.""~ */
  IF ~~ THEN REPLY #31085 /* ~Poslouchej dál.~ */ GOTO 61
  IF ~~ THEN REPLY #31086 /* ~Pokus se ho přerušit.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 60.1
  SAY #30768 /* ~Zamračil se. "Je také zajímavé, že zatímco má Revoluční Liga velký počet členů, přímo povaha jejich frakce způsobuje, že její členové často pracují jeden proti druhému. Často mezi sebou jejich buňky bojují, každá tvrdíc, že jedině ona zná *správný* způsob, jak vše kolem svrhnout."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31087 /* ~"Opravdu záleží na metodě, pokud je vše falešné rozmetáno?"~ */ GOTO 68
  IF ~~ THEN REPLY #31088 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31089 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31090 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31091 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 36.0 49.7 50.7
  SAY #30769 /* ~"Ah, Společenství Vjemu! Jsou jednou z nejpřednějších patnácti frakcí Sigilu. Věří, že pravé tajemství mnohovesmíru může být poznáno pouze přímým prožitím vesmíru, kolik je jenom možné. Ochutnávat každou substanci, pocítit každou emoci a navštívit každé místo mnohovesmíru."~ */
  IF ~~ THEN REPLY #31092 /* ~Poslouchej dál.~ */ GOTO 63
  IF ~~ THEN REPLY #31093 /* ~Pokus se ho přerušit.~ */ GOTO 63
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31094 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 96
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1 96.0
  SAY #30770 /* ~Pokračuje: "Jejich vedení je v Občasné hale, kde se snaží dát prožitky celému Sigilu. Momentálně jsou nejpočetnější frakcí Sigilu... a také nejmocnější. Pokud se nepletu, podle posledního sčítání mají přes dvacet tisíc členů."~ */
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31095 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31097 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31098 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31100 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 49.8 50.8
  SAY #30771 /* ~"Lůza! Ani to není pravá frakce, ta banda otrhanců. Dokonce i Revoluční Liga je lépe zorganizovaná! Chaotici si myslí, že pojetím chaosu nějak objeví tajemství mnohovesmíru. Směšná představa."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #31101 /* ~"No, já mám v plánu objevit tajemství vesmíru tak, že si potřu břicho spoustou domácího sýra a sním obrovskou hromadu čerstvých rybiček. Mmmm... sýr."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ GOTO 65
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #31102 /* ~"No, já mám v plánu objevit tajemství vesmíru tak, že si potřu břicho spoustou domácího sýra a sním obrovskou hromadu čerstvých rybiček. Mmmm... sýr."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 297
  IF ~~ THEN REPLY #31103 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31104 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31105 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31106 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #30772 /* ~Muž na tebe chvíli zírá. "Pardon... Já... hmm... asi bych měl jít, pane...""~ */
  IF ~~ THEN REPLY #31107 /* ~"Počkej... Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31109 /* ~"Počkej. Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31110 /* ~"Počkej... Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31111 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 52.0
  SAY #30773 /* ~"Respektuji jejich filozofii... je dobrá pro Sigil i jeho obyvatele... ale je příliš jednoduchá. Jak bys chtěl odhalit tajemství mnohovesmíru pouhým 'klidným životem'? Objeví se snad taková znalost náhle před tebou a osvítí jednu z tvých inkarnací? Pokud taková věc vůbec existuje! Ale vidím, pane, že máš na učenou debatu málo času. Změňme téma."~ */
  IF ~~ THEN REPLY #31112 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31113 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31114 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31115 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 54.0
  SAY #30774 /* ~"Jednoduše protože celá jejich víra se točí kolem *víry*. Já bych vyžadoval fakty - a nic méně - abych se vzdal své lásky k životu. Ale vidím, pane, že máš na učenou debatu málo času. Změňme téma."~ */
  IF ~~ THEN REPLY #31116 /* ~"Rád bych slyšel něco o jiných frakcích."~ */ GOTO 50
  IF ~~ THEN REPLY #31117 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31118 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31119 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.0
  SAY #30775 /* ~"Metoda *samotná* je falešná! Jak můžeš-" Zarazil se a podezřívavě si tě prohlíží. "Moment, pane... ty nejsi... nejsi..."~ */
  IF ~~ THEN REPLY #31120 /* ~"Jo, jsem. No tak, řekni to: Anarchista."~ */ GOTO 69
  IF ~~ THEN REPLY #31121 /* ~Lež: "E? Cože? Nevím, o čem to mluvíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_2","GLOBALLaw",-1)
~ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #30776 /* ~Ustoupil a volá stráže. "Stráže! Anarchista! STRÁŽE!"~ */
  IF ~~ THEN REPLY #31122 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #31123 /* ~Zkus utéct, než někdo dorazí.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #30777 /* ~"Hmmm..."~ */
  IF ~~ THEN REPLY #31124 /* ~"Já, uh, bych rád slyšel víc o ostatních frakcích..."~ */ GOTO 50
  IF ~~ THEN REPLY #31125 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31126 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31127 /* ~"Raději už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #30778 /* ~"Paní Bolesti, ano. Ano... ona je ta moc za Sigilem. Velmi impresivní postava, ale je o ní známo jen málo."~ */
  IF ~~ THEN REPLY #31128 /* ~"Co *je* o ní známo?"~ */ GOTO 72
  IF ~~ THEN REPLY #31129 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31130 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31131 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 47.0 71.0
  SAY #30779 /* ~Začíná ukazovat na prstech: "Za prvé: Není pouze symbolem Sigilu, jak někteří tvrdí. Je skutečná a velmi nebezpečná. Za druhé: Věří se, že je to ona, kdo udržuje Mocnosti... bohy... mimo Sigil. Dokud je zde, Mocnosti nemohou do Sigilu vstoupit..."~ */
  IF ~~ THEN REPLY #31132 /* ~Poslouchej dál.~ */ GOTO 73
  IF ~~ THEN REPLY #31133 /* ~Pokus se ho přerušit.~ */ GOTO 73
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31134 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 97
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 97.0
  SAY #30780 /* ~"Za třetí: Zabraňuje nepovolenému teleportování a otvírání bran do a ze Sigilu. Tím zabránila stvořením jiných Sfér, aby se jich sem nastěhovalo ještě více, mimo konveční cesty. Za čtvrté: Nikdy nepromluvila. S nikým. Za páté: Získala kontrolu nad Sigilem od Aoskara, Mocnosti, která je už údajně mrtvá."~ */
  IF ~~ THEN REPLY #31135 /* ~Poslouchej dál.~ */ GOTO 74
  IF ~~ THEN REPLY #31136 /* ~Pokus se ho přerušit.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1
  SAY #30781 /* ~"Za šesté: Každý kdo ohrozí Sigil... nebo ji... je potrestán, ať už upadnutím pod její stín, což má za následek sérii neviditelných bodnutí, které zabijí i vyššího baatezu, nebo je poslán do bludiště, odkud pouze pár uteklo. Za sedmé: Nemá ráda, když ji někdo uctívá. Ti, kteří tak činí, jsou často nalezeni bez kůže."~ */
  IF ~~ THEN REPLY #31137 /* ~Poslouchej dál.~ */ GOTO 75
  IF ~~ THEN REPLY #31138 /* ~Pokus se ho přerušit.~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #30782 /* ~"A nakonec: Pouhý pohled na ni údajně přivádí ostatní k šílenství."~ */
  IF ~~ THEN REPLY #31139 /* ~"Získala moc na Sigilem od Mocnosti? Jak to víš?"~ */ GOTO 76
  IF ~~ THEN REPLY #31140 /* ~"Pohled na ni způsobuje šílenství?"~ */ GOTO 77
  IF ~~ THEN REPLY #31141 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31142 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31143 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #30783 /* ~"To je víra mého řádu."~ */
  IF ~~ THEN REPLY #31144 /* ~"Řekl jsi, že pohled na ni způsobuje šílenství?"~ */ GOTO 77
  IF ~~ THEN REPLY #31145 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31146 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31147 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1 76.0
  SAY #30784 /* ~"Ano." Chvíli nad tím uvažuje. "Ale musím dodat, že jsem jí nikdy neviděl."~ */
  IF ~~ THEN REPLY #31148 /* ~"Tak jak víš, že vytvořila Sigil?"~ */ GOTO 76
  IF ~~ THEN REPLY #31149 /* ~"Mám ještě nějaké otázky ohledně Sigilu..."~ */ GOTO 43
  IF ~~ THEN REPLY #31150 /* ~"Chtěl bych se tě zeptat ještě na něco jiného..."~ */ GOTO 16
  IF ~~ THEN REPLY #31151 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 16.7 83.1
  SAY #30785 /* ~"Ravel... *pokud* opravdu existovala a nejde jen tak dokázat, že ano... byla noční čarodějnice, jedna z obyvatelek Šedých Pustin, jedné z Nižších Sfér, a věří se, že byla jedním z nejhorších stvoření Nižších Sfér..."~ */
  IF ~~ THEN REPLY #31152 /* ~Poslouchej dál.~ */ GOTO 79
  IF ~~ THEN REPLY #31153 /* ~Pokus se ho přerušit.~ */ GOTO 79
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31154 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 98
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.1 98.0
  SAY #30786 /* ~Pokračuje: "Podle legendy byla Ravel uvězněná v bludišti před několika stoletími. Prý byla vládkyní mnohé podivné magie a její přítomnost v Sigilu ohrožovala Paní. Obávám se, že to je vše, co o ní vím."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31155 /* ~"Můžeš ji pro mě prozkoumat?"~ */ GOTO 84
  IF ~~ THEN REPLY #31156 /* ~"Bludiště?"~ */ GOTO 80
  IF ~~ THEN REPLY #31157 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31158 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.1 87.0
  SAY #30787 /* ~"Bludiště! Jsou to výtvory Paní... víš, vezme malý kousek Sigilu, zkopíruje ho a pak použije portál k umístění kopírovaného kousku do Hlubokého Etherealu. Jakmile se tam dostane, stane se z části Sigilu polosféra, nekonečné bludiště, které se omotává a kroutí samo do sebe..."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31159 /* ~"Můžeš ji pro mě prozkoumat?"~ */ GOTO 84
  IF ~~ THEN REPLY #31160 /* ~Poslouchej dál.~ */ GOTO 81
  IF ~~ THEN REPLY #31161 /* ~Pokus se ho přerušit.~ */ GOTO 81
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31162 /* ~Zatímco poučuje, zkus mu vybrat kapsy.~ */ GOTO 99
END

IF ~~ THEN BEGIN 81 // from: 80.1 80.2 99.0
  SAY #30788 /* ~Pokračuje: "Paní používá tato bludiště k uvěznění kohokoli, kdo ohrozí její Moc. Jakmile se rozhodla, že máš být uvězněn, už neexistuje způsob úniku. Věří se, že z každého bludiště vede východ, ale je pravděpodobně velice nebezpečný a obtížný."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31163 /* ~"Můžeš ji pro mě prozkoumat?"~ */ GOTO 84
  IF ~~ THEN REPLY #31164 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31165 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 16.8
  SAY #30789 /* ~"Dlouhotrvající válka mezi chaotickými tanar'ri a právoplatnými baatezu. Je to válka ideologií, která zuří od doby, kdy se cesty obou ras v Nižších Sférách zkřížily. Mnohovesmír od té doby leží v jejich stínu. Obávám se ale, že moje znalost historie Války Krve je trochu slabší, neboť od jejího počátku uplynulo mnoho milénií."~ */
  IF ~~ THEN REPLY #31166 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31167 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 16.3 84.0
  SAY #30790 /* ~"Mohu se pokusit, pane... co si přeješ vědět?"~ */
  IF ~  PartyHasItem("P_JRNL")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #31168 /* ~Rozbal dodekahedron na stránku s 'nápisem' a zeptej se ho, jestli to pro tebe může vyzkoumat.~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ GOTO 84
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("CW_Research_Ravel","AR0600",0)
~ THEN REPLY #31169 /* ~"Hledám informace o Noční čarodějnici jménem Ravel Puzzlewell."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",1)
~ GOTO 78
  IF ~  Global("CW_Research_Incarnations","AR0600",0)
~ THEN REPLY #31170 /* ~"Hledám informace o jakékoli zesnulé osobě, která by odpovídala mému popisu."~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",1)
~ GOTO 85
  IF ~~ THEN REPLY #31171 /* ~"Vlastně, chci se tě zeptat na něco jiného."~ */ GOTO 16
  IF ~~ THEN REPLY #31172 /* ~"Ne, když nad tím uvažuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 31.0 79.0 80.0 81.0 83.0 85.0
  SAY #30791 /* ~"Ano, podívám se na to. Měl bych tu informaci získat do dalšího dne."~ */
  IF ~~ THEN REPLY #31173 /* ~"Díky. Můžu tě požádat, ať se mi podíváš ještě na něco jiného?"
~ */ GOTO 83
  IF ~~ THEN REPLY #31174 /* ~"Děkuju. Mám ještě otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31175 /* ~"Oceňuju to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.2
  SAY #30792 /* ~Vypadá zmateně. "To je... podivná žádost, pane. Takový muž či žena mi dá pravděpodobně spoustu práce, pokud mám objevit něco zajímavého. Zkoumáš náležitosti svých předků, nebo...?"~ */
  IF ~~ THEN REPLY #31176 /* ~"Něco na ten způsob. Můžeš se podívat?"~ */ GOTO 84
END

IF ~~ THEN BEGIN 86 // from: 16.0
  SAY #30793 /* ~"Pouze, že jazyk je mrtvý. V Městské hale byl profesor jazyků, Finam, koho bys možná měl vyhledat. Možná zná ten jazyk. Měl by být stále v Hale."~ */
  IF ~~ THEN REPLY #31177 /* ~"Máš mé díky. Mám ještě otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31178 /* ~"Oceňuju to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 16.1
  SAY #30794 /* ~"Ano, zjevně zmizela jednu noc z Haly a k oddechu mnoha lidí byla pravděpodobně uvržena do bludiště. Záznamy ukazují, že je nutné nějaké její vlastnictví, pokud chceš otevřít portál do jejího bludiště, ale nikdo neví, co by to mohlo být a ani to nechce zjistit. Možná by ses na ni měl zeptat lidí v Hale."~ */
  IF ~~ THEN REPLY #31179 /* ~"Byla uvržena do 'bludiště'?"~ */ GOTO 80
  IF ~~ THEN REPLY #31180 /* ~"Zajímavé. Mám ještě otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31181 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 16.2
  SAY #30795 /* ~"No, vlastně ano. Velice zajímavé! Nalezl jsem zmínku o dvou různých mužích, kteří odpovídali tvému popisu... oba z nich té nejohavnější sorty, obávám se. První z nich byl úplný šílenec... berserk, krvežíznivý žoldák a bojovník, který zabil každého, kdo se mu znelíbil."~ */
  IF ~~ THEN REPLY #31182 /* ~"Pokračuj..."~ */ GOTO 100
END

IF ~~ THEN BEGIN 89 // from: 44.2
  SAY #30796 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31183 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 45
END

IF ~~ THEN BEGIN 90 // from: 46.2
  SAY #30797 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31184 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 48.2
  SAY #30798 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31185 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 49
END

IF ~~ THEN BEGIN 92 // from: 51.2
  SAY #30799 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31186 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 52
END

IF ~~ THEN BEGIN 93 // from: 53.2
  SAY #30800 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31187 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 54
END

IF ~~ THEN BEGIN 94 // from: 56.2
  SAY #30801 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31188 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 57
END

IF ~~ THEN BEGIN 95 // from: 58.2
  SAY #30802 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31189 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 59
END

IF ~~ THEN BEGIN 96 // from: 62.2
  SAY #30803 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31190 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 63
END

IF ~~ THEN BEGIN 97 // from: 72.2
  SAY #30804 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31191 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 73
END

IF ~~ THEN BEGIN 98 // from: 78.2
  SAY #30805 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31192 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 79
END

IF ~~ THEN BEGIN 99 // from: 80.3
  SAY #30806 /* ~Vklouzl jsi rukou do mužova váčku a popadl několik mincí.~ */
  IF ~~ THEN REPLY #31193 /* ~Schovej mince a poslouchej dál.~ */ DO ~GiveGoldForce(4)
~ GOTO 81
END

IF ~~ THEN BEGIN 100 // from: 88.0
  SAY #30807 /* ~Přikývl. "Nakonec ho zajali - později protáhli a rozčtvrtili - dva tucty Milosrdných zabijáků po vraždícím šílenství v hospodě v Dolní Čtvrti. Jeho pozůstatky byly přehozeny přes zdi Sigilu. To bylo asi před třemi sty lety."~ */
  IF ~~ THEN REPLY #31194 /* ~"A ten druhý muž?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #30808 /* ~"Je o něm známo málo. Můj výzkum ukázal, že byl Vnímavý, který krátce před smrtí zničil tucty senzorických kamenů, do kterých zaznamenal své zkušenosti. Byla to pro frakci velkou ztráta, jelikož ten muž - i když měl jen málo přátel, odháněl každého, kdo se k němu pokusil přiblížit - údajně sesbíral obrovské množství velkolepých zážitků."~ */
  IF ~~ THEN REPLY #31195 /* ~"Jak zemřel?"~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #30809 /* ~Pokrčil rameny. "Nevím, záznamy to neříkají."~ */
  IF ~~ THEN REPLY #31196 /* ~"Máš mé díky. Mám ještě otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31197 /* ~"Oceňuju to. Sbohem."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,1)
~ THEN BEGIN 103 // from:
  SAY #30810 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o postupech a procedurách u sigilských soudů a jak by mohl být proces efektivnější.~ */
  IF ~~ THEN REPLY #31198 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31199 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,2)
~ THEN BEGIN 104 // from:
  SAY #30811 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o složitosti struktury administrativního komplexu, ve kterém pracuje, a jak by různá vylepšení v pracovním řádu mohly uspíšit a zkvalitnit práci.~ */
  IF ~~ THEN REPLY #31200 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31201 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #7 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,3)
~ THEN BEGIN 105 // from:
  SAY #30812 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o tom, jak Velká slévárna vypouští do atmosféry Sigilu množství toxických plynů a o špatných účincích, které plyny mají na zdraví.~ */
  IF ~~ THEN REPLY #31202 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31203 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,4)
~ THEN BEGIN 106 // from:
  SAY #30813 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o tom, jak Bratrstvo Řádu, Harmonium  a Milosrdní Zabijáci spolupracují na udržení míru a stability v Sigilu.~ */
  IF ~~ THEN REPLY #31204 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31205 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #9 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,5)
~ THEN BEGIN 107 // from:
  SAY #30814 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o různých stylech oblečení, které za dlouhá léta života v Sigilu spatřil.~ */
  IF ~~ THEN REPLY #31206 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31207 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END

IF WEIGHT #10 ~  GlobalGT("Able","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #30815 /* ~Schopný se na tebe usmál. "Ah, dobrý pane, opět se setkáváme. Víš, myslel jsem..." Začíná zdlouhavě hovořit o své práci jako výzkumného konzultanta v Hale Záznamů, dávaje ti doslovný popis různých 'zajímavých' hovorů, které měl minulý týden se svými spolupracovníky.~ */
  IF ~~ THEN REPLY #31208 /* ~"Počkej... Mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #31209 /* ~"Ano... velmi zajímavé... ale já už musím jít. Sbohem."~ */ EXIT
END
