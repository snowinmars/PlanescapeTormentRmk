// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~Vidíš hezkou mladou ženu v kvalitních šatech. Její kůže postrádá nažloutlý nádech, typický pro obyvatele této čtvrti. Vypadá to, že se zájmem sleduje tři stvoření, stojící kousek opodál.~ */
  IF ~~ THEN REPLY #51105 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~Otočila se k tobě, po tváři ji přejel rozčílený výraz. "Ano? Co chceš?"~ */
  IF ~~ THEN REPLY #51108 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"Fajn." Vypadá podrážděně.~ */
  IF ~~ THEN REPLY #51111 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"Co mi můžeš říct o téhle čtvrti?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"Jmenuju se Xanthia." Prohlédla si tě od hlavy k patě a pak se zamračila. "Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #51116 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"Už půjdu, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"Bude tady bitka a já ji chci vidět." Potměšile se usmála. "Mělo by to být docela zajímavé."~ */
  IF ~~ THEN REPLY #51119 /* ~"Bitka?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"Ano. Vidíš támhle ty tři thokoly?" Ukázala na tři mohutné svalnaté bytosti. "Zkusí zabít abishaie." Odfrkla si. "Pitomí kreténi."~ */
  IF ~~ THEN REPLY #51123 /* ~"Slyšel jsem o něčem jménem abishai. Co to přesně je?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"Thokolové vypadají, že se o sebe dokážou postarat."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"Je to stvoření nižších sfér, baatezu, jestli se nepletu..." Zamyšleně se zamračila. "V každém případě jsou abishai docela mocní, mají ostré drápy a mohou kouzlit."~ */
  IF ~~ THEN REPLY #51126 /* ~"Thokolové vypadají, že se o sebe dokážou postarat."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"Normálně bych souhlasila, thokolové jsou mocní válečníci..." Usmála se a naklonila se k tobě. Zašeptala. "Ale já vím něco, co oni ne..."~ */
  IF ~~ THEN REPLY #51128 /* ~"A copak to je?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"Abishai mohou být zranění pouze magií." Zahihňala se. "Thokolové budou zmasakrovaní. Nepochybuj o tom." Narovnala se a nedočkavě sleduje thokoly.~ */
  IF ~~ THEN REPLY #51132 /* ~"Jak víš, že se jím dá ublížit jedině magií?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~Podrážděně se na tebe podívala. "Můj manžel má vysoké postavení v Harmoniu. Stráže Harmonia jsou trénovány pro boj s potvorami jako jsou abishai." Podívala se stranou. "Takže to vím od manžela. Řekl mi to."~ */
  IF ~~ THEN REPLY #51136 /* ~"Proč jsi nevarovala thokoly?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"Proč bych to měla dělat?" Zle se usmála. "To já jim navrhla ten boj."~ */
  IF ~~ THEN REPLY #51140 /* ~"Proč?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"Můj manžel se snaží vylepšit si vztahy s podřízenými tak, že s nimi chlastá po hospodách, Včera večer mě donutil, abych ho tam doprovodila. Ti tři tupci tam byli, řvali, jak jsou skvělí válečníci. Bylo mi jasné, že to jsou jenom ožralecké kecy. Když se rozhodli odejít, jeden z nich zakopl a spadl na stůl, kde jsem seděla." Odmlčela se.~ */
  IF ~~ THEN REPLY #51144 /* ~"Pokračuj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~Naštvaně se zamračila. "Většina pití na stole se mi vylila do klína a zničila docela drahé šaty. Takže zatímco se mi ten kretén pokoušel omluvit, zašeptala jsem mu, že příjmu omluvu pouze od opravdového válečníka. Jestli je on opravdu takový válečník, tak ať porazí v boji zblízka abishaie."~ */
  IF ~~ THEN REPLY #51146 /* ~"Ty je necháš zemřít jenom proto, že ti zničili šaty?"~ */ JOURNAL #67304 /* ~V Dolní Čtvrti jsem potkal ženu jménem Xanthia. Je naštvaná, protože jí tři thokolové zničili večerní šaty pitím, když byli opilí. Rozhodla se, že se jim pomstí. Odmítla přijmout jejich omluvu, dokud nedokáží porazit v boji abishaie. Řekla mi, že abishai je zranitelný pouze magií nebo magickými zbraněmi, což thokolové nevlastní. Chce sledovat, jak abishai tři thokoly zmasakruje. Měl bych je varovat?~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"Zřejmě jsi nepochopil komplikovanost této situace." Dívá se na tebe, jako bys byl nějaké hloupé malé dítě. "Byla jsem ponížena a uražena před svým manželem a jeho podřízenými!" Vypadá naštvaně.~ */
  IF ~~ THEN REPLY #51150 /* ~"Aha... Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"Nic..." S nechutí se rozhlédla. "Nebýt té bitky, tak bych tady vůbec nebyla."~ */
  IF ~~ THEN REPLY #51153 /* ~"Bitka?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~Vidíš Xanthii. Znuděně se na tebe dívá. "Proč mě zase otravuješ?"~ */
  IF ~~ THEN REPLY #51157 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"To nic. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~Vidíš Xanthii. Dívá se na tebe pohledem plným nenávisti. "Ty jsi ta zvířata varoval, že ano?"~ */
  IF ~~ THEN REPLY #51160 /* ~"Ano, udělal jsem to, co jsem považoval za správné."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"Ne, nevím, o čem to mluvíš."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~Pomalu kývla hlavou. "Nezapomenu ti tuto urážku. Sbohem." Otočila se a odchází.~ */
  IF ~~ THEN REPLY #51163 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~Usmála se na tebe. "Dobrá, hrej si svou hru lží. Ale pamatuj si tohle. Nezapomenu ti tuto urážku. Sbohem." Otočila se a odchází.~ */
  IF ~~ THEN REPLY #51165 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~Vidíš Xanthii. Jak se blížíš, hodí po tobě znuděný pohled. "Dobře... Viděla jsem tě, jak si mluvil k tomu spratku Thorpovi. Varoval jsi ho?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"Ne, rozhodl jsem se si tu show užít."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"Ne, neudělal bych to. Ne po tom hezkém *dárku*, cos mi dala."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~Xanthia se řehtá, pak se usměje. "Jak pěkné... Prosím, klidně se ke mně přidej." Na chvíli se odmlčí, přemýšlí, pak si od pasu odpoutá váček. "Tady... Vezmi si to, jako odměnu za to, že nezkazíš dámskou zábavu." Podává ti váček.~ */
  IF ~~ THEN REPLY #64170 /* ~"Děkuji, Xanthie. Sbohem."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~Xanthia se zasmála. "To je hezké..." Otočila se od tebe.~ */
  IF ~~ THEN REPLY #68129 /* ~"Sbohem."~ */ EXIT
END
