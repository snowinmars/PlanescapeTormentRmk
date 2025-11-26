// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~Starší šlechtična tě přivítala elegantní poklonou. "Vítám tě, pane. Dovolím si říct, než se mě na cokoli zeptáš, že jsem tady patron a ne jedna ze studentek."~ */
  IF ~~ THEN REPLY #3201 /* ~"Ty jsi patron?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"Vidím. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~Noblesní žena se půvabně uklonila, když jsi k ní přistoupil. "Skvělé se znovu střetnout, pane."~ */
  IF ~~ THEN REPLY #40088 /* ~"Ano, zdravím. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"Vítej. Jenom přecházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~Žena přikývla. "V pořádku."~ */
  IF ~~ THEN REPLY #40091 /* ~"Řekla si, že si tu jako zákazník?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"Co tu děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"Co víš o téhle tiché prostitutce?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"Hledám Vivianinu voňavku... nevíš, kde může být?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"Hledám Marissin Karmínový závoj... nevíš, kde může být?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"Víš něco o Ravel Puzzlewell?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40099 /* ~"Mluvil jsem již s devíti prostitutkami... Nevíš náhodou kdo, nebo kde, je desátá?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"Skutečně, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~Přikyvuje. "Máte pravdu, mladý pane. Přišla jsem sem jednoho večera zjistit, proč můj muž stále platí za návštěvy tohohle místa ... Rychle jsem se spřátelila s mnohými prostitutkami a tak jsem tu! Bavit se dobrou konverzací není jen pro muže, jak víte."~ */
  IF ~~ THEN REPLY #40102 /* ~"To je pravda. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"To jsem si mohl myslet. V každém případe, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"Nevěstinec je škola založena Fall-From-Grace... učí pilné členy Společenstva Vjemu delikátnímu umění jazyka a komunikace. Pokud je pravda, co mi bylo řečeno, tak nevěstinec existuje z dotací od bohatších klientů."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"Fall-From-Grace?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"Řekni mi něco o Společenství Vjemu."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~Žena na tebe pohlédla zvláštním pohledem, ale jen krátce. "Určitě jste o nich již předtím slyšeli, ne? Vnímaví, to je Společenství, které věří, že zkušenosti jsou klíčem k pochopení mnohovesmíru. Jejich hlavní sídlo, Městská hala, je při... když půjdeš odtud, zaboč doleva a potom znovu. Najdeš tu mnoho ochotných, kteří si s tebou o Vnímavých rádi promluví."~ */
  IF ~~ THEN REPLY #40110 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"Neznám ji... ani si nemohu vzpomenout na její jméno. Řekla jsem, že nikdy nemluvila, ale sama to nevím jistě, mluvit jsem s ní nezkoušela"~ */
  IF ~~ THEN REPLY #40113 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"Ravel? Neznám nikoho s jménem Ravel, možná by to mohla být Kesaina matka. Kesai mi o sobě řekla, že je sirotek, ačkoliv... ten její otec, napůl fiend, ji opustil, kvůli povýšení tu v Sigilu."~ */
  IF ~~ THEN REPLY #40116 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"Ne, já ne. Vivian mi říkala, že - je strašně rozrušená! Byla bych moc potěšena, kdyby to získala nazpět, neboť už téměř ani nemluví."~ */
  IF ~~ THEN REPLY #40119 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~Žena na tebe ostře pohlédla. "Oh, nestarám se o Marissu... má mnoho nepříjemných vlastností! A o tom jejím závoji, ne... Nevím o tom nic."~ */
  IF ~~ THEN REPLY #40122 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"Ravel... Puzzlewell..." Říká ta jména pomalu, jako kdyby je předtím nikdy ještě neslyšela. "Musím se přiznat, nevím."~ */
  IF ~~ THEN REPLY #40125 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"Vím jen o devíti prostitutkách... a jsem si naprosto jist, že jsem se všemi hovořil. Třeba je tu nová dívka, kterou jsem ještě nepotkal...?"~ */
  IF ~~ THEN REPLY #40128 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"Zastavit se a pokecat si s přáteli, to je pro mě všechno. Jsem jedna z mála ženských klientů Nevěstince Duševních Rozkoší."~ */
  IF ~~ THEN REPLY #40131 /* ~"Jsi zákazník?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"Můžeš mi doporučit někoho, s kým bych si mohl promluvit?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"To záleží na typu osob, se kterými rád hovoříš, pane. Například já, přátelím se s Vivian a Kesai-Serris a příležitostně si popovídám i s tou malou, milou Nenny."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"Ano... prostitutky ji volají paní Grace. Většinou vítá klienty ve vstupní hale Nevěstince... když s ní chceš mluvit, můžeš ji tam najít."~ */
  IF ~~ THEN REPLY #40140 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END
