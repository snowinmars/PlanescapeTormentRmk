// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUDESIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DUDESIRE~

IF ~  Global("UDesire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2987 /* ~Žena před tebou je neuvěřitelně atraktivní. Je kolem ní nějaká nehmotná aura, která tě nutí *chtít* si s ní promluvit. Když ses přiblížil, ostýchavě se na tebe podívala, pak nasadila chápavý úsměv.~ */
  IF ~~ THEN REPLY #2988 /* ~"Zdravím..."~ */ DO ~SetGlobal("UDesire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44849 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 21.0
  SAY #44850 /* ~"*Chceš* něco... annóó?" Slůvko ano smyslně protáhla a zdůraznila. "Můžu ti pomoct. Řekni, po čem toužíš, a já ti to obstarám."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 475
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44851 /* ~"Chci *tebe*."~ */ GOTO 3
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44852 /* ~"Chci pořádné zbraně."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44853 /* ~"Chci magické předměty."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44854 /* ~"Chci kouzla."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44855 /* ~"Chci znalosti. Mám nějaké otázky..."~ */ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44856 /* ~"Chci, aby se mi vrátily vzpomínky - všechny."~ */ GOTO 17
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44857 /* ~"Co máš, co bych mohl chtít?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44858 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44859 /* ~Žena ignoruje Morta, její pohled je pevně zaklesnutý do tvého. Usmála se a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #44860 /* ~"Chci *tebe*."~ */ GOTO 3
  IF ~~ THEN REPLY #44861 /* ~"Chci pořádné zbraně."~ */ GOTO 10
  IF ~~ THEN REPLY #44862 /* ~"Chci magické předměty."~ */ GOTO 10
  IF ~~ THEN REPLY #44863 /* ~"Chci kouzla."~ */ GOTO 10
  IF ~~ THEN REPLY #44864 /* ~"Chci znalosti. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #44865 /* ~"Chci, aby se mi vrátily vzpomínky - všechny."~ */ GOTO 17
  IF ~~ THEN REPLY #44866 /* ~"Co máš, co bych mohl chtít?"~ */ GOTO 16
  IF ~~ THEN REPLY #44867 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #44868 /* ~Olízla si rty a usmála se. Cítíš, jak se v tobě něco svírá, jakoby do tebe někdo vrazil ruku a začal ti mačkat v hrsti vnitřnosti. "Jednoduchá žádost. A já mám pro tebe taky jednu, cestovateli. Žádám tě, abys mi popsal, jakým způsobem mě chceš. Až vyslechnu tvou touhu... *pak* vyslovím svou cenu."~ */
  IF ~~ THEN REPLY #44869 /* ~"Přeřekl jsem se... Nechci tě.."~ */ GOTO 4
  IF ~~ THEN REPLY #44870 /* ~"Chci tebe. To nestačí?"~ */ GOTO 6
  IF ~~ THEN REPLY #44871 /* ~Popiš jí, jak ji chceš.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44872 /* ~Ukaž jí - fyzicky - jak ji chceš.~ */ GOTO 7
  IF ~~ THEN REPLY #44873 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44874 /* ~Její úsměv vybledl. Vypadá to, že ji tvá odpověď rozesmutnila. "Je snad tvou touhou dráždit mě, cestovateli? Touhu má v sobě téměř každý... copak není *nic*, co bys chtěl?"~ */
  IF ~~ THEN REPLY #44875 /* ~"Ještě jsem něco chtěl..."~ */ GOTO 5
  IF ~~ THEN REPLY #44876 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0 15.0 16.0
  SAY #44877 /* ~"Ano? No tak... pověz mi to..."~ */
  IF ~~ THEN REPLY #44878 /* ~"Chci *tebe*."~ */ GOTO 3
  IF ~~ THEN REPLY #44879 /* ~"Chci pořádné zbraně."~ */ GOTO 10
  IF ~~ THEN REPLY #44880 /* ~"Chci magické předměty."~ */ GOTO 10
  IF ~~ THEN REPLY #44881 /* ~"Chci kouzla."~ */ GOTO 10
  IF ~~ THEN REPLY #44882 /* ~"Chci znalosti. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #44883 /* ~"Chci, aby se mi vrátily vzpomínky - všechny."~ */ GOTO 17
  IF ~~ THEN REPLY #44884 /* ~"Co máš, co bych mohl chtít?"~ */ GOTO 16
  IF ~~ THEN REPLY #44885 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 7.0
  SAY #44886 /* ~Její úsměv ztvrdl. "Musíš popsat svou touhu slovy a pocity, jinak jsi pro mne méně než hrstka prachu. Musíš mě přesvědčit, že opravdu toužíš po něčem, co mohu předat, jinak to nedostaneš."~ */
  IF ~~ THEN REPLY #44887 /* ~Popiš jí, jak ji chceš.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44888 /* ~Ukaž jí - fyzicky - jak ji chceš.~ */ GOTO 7
  IF ~~ THEN REPLY #44889 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 6.1
  SAY #44890 /* ~Pokusil ses popadnout ji za ramena, ale rychle ustoupila a ty jsi chytil jenom trochu vzduchu. "Nestačí jenom chtít... musíš vyslovit svou touhu, až pak se ti otevřou brány paláce. Mluv."~ */
  IF ~~ THEN REPLY #44891 /* ~"Chci tebe. To nestačí?"~ */ GOTO 6
  IF ~~ THEN REPLY #44892 /* ~Popiš jí, jak ji chceš.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44893 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 6.0 7.1
  SAY #44894 /* ~Jak jsi mluvil, její úsměv bledl. Naklonila se k tobě a její oči ti přejížděly po obličeji. Řekl jsi toho víc, než jsi původně chtěl, ona po chvíli zavřela oči a prudce se nadechla. Najednou začíná tvá touha mizet... touha se nadobro vytratila, zůstal po ní jenom pocit studené prázdnoty. Znovu otevřela s úsměvem oči. Tváří se spokojeně.

"Copak, cestovateli? Už mě nechceš?"~ */
  IF ~~ THEN REPLY #44895 /* ~"Ne... ne, nechci. Co jsi to udělala?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44896 /* ~Tváří se zmateně. "Co tím myslíš?" I když se tváří nevinně, víš jistě, že se stalo něco nepřirozeného. Nějakým způsobem z tebe vysála tvou touhu - ukradla ti ji do nějaké své podivně sbírky tužeb, nebo se tím možná živí... A teď je to pryč... navždy.

"No tak, určitě ještě něco chceš, ne? Pověz mi o tom..."~ */
  IF ~~ THEN REPLY #44897 /* ~"Já... raději ne. Sbohem, Nenaplněná Touho."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.3 1.4 2.1 2.2 2.3 5.1 5.2 5.3
  SAY #44898 /* ~Prohlíží si tě. "Jestli po těch věcech opravdu toužíš, musíš mi nejdříve splnit tuhle žádost: popiš mi, jak ty předměty chceš. Vyslov svou touhu a já ti pak řeknu svou cenu."~ */
  IF ~~ THEN REPLY #44899 /* ~"Přeřekl jsem se... Nic takového nechci."~ */ GOTO 11
  IF ~~ THEN REPLY #44900 /* ~"Chci je... copak to nestačí?"~ */ GOTO 12
  IF ~~ THEN REPLY #44901 /* ~Popiš jí, jak je chceš.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44902 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 17.0 18.0
  SAY #44903 /* ~Její úsměv vybledl. Vypadá to, že ji tvá odpověď rozesmutnila. "Je snad tvou touhou dráždit mě, cestovateli? Touhu má v sobě téměř každý... copak není *nic*, co bys chtěl?"~ */
  IF ~~ THEN REPLY #44904 /* ~"Ještě jsem něco chtěl..."~ */ GOTO 5
  IF ~~ THEN REPLY #44905 /* ~"Teď zrovna ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #44906 /* ~Její úsměv ztvrdl. "Musíš popsat svou touhu slovy a pocity, jinak jsi pro mne méně než hrstka prachu. Musíš mě přesvědčit, že opravdu toužíš po něčem, co mohu předat, jinak to nedostaneš."~ */
  IF ~~ THEN REPLY #44907 /* ~"Přeřekl jsem se... nic takového nechci."~ */ GOTO 11
  IF ~~ THEN REPLY #44908 /* ~Popiš jí, jak je chceš.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44909 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 12.1
  SAY #44910 /* ~Jak jsi mluvil, její úsměv bledl. Naklonila se k tobě a její oči ti přejížděly po obličeji. Řekl jsi toho víc, než jsi původně chtěl, ona po chvíli zavřela oči a prudce se nadechla. Najednou začíná tvá touha mizet... touha se nadobro vytratila, zůstal po ní jenom pocit studené prázdnoty. Znovu otevřela s úsměvem oči. Tváří se spokojeně.

"Copak, cestovateli? Už ty věci nechceš?"~ */
  IF ~~ THEN REPLY #44911 /* ~"Ne... vlastně ano... co jsi mi to udělala?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 20.0
  SAY #44912 /* ~Tváří se zmateně. "Co tím myslíš?" I když se tváří nevinně, víš jistě, že se stalo něco nepřirozeného. Nějakým způsobem z tebe vysála tvou touhu - ukradla ti ji do nějaké své podivně sbírky tužeb, nebo se tím možná živí... A teď je to pryč... navždy.

"No tak, určitě ještě něco chceš, ne? Pověz mi o tom..."~ */
  IF ~~ THEN REPLY #44913 /* ~"Já... raději ne. Sbohem, Nenaplněná Touho."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.4 5.4 22.0
  SAY #44914 /* ~Zamračila se a na chvíli odvrátila pohled. "Znalosti... s těmi já neobchoduji. Ale určitě je ještě něco dalšího, co chceš, o čem se mnou můžeš mluvit..."~ */
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44915 /* ~"Ano, je tady ještě něco, co bych chtěl..."~ */ GOTO 5
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44916 /* ~"Možná jindy. Sbohem."~ */ EXIT
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #44917 /* ~"Ne, myslím, že ti nic neřeknu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7 2.6 5.6
  SAY #44918 /* ~"Vše, co bys mohl chtít, mám na dosah. To málo, co nemám, mohu získat. Vyslov svou touhu..."~ */
  IF ~~ THEN REPLY #44919 /* ~"*Je* něco, co chci..."~ */ GOTO 5
  IF ~~ THEN REPLY #44920 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.6 2.5 5.5
  SAY #44921 /* ~Usmála se. "Za život se toho dá zapomenout spousta... a za více životů ještě více. *Můžu* ti pomoct." Prohlíží si tě zblízka. "Popiš mi, jakým způsobem chceš mít ty vzpomínky. Promluv ke mně o své touze a já ti pak řeknu cenu."~ */
  IF ~~ THEN REPLY #44922 /* ~"Přeřekl jsem se... Nechci je zpátky."~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #44923 /* ~"Jaký důkaz máš, že mi je opravdu dokážeš vrátit?"~ */ GOTO 18
  IF ~~ THEN REPLY #44924 /* ~"Chci je zpátky... copak to nestačí?"~ */ GOTO 19
  IF ~~ THEN REPLY #44925 /* ~Popiš jí, jakým způsobem chceš zpět své vzpomínky.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44926 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0
  SAY #44927 /* ~Vypadá to, že se ani nepohnula, ale najednou se její ruka dotýká tvého čela a prst ti přejíždí po spánku. "Jenom toto..." Máš pocit, jakoby se mlha v tvé hlavě na chvíli rozptýlila, jen na okamžik, ale stačilo to, aby se objevil zlomek vzpomínky... než se na ni můžeš soustředit, mlha je zpět. "Jenom toto. Stačí, abys mi řekl, *proč* po ní toužíš. Vyslov svou touhu a já ti řeknu svou cenu..."~ */
  IF ~~ THEN REPLY #44928 /* ~"Přeřekl jsem se... Nechci je zpátky."~ */ GOTO 11
  IF ~~ THEN REPLY #44929 /* ~"Chci je zpátky... copak to nestačí?"~ */ GOTO 19
  IF ~~ THEN REPLY #44930 /* ~Popiš jí, jakým způsobem chceš zpět své vzpomínky.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44931 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #44932 /* ~Její úsměv ztvrdl. "Musíš popsat svou touhu slovy a pocity, jinak jsi pro mne méně než hrstka prachu. Musíš mě přesvědčit, že opravdu toužíš po něčem, co mohu předat, jinak to nedostaneš."~ */
  IF ~~ THEN REPLY #44933 /* ~"Jaký důkaz máš, že mi je opravdu dokážeš vrátit?"~ */ GOTO 18
  IF ~~ THEN REPLY #44934 /* ~Popiš jí, jakým způsobem chceš zpět své vzpomínky.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44935 /* ~"Možná jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.2 19.1
  SAY #44936 /* ~Jak jsi mluvil, její úsměv bledl. Naklonila se k tobě a její oči ti přejížděly po obličeji. Řekl jsi toho víc, než jsi původně chtěl, ona po chvíli zavřela oči a prudce se nadechla. Najednou začíná tvá touha mizet... touha se nadobro vytratila, zůstal po ní jenom pocit studené prázdnoty. Znovu otevřela s úsměvem oči. Tváří se spokojeně.

"Copak, cestovateli? Už nechceš vzpomínky zpět?"~ */
  IF ~~ THEN REPLY #44937 /* ~"Ne... vlastně ano... co jsi mi to udělala?"~ */ GOTO 14
END

IF ~  Global("UDesire","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #44938 /* ~Vidíš Nenaplněnou Touhu. Když ses přiblížil, otočila se k tobě a usmála se.~ */
  IF ~~ THEN REPLY #44939 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #44940 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~  Global("UDesire","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #44941 /* ~Vidíš Nenaplněnou Touhu, která zřejmě sbírá z ostatních jejich touhy a navždy je odstraňuje z jejích myslí. Když ses přiblížil, otočila se k tobě a usmála se.~ */
  IF ~~ THEN REPLY #44942 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #44943 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END
