// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~Muž ustoupil o krok, na jeho tváři je směs znechucení a strachu. "JDI pryč! Nech mě být!"~ */
  IF ~~ THEN REPLY #33153 /* ~Nechej ho jít.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~Když jsi přistoupil blíž, mužovy oči se rozšířili a on se od tebe odtáhnul. "Nemám u sebe nic cenného, přísahám! A teď mě nech na pokoji!"~ */
  IF ~~ THEN REPLY #33155 /* ~Nechej ho jít.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"Odpal! Nechci s tebou nic mít!"~ */
  IF ~~ THEN REPLY #33157 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~Muž se tě snaží ze všech sil ignorovat. Čím více se snažíš přilákat jeho pozornost, tím více dává najevo, že s tebou nebude mluvit.~ */
  IF ~~ THEN REPLY #33159 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"Vypadá to, jako bys žil v Úlu - nebo někde hůř- celej svůj život, kámo. A teď vodpal a nech mě být!"~ */
  IF ~~ THEN REPLY #33161 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"Vypadáš příšerně, kámo. Zajdi se vyspat do noclehárny... je to přímo v centru týhle oblasti. A teď mě nech být! Nenechám tě, abys plýtval mým časem svýma pitomýma otázkama."~ */
  IF ~~ THEN REPLY #33163 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"Už jsi byl v Baru Zapomnění, kámo? Připomínáš mi dělníky, kteří se tam scházejí..."Hořce se zasmál.~ */
  IF ~~ THEN REPLY #33165 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~Muž žvýká něco, co vypadá jako krysa na špejli. "Co je, vole? Eště si neviděl vařenou krysu? Je to dobrý a chutný! Promluv si s Creedenem, jestli máš hlad... stojí přímo před Úřadem pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #33167 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"Nenarazils v poslední době na tu bandu Hladových psů? Bejt tebou, tak se tý bandě vyjících střelených magorů vyhnu - sou to totální šílenci."~ */
  IF ~~ THEN REPLY #33169 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"Nevím nic, co by ti pomohlo, vole... nech mě bejt."~ */
  IF ~~ THEN REPLY #33171 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~Muž si tě prohlédl a pak si před srdcem opsal kruh. "Starám se o vlastní záležitosti a tobě radím to samý. Sbohem."~ */
  IF ~~ THEN REPLY #33173 /* ~Nechej ho jít.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~Muž se zamračil, když jsi se přiblížil. "Nemám čas na kecání s cizincema. Kromě toho, v Úlu je to docela nebezpečný. Měj se fajn."~ */
  IF ~~ THEN REPLY #33175 /* ~"Sbohem tedy."~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"Život v Úlu, to je pěkně ubohá sračka, to ti povim."~ */
  IF ~~ THEN REPLY #33177 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"Vypadáš příšerně, kámo. Zajdi se vyspat do noclehárny... je to přímo v centru týhle oblasti. A teď mě nech být! Nenechám tě, abys plýtval mým časem svýma pitomýma otázkama."~ */
  IF ~~ THEN REPLY #33179 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"Už jsi byl v Baru Zapomnění, kámo? Připomínáš mi dělníky, kteří se tam scházejí..."Hořce se zasmál.~ */
  IF ~~ THEN REPLY #33181 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~Muž žvýká něco, co vypadá jako krysa na špejli. "Co je, vole? Eště si neviděl vařenou krysu? Je to dobrý a chutný! Promluv si s Creedenem, jestli máš hlad... stojí přímo před Úřadem pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #339 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"Běžel jsi už někdy v poslední době přímo přes tlupu Hladovejch psů? Bejt tebou, radši bych se těmhle vyjícím a poskakujícím blbcům vyhnul... krvežíznivý pošuci to sou!"~ */
  IF ~~ THEN REPLY #341 /* ~Odejít.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"Slyšel sem vo tobě, vole... hledáš starýho Pharoda, co? Esli ho chceš najít, zkus šmírnout na sevéře, na Hadrníkově náměstí. Prej tam někde smrdí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"Slyšels o Uličce nebezpečnejch zákoutí? Kdysi tam bylo celý sousedství, ale shořelo na prach. Teď už je tam jenom banda mizernejch grázlů."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"Ano, byl jsem tam."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"Pokud vydržíš jeho děsněj smrad, je tu někde chlápek jménem Smradodech, kerej zná pár zajímavejch příběhů, co ti rád povypráví."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"Možná ho půjdu najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"U Doutnajícího nebožtíka, to je moje oblíbená hospoda tady v Úlu... i když je tam někdy děsnej hic, s tou čoudící mrtvolou..."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"Teď už tam žádné tělo není. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"Ano, byl jsem tam sám. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~Muž na tebe kývl. "Zdravím tě, kámo. Pomoh bych ti, kdybych moh... ale nevím nic, co by tě mohlo zajímat."~ */
  IF ~~ THEN REPLY #33203 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"Nenávidim to tu... chtěl bych mít dost prachů, abych se z Úlu dostal nafurt. Nech si poradit, kámo. Vypadni vocaď, pokud můžeš."~ */
  IF ~~ THEN REPLY #33206 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"Dávej na sebe bacha, vole... násilí, to je hlavní způsob jednání v Úlu."~ */
  IF ~~ THEN REPLY #33208 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"Vypadáš příšerně, kámo. Zajdi se vyspat do noclehárny... je to přímo v centru týhle oblasti. A teď mě nech být! Nenechám tě, abys plýtval mým časem svýma pitomýma otázkama."~ */
  IF ~~ THEN REPLY #33210 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"Neslyšel sem tě, vole... ptal ses na starýho Pharoda, jo? Esli ho chceš najít, zkus hledat na sever vocaď, na Hadrníkově náměstí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"Potkal jsem tam jednou bouchače Porphirona... uměl učit bojovat, je fakt dobrej."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"Tak toho teda asi zkusím najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"Zajdi si k Nástěnce, esli ses ztratil. Je hned vedle Baru Zapomnění."~ */
  IF ~~ THEN REPLY #33218 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"Slyšels o Uličce nebezpečnejch zákoutí? Kdysi tam bylo celý sousedství, ale shořelo na prach. Teď už je tam jenom banda mizernejch grázlů."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"Ano, byl jsem tam. Sbohem."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"Spousta lidí sem chodí voplakávat mrtvý... u Památníku Spalovačů je takovej divnej Spalovač, kerej ti řekne, jestli je někdo, koho hledáš, mrtvej, nebo ti nechá vyrejt jeho jméno na památník, pokud chceš, aby se na něj nezapomnělo."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"Ano, všichni mu říkají 'Smrt-jmen.' Sbohem."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"Skoro každej Spalovač v Sigilu tráví nějakej čas v Baru Zapomnění. Pokud hledáš někoho z nich, je to docela dobrej plac, kde začít."~ */
  IF ~~ THEN REPLY #33225 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~Muž žvýká něco, co vypadá jako krysa na špejli. "Co je, vole? Eště si neviděl vařenou krysu? Je to dobrý a chutný! Promluv si s Creedenem, jestli máš hlad... stojí přímo před Úřadem pro dohled nad škůdci a nemocemi."~ */
  IF ~~ THEN REPLY #33230 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"Pokud vydržíš jeho děsněj smrad, je tu někde chlápek jménem Smradodech, kerej zná pár zajímavejch příběhů, co ti rád povypráví."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"Možná ho půjdu najít. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"Ano, potkal jsem ho. Sbohem."~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"Pokud něco potřebuješ, skoro určitě to najdeš na Tržišti támhle.."~ */
  IF ~~ THEN REPLY #33236 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"Poslouchals někdy Prophyru na Tržišti? V Sigilu bude pořádnej chaos, esli má pravdu - pokdud není bláznivá, jak o ní spousta lidí tvrdí."~ */
  IF ~~ THEN REPLY #33238 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"Slyšels o Uličce nebezpečnejch zákoutí? Kdysi tam bylo celý sousedství, ale shořelo na prach. Teď už je tam jenom banda mizernejch grázlů."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"Ano, byl jsem tam."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"Nenarazils v poslední době na tu bandu Hladovejch psů? Bejt tebou, tak se tý bandě vyjících střelených magorů vyhnu - sou to totální šílenci."~ */
  IF ~~ THEN REPLY #33243 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"U Doutnajícího nebožtíka, to je moje oblíbená hospoda tady v Úlu... i když je tam někdy děsnej hic, s tou čoudící mrtvolou..."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"Teď už tam žádné tělo není. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"Ano, byl jsem tam sám. Sbohem."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"Potkals toho šílenýho Voplakávače? To je ale blbeček... jako by tady někomu záleželo na stromech. Kterej vymazanej kretén je sem dotáh, to je to, co bych rád věděl!"~ */
  IF ~~ THEN REPLY #33250 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"Jediný, co ti můžu poradit, je: Hlídej si kapsu kámo... je tady hromada zatracenejch kapsářů."~ */
  IF ~~ THEN REPLY #33252 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"Občas tady pobíhá šílená ženská... prej je to cestovatelka, která se zcvokla, když se snažila najít cestu domů."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"Ano... už by měla být doma, nebo alespoň na cestě. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"Potkal jsem ji, jmenuje se Ingress. Sbohem."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #50 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"Jestli máš čas a pár drobnejch, jdi si pokecat s Goahou na Tržišti."~ */
  IF ~~ THEN REPLY #33258 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 52 48 45 44 43 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"Máš zajímavý tetování, kámo. Někde tady je tetovací salónek... Vede ho jeden takovej divnej..."~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"Vím, jmenuje se Fell. Sbohem."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"Ano, byl jsem tam. Sbohem."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"Tak to tam možná půjdu. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"Thlium! Myslel jsem, že už tě nikdy neuvidím. Jak je to dlouho, čtyři roky? Vypadáš... no, na tom nezáleží. Hele, tady je to kilo, co ti dlužím. Vrátil bych ti to dřív, ale ztratil ses ze Sigilu... A teď už budu muset jít, Thliume... měj se fajn!"~ */
  IF ~~ THEN REPLY #33264 /* ~"Uh..."~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Nechej ho jít.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,2)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~Mužovy oči se rozšířily a zbledl hrůzou. "U M-m-mocností! Říkali, že ses vrátil, a-a-ale já jim nevěřil!" Náhle se otočil a dal se na útěk.~ */
  IF ~~ THEN REPLY #33267 /* ~Zkus ho chytit.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Nechej ho jít.~ */ DO ~SetGlobal("Hive_OT_B","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,3)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~Muž na tebe zašilhal. "Morric? Seš to ty?"~ */
  IF ~~ THEN REPLY #33270 /* ~Lži: "Ano... Jsem Morric."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"Možná..."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"Ne, promiň."~ */ DO ~SetGlobal("Hive_OT_C","GLOBAL",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"Tak to se omouvám, kámo. Sbohem."~ */
  IF ~~ THEN REPLY #33274 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"Myslel jsem, že už se do Sigilu nevrátíš... Jestli Amatael zjistí, že jsi zpátky, seš mrtvá liška! V každým případě, mám tady ten svitek, cos mi půjčil. Tumáš... vem si ho a zmiz, než nás spolu někdo uvidí."~ */
  IF ~~ THEN REPLY #33276 /* ~"Ale..."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"Díky... sbohem."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,1,1,0)
EscapeArea()
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,4)
Global("Hive_OT_Morte","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~Muž polknul a ukázal na Morteho. "Oh, hele! Létající lebka!!!"~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Morte","GLOBAL",1)
~ EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"Co??! Chceš přijít vo pár zubů, ty ukecanej kriple?" Muž se výhružně postavil naproti Mortemu.~ */
  IF ~~ THEN REPLY #33280 /* ~Zastav muže.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Nechej Morteho, ať to zvládne.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~Postavil ses mezi Morteho a muže, který se na tebe zamračil a pak ustoupil. "Jenom plýtvám časem!" Otočil se a odchází.~ */
  IF ~~ THEN REPLY #33283 /* ~Nechej ho jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~Muž se zamračil na Morteho, pak na tebe a zavrtěl hlavou. "Jenom plýtvám časem!" Otočil se a odchází.~ */
  IF ~~ THEN REPLY #33285 /* ~Nechej ho jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 57 56 55 54 even though they appear after this state */
~  NumTimesTalkedTo(0)
!Global("Current_Area","GLOBAL",305)
RandomNum(20,5)
Global("Hive_OT_Annah","GLOBAL",0)
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"Annah! Co tady děláš s *toudle* hromadou sraček? Myslel sem, že budeš *moje* holka..." Muž se hlasitě rozřehtal a plácá se do stehen.~ */
  IF ~~ THEN DO ~SetGlobal("Hive_OT_Annah","GLOBAL",1)
~ EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"Ah, jen kecáš, Annah... *jen kecáš*...*nikdy* bys neublížila jedinýmu chlapovi, kerej tě dokáže *doopravdy* uspokojit! Pocem a dej mi pořádnou pusu, má malá tieflingská princezno!" Natáhnul se po Annah.~ */
  IF ~~ THEN DO ~ForceAttack("Annah",Myself)
Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~Tahle osoba už ti nemá co víc říct.~ */
  IF ~~ THEN REPLY #33289 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~Tahle osoba už ti nemá co důležitého říct.~ */
  IF ~~ THEN REPLY #33291 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~Tahle osoba už ti nemá co zajímavého říct.~ */
  IF ~~ THEN REPLY #33293 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~Tahle osoba už ti nemá co říct.~ */
  IF ~~ THEN REPLY #33295 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #52 ~  NumTimesTalkedTo(0)
CreatureInArea("AR0305")
~ THEN BEGIN 58 // from:
  SAY #33211 /* ~"Neslyšel sem tě, vole... ptal ses na starýho Pharoda, jo? Esli ho chceš najít, zkus hledat na sever vocaď, na Hadrníkově náměstí."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"Tak to zkusím tam. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Už jsem ho našel, ale díky. Sbohem."~ */ EXIT
END
