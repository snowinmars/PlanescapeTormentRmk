// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWEAPS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWEAPS~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5559 /* ~"STRÁŽE! STRÁŽE! Je tu vetřelec!"~ */
  IF ~~ THEN REPLY #5560 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5561 /* ~"Promiň. Právě teď s tebou nemůžu hovořit. Možná když se vrátíš."~ */
  IF ~~ THEN REPLY #5562 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sabotage","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #5563 /* ~"Nemůžu ti dost poděkovat za zničení toho šíleného zakrslého hňupa. Kdo mohl vědět, že je Anarchista? Všichni jsme mohli být mrtvi! S čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #5564 /* ~"Můžeš mi říct pro koho se tenhle projekt dělá?"~ */ GOTO 3
  IF ~~ THEN REPLY #5565 /* ~"Předtím jsi něco říkal o kritické fázi?"~ */ GOTO 24
  IF ~~ THEN REPLY #5566 /* ~"Co je tohle za projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5567 /* ~"Co tahle věc dělá?"~ */ GOTO 18
  IF ~~ THEN REPLY #5568 /* ~"Proč to utajení?"~ */ GOTO 19
  IF ~~ THEN REPLY #5569 /* ~"Za jak dlouho se to dokončí?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5570 /* ~"Zajímalo by mě jestli nevíš něco o té vraždě v hlavní části slévárny."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5571 /* ~"Co mi můžeš říct o svém šéfovi?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5572 /* ~"Co mi můžeš říct o svém šéfovi?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5573 /* ~"Řekni mi něco o inženýrech, co pracují na tomhle projektu."~ */ GOTO 6
  IF ~~ THEN REPLY #5574 /* ~"Nevíš náhodou, kde bych našel úředníkovu kancelář?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5576 /* ~"Řekni mi, co si myslíš o Božích lidech."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5577 /* ~"Řekni mi něco o inženýrech, co pracují na tomhle projektu."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5578 /* ~"Řekni mi něco o inženýrech, co pracují na tomhle projektu."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5579 /* ~"Řekni mi něco o inženýrech, co pracují na tomhle projektu."~ */ GOTO 11
  IF ~~ THEN REPLY #5580 /* ~"Teď právě nic, díky."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.6
  SAY #5575 /* ~"Ne, tak tohle bych ti říct nemohl. A to ze dvou důvodů. Za prvé nevím a za druhé jsem zasvětil svůj život absolutní neporušenosti projektu. Když to všechno spadne, mohu zemřít -- a taky tu mohou zemřít všichni mí přátelé. Nechci tolik riskovat."~ */
  IF ~~ THEN REPLY #5581 /* ~"No jasně, to jsem si mohl myslet. Řekni mi tedy něco jiného."~ */ GOTO 14
  IF ~~ THEN REPLY #5582 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.6 14.7
  SAY #5583 /* ~"Strašná věc ti řeknu. Slyšel jsem, že ta oběť nebyla příliš chytrá, ale nemyslím, že by si takhle vlezla do převodů. Slévárna byla zavřena většinu roku, protože jsme chtěli dokončit tuhle práci, musel to být někdo zevnitř. Já jenom mohu potvrdit alibi všem dělníkům -- nikdo nebyl z dohledu toho druhého na tak dlouho, aby mohl spáchat takovýhle čin."~ */
  IF ~~ THEN REPLY #5584 /* ~"Jasně. Můžeš mi ještě odpovědět na nějaké otázky?"~ */ GOTO 14
  IF ~~ THEN REPLY #5585 /* ~"Vřelé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.7 14.8 16.0
  SAY #5586 /* ~"Obyčejně se vyskytuje někde tady kolem.
Je to githzerai. Dostala se pro svůj lid do vyhnanství. Práce tady jí vyhovuje, neboť není příliš na očích a její stud je tím menší. Je tvrdohlavá, ale jinak je super."
~ */
  IF ~  Global("Kellera_Met_Dakkon","AR0512",0)
NearbyDialog("DDakkon")
~ THEN REPLY #5587 /* ~"Kdoví, zda by mluvila s mým přítelem Dakkonem?"~ */ EXTERN ~DDAKKON~ 6
  IF ~~ THEN REPLY #5588 /* ~"Tak tedy s ní později prohodím pár slov. Ještě bych se na něco zeptal."~ */ GOTO 14
  IF ~~ THEN REPLY #5589 /* ~"Děkuji ti za tvůj čas a přeji hezký den."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.9 14.10
  SAY #5590 /* ~"Náš inženýrský šéf, Nihl Xander, je podivínský génius. Vytvořil takový věci, o jakých se mi ani nesnilo. Například vytvořil rozkládací portál a ve svém volném čase pracuje na Tvůrci snů. Kdysi dávno bylo předpovězeno, že jeho rodina je pro to předurčená. Právě on vytvoří stroj pro ty lidi, kteří nemohou snít. Náš další inženýr, Bedai-Lihn, je nová, ale je v pořádku. Je tak trochu nevyzpytatelná, ale její práce je ukázkou velkých dovedností. Obyčejně je můžeš zastihnout v hlavní hale.
~ */
  IF ~~ THEN REPLY #5591 /* ~"Výborně. Ještě mám nějaké otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5592 /* ~"Stroj na sny, eh? Možná bych ho měl najít."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.10 14.11
  SAY #5593 /* ~"Úředníkovu kancelář můžeš najít někde před slévárnou."~ */
  IF ~~ THEN REPLY #5594 /* ~"Dík. Potřebuji ještě nějaké odpovědi."~ */ GOTO 14
  IF ~~ THEN REPLY #5595 /* ~"Dík."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.11 14.12
  SAY #5596 /* ~"Co si myslím o Božích lidech? Jednou z nejlepších věcí na téhle frakci je fakt, že se vážně stará o lidi -- nejen o členy frakce, ale o všechny lidi. Každý z nás může být Bůh a někdy dokonce víc než Bohem, někdy, a proto pomáháme všem. Na druhou stranu jsme sobecký, a někdy víc než sobecký -- jsme hloupí. A nechceme být hloupí."~ */
  IF ~~ THEN REPLY #5597 /* ~"Čas všechno ukáže. Mám jiné otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5598 /* ~"Správně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.12 14.13
  SAY #5599 /* ~"Jak už jistě víš, Bedai-Lihn byla chycena pro vraždu. Byla dobrá -- ale nedůvěryhodná. Jak jsme mohli vědět, že je zabiják? Šéf inženýrů je Nihl Xander, brilantní starý muž. Například vytvořil rozkládací portál a ve svém volném čase pracuje na Tvůrci snů. Kdysi dávno bylo řečeno, že jeho rodina je pro to předurčená. Právě on vytvoří stroj pro ty lidi, kteří nemohou snít. Obyčejně ho můžeš najít v hlavní shromažďovací hale."
~ */
  IF ~~ THEN REPLY #5600 /* ~"Dík. Mám ještě nějaké otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5601 /* ~"Stroj na sny? Jdu ho najít."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.13 14.14
  SAY #5602 /* ~Díky, u všech bohů, že jsi zastavil tu děvku Bedai-Lihn, která nás sabotovala. Mohlo to stát naše životy. Pokud jde o naše další inženýry, tak Nihla Xandera najdeš v hlavní shromažďovací hale. Měl by tam někde být. Ve svém životě už vymyslel spoustu geniálních zařízení a ačkoliv pokračuje dobře, ještě není hotov."~ */
  IF ~~ THEN REPLY #5603 /* ~"Díky. Řekni mi ještě něco jiného."~ */ GOTO 14
  IF ~~ THEN REPLY #5604 /* ~"Takže mu to jde, huh? Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.14 14.15
  SAY #5605 /* ~"Kdo by tušil, že by se Bedai-Lihn pokoušela zvrhnout celkovou strukturu Božích lidí? Věděli jsme, že je to schopný inženýr magie -- nevěděli jsme, že je Anarchista. Jo a Nihl Xander: obyčejně se zdržuje v hlavní shromažďovací hale. Ve svém životě už vymyslel spoustu geniálních zařízení a ačkoliv pokračuje dobře, ještě není hotov."~ */
  IF ~~ THEN REPLY #5606 /* ~"Jistě. Kdo to mohl vědět? Mám ještě otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5607 /* ~"Jdu se tedy po něm porozhlídnout. Hezký den."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.3
  SAY #5608 /* ~Nejprve tě podrobil pečlivému zkoumání a pak se očividně rozhodl, že ti bude věřit. "Heh... kde teď nejsou slabiny? Vnější skořepina je zatím slabá -- ještě jsme ji neztvrdili. Ve střílnách už jsou zbraně, ale ty jsou zatím nebezpečně nestabilní. A parní kotel uvnitř by mohl vyfouknout všechnu tu námahu, kterou jsme do něj vložili. Věci jenom čekají, aby se rozpadly. Myslím, že nejzranitelnějším místem je střílecí mechanismus tam vzadu. Jestli půjde, my všichni dělníci půjdeme s ním."~ */
  IF ~~ THEN REPLY #5609 /* ~"Dík. Mám ještě nějaké otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5610 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 14.9 16.1
  SAY #5611 /* ~"Chceš něco vědět o Kel'lerai? Zabil ji nějaký posraný buzík a to je vše co ti o ní řeknu. Tahle konverzace skončila. Odpal. Stráže! Vyhoďte tohohle blba!"~ */
  IF ~~ THEN REPLY #5612 /* ~Jdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0 4.0 5.1 6.0 7.0 8.0 9.0 10.0 11.0 12.0 15.6 17.3 18.3 19.4 20.4 21.0 22.1 23.1 24.1 25.0
  SAY #5613 /* ~"Jasan. Co chceš vědět?"~ */
  IF ~  GlobalLT("Sabotage","GLOBAL",4)
GlobalGT("Sabotage","GLOBAL",1)
~ THEN REPLY #5614 /* ~"Jaké má tahle věc slabiny?"~ */ GOTO 15
  IF ~~ THEN REPLY #5615 /* ~"Předtím jsi něco říkal o kritické fázi?"~ */ GOTO 24
  IF ~~ THEN REPLY #5616 /* ~"Co je tohle za projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5617 /* ~"Co ta věc dělá?"~ */ GOTO 18
  IF ~~ THEN REPLY #5618 /* ~"Proč to utajení?"~ */ GOTO 19
  IF ~~ THEN REPLY #5619 /* ~"Kdy to bude dokončeno?"~ */ GOTO 20
  IF ~~ THEN REPLY #5620 /* ~"Můžeš mi říci pro koho tenhle projekt děláte?"~ */ GOTO 3
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5621 /* ~"Jsem zvědavý, zda mi můžeš říci něco o vraždě ve Velké slévárně."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5622 /* ~"Co mi můžeš říci o svém šéfovi?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5623 /* ~"Co mi můžeš říci o svém šéfovi?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5624 /* ~"Řekni mi o inženýrech tohoto projektu."~ */ GOTO 6
  IF ~~ THEN REPLY #5626 /* ~"Řekni mi, prosím tě, kde najdu úředníkovu kancelář?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5627 /* ~"Řekni mi o Božích lidech."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5628 /* ~"Řekni mi o inženýrech tohoto projektu."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5629 /* ~"Řekni mi o inženýrech tohoto projektu."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5630 /* ~"Řekni mi o inženýrech tohoto projektu."~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #16224 /* ~"Co je to za projekt?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #5631 /* ~"Prozatím nic, dík."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5625 /* ~Podezřívavě se na tebe podíval. "Proč to chceš vědět?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #5632 /* ~"Protože se trochu zaobírám magickým inženýrstvím, mohl bych pomoci zoptimalizovat práci. Když mi ukážete slabé stránky, pokusím se navrhnout řešení."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5633 /* ~"Protože se trochu zaobírám magickým inženýrstvím, mohl bych pomoci zoptimalizovat práci. Když mi ukážete slabé stránky, pokusím se navrhnout řešení."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #5634 /* ~"Protože tahle věc vypadá velmi křehce."~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #5635 /* ~"Protože jsem pověřen dohledem nad tímhle projektem, musím vědět, jestli je všechno v pořádku."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #5636 /* ~"Protože jsem pověřen dohledem nad tímhle projektem, musím vědět, jestli je všechno v pořádku."~ */ GOTO 16
  IF ~~ THEN REPLY #5637 /* ~"Byl jsem jen zvědavý, to je všechno."~ */ GOTO 16
  IF ~~ THEN REPLY #5638 /* ~"Zapomeň na to. Mám jiné otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5639 /* ~"Nech to být. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2 15.4 15.5
  SAY #5640 /* ~Dívá se na tebe stále víc podezřívavě. "Na tohle ti neodpovím. Jestli chceš vědět něco takového, zeptej se Kel'lery, ne mě."~ */
  IF ~  !Dead("Kellera")
~ THEN REPLY #5641 /* ~"Kde je Kel'lera?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5642 /* ~"Kde je Kel'lera?"~ */ GOTO 13
  IF ~~ THEN REPLY #5643 /* ~"Ne, nech to být. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2 14.2 14.16 18.0 19.1 20.1
  SAY #5644 /* ~"Myslím, že je to zbraň. Nejsme si jistí, zda je k boji nebo k lovu -- a jestli je k lovu, nechtěl bych vidět potvory, pro které je určena -- ale, když ji dokončíme, bude tak dobrá jako ta Loď chaosu Strážců zkázy, kterou tanar'ri udělali před pár lety. Přinejmenším si to myslíme."~ */
  IF ~~ THEN REPLY #5645 /* ~"Co to dokáže?"~ */ GOTO 18
  IF ~~ THEN REPLY #5646 /* ~"Proč všechny ty tajnosti?"~ */ GOTO 19
  IF ~~ THEN REPLY #5647 /* ~"Jak dlouho bude trvat než ji dokončíte?"~ */ GOTO 20
  IF ~~ THEN REPLY #5648 /* ~"Mám další otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5649 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3 14.3 17.0 19.2 20.2
  SAY #5650 /* ~"Víš, nejsem si zcela jist. Když chceš tuhle informaci, musíš si promluvit s některým z inženýrů. Vím, že to produkuje masivní sloup tepla -- zejména tuhle část jsme vylepšili. Pak jsme to zamontovali do zařízení. Je tu mnoho funkcí, na kterých jsme ještě vůbec nezačali dělat. Dokonce se o nich dozvíme, až dokončíme všechny části stroje."~ */
  IF ~~ THEN REPLY #5651 /* ~"Takže znovu, co to je?"~ */ GOTO 17
  IF ~~ THEN REPLY #5652 /* ~"Proč všechny ty tajnosti?"~ */ GOTO 19
  IF ~~ THEN REPLY #5653 /* ~"Jak dlouho bude trvat než ji dokončíte?"~ */ GOTO 20
  IF ~~ THEN REPLY #5654 /* ~"Mohl bys mi, prosím tě zodpovědět pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #5655 /* ~"Dík. Čau."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 14.4 17.1 18.1 20.3
  SAY #5656 /* ~"Kdybys věděl, že nepřítel vytvořil zbraň, kterou chce použít proti tobě, neudělal bys všechno, co je v tvých silách, abys ji zničil? Dokonce ani nevíme pro koho je. My jenom věříme slovům nadřízených, že nebude použita způsobem, s nímž bychom nesouhlasili. Nikdo z nás neví, kdo si ji dal udělat, pak tu tedy není šance, že vyzradíme její tajemství někomu, kdo by ji chtěl vidět zničenou... taky hlavně proto, že jsme jí zasvětili své životy."~ */
  IF ~~ THEN REPLY #5657 /* ~"Co tím myslíš?"~ */ GOTO 21
  IF ~~ THEN REPLY #5658 /* ~"Takže znovu, co to je?""~ */ GOTO 17
  IF ~~ THEN REPLY #5659 /* ~"Co to dokáže?"~ */ GOTO 18
  IF ~~ THEN REPLY #5660 /* ~"Jak dlouho bude trvat než ji dokončíte?""~ */ GOTO 20
  IF ~~ THEN REPLY #5661 /* ~"Mohl bys mi, prosím tě zodpovědět pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #5662 /* ~"Dík. Čau."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.5 14.5 17.2 18.2 19.3
  SAY #5663 /* ~"Možná by to mohlo být dokončeno v další dekádě -- ale nejošidnější část bude hotova v tomhle roce. Jsou tu nějaké magické rituály, které musíme udělat a to zabere čas. Bude nám lépe u srdce, když budeme vědět, že jsme nezasvětili životy věci, která si jen tak vybouchne."~ */
  IF ~~ THEN REPLY #5664 /* ~"Zapečetit? Co tím myslíš?"~ */ GOTO 21
  IF ~~ THEN REPLY #5665 /* ~"Cože to je?"~ */ GOTO 17
  IF ~~ THEN REPLY #5666 /* ~"A co to dělá?"~ */ GOTO 18
  IF ~~ THEN REPLY #5667 /* ~"Proč všechny ty tajnosti?"~ */ GOTO 19
  IF ~~ THEN REPLY #5668 /* ~"Mám pro tebe další otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5669 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #5670 /* ~"To kvůli povaze tohoto projektu - všechny ty tajnosti a tak, a to nemluvím o magii, která nám dovoluje na stroji pracovat. Museli jsme do toho stroje zapečetit části našich životů. Dostaneme své životy zpátky, až bude projekt dokončený. Ale pokud selže, nebo pokud - mocnosti chraňte nás - ho někdo bude sabotovat... Zkrátka, pokud bouchne, přijdeme o své životy."~ */
  IF ~~ THEN REPLY #5671 /* ~"To zní dost špatně. Ale já pro tebe mám ještě další otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5672 /* ~"To zní dost špatně. No, hodně štěstí. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #5673 /* ~Vidíš tieflinga oděného do obleku Božího Člověka, který pozorně prozkoumává věc uprostřed místnosti. "Nemůžu se s tebou teď bavit. Jsme v kritické fázi."~ */
  IF ~~ THEN REPLY #5674 /* ~"Kritická fáze? Čeho?"~ */ GOTO 24
  IF ~~ THEN REPLY #5675 /* ~"Doufal jsem, že bys mi mohl odpovědět na pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #5676 /* ~"Tak to se omlouvám, že ruším. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #5677 /* ~"Zase ty? Co potřebuješ tentokrát?"~ */
  IF ~~ THEN REPLY #5678 /* ~"Předtím ses zmínil něco o kritické fázi?"~ */ GOTO 24
  IF ~~ THEN REPLY #5679 /* ~"Mám pro tebe pár otázek."~ */ GOTO 14
  IF ~~ THEN REPLY #5680 /* ~"Tak v tom případě tě nechám být. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.1 14.1 22.0 23.0
  SAY #5681 /* ~"Ano. Tenhle projekt, na kterém teď pracujeme je zbraň, která má také rozsáhlé mírové využití. Do konce máme ještě daleko, ale teď jsme v delikátní fázi - tak delikátní, že bychom se mohli dostat do knihy mrtvých, pokud by teď někdo nebo něco selhalo."~ */
  IF ~~ THEN REPLY #5682 /* ~"Co to děláte?"~ */ GOTO 25
  IF ~~ THEN REPLY #5683 /* ~"Oh. Mám další otázky."~ */ GOTO 14
  IF ~~ THEN REPLY #5684 /* ~"Aha. Hodně štěstí."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5685 /* ~"Nastavujeme proměnné v nižších magických rezonancích zařízení. Jediná chyba potopí celý projekt, a pokud padne projekt, zlikviduje vzniklá magická vlna všechny kolem."~ */
  IF ~~ THEN REPLY #5686 /* ~"Aha. Můžeš mi odpovědět na nějaké jiné otázky?"~ */ GOTO 14
  IF ~~ THEN REPLY #5687 /* ~"Aha. Sbohem."~ */ EXIT
END
