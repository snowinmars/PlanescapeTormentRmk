// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"Už jdu, už jdu! Nemusíš mě pořád otravovat!"~ */
  IF ~~ THEN REPLY #10577 /* ~"Jenom kontroluju. Di dál."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~Vidíš ženu s poloprázdnou sklenici v pravé ruce, oblečenou jako členku Spalovačů. Jak ses k ní přiblížil, zavolala na tebe. "Um, ty. Tady..." Všiml sis, že s ní není něco v pořádku... a podle svých zkušeností se Spalovači začínáš věřit, že je prostě moc temperamentní na to, aby byla skutečným členem této frakce.~ */
  IF ~~ THEN REPLY #10579 /* ~Jdi blíž.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Nechej ji být.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Nechej ji být.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~Vidíš spalovačskou ženu. Jak se k ní přibližuješ, zavolá na tebe. "Hej, ty. Hej ty tam..."~ */
  IF ~~ THEN REPLY #10583 /* ~Přiblížit se k ní.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Nechat ji být.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Nechat ji být.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"Emm... co chceš?"~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"Barkis říká, že je na čase, abys vyrovnala svůj účet. Zaplať."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"Ty nejsi doopravdy Spalovačka, že ne?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"Chci víc peněz, abych uchoval tvou spalovačskou šarádu v tajnosti."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"Chci ještě víc peněz, abych uchoval tvou spalovačskou šarádu v tajnosti."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"Chci odpovědi na pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"Nic."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"Příliš dobrej, než aby ses zabýval někým jako je, emm, Spalovačka, že? Kup mi drink a nechám tě na pokoji."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"Dobrá. Tady je pět mincí. A teď mě nech být."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"Ty nejsi doopravdy Spalovačka, že ne?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"Barkis říká, že je na čase, abys vyrovnala svůj účet. Zaplať."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"To si nemyslím. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"Hej, kámo... co takhle koupit dámě drink?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"Ty nejsi doopravdy Spalovačka, že ne?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"Barkis říká, že je na čase, abys vyrovnala svůj účet. Zaplať."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Dobře. Tady je pět mincí."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"Kdo jsi?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"Co je tohle za místo?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"Pověz mi o ostatních štamgastech."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"Kdo je hořící nebožtík?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"Mé díky, kámo... nechť najdeš Pravou smrt." Dává si do kapsy tvoje peníze a nervózně pokukuje k přední části baru.~ */
  IF ~~ THEN REPLY #10609 /* ~"A teď mi za mý prachy dej pár odpovědí."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"Nashledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"Co, emm, chceš vědět?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"Ty nejsi doopravdy Spalovačka, že ne?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"Barkis říká, že je na čase, abys vyrovnala svůj účet. Zaplať."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"Kdo jsi?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"Co je tohle za místo?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"Pověz mi o ostatních štamgastech."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"Kdo je hořící nebožtík?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"Chci víc peněz, abych uchoval tvou spalovačskou šarádu v tajnosti."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"Chci ještě víc peněz, abych uchoval tvou spalovačskou šarádu v tajnosti."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~Dívá se nervózně okolo a zdá se, že najednou vystřízlivěla. "Proč, emm, proč jsi to řekl?"~ */
  IF ~~ THEN REPLY #10624 /* ~"Protože se nechováš jako Spalovačka a nenabízíš dohodu. Ve skutečnosti peníze přijímáš, místo abys je dávala za tu práci s mrtvolami, kterou dělají v Márnici."~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"Protože jsem sám Spalovač."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~Mírně nadskočí a její nervozita se změní v naprostý stres. "Co chceš dělat?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"Požádám tě, abys zaplatila. Hned."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"Požádám tě, abys zaplatila. Hned."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"Nic, zatím. Odpověz mi na pár otázek."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~Potlačí výkřik hrůzy a rychle vysvětluje, "Ne, ne, ne ne ne. Nejsem Spalovačka. Jenom jsem našla tahle roucha na ulici a neměla jsem dost peněz na opatření jiných dobrých šatů a... ach, slyšela jsem, že tu byl poblíž spalovačský zloděj, ale mohl bys ho snad najít někde jinde v jihozápadní části Úlu. Viděla jsem ho, ale schovala jsem se před ním. Prosím, neubližuj mi."~ */
  IF ~~ THEN REPLY #10631 /* ~"Dej mi nějaký peníze a nechám tě jít."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"To nehodlám udělat. Měla bys vědět, že to nehraješ moc dobře. A teď mi odpověz na nějaký otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"To neudělám. Zatím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"Hmm... to si nemohu dovolit. Nemohl bys mi půjčit aspoň deset procent? Já, emm, mu je předám a on dobře ví, že mu pak dám i ten zbytek."~ */
  IF ~~ THEN REPLY #10635 /* ~"Kolik potřebuješ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"Myslím že ne. Nejsem charita. Napadá tě nějaký jiný způsob jak mu zaplatit?"~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"Nenašel bys pár mincí na drink, kámo?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Dobře. Tady je pět mincí."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"Ne. Odpověz mi místo toho na pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"Hmm, myslím že bych potřebovala tak okolo sta mincí, abych s tím dluhem pohnula."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"Půjčím ti ty peníze. Tady. Vem si je a zaplať. Hned."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lež: "Půjčil bych ti ty peníze ale nemám je. Odpovíš mi ještě na nějaké otázky, viď?"~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Pravda: "Půjčil bych ti ty peníze ale nemám je. Odpovíš mi ještě na nějaké otázky, viď?"~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"Vrátím se s nějakými penězi."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"Nenapadá tě nějaké jiné řešení?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"Jiný způsob jak zaplatit? Ha." Usměje se smutně. "Vždycky mne můžeš, emm, zabít."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~Odlákat ji: "To bych mohl, ale... co je to támhle?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"To bych mohl, ale raději bych našel jiné řešení."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"Prostě ti ty peníze půjčím. A teď běž a zaplať."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lež: "Půjčil bych ti ty peníze ale nemám je. Odpovíš mi ještě na nějaké otázky, viď?"~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Pravda: "Půjčil bych ti ty peníze ale nemám je. Odpovíš mi ještě na nějaké otázky, viď?"~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"Vrátím se s nějakými penězi."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"Vrátím se později."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"Kde?" Otáčí hlavu, aby se podívala směrem kterým ukazuješ a na chvíli se tam zadívá, jak zaostřuje své pitím zmatené oči. "Nic nevidím."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Otrávit její nápoj balzamovací tekutinou.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"Nevadí. Odpovíš mi na pár otázek, ano?"~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"To nic nebylo. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~Rychle jsi nalil balzamovací tekutinu do její poloprázdné sklenice, zatímco se dívala jinam. Okamžitě z ní začal stoupat zápach, ale zdá se, že si toho nevšimla. Otočí se zpět a vypije svůj otrávený nápoj jediným douškem. "Hmm, co to bylo? Co sem jako měla vidět?" Najednou se začne dusit.~ */
  IF ~~ THEN REPLY #10659 /* ~"Tvoje smrt. Sbohem, Mochai."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"Hmm... co to děláš?" Uviděla tě jak si chystáš lahvičku s balzamovací tekutinou a podezřívavě si tě prohlíží.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"Jenom dávám svou láhev na stůl. Přinesl jsem si vlastní pití."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"Jenom dávám svou láhev na stůl. Přinesl jsem si vlastní pití."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"Jenom dávám svou láhev na stůl. Přinesl jsem si vlastní pití."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"Klid, nestřečkuj. Prohrabávám se svými věcmi a připomínám si, co všechno sebou táhnu."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"Nic co by se tě týkalo."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"Nic. Mám ještě vyřizování jinde. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~Delší chvíli si tě prohlíží, kymáceje se na místě a pak povídá, "Hmm, v pořádku. Chtěl's ještě něco jinýho?"~ */
  IF ~~ THEN REPLY #10668 /* ~"Ano. Nějaké odpovědi."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"Mohu ti dát padesát mincí. Prosím... neříkej to nikomu."~ */
  IF ~~ THEN REPLY #10671 /* ~"Uvidíme. A teď mi odpověz na pár dalších otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"Padesát? Chci víc."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"Uvidíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"Eh, chceš víc? Já nemohu, emm, nemohu si dovolit dát tolik kolik minule. Avšak, hmm, mohu ti dát dvacet pět mincí."~ */
  IF ~~ THEN REPLY #10675 /* ~"Chci víc."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"To bude stačit... prozatím. Odpověz mi zatím na další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"To bude stačit... prozatím. Já se vrátím."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"No, emm, to je moc špatné. Protože, emm, ti nemohu dát žádné peníze.  Já už prostě nemám, emm, žádné peníze."~ */
  IF ~~ THEN REPLY #10679 /* ~"To je moc špatný. Odpověz mi na pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"To je moc špatný. Uvidíme co z toho vzejde. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~Podívá se na tebe hořce. "Nemohu. Nějakej, emm, blbec mi vzal všechny peníze. Potřebovala bych půjčku, nebo emm, něco čím bych ho teď vyplatila."~ */
  IF ~~ THEN REPLY #10682 /* ~"Kolik potřebuješ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"Myslím že ne. Nejsem charita. Napadá tě nějaký jiný způsob jak mu zaplatit?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~Schovává si tvoje prachy a upřeně se dívá směrem ke dveřím, téměř jako by zvažovala své šance na útěk. Hluboce si povzdechne, když si uvědomí, že nemá nejmenší šanci a začne otráveně kráčet směrem k baru. "Hmm, vřelé díky, domnívám se."~ */
  IF ~~ THEN REPLY #10685 /* ~"To nestálo za řeč. A ani nemysli na to, že si to namíříš ke dveřím dokud's nezaplatila."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"Já? Jsem Mochai. Ráda tady popíjím a hmm..." Nějak ztratila nit svých myšlenek. "Jsem prostě osoba, víš?"~ */
  IF ~~ THEN REPLY #10687 /* ~"Aha. Odpověz mi tedy na něco jiného."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"Aha. Tak tedy sbohem, Mochai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"Hospoda u Doutnajícího nebožtíka. Neumíš číst? Seš, emm, ožralejší než já?"~ */
  IF ~~ THEN REPLY #10690 /* ~"Zapomeň na to. Řekni mi něco jiného."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"Nemám páru. Jsou to prostě, emm, lidi. Nestarám se moc vo lidi. Pokavad mi nekoupějí drink..." Zadívá se na tebe plná naděje.~ */
  IF ~~ THEN REPLY #10693 /* ~"Aha. Dej mi nějaké jiné odpovědi."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"Vidím proč. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"On není, emm, nebožtík. On je, hmm, nějakej bláznivej čaroděj. Zeptej se okolo. Oni ti řeknou ten příběh."~ */
  IF ~~ THEN REPLY #10696 /* ~"Dobrá. Pak mi odpověz na nějaké jiné otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"Sbohem."~ */ EXIT
END
