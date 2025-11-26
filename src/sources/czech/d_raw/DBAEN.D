// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~Vidíš zavalitého muže s ostrými rysy a bolestným výrazem. Má obrovskou postavu, nicméně má zženštilé rysy a na rozdíl od ostatních usedlíků, které jsi potkal, vypadá, že se před nedávnem koupal. Jak ses přiblížil, vzhlédnul pln naděje a zvolal vysokým hlasem: "Craddock... dobrý pane?"~ */
  IF ~~ THEN REPLY #21486 /* ~"Co?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~Ignoruj ho, přejdi to.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"Eh..." Zkoumá tvoji tvář, jeho nadějný výraz odumírá. "Tisícero omluv, dobrý muži, jestliže jsem se dopustil nějakého přestupku." Vysekne nepatrnou úklonu. "Jsem znám jako Baen Posel, třetí potomek Dai'Baena Posla. Jsem jedním z mnoha poslů zaměstnaných v Domě poslů."~ */
  IF ~~ THEN REPLY #22734 /* ~"Omluvy nejsou nutné, Baene. Co chceš?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"Neurazil jsi mě... zatím. Co chceš?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"Hele, už musím jít, Baene..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~Jak procházíš kolem, muž sílícím hlasem volá. Díky úsilí zní jeho hlas skoro až pisklavě. "Craddock?! Dobrý pane, nesu vám vzkaz!"~ */
  IF ~~ THEN REPLY #22738 /* ~"O čem to mluvíš?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"Jenom kousíček vašeho času, dobrý pane. Já hledám dohlížitele, Craddocka, měl by být někde v Úlu, jak mi bylo řečeno, ale bohužel... uniká mi. Slyšel jsi o takovém muži?"~ */
  IF ~~ THEN REPLY #22740 /* ~"Ne."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"Je mi líto..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"Tisícero omluv, že ruším s takovou malichernou záležitostí, ale hledám Craddocka, dohlížitele v Úlu..." Baen vypadá, jako by cítil bolest. "Ale bohužel, on mi stále uniká." Znovu na tebe obrátí nadějný pohled. "Mohlo by se stát, žes o takovém muži slyšel?"~ */
  IF ~~ THEN REPLY #22743 /* ~"Ne."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"Je mi líto, ale ne."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~Baen vydá hluboký vzdech. "Zavázal jsem se ten vzkaz doručit a zatím..., štěstí se rozhodlo ode mne odvrátit..."~ */
  IF ~~ THEN REPLY #22746 /* ~"Mohl bych pomoci... jestli na toho muže narazím, mohl bych mu předat tvůj vzkaz."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"Možná bych ho mohl najít a vzkaz mu doručit... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"Já ti pomoci nemůžu... hele, už musím jít."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"Samosebou, dobrý muži, tisíckrát se omlouvám, že jsem vás zdržel." Baen kývne. "Děkuji za váš čas."~ */
  IF ~~ THEN REPLY #22750 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~Baenova tvář se rozzáří jako lucerna. "Och, šťastný den pro Baena a Dům poslů! Každá pomoc, kterou můžete poskytnout, bude vítaná! Jestli najdete toho Craddocka a doručíte mu ten vzkaz, dohlédnu na to, abyste dostal za potíže tím vzniklé zaplaceno."~ */
  IF ~~ THEN REPLY #22752 /* ~"Bezva... Co je to za vzkaz?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~Baenova tvář se rozzáří jako lucerna. "Samosebou, dobrý pane. Jestli najdete toho Craddocka a doručíte mu ten vzkaz, dohlédnu na to, abyste dostal za potíže tím vzniklé zaplaceno.."~ */
  IF ~~ THEN REPLY #22754 /* ~"Bezva... Co je to za vzkaz?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~Baen recituje vzkaz skoro jako mantru: *"Dodávka musí být v Curstu do tří dnů, jinak budete potrestáni."* Baen se zamračí. "Bylo mi řečeno, že Craddock ví, ke které 'dodávce' ten vzkaz patří."~ */
  IF ~~ THEN REPLY #22756 /* ~"Jestli narazím na Craddocka, doručím mu ten vzkaz. Je tu něco, co bys mi o něm mohl povědět než půjdu, něco, co by mi pomohlo ho najít?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"Říká se, že je to *obrovský* muž, hora svalů. A že je dohlížitelem v jednom z tržišť v Úlu. Bohužel, nic víc o něm nevím, dobrý pane."~ */
  IF ~~ THEN REPLY #22758 /* ~"Jasně. Pro začátek to stačí."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~Baen se pokloní. "Děkuji ti, pane. Bude-li tvář štěstěny k tobě nakloněna a ten vzkaz Craddockovi se ti podaří doručit, buď tak laskav a zprav mě o tom. Postarám se, aby tvé úsilí bylo odměněno."~ */
  IF ~~ THEN REPLY #22760 /* ~"Výborně. Sbohem, Baene."~ */ JOURNAL #22761 /* ~Souhlasil jsem, že doručím zprávu Craddockovi, pokud se s ním setkám. Baen říkal, že pracuje jako dohlížitel na tržišti někde v Úlu. Budu mít oči na stopkách.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~Vidíš Baena Posla. Jak se k němu blížíš, dívá se na tebe s nadějí... ale neoslovuje tě. ~ */
  IF ~~ THEN REPLY #22763 /* ~"Podívej, pokud pořád potřebuješ pomoc s nalezením... Craddocka, správně? Jestli potřebuješ pomoct ho najít, tak ti pomůžu."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"Rozmyslel jsem si to. Pomůžu ti najít toho Craddocka... za menší poplatek."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~Ignoruj ho.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~Vidíš Baena Posla. Jak se k němu blížíš, dívá se na tebe s nadějí. "Byl jsi úspěšný v hledání Craddocka, dobrý pane?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"Ano a doručil jsem tvůj vzkaz, ačkoliv to nevypadalo, že by ho nějak zvlášť potěšil."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~Vrátil jsem se a řekl Baenovi, že jsem Craddockovi doručil vzkaz. Byl potěšený a obdaroval mě několika měďáky. Nebylo to špatný, na to, že jsem měl jen doručit někomu vzkaz.~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"Ještě ne, Baene. Ještě jednou, co mi o něm můžeš říct?"~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"Ne... Pořád ještě hledám. Vrátím se až ho najdu."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~Baen nevypadá, že by po slově *ano* ještě něco slyšel, jen se usmívá a s úlevou vydechuje. "Vskutku štěstí! Děkuji ti, dobrý pane, děkuji." Sáhne do svých šatů, vyndá hrst měďáků, odpočítá je a vkládá ti je do ruky.~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"Patnáct měďáků za doručení zprávy, jo? To je fér."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"Třicet měďáků za doručení zprávy, jo? To je fér."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"Čtyřicet pět měďáků za doručení zprávy, jo? To je fér.."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"Och, *více* než fér, dobrý pane, více než fér! Bez váhání můžu říct, že v Sigilu není lepší práce, než dělat posla pro Dům poslů!"~ */
  IF ~~ THEN REPLY #22776 /* ~"Uchovám to v paměti. Sbohem, Baene."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~Vidíš Baena Posla. Jak se k němu blížíš, uctivě na tebe pokývá. "Dobře, že jsme se setkali, dobrý pane. Tisícero díků za pomoc při hledání Craddocka a za doručení vzkazu." ~ */
  IF ~~ THEN REPLY #22778 /* ~"Bez problémů. Sbohem, Baene."~ */ EXIT
END
