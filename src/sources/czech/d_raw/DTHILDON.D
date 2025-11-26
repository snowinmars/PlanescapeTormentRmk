// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"Stůj! Kdo je to? STRÁŽE! TADY JE!"~ */
  IF ~~ THEN REPLY #12871 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"Ty mě nebudeš pomlouvat! K čertu s tebou!"~ */
  IF ~~ THEN REPLY #12873 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"Co ti ten malý patolízal říkal? Jsem si jistý, že to byly samé lži."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"Vlastně jsem s ním ještě nemluvil. Mám víc otázek, na které bych chtěl, abys odpověděl."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"Říká, že to do sebe nezapadá. Ve skutečnosti říká, že byl očitým svědkem, když jsi zabíjel toho ubožáka."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"Pořád se snažím pochopit Anarchisty."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"Říká, že do těla píchnul šídlem, ale jenom proto, aby se ujistil, že jsi zapletený do vraždy. Říká, že jsi vrah a chce mít jistotu, že budeš chycen."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"Říká, že do těla píchnul šídlem, ale jenom proto, aby se ujistil, že jsi zapletený do vraždy. Říká, že jsi vrah a chce mít jistotu, že budeš chycen."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"Již jsem se rozhodl, koho obviním."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"To tě zatím nemusí zajímat. Potřebuji, abys odpověděl na některé otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"Zatím nic. Sbohem."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"S tím ubohým kovářem Avildonem to byla skutečně ostuda. A pořád je. Nechránil se před brusným kotoučem. Nebyl na tu práci *specializovaný.* Tak to chodí, připomeň si moje slova... každý, kdo zkouší něco, co neumí, na to doplatí. Ah, dobře. Co pro tebe může starej Thildon udělat?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"Saros - pamatuješ si Sarose, ne? - mi dal nějaké šídlo, které našel poblíž těla. Zvláštní je, že toto šídlo má na rukojeti vyryté tvé jméno. Jak vysvětlíš toto?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~Konfrontoval jsem Thildona s šídlem které mi dal Saros. Thildon tvrdí, že se to na něj Saros pokouší hodit.~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"Rád bych ti položil nějaké otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"Teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"Tak tu nestůj jak tvrdé Y, hlupáku! Dostaň toho jednoho, který je nebezpečný a zajisti, že nezabije nikoho dalšího. Do práce!"~ */
  IF ~~ THEN REPLY #12888 /* ~"Thildone, říkal jsem, že potřebuji zodpovědět některé otázky. Tak na ně teď odpověz."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"Jsem na stopě. Neboj. Měj se." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"On CO? Říkám ti, ten hoch je zloděj a vrah a ty mi nevěříš? A co, když ti řeknu, že ten mladík je Anarchista, člen Revoluční Ligy?"~ */
  IF ~~ THEN REPLY #12891 /* ~"Proč bych tomu měl věřit?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon tvrdí, že je Saros Anarchista, pracující s inženýrkou Bedai-Lihn a společně se snaží zdiskreditovat ho.~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~Lež: "Kdyby to byla pravda, dohlídnul bych na to, aby byl postaven před soud." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon tvrdí, že je Saros Anarchista, pracující s inženýrkou Bedai-Lihn a společně se snaží zdiskreditovat ho.~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~Pravda: "Kdyby to byla pravda, dohlídnul bych na to, aby byl postaven před soud."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon tvrdí, že je Saros Anarchista, pracující s inženýrkou Bedai-Lihn a společně se snaží zdiskreditovat ho.~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"Upřímně, opravdu se o to nestarám. Myslím, že už jsem slyšel dost, abych nabyl přesvědčení, že ty jsi ten viník."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~Do tváře se mu vloudil zbožný výraz. "Protože říkám, že to tak je. Protože se chystám říct něco, co ze mě udělá zločince, ale řeknu to, aby bylo spravedlnosti učiněno zadost." Na chvíli se odmlčel. "Vím, že je Anarchista, protože se mě pokusil získat. On a ta inženýrka Bedai-Lihn. Řekl jsem jim, že bych to udělal, abych je nachytal, ale pak jsem si uvědomil, že nemám žaludek na to, abych ubohému Sarosovi ublížil. Odmítnul jsem je a oni se teď snaží smazat stopy. Tak proto chtějí, abych zmizel. Oni jsou ti vrahouni. Ne já."~ */
  IF ~~ THEN REPLY #12896 /* ~"V případě, že ti věřím, proč bych tě stejně neměl vsadit do vězení?"~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"Říkáš ty. Prověřím to. Nejdříve mi ale odpověz na nějaké jiné otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"Správně. Hned to zkontroluji. Nikam nechoď Thildone. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"Dobře, je to takhle! Přísahám na svaté oči mé ubohé mrtvé matky. On a ta inženýrka, Bedai-Lihn, oni mě chtěli získat. Říkal jsem jim, že se k nim připojím, protože jsem chtěl chytit přeběhlíky. Sloužím svému společenství. Ale pak, dobrá, pak jsem se rozhodl, že není správné, abych to udělal. A to je důvod, proč jsou rozhodnuti mě vidět, jak se houpu na oprátce."~ */
  IF ~~ THEN REPLY #12900 /* ~"Zajímavé. Ale dosti neuvěřitelné. Zní to hodně přitažené za vlasy. Myslím, že tě stejně budu muset předvést."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"Aha. Zkontroluji to. Odpověz mi na jiné otázky Thildone."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"Podívám se tomu na kloub. Díky za tip."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"Cože? Ty obviňuješ MĚ? Ale já jsem nic neudělal! Ty tupče, máš toho špatnýho člověka! Prosím! Neudělal jsem to!"~ */
  IF ~~ THEN REPLY #12904 /* ~"Jen s tebou Thildone trošičku šprýmuji. Klídek. Odpověz mi na jiné otázky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"Žertuji s tebou, Thildone. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"Všechny důkazy ukazují na tebe, Thildone. Příště tě uvidím až na tvé popravě. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"Ještě to vyšetřuješ? Nejsi moc dobrý vyšetřovatel, co? Ani nevím proč se obtěžuji ti pomáhat, když si neověřuješ informace, které jsem ti dal..."~ */
  IF ~~ THEN REPLY #12908 /* ~"Dost s tou falešnou zbožností, Thildone. Odpověz mi na nějaké otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"Už jsem od tebe slyšel všechno, co jsem chtěl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~Z dozorcovy tváře se vytratila všechna barva. "On ... co... on... já... on přiznal, že je Anarchista?"~ */
  IF ~~ THEN REPLY #12911 /* ~"Ano. Vypadá, že věří, že jsi nebezpečný každému kolem, ať už jsou to Anarchisté, nebo Boží lidé a že je třeba, aby tě někdo zastavil. Je ochotný přiznat svoje zločiny, aby se ujistil, že se dostaneš před spravedlnost."~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"Ano. A ty jsi vrah. Tvé činy tě prozrazují."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"On... on to udělal? Pak ho musíš zatknout! Nevidíš, že je hrozba? Jak jsi jen mohl důvěřovat zlodějskému, prolhanému dítěti, když je očividné, že nemá žádné morální zásady? Zavři ho a skoncuj s tím!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"Dobrá Thildone, způsob, jakým to vidím já je, že on je ochoten přijmout pád, pokud to bude znamenat, že tě stáhne s sebou. Všechno, co jsem o něm až dosud slyšel, mi říká, že on není špatné dítě - a pokud je ochoten přijmout trest, aby se ujistil, že ty dostaneš to, co ti patří, znamená to, že si to musíš opravdu zasloužit."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"To vypadá špatně. Proč by to dělal?"~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"Nejsi jediný, kdo tady dává rozkazy Thildone. Pamatuj si to. Teď mi odpověz na některé otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"Nenaléhej Thildone. To jsi na špatné adrese. Přeji dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"Kvůli anarchistickému programu, tupče!" Ztišil hlas a zlověstně na tebe upřeně zírá. "Ti Anarchisté, víš, všichni to jsou fanatici, a velcí, a neuznávají lidi jako jsem já, kteří je odkrývají. Obětují kohokoliv, aby dosáhli svých plánů." Uklidnil se a prohlásil "Je na poctivých lidech, jako jsem já, aby ty hlupáky vedli ke spořádanému životu."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~"Vážně, Thildone. Saros je mladý člověk a mladí lidé dělají chyby. Velmi pochybuji, že by odvrhl sám sebe, aby tě dostal, jenom proto, aby kryl lidi, kteří ho především dostali do této šlamastyky. Věrnost je sice bezvadná a dobrá věc, ale on je dost chytrý, aby věděl, kdy se narovnat. Ne, Thildone, myslím, že to máš na svědomí ty."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"Zdá se mi, že tu něco nesedí, ale nevím, co to je. ~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"Poctivý? Dobrá. Odpověz mi na něco jiného."~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"Jak dobrou práci děláš. Sbohem, Thildone."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"Špatné je, že tvoje prasečí hlava nemůže pochopit pikle, které ti hlupáci ukuli! Vytáhni hlavu ze tmy svojí prdele, blbče, a zavři toho malýho bastarda!" Na chvíli vypadá šokován, když si uvědomil, co řekl a komu a rychle dodává: "Jo. Omlouvám se. Je to tím tlakem, pod kterým právě jsem. Není lehké být kdekým pokládán za vraha a Anarchistu."~ */
  IF ~~ THEN REPLY #12924 /* ~"Jsem si jistý, že není. Budu to muset důkladně promyslet. Odpověz mi na nějaké jiné otázky."~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"Jsem si jistý, že není. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~Jeho svalnatá tvář rudne, jako kdyby měl každou chvíli dostat mrtvici. "Obviňuješ MĚ? Ale já nejsem vrah! Jenom se snažím odhalovat Anarchisty, hlupáku! K čertu s tebou, to mi nemůžeš udělat! Nemůžeš věřit každému, kdo řekne, že mě viděl to udělat a tak nemůžeš říct, že jsem to udělal já!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"Řekl bys to samé pod přísahou a pod mocí kouzla? Vsadím se, že Saros by řekl."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"Saros podal lepší vysvětlení. Je mnohem víc přesvědčivější, a není tím tady okolo tak znechucen, jako ty. Spoléhám, že jeho verze je ta správná a to se také chystám říci Keldorovi."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"Předvedu vás oba. Co ty na to? Sbohem, Thildone. Už se znovu nesetkáme."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"Vlastně, můžu povědět tohle, pokud se mi bude chtít. Sbohem Thildone."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"Budu o tom dlouho a hluboko přemýšlet. Mezitím Thildone, užívej. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"Mamlasi. Můžu si aspoň vzít svých pár švestek a dát tomuhle místu poslední sbohem? Starej Thildon si je jistý, že toho nebudeš litovat."~ */
  IF ~~ THEN REPLY #12933 /* ~"Jistě. Hni sebou."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"Jenom, než to donesu Keldorovi. Nevidím to pro tebe růžově."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"Ne. Zůstaň tady, nebo poneseš ještě horší následky. Můžeš být v klidu ujištěn, že to můžu zajistit. Přeji příjemný den Thildone."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"Já odcházím, mizííím. Ani, co by se za nehet vešlo, už o mně neuslyšíš."~ */
  IF ~~ THEN REPLY #12937 /* ~"Jdi, dokud nezměním názor."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"Změnil jsem názor. Měl jsi už před hodně dlouhou dobou vidět kata. Měj se Thildone."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"Ty chceš odpovědi? A jaké?"~ */
  IF ~~ THEN REPLY #12940 /* ~"Kdo jsi?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"Pověz mi o Božích lidech."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"Co jsi dělal v noc vraždy?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"Potřebuji použít kovárnu. Můžeš mi dát nějakou rudu?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"A koho?" Muž vypadá nezvykle dychtivě.~ */
  IF ~~ THEN REPLY #12951 /* ~"Chystám se sebrat Sarose, jako vraha."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"Obviňuji oba, tebe i Sarose."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"Povím Keldorovi, že ty jsi ten vrah."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"Ještě nikoho. Mám nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"Nepovím, zatím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"Thildon Šedivec, dozorce pro tento dvůr. Mojí prací je, že zajištuji, aby moji dělníci dělali svou práci - a lidé jako ty, aby je nevyrušovali. Už tak pracují dost málo, hajzlíci, a věděli by, jak se po zbytek dne zašít, kdybych tu nebyl. Jsem tvrdý... ale spravedlivý. Zeptej se koho chceš." ~ */
  IF ~~ THEN REPLY #12957 /* ~"Proč ti říkají 'Šedivec'?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"Pak jsi ten pravý, s kým si potřebuji promluvit o získání nějaké železné rudy pro kovárnu..."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"Snad se zeptám. Mám nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"Možná se zeptám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"Protože jsem většinu času pokryt sazemi z těchto burácejících vysokých pecí. Je to přezdívka, kterou mi dali moji dělníci... bezpochyby nesympatická."~ */
  IF ~~ THEN REPLY #12968 /* ~Sarkasticky: "Nepochybně. Skutečně vypadají, že respektují tvojí jemnou duši."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~Seriózně: "Nepochybně."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"Jistě. To musí být ono."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"Aha. Mám nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"Naznačuješ, že nejsem ke svým dělníkům zcela spravedlivý? Protože já jsem! Jsem pro ně něco jako táta!"~ */
  IF ~~ THEN REPLY #12974 /* ~"Bohužel, většina z nich byla v dětství pravidelně bita..."~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"Já jen naznačuji, že bys měl být špetku VÍC spravedlivý, jestli chápeš, co tím myslím."~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"Dobrá, dobrá. Mám nějaké jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"Jsem si jistý. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~Jeho tvář zbrunátněla vzteky. Když se konečně začal ovládat, zavrčel. "Ztrať se mi z očí, nebo na tebe zavolám stráže!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"Ne, dokud vyšetřuji tuto vraždu. Teď mi odpověz na pár otázek."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"Jenom mi zodpověz pár otázek..."~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"Dobře, odcházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~Křičí na stráže. "STRÁŽE! Odveďte mi tuto lidskou trosku z očí a dohlídněte, ať už se NEVRÁTÍ!"~ */
  IF ~~ THEN REPLY #12983 /* ~"Budeš toho litovat. Připrav se na smrt, frajere."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"Tak tedy dobrá, sbohem."~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"Skutečně si to myslíš? Říkáš, že bych měl raději přemýšlet o zacházení s nimi? Dobrá, budu. Náhody jsou dobrý, ale budu se taky držet svý cesty, jo! Teď už odsaď vypadni."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"Teď mi nedávej žádný příkazy. Prostě mi jenom odpověz na pár otázek."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"Prostě mi odpověz na pár otázek..."~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"Všechno v pořádku, Odcházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"To je v pohodě. Udělají to. Ví, že jestli ne, dostanou, co jim patří."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"Jsi lakomý jako kovář, kterej chce vše pro sebe?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"Dobrá. Mám nějaké další otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~"Zbledl během chviličky. "Byla to jenom mluvící figurína, že jo. Nevím, co to mělo znamenat."~ */
  IF ~~ THEN REPLY #12994 /* ~"Dobře. Odpověz mi na pár dalších otázek."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"Podíváme se na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"Co myslíš, že to znamená?"~ */
  IF ~~ THEN REPLY #12997 /* ~"Znamená to, že s tebou souhlasím."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"Znamená to, že nevěřím, že se o tebe jen tak starají."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"Kašli na to, frajere."~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"Fajn, dobře. Mnohovesmír by mohl být lepším místem, jestli všichni souhlasí. Teď už se musím vrátit ke své práci."~ */
  IF ~~ THEN REPLY #13001 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"Věř tomu, čemu chceš věřit, chlapče. Znám své lidi. Potřebujou nad sebou pevnou ruku. Za to mě respektují. Teď mi už zmiz z očí."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"Teď mi nedávej žádné příkazy. Odpověz mi na pár dalších otázek."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"Prostě mi odpověz na pár otázek..."~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"Vzali si mě a udělali ze mě to, co jsem, a za to jsem jim vděčný. Vzali mý surový nadání a vymodelovali z něho tyhle dovednosti. Říkám ti, jsem jasnej favorit a jednoho dne všem ukážu, jak hodně znamenám pro tuhle organizaci. Řekli mi, že každý je pro ně velmi důležitý. Tohle je moje pravda. Myslím, že jsem blíže pravdě, než mnozí přátelé. Dává mi to právo jednat jako bůh a očekávám absolutní oddanost svých podřízených. Učím se zacházet s mocí a hýbat pohořími tím, že v sebe věřím. Když vládnu nad kosmem, můžeš se vsadit, že si pamatuju každého, kdo se mi postavil do cesty."~ */
  IF ~~ THEN REPLY #13008 /* ~"To je... Zajímavé. Mám ještě jiné otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"Vidím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"Předpokládám, že na to nemůžeš zapomenout, co? Fajn, tak teda, vem si to a buď s tím spokojen." Hrubě popadne kousek železa z blízké hromady a vrazí ti ho do tvých rukou. "Chceš ještě něco jiného, nebo se můžu vrátit k hlídání těch nešťastníků?"~ */
  IF ~~ THEN REPLY #13011 /* ~"Mám pár dalších otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"Vrať se do práce. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~Šilhá po tobě. "Nepotřebuješ to, tak, jak jsem řekl. A teď už vypadni."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"Proč mi to prostě nedáš a v klidu neodejdeš?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"Proč mi to prostě nedáš a v klidu neodejdeš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"Dobrá, dobrá. Mám pár dalších otázek. Teda..."~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"Jestli je to cesta, kterou se chceš odebrat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~Opatrně si tě prohlíží nahoru a dolů, a říká, "Ty chceš bejt kovář, co? Tak si to vezmi, a nedostaň se do cesty mých pracovníků. Hezký den, pane."~ */
  IF ~~ THEN REPLY #13019 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"Vypadá to, že dovolí, aby se v dnešních dnech stal Božím člověkem úplně každý," reptá si pod fousy. "Ne, jako za starých časů, kdy jsi musel dokázat, že na to máš vlohy. Chceš tohle železo na tvůj nesmyslnej test? Tak si ho vem a vypadni." Vráží ti do rukou kus studeného železa.~ */
  IF ~~ THEN REPLY #13021 /* ~"Díky. Měl bych další otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~Kouká na velikost tvých rukou, dívá se ti na obličej, a rozhoduje se, že vypadáš seriózně. "Nemysli si, že jsem na to zapomněl, frajere," říká šíleným, zastřeným hlasem - ale přitom se vyhýbá pohledu tvých očí.~ */
  IF ~~ THEN REPLY #13024 /* ~"Díky. Mám další otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~Kouká na velikost tvých rukou a usmívá se. "Jak bych se mohl bavit s takovou potvorou? Táhni, frajere." Odchází od tebe pryč.~ */
  IF ~~ THEN REPLY #13027 /* ~Zaútočit na něj.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"Co jsem dělal? Proč, byl jsem... seděl jsem ve svém pokoji, před sebou kus vepřového a džbánek vína. Toho večera jsem nikam nešel. Nic jsem nepotřeboval."~ */
  IF ~~ THEN REPLY #13030 /* ~"Znáš někoho, kdo by ti to mohl odpřísáhnout?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"Vidím. Mám další otázky..."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"Vidím. Sbohem."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"Ne. Nikdy jsem netušil, že bych to mohl potřebovat. Spíše by ses měl ptát, kde byl v ten večer Saros. Tenhle malý zlodějský rytíř může chodit kamkoliv. Vždycky vyhledává nová dobrodružství - ten chlapec patří k Vnímavým. Pravděpodobně chce někoho zabít."~ */
  IF ~~ THEN REPLY #13034 /* ~"Saros, co? To si zapamatuju. A mezi tím, mám pár dalších otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"Saros, co? Jdu to zkontrolovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~Široce se podpírá, vystavujíc na obdiv několik zkažených zubů, a s třesoucíma se rukama se naklání dopředu. "Tohle je dobrá volba, kámo, fakt dobrá. Doufám, že se zase uvidíme."~ */
  IF ~~ THEN REPLY #13037 /* ~"To se vsaď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~Nedočkavý pohled se mu náhle vytratil z tváře, jako bys mu nafackoval. "Oba dva? Co jsem udělal?"~ */
  IF ~~ THEN REPLY #13039 /* ~"Věřím tomu, že ty jsi zabil kováře, a s tím půjdu za Sarosem, aby tě obvinil z vraždy. A také věřím tomu, že tě Saros spravedlivě potrestá, aby zabránil dalším kriminálním činům."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"Udělal jsem si z tebe tak trošku srandu, Thildone. Neboj. Odpověz mi na pár dalších otázek."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"Dělám si z tebe srandu, Thildone. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"Zabitím kováře Avildona a lhaním tvá cesta končí. Sbohem."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"Co, zase ty?"~ */
  IF ~~ THEN REPLY #13045 /* ~"Odpověz mi na pár dalších otázek, Thildone."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~Vidíš muže s pažemi jako lopaty a neudržovaným vousem. Zapáchá, jako by se několik let nekoupal, a jeho dech vypovídá vše o tom, co snídal. Když se k němu přibližuješ je zrovna v zápalu rozdávání příkazů svým podřízeným, a jednomu z nich právě dává kapky. Otáčí se k tobě a přitahuje si opasek. "Co potřebuješ?" ~ */
  IF ~~ THEN REPLY #13048 /* ~"Mám nějaké otázky..."~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~Na chvíli vyhlíží znepokojeně a pak promluví: "Saros je zloděj. Ukradl mi veškeré mé naděje. Ve skutečnosti, nějakou dobu postrádám své šídlo - nikdy jsem to nikomu neřekl, protože jsem si myslel, že jsem ho ztratil. Teď vím, že mi ho Saros ukradl. Lepší je dostat ho před tím, než se vám vysměje." Vidouc váš výraz v obličeji dodává: "Před tím, než uteče."~ */
  IF ~~ THEN REPLY #13092 /* ~"Zní to jako rána do vazu. Zeptám se ho na to, jak jen to bude možné a až mi odpovíš na pár dalších otázek..."~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"Tak ho jdu teda najít. Sbohem."~ */ EXIT
END
