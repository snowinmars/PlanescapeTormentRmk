// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~Vidíš muže ve starých roztrhaných šatech. Když se k němu blížíš, náhle se zastaví a začne se vystrašeně rozhlížet. ~ */
  IF ~~ THEN REPLY #1569 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"Ty tam! Počkej chvíli!"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~Nechej ho na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~Muž vypadá polekaně, pak udělá krok zpět. "Eh? Co bys rád, kámo?" Jeho hlas je roztřesený a vypadá to, že tvé jizvy ho drží zpátky. "Nic u sebe nemám, jenom tyhle šaty a ty nemají žádnou cenu."~ */
  IF ~~ THEN REPLY #1572 /* ~"Uklidni se. Nejsem tady, abych tě okradl. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"Běž a já ti slibuju, že se nedostaneš moc daleko. Měl bych nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"Eh?" Nevypadá vzrušeně, když tě uviděl. "Co bys chtěl '*tentokrát,* kámo?"~ */
  IF ~~ THEN REPLY #1576 /* ~"Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~Drží si od tebe bezpečný odstup, očima těká ze strany na stranu, jakoby očekával, že něco vystoupí ze stínu ulice. "Otázky říkáš...? A... eh... co by to mělo bejt za otázky?"~ */
  IF ~~ THEN REPLY #1580 /* ~"Můžeš mi něco říci o tomhle... městě?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"Můžeš mi něco říci o Sigilu?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"Můžeš mi něco říci o těch brlozích?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"Můžeš mi něco říci o Úlu?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"Můžeš mi něco říci o Paní Bolesti?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"Hledám svůj deník. Viděl jsi nějaký?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"Nic. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"Ehm..." Dívá se opatrně na tebe, jeho čelo se zvrásnilo. "Co bys rád věděl o Úlu, kámo?"~ */
  IF ~~ THEN REPLY #1587 /* ~"Proč se tomu říká Úl?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"Co je tady v okolí zajímavého?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"Nic. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"Eh a... co by to mělo být za otázky?"~ */
  IF ~~ THEN REPLY #1592 /* ~"Můžeš mi něco říci o tomhle... městě?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"Můžeš mi něco říci o Sigilu?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"Můžeš mi něco říci o těch brlozích?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~"Můžeš mi něco říci o Úlu?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"Můžeš mi něco říci o Paní Bolesti?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"Postrádám deník. Neviděl jsi ho nebo nevíš, kde bych ho mohl najít?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~"Nic. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~Vypadá zmateně. "Já... nevím." Vypadá vyděšeně, že nezná odpověď. "Zmatek ulic, zmatení lidé, asi tak."~ */
  IF ~~ THEN REPLY #1600 /* ~"Co je tady v okolí zajímavého?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"To nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"No... to... záleží. Záleží na tom, co je pro tebe zajímavý, kámo."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"Poohlížím se po místě, kde bych se měl dobře."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"Poohlížím se po místě, kde bych se měl dobře."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"Hledám práci."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"Hledám někoho jménem Pharod."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"Hledám svůj ztracený deník. Nevíš náhodou, kde bych ho mohl najít?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"Zapomeň na to. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"Dobře..." Olíznul si rty. "Je tam bar u Doutnajícího nebožtíka... a taky bar Spalovačů... ačkoliv ty nevypadáš kámo, že bys popíjel v hospodě se Spalovačema... ostatní místa tam jsou velmi nebezpečná, takže by sis měl dát bacha."~ */
  IF ~~ THEN REPLY #1611 /* ~"Kde jsou ta místa, o kterých ses zmiňoval?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"Co je tady v okolí nebezpečného?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"'Spalovači'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"Aha. Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"No, bar u Doutnajícího nebožtíka je pár bloků odtud - v jižní části - od Márnice - a bar Spalovačů je trošičku jihozápadně od Márnice."~ */
  IF ~~ THEN REPLY #1731 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"Díky. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"Kdekoliv jinde v Úlu padá soumrak. Je tam někde taky ta Ulička nebezpečných zákoutí... měl by ses držet od ní dál, jestli se nechceš být zapsán v knize mrtvých."~ */
  IF ~~ THEN REPLY #1618 /* ~"Proč je ta 'Ulička nebezpečných zákoutí' tak nebezpečná?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~Přemýšlí. "Přece jenom trošku... ehm, upřímně... můžeš tam najít i nějakou práci, kámo. Můžeš lovit ty chytrý krysy za pár měďáků, přineseš je do Úřadu pro sledování škůdců a dostaneš za ně nějakou tu škváru, ale musím ti říct, že lovení té havěti je hodně nebezpečná práce. Jo, taky můžeš sbírat po okolí Úlu mrtvoly a za nějakej pakatel je odnést do Márnice."~ */
  IF ~~ THEN REPLY #1623 /* ~"Kde je ten Úřad pro sledování škůdců?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"Chytrý krysy?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"Sbírají těla?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"Aha. Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"Je to hned vedle Úlského tržiště. Jižně a pak západně od Márnice - tři nebo čtyři bloky od ní a měl bys být u ní. Lovci krys tam pobíhají kolem, nemůžeš to minout."~ */
  IF ~~ THEN REPLY #1733 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"Díky. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"Jo, Spalovači zaplatí za každýho mrtvýho, kterýho jim dotáhneš ke vratům. Není to moc škváry, co si vyděláš, ale je jí pořád dost na to, aby se kolem potulovalo dost Sběračů... a vždycky je tu kolem dost mrtvých, který můžeš najít."~ */
  IF ~~ THEN REPLY #1633 /* ~"Sběrači?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"Kde se nachází ten Úřad pro sledování škůdců, o němž ses zmiňoval"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"Cos to říkal o těch chytrých 'krysách'?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"'Spalovači'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"Jaká jiná práce se dá v Úlu najít?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"Měl bych ještě další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"Chápu. Díky za informaci. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"Jo, ty nechutný malý potvory." Odhalil své zuby jako krysa. Vypadá teď pěkně hloupě. "Osamocené, to nejsou moc nebezpečný... ale když jsou tyhle mrchy ve skupině, jsou dohromady o hodně chytřejší, než cokoliv jiného v jejich okolí. Začnou být stejně tak chytrý jako je člověk..." kroutí hlavou. "Nikdo nechce, aby se tohle stalo. Jejich lovení je hazard se životem, to teda jo."~ */
  IF ~~ THEN REPLY #2528 /* ~"Jaká další práce se dá sehnat tady v Úlu?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"Už jsem slyšel dost. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"Jo... Spalovači... Spalovači... tihle přičmoudlí kluci jsou všichni děsiví a není dobrý dělat si z nich srandu. Starají se o to, aby ulice byly bez mrtvých, hromadí je v Márnici. To je jejich práce v Sigilu, většinou to nikdo jinej nechce dělat."~ */
  IF ~~ THEN REPLY #1638 /* ~"Co jiného je v Úlu na práci?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"Aha. Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"Kdo z nich?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"Co mi řekneš o Spalovačích..."~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"Chaotici... to zní zajímavě."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"Nezávislí?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"Nevadí. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"Zapomeň na tu otázku. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"Co chceš vědět o Sigilu?"~ */
  IF ~~ THEN REPLY #1646 /* ~"Co *je* tohle za místo?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"*Kde* je Sigil?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"Ve skutečnosti bych měl nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"Město. Město Dveří, Klec. Místo, kam a odkud vedou všechny dveře. Střed sfér, který je také znám svou neblahou pověstí ze všech míst. Říká se, že je to místo, kde skončí každý, ať už míří právě sem nebo někam jinam."~ */
  IF ~~ THEN REPLY #1652 /* ~"'Město dveří'?"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"Eh, jo... víš, kámo, to město je..." zamračí se, jako kdyby bojoval se slovy. "To město má spoustu dveří, které jsou roztroušené všude... a... víš, ty dveře..." znovu se zamračí a pak se zhluboka nadechne.~ */
  IF ~~ THEN REPLY #1657 /* ~"Dveře...?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"Jak vidím je to docela bláznivý. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"Dovol mi chvíli žvanit s trochu větším citem: Víš, po celým Sigilu sou 'dveře', ale dycky nevypadaj jako dveře. Sou to spíš portály, víš? A tím portálem může bejt vopravdu *cokoliv*... vokenní rám... nebo vobrazovej rám, výklenek... vobruč ze sudu, prostor mezi nohama u stolu... nebo taky prostor mezi nohama sochy..." ~ */
  IF ~~ THEN REPLY #1656 /* ~"A... ty říkáš, že všechny tyhle věci jsou dveře?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"A... aha. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"Díky za informace. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~Znovu se zamračí. "Dveřmi... portálem může být cokoliv, co je zavřený z vobou stran. Těžko říci, kde se nachází... dokud nemáš k těm dveřím klíč. Takhle ses přece dostal sem, kámo? Skrz dveře?"~ */
  IF ~~ THEN REPLY #1663 /* ~"Co tě vede k tomu, že to říkáš?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"Co je to za 'Klíče' o kterých ses zmínil?"~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"Takže tohle všechno jsou dveře ve městě... a kam všechny vedou?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"Možná... podívej, měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"Eh... dobře, no nechováš se jako kdybys byl z okolí Sigilu, víš?"~ */
  IF ~~ THEN REPLY #7137 /* ~"Co jsou to zač ony 'Klíče', co jsi zmiňoval?"~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"Kam vedou všechny tyto průchody zde ve městě?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"Měl bych ještě něco dalšího na srdci..."~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"Každý dveře maj svůj klíč, kterým jdou otevřít, víš? Povětšinou, nebudeš dokonce *vědět* o dveřích v tvý blízkosti, *dokud* nebudeš mít ten správnej klíč. Pak se dveře otevřou a můžeš vstoupit a risknout to. Dobrej vtip je to, víš, jak sem ti říkal, že dveře můžou bejt cokoliv? No, tak klíčem může bejt taky cokoliv. Mohl by to bejt klidně popěvek, kterej si broukáš v blízkosti dveří, tvoje pomyšlení na moučník nebo malý skok, který právě uděláš, nebo klíčem může bejt nějaká věc, třeba kousek skla, dlažební kostka nebo zlomenej zub... prostě cokoliv'."~ */
  IF ~~ THEN REPLY #1673 /* ~"To zní pěkně zamotaně."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"Kam všechny ty dveře ve městě vedou?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"Předtím ses ptal, jestli jsem přišel skrz některé z těch dveří. Proč si to myslíš?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"Měl bych ještě další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"Tak to je v pořádku... servus."~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"Zvykneš si na to, že jo."~ */
  IF ~~ THEN REPLY #1676 /* ~"Kam všechny ty dveře ve městě vedou?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"Předtím ses ptal, jestli jsem přišel skrz některé z těch dveří. Proč si to myslíš?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"Ještě bych se zeptal na..."~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"Nech to plavat. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~Pokrčil rameny. "Dveře můžou vést *kamkoliv,* kámo. Někerý dokonce nevedou dvakrát na to samý místo." Povzdechne si. "Vidíš, máš jeden cíl a nespočet dveří, který vedou skoro kamkoliv ve Sférách... *kamkoliv.* Proto je většina z těch dveří zcestných, je hodně těžký najít ty jediný dveře, který tě zavedou tam, kam chceš jít."~ */
  IF ~~ THEN REPLY #1678 /* ~"Říkal jsi, že každé dveře mají svůj 'klíč'...?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"Předtím ses ptal, jestli jsem přišel skrz některé z těch dveří. Proč si to myslíš?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"Rozumím. Ale ještě bych se na leccos poptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"Nech to být. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"Střed Sfér, to ti k tomu můžu říct. Jinak nemám ponětí," pokrčil rameny. "Představuju si, že každý místo ve sférách je spojeno s tímhle místem... ať už odtud tam nebo naopak. Ne všechno v Sigilu je tak odporný jako je právě tahle věc."~ */
  IF ~~ THEN REPLY #1681 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"Hledáš co?" Vypadá pomateně. "Vůbec netuším, kde bys měl takovou věc hledat, kámo."~ */
  IF ~~ THEN REPLY #2531 /* ~"Tak to nic. Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"Dobře... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"Paní Sigilu? Tys o ní *neslyšel*? Ty musíš bejt omámenej nebo hodně novej... eh, víš toho o Sigilu opravdu tak málo." Slabě se usmívá. "Paní představuje právo tady v Sigilu." Na chvíli se zamyslí. "Připouštím, že toho moc nenamluví. Ve skutečnosti je zcela tichá."~ */
  IF ~~ THEN REPLY #1686 /* ~"Tomu teda říkám zákon..."~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"Co jiného mi můžeš říct o Paní Bolesti?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~Dívá se na tebe. "Nechci o ní moc mluvit, kámo... nechceš přece vyrušit Paní z jejího stínu nebo na ní pět chválu, že? Takže už o tom nebudeme mluvit. Mluv o Paní opravdu málo, radím ti."~ */
  IF ~~ THEN REPLY #1692 /* ~"V pořádku, měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"Stavení Spalovačů. Odpudivě-vypadající místo. Nechtěl bych to místo vidět i kdyby mě měli zapsat do knihy mrtvejch."~ */
  IF ~~ THEN REPLY #1694 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"Aha. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"Supi. Hodně z nich má svý obydlí na Hadrníkově náměstí. Sbíraj mrtvý, šlohnou od nich všechno, co má pro ně nějakou cenu a pak prodaj těla zpátky Spalovačům do Márnice."~ */
  IF ~~ THEN REPLY #1696 /* ~"Proč to dělají?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"Jaká jiná práce by se našla v Úlu?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"Nech to plavat. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"Spalovači dávaj prachy lidem, který přinášej mrtvý z městskejch ulic a uliček, což Spalovačům hodně usnadňuje práci, mají spoustu lidí v Úlu, který jim sbíraj těla. Každej den je v Úlu spoustu mrtvejch."~ */
  IF ~~ THEN REPLY #1701 /* ~"Jaká jiná práce by se našla v Úlu?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"Chápu. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"To jméno neznám, kámo. Kdo to má být?"~ */
  IF ~~ THEN REPLY #1703 /* ~"Myslím, že je to Sběrač."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"Pokouším se na to přijít. Podívej, měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~Přemýšlí. "Dobře, pak má docela určitě obydlí někde na Hadrníkově náměstí. Měl by ses tam podívat... samozřejmě přes den. V noci to není moc pěkný místo."~ */
  IF ~~ THEN REPLY #1708 /* ~"Kde se nachází Hadrníkovo náměstí?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"Díky za varování. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"Je to pár bloků odtud - jdi na západ od Márnice tak daleko, jak jen můžeš, a přijdeš přímo tam. A buď tam kolem opatrnej, kámo... Sběrači nečekají vždycky na to, jestli je tělo mrtvý předtím, než ho odnesou, víš?"~ */
  IF ~~ THEN REPLY #1704 /* ~"Díky. Měl bych nějaké další otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"Rozuměl jsem. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"Místo gangů a rváčů, kámo. Nechoď tam, pokud nechceš, aby tvoje další zastávka byla Márnice. Ta ulička je teď velká spálená ruina, která kdysi bývala ulicí, předtím než jí jeden šílenej mág jedný noci nespálil na popel. K tomu ještě můžu říct, že ho pak chytli, zapálili ho a vystavili v baru U doutnajícího nebožtíka. Je to v Úlu."~ */
  IF ~~ THEN REPLY #2533 /* ~"Kde je ta Ulička?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"Kde je ta Ulička?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"Mám nějaké otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"Nevadí. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"Eh..." Olíznul si rty, když už ses měl k odchodu. "Kámo, mohl bys myslím..." studuje tě na chvíli. "Mohl bys dát pár měďáků dobrákovi, kterej ti pomohl při tvý cestě? Není tu kolem moc lidí, který by ti pomohli... stačilo by jen trochu, aby člověk mohl smočit svůj jazyk po tom dlouhém mluvení? Hmm?"~ */
  IF ~~ THEN REPLY #1714 /* ~"No."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"Ušetřím tvůj život. Tak jsi to myslel?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"Pěkně." Dáváš mu měďák.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~Dej mu pět měďáků.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~Dej mu deset měďáků.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"Je mi líto, ale nemám peníze nazbyt."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~Lži: "Je mi líto, ale nemám peníze nazbyt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~Vypadá zklamaně. "Oh, no, dobře... měj se, člověče..." Něco si bručí pro sebe když odchází.~ */
  IF ~~ THEN REPLY #1723 /* ~"*Co* jsi to říkal?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~Muž vypadá polekaně a zvedá ruku. "Nee, nee, nic, kámo! Jenom sem naznačoval, jaký je počasí, tak to bylo! Nic o tobě!" Vypadá připravenej k útěku.~ */
  IF ~~ THEN REPLY #1724 /* ~Napadni ho.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~Nechej ho běžet.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"Eh... tak to je fajn, kámo." Usmívá se. "Mír s tebou." Rychle odchází.~ */
  IF ~~ THEN REPLY #1727 /* ~Napadni ho.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~Nechej ho běžet.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~Rozhlíží se kolem, aby se ujistil, jestli nikdo neviděl váš obchod, pak zastrčil prachy do kapsy u svých šatů. "Děkuji ti, dobrotivý člověče! Ať tě provází stín naší Paní!"~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"Počkejte minutku... Paní? Co tím myslíte?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"Je to na jihozápad od Márnice, jo, na západ od Baru Zapomnění, to je ta putyka Spalovačů."~ */
  IF ~~ THEN REPLY #7151 /* ~"Rád bych se ještě přeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"Díky. Sbohem."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"Vládkyně Sigilu? Tys o ní ještě *neslyšel*? Musíš tedy být požehnán nebo máš hodně dlouhé ved... ehm, tedy, máš se o Sigilu vskutku ještě co dozvídat. Pousmál se. "Slovo Paní Bolesti platí v těchto končinách jako zákon." Na okamžik se zamyslí. "Teda ona toho moc nenamluví. Vlastně by jeden moh říct, že je němá."~ */
  IF ~~ THEN REPLY #7153 /* ~"Zákon."~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"A co mi ještě můžeš prozradit o této Paní?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~Pozorně si tě prohlíží. "V žádným případku o ní nehodlám extra řečnovat, kámo... neplánuješ jí doufám zkřížit cestu nebo ji veřejně velebit, že ne? No, téma je vyčerpané. Pouštět si o Paní Bolesti hubu na špacír může udělat jedině slabomyslnej."~ */
  IF ~~ THEN REPLY #7156 /* ~"Pak tedy sbohem."~ */ EXIT
END
