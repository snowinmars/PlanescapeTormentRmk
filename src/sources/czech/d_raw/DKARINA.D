// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~Vidíš hezkou mladou ženu v prostém oblečení. Prochází po trhu a vše si prohlíží, ale nic nekupuje. Všiml sis, že se jí lidé vyhýbají, snaží se to ale dělat nenápadně. Když ses přiblížil, vřele se na tebe usmála.~ */
  IF ~~ THEN REPLY #36100 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Její úsměv se rozšířil. "Ahoj, já jsem Karina. Ráda tě potkávám, kamaráde." Dál se usmívá a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #36103 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~Přikývla. "Dobře. Co chceš vědět?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"Měl jsem lebku a někdo mi ji ukradnul. Nevíš, kdo by to mohl udělat?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"Kde si můžu koupit nějaké zbraně?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"Kde si můžu koupit nějakou magii?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"Ty, uh... opravdu ráda mluvíš, viď?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~Zamračila se. "Lothar... Neznám nikoho jménem Lothar. Nepamatuju si, že bych to jménu vůbec kdy slyšela." Zaujatě se na tebe podívala. "Řekl jsi Pán Kostí? To zní zlověstně, ne? Proč by chtěl být někdo známý pod takovým jménem?"~ */
  IF ~~ THEN REPLY #36113 /* ~"No... zní to docela impresivně..."~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"No, řekl bych, aby vystrašil lidi..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"Lebka? Na co chceš takovou věc? To je trochu morbidní, ne? No, když už toužíš po lebce, řekla bych, že bys mohl jednu získat z márnice... no, možná ne. Neradi ty věci rozdávají a když se nad tím zamyslím... no, opravdu nevím, kdo by chtěl vzít tvou lebku. Na co by ji někdo chtěl?"~ */
  IF ~~ THEN REPLY #36118 /* ~"Je to můj přítel."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"Je to cenný předmět."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~Usmála se a ukázala na jednu pokladnu. "Támhle Anze prodává zbraně. Všechny možné druhy zbraní. Jsi válečník? Já jsem ale hloupá, samozřejmě, že jsi. Teda, jak bys nemohl být se všemi těmi jizvami... ó, promiň, neměla jsem se o nich zmiňovat. Nejsi na ně citlivý, nebo ano?"~ */
  IF ~~ THEN REPLY #36123 /* ~"Ne, zvyknul jsem si na ně."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"Ano, takže už se o nich raději nebudeme bavit."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~Usmála se a ukázala na jeden ze stánků. "Támhle Aalek prodává magické předměty. Jsi mág? Nevypadáš na něj, ale já si myslím, že zdání může klamat. Když se nad tím zamyslím, vlastně ani nevím, jak má mág vypadat. Ty to víš?"~ */
  IF ~~ THEN REPLY #36128 /* ~"Ano. Nosí róby se srandovními symboly a špičaté klobouky."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"Ne, ani ne."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~Přikývla. "Ano... Myslím, že ti rozumím. Má to něco do sebe. Hmmm. Je to docela chytlavé, když nad tím popřemýšlíš." Zamyslela se.~ */
  IF ~~ THEN REPLY #36132 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~Zmateně se na tebe dívá. "Vážně? Lebka? To zní divně, víš. Nikdy jsem neslyšela o někom, kdo by měl jako přítele lebku. Viděla jsem lidi se zvířátky a tak, ale nikdy s lebkou. Ale ty jsi neřekl, že to byl tvůj mazlíček, ale že je to přítel. To je ještě divnější..."Odmlčela se a přemýšlí.~ */
  IF ~~ THEN REPLY #36134 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~Vypadá to, že se jí ulehčilo. "Oh, dobře, nechtěla jsem tě nějak urazit, vlastně nechci nikomu ublížit, když už jsme u toho. Musíš si prostě dávat pozor na to, co komu říkáš, víš? Tím myslím... lidé jsou různí a nikdy nevíš. Co může urazit jednoho, druhému nevadí. No... nic." Odmlčela se, aby mohla popadnout dech, a usmála se na tebe.~ */
  IF ~~ THEN REPLY #36136 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"Vážně? To je dobré vědět. Tím myslím, z mágů mám strach, takže bych chtěla vědět, jak vypadají. Řekla bych, že to je tou jejich neuvěřitelnou mocí a těmi úžasnými věcmi, které dokážou, ale já nevím, jak vypadají. Válečníci a kněží a... a víš, další mocní lidé vypadají s tou spoustou věcí, co s sebou tahají mocně, ty věci mluví za ně. Ale ne mágové." Odmlčela se.~ */
  IF ~~ THEN REPLY #36138 /* ~"Mám ještě nějaké další otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~Vypadá zamyšleně, poklepává si prstem na líc. Nakonec přikývla. "Ano... myslím, že máš pravdu. Když nad tím přemýšlím, běhá mi mráz po zádech. Pán Kostí, to je docela hrozivý titul. Nemyslím si, že bych se chtěla zaplést s někým, kdo si takhle říká." Přemýšlí dál.~ */
  IF ~~ THEN REPLY #36140 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~Pokrčila rameny. "Oh, no... dobrá, tak chceš mít lebku, to je v pohodě. Lidi sbírají různé divné věci. Já nic nesbírám, ale znám spoustu lidí, kteří ano. Ale ty jsi jediný, kdo sbírá lebky. Možná bych taky měla něco sbírat..."~ */
  IF ~~ THEN REPLY #36142 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~Vypadá smutně a znepokojeně se na tebe dívá. "Omlouvám se. Doufám, že mi odpustíš, nechci urážet lidi nebo jim nějak ubližovat a tak. Víš, já nemám ráda, když někdo ubližuje mně, tak proč bych to měla sama někomu dělat? Asi to taky nemají rádi... pokud nejsou divní... nebo tak něco." Nevinně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36144 /* ~"Mám ještě nějaké další otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~Začíná být vzrušená a ukazuje na tebe. "Vidíš! Tohle přesně myslím. Mají všechnu tu úžasnou moc a mohou dělat neuvěřitelné věci, ale ty to nepoznáš, když se na ně jen tak podíváš. Můžou tě tak oklamat. Víš, kněží a válečníci sebou tahají spoustu jasných věcí, podle kterých je poznáš a víš, že si na ně musíš dávat pozor. Ale ne mágové." ~ */
  IF ~~ THEN REPLY #36146 /* ~"Mám nějaké otázky..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~Zašoupala nohama a vypadá rozpačitě. "Já... ach... no... říkali mi, že asi mluvím příliš a... no, lidi se mi vyhýbají... a já nemám žádné kamarádky nebo kamarády... a někdy se cítím hodně osaměle..." Ztišuje hlas, až nakonec zcela zmlkne. Zírá na zemi před svýma nohama.~ */
  IF ~~ THEN REPLY #36148 /* ~"No, docela to chápu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"Nemyslím si, že bys byla špatná, Karino. Docela se mi líbíš."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~Potkal jsem mladou ženu jménem Karina. Mluví trochu moc, ale je docela fajn. Řekla mi, že je osamělá.~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~Nejprve tam jen tak stojí a zírá na zem. Po chvíli sis všiml, že tiše vzlyká. Otočila se od tebe a jde pomalu pryč.~ */
  IF ~~ THEN REPLY #36152 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~Nadějně se na tebe dívá. "Vážně? Děkuji ti... A ani neznám tvé jméno."~ */
  IF ~~ THEN REPLY #36154 /* ~Lži: "Jsem Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"Nepamatuju si své jméno."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"Sbohem, Karino."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~Usmála se. "Děkuju ti, Adahne. Je to fajn vědět, že mám přítele."~ */
  IF ~~ THEN REPLY #36158 /* ~"Sbohem, Karino."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~Zamračila se, začíná něco říkat, ale pak si to radši rozmyslela. Pokrčila rameny. "Co je důležitého na jméně? Je zkrátka hezké vědět, že mám kamaráda." Usmála se.~ */
  IF ~~ THEN REPLY #36160 /* ~"Sbohem, Karino."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~Vidíš Karinu. Usmála se na tebe. "Ahoj. Jak se dneska máš?"~ */
  IF ~~ THEN REPLY #36162 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"To nic. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Karina se usmála, vypadá šťastně. "Ahoj, kamaráde. Ráda tě zase vidím."~ */
  IF ~~ THEN REPLY #36165 /* ~"Jen jsem chtěl říct ahoj, Karino. Měj se."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~Karina si tě všimla a šťastně se na tebe usmála. "Ahoj." Vypadá to, že brzy vybuchne nadšením. "Děkuju ti mockrát, kamaráde! Jsem ti tak vděčná za to, co jsi pro mě udělal."~ */
  IF ~~ THEN REPLY #36167 /* ~"Co jsem udělal, Karino?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~Zasmála se. "Poslal jsi za mnou Corvuse. Vím to, protože mi to řekl. Měl strach jít za mnou, myslel si, že mám spoustu obdivovatelů.. No, chci ti hlavně poděkovat." Objala tě.~ */
  IF ~~ THEN REPLY #36169 /* ~"Nemáš zač, Karino. Přeju vám oběma hodně štěstí."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"Děkuju ti, kamaráde. Doufám, že i ty najdeš ve svém životě štěstí."~ */
  IF ~~ THEN REPLY #36171 /* ~"Sbohem."~ */ EXIT
END
