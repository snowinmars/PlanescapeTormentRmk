// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHULT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHULT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2802 /* ~Muž vypadá silněji a ostražitěji než ostatní kolemjdoucí. Pohybuje se jako dravec, pozorně si prohlíží své okolí. Když ses k němu přiblížil, přátelsky ti kývl na pozdrav.~ */
  IF ~~ THEN REPLY #18030 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #18031 /* ~Kývni v odpověď, projdi kolem něho.~ */ EXIT
  IF ~~ THEN REPLY #18032 /* ~Projdi kolem něho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2803 /* ~"'Hoj, kámo! Hele, neviděls tu někde v okolí ňáký zdechliny?"~ */
  IF ~~ THEN REPLY #18033 /* ~"Nikde blízko, ne. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #18034 /* ~"Ne, nikde blízko. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.4 4.3 5.3 6.3 7.4 8.3 9.4 10.3 11.1 12.4 13.3 14.3 15.3 16.1
  SAY #18015 /* ~"Tobě taky sbohem, kámo!" Zamává na rozloučenou a odejde.~ */
  IF ~~ THEN REPLY #18035 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #18016 /* ~"To je nepříjemné, nepříjemné." Pokrčí rameny. "Měl' jsi nějaký otázky, že jo? Tak se ptej!"~ */
  IF ~~ THEN REPLY #18036 /* ~"Hledáš snad něco?"~ */ GOTO 4
  IF ~~ THEN REPLY #18037 /* ~"Můžeš mi říct něco o téhle oblasti?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18038 /* ~"Hledám muže jménem Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18039 /* ~"Pátrám po deníku, který jsem ztratil."~ */ GOTO 15
  IF ~~ THEN REPLY #18040 /* ~"To je jedno. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18017 /* ~"Mrtvý, samozřejmě! Nepoznáváš snad roucho Sběrače?" Vezme tkaninu a podrží ji, aby sis ji mohl prohlédnout.~ */
  IF ~~ THEN REPLY #18427 /* ~"Ne..."~ */ GOTO 5
  IF ~~ THEN REPLY #18428 /* ~"Sběrači?"~ */ GOTO 5
  IF ~~ THEN REPLY #18429 /* ~"Mám pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #18430 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 12.0 13.0 14.0 15.0
  SAY #18018 /* ~"Joo, Sběrači!" Ukáže na své rozedrané hnědé roucho. "Tohle je roucho Sběrače, kámo. Každej ubožák, kterýho uvidíš v takovým rouchu... například já, hehe! ...nejspíš hledá mrtváky. Těla k prodeji do Márnice." Pokrčí rameny. "Cokoliv, aby si človek vystačil v Úlu, nemám pravdu? Ha ha!"~ */
  IF ~~ THEN REPLY #18431 /* ~"Sběrači pracují spolu?"~ */ GOTO 6
  IF ~~ THEN REPLY #18432 /* ~"Proč platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18433 /* ~"Mám pár otázek"~ */ GOTO 12
  IF ~~ THEN REPLY #18434 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #18019 /* ~Srdečně se zasměje. "Hernajs, ne! Všichni se oblíkáme stejně, ale je tu jen určitý množství mrtváků. Obvykle se proti sobě spolčujeme... a soupeřící bandy, skupiny, gangy... říkej si jim jak chceš... k sobě nejsou moc přátelský."~ */
  IF ~~ THEN REPLY #18435 /* ~"Jsou zde v okolí ještě nějací jíní Sběrači?"~ */ GOTO 7
  IF ~~ THEN REPLY #18436 /* ~"Proč Vám platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18437 /* ~"Mám pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #18438 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #18020 /* ~Přikývne. "Jako že je Sigil kruhovej!. Většina Sběračů v Úlu má přístřeší na Hadrníkově náměstí, smetišti tady kousek na sever skrz tu velkou bránu. Většinou to tam vedou chlapi Sharegrava, teď co jsme odtamtud vypráskali většinu Pharodových lidí."~ */
  IF ~~ THEN REPLY #18439 /* ~"Řekni mi o Sharegravovi."~ */ GOTO 8
  IF ~~ THEN REPLY #18440 /* ~"Řekni mi o Pharodovi."~ */ GOTO 9
  IF ~~ THEN REPLY #18441 /* ~"Proč Vám platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18442 /* ~"Mám pár otázek"~ */ GOTO 12
  IF ~~ THEN REPLY #18443 /* ~"To je vše, co jsem potřeboval vědět. Sbohem"~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 10.0
  SAY #18021 /* ~"Sharegrave? Je to můj šéf. I když jsem s ním nikdy nemluvil... ani sem ho nikdy neviděl moc zblízka. S nikým se většinou nebaví a všechno řídí přes pár svých podřízených. Můžeš ho najít v jeho domku na Hadrníkově náměstí, ale bejt tebou, tak bez dobrýho důvodu s ním mluvit se od něj držím dál. Je trošku háklivej na cizince, to jo."~ */
  IF ~~ THEN REPLY #18444 /* ~"Řekni mi o Pharodovi."~ */ GOTO 9
  IF ~~ THEN REPLY #18445 /* ~"Proč Vám platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18446 /* ~"Mám pár otázek"~ */ GOTO 12
  IF ~~ THEN REPLY #18447 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #18022 /* ~"Já o něm teda moc nevim. Strávili sme hodně času bojem s jeho lidma, ale všichni pak náhle zmizeli... a Pharod s nima. Občas ještě čapnem na Hadrníkově náměstí nějakýho jejich opozdilce, ale nemáme ani páru kde se ukrejvá zbytek."~ */
  IF ~~ THEN REPLY #18448 /* ~"Má hodně mužů?"~ */ GOTO 10
  IF ~~ THEN REPLY #18452 /* ~"Řekni mi o Sharegravovi."~ */ GOTO 8
  IF ~~ THEN REPLY #18453 /* ~"Proč Vám platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18454 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18456 /* ~"To je vše, co jsem potřeboval vědět."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #18023 /* ~"To musí, protože jsme slyšeli, že měl poslední dobou opravdu úspěch. Nachází hodně mrtváků, takže hodně vydělává na Spalovačích v Márnici. Nechápu jak je to možný, když my máme poslední dobou potíže s hledáním mrtvol." Pokrčí rameny.~ */
  IF ~~ THEN REPLY #18457 /* ~"Řekni mi o Sharegravovi."~ */ GOTO 8
  IF ~~ THEN REPLY #18459 /* ~"Proč Vám platí Márnice za mrtvé?"~ */ GOTO 11
  IF ~~ THEN REPLY #18460 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18461 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1 7.2 8.1 9.2 10.1
  SAY #18024 /* ~"Udržujeme ulice Úlu trochu čistší, proto. Zabraňuje to šíření moru a tak. I když Spalovači se taky snažej udržet mrtvý na jejich místě... dohlížejí na to, aby byli všichni řádně pochovaný nebo roztavený, nebo co. Součást jejich víry a tak."~ */
  IF ~~ THEN REPLY #18463 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #18464 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.2 5.2 6.2 7.3 8.2 9.3 10.2 11.0
  SAY #18025 /* ~"Tak se ptej, kámo! Možná budu mít štěstí a někdo se složí a umře zatímco tu spolu kecáme. Ha ha!"~ */
  IF ~~ THEN REPLY #18466 /* ~"Pověz mi o Sběračích."~ */ GOTO 5
  IF ~~ THEN REPLY #18467 /* ~"Co mi povíš o tomto místě?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18469 /* ~"Hledám muže jménem Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18471 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 15
  IF ~~ THEN REPLY #18472 /* ~"Nevadí. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1 12.1 14.1 15.1
  SAY #18026 /* ~"Tohle je Úl, kámo - čemu my z Úlu rádi říkáme konec Sigilu. Né že by měl Sigil konec, dyť je kruhovej a tak, ale víš co mám na mysli. Ha! Každopádně, severozápadně odtud, skrz velkou bránu je Hadrníkovo náměstí, které Sběrači jako já považují za domov. Obávám se, že o zbytku Sigilu toho moc nevim."~ */
  IF ~~ THEN REPLY #18473 /* ~"Pověz mi o Sběračích."
~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18474 /* ~"Hledám muže jménem Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18475 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 15
  IF ~~ THEN REPLY #18476 /* ~"To je vše co jsem potřeboval vědět."~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 3.2 12.2 13.1 15.2
  SAY #18027 /* ~"Šéf Sběračů? Já o něm teda moc nevim. Strávili sme hodně času bojem s jeho lidma, ale všichni pak náhle zmizeli... a Pharod s nima. Občas ještě čapnem na Hadrníkově náměstí nějakýho jejich opozdilce, ale nemáme ani páru kde se ukrejvá zbytek."~ */
  IF ~~ THEN REPLY #18477 /* ~"Můžeš mi něco říct o Sběračích?"~ */ GOTO 5
  IF ~~ THEN REPLY #18478 /* ~"Co mi povíš o tomto místě?"~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18479 /* ~"Také hledám deník, který jsem ztratil."~ */ GOTO 15
  IF ~~ THEN REPLY #18480 /* ~"To je vše co jsem potřeboval vědět"~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 3.3 12.3 13.2 14.2
  SAY #18028 /* ~"Hmm... ne, žádnej sem neviděl. Ale něco ti řeknu - bejt tebou tak si na něj dávám bacha."~ */
  IF ~~ THEN REPLY #18481 /* ~"Díky. Řekneš mi ještě něco o Sběračích?"~ */ GOTO 5
  IF ~~ THEN REPLY #18482 /* ~"Díky. Co mi povíš o tomto místě?~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18483 /* ~"Také hledám muže jménem Pharod"~ */ GOTO 14
  IF ~~ THEN REPLY #18484 /* ~"Dík, cením si toho. Sbohem."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #18029 /* ~"Zdravím tě, příteli. Hele, neviděli jsme se už dříve, ne? Samozřejmě, že ano! Teď si vzpomínám. Řekni... viděl jsi tu někde mrtváky?"~ */
  IF ~~ THEN REPLY #18485 /* ~"Ne. Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #18486 /* ~"Ne. Sbohem."~ */ GOTO 2
END
