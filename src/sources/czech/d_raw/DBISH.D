// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~Jak vcházíš do místnosti, z křesla vstává mohutně stavěný muž a jde k tobě. "Nazdar! Jmenuju se Bish. A ty seš kdo?"~ */
  IF ~~ THEN REPLY #34123 /* ~"Nemám jméno."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Lži: "Jmenuju se 'Adahn.'" ~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"To není tvoje věc."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Ignoruj muže a pokračuj dál~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"Co tím myslíš, že nemáš jméno? Ses vrátil po plavání ve Styxu, ty hňupe?!" Všiml sis, že Bish pomalu natahuje ruku po své zbrani "Nebo mi to zkrátka nechceš říct? Něco skrejváš, mám takovej pocit."~ */
  IF ~~ THEN REPLY #34127 /* ~"Hele, říkám ti pravdu. Neznám své jméno."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"Nemám co skrývat a nechci dělat problémy. Chci jenom projít."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Lži: "Okay, okay... jmenuju se 'Adahn.'"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"Chci jenom projít."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"Jestli okamžitě neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"Jestli okamžitě neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"Hledám muže jménem Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"Hledám deník."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"Řekli mi, že bych tady někde mohl najít Pharoda."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"To není tvoje věc."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Zaútoč na Bishe.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Ignoruj Bishe a pokračuj dál.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"Adh-co?" Bish na tebe prázdně zírá, pak divoce zatřásl hlavou. "Nikdy dřív jsem tě neviděl a Pharod mi neřekl nic o tom, že by měl přijít nějakej 'Adahn'. " Všiml sis, že se jeho ruka pomalu natahuje po zbrani. "Měl bys mi radši říct, co chceš, vole."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"Možná že Pharodova důvěra v tebe nesahá až tak daleko, jak si ty myslíš."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"Hledám muže jménem Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"Hledám deník."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~ "To není tvoje věc."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"Nemám co skrývat a nechci dělat problémy. Chci jenom projít."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"Chci jenom projít."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"Jestli okamžitě neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"Jestli okamžitě neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Zaútoč na Bishe.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Ignoruj Bishe a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Bish náhle vytáhl svou zbraň. "Fajn. Když mi to neřekneš přímo, vymlátím to z tebe."~ */
  IF ~~ THEN REPLY #34147 /* ~"Jen si to zkus..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~Když se otáčíš k odchodu, Bish se pohnul a zablokoval ti cestu. "Ptám se tě ještě jednou, vole! Jak se JMENUJEŠ?!"~ */
  IF ~~ THEN REPLY #34148 /* ~"Nevím, jak se jmenuju."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Lži: "Jmenuju se 'Adahn.'"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"To není tvoje věc!"~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Zaútoč na Bishe.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Ignoruj Bishe dál a zkus kolem něj projít.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"Kdyby tě Pharod chtěl vidět, věděl bych o tom." Bish náhle vytáhl zbraň. "Už mě nebaví hrát si s tebou, vole. Odpovědi si zjistim z tvýho mrtvýho těla."~ */
  IF ~~ THEN REPLY #34153 /* ~"To si nemyslím..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"Tím chceš říct, žes už tu byl? Deník nedeník, já tě nikdá neviděl. Mám spíš pocit, že se mě snažíš oblbnout." Bish náhle vytáhl zbraň. "Doufám, že ti to stálo za tvůj mizernej život."~ */
  IF ~~ THEN REPLY #34154 /* ~"No jó..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Bish rozčileně rozhodil rukama. "Zapomeň na to, vole! Už to stejně není důležitý." Zavrtěl hlavou. "Co je důležitější, je vodpověď na otázku: co tady děláš?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"Bylo mi řečeno, že někde v téhle oblasti bych mohl najít Pharoda."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"Hledám muže jménem Pharod."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"Hledám deník."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"To není tvoje věc."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"Nechci dělat problémy. Chci jenom projít."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"Chci jenom projít."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"Jestli hned neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"Jestli hned neustoupíš, zaplatíš pekelnou cenu."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Zaútoč na Bishe.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Ignoruj Bishe a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Bish se na tebe mračí. "V pořádku. Můžeš jít dál." Když se pokoušíš projít kolem Bishe, tiše tě varoval. "Ale zapamatuj si, vole. Budeš tady dělat problémy a já ti při našem příštím setkání rozmačkám kebuli."~ */
  IF ~~ THEN REPLY #34164 /* ~"Sbohem..."~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"Dělám si, co chci..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Bish zavrtěl hlavou. "Chceš spoustu věcí, kámo." Otřásá se smíchy. "Neznám tě, nemám tě rád, takže ti nabídnu kšeft. Peníze, nebo život."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"Tak tedy moje peníze."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"Tak tedy moje peníze."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"Nedám ti ani jedno!"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"Seš blbější, než bych řek, kámo!" Bish pokrčil rameny. "Fajn teda, vole. Jdeme na to!"~ */
  IF ~~ THEN REPLY #34169 /* ~"Já ti ukážu..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Bish si odfrkl. "Vypadáš jako pořádnej bitkář." Kývl na tebe, než vytáhl svou zbraň. "Ale z tohohle se nevybiješ."~ */
  IF ~~ THEN REPLY #34170 /* ~"Já..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Bish tě rychle prohledal. "Měl bych si vzít tvoji kebuli, páč to je asi jediný cenný, co máš! A teď zmiz. A varuju tě, nepokoušej se dělat ňáký problémy, jinak si tě najdu a zmlátím to, co z tebe zbejvá!"~ */
  IF ~~ THEN REPLY #34171 /* ~"Už jdu."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"Bastarde..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~Vidíš Bishe, tvrdě pracujícího. Když se přiblížíš, kývne na tebe. "Hoj. Pospíchej dál svou cestou."~ */
  IF ~~ THEN REPLY #34173 /* ~"Dobře."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Bish tě prohledal... a nic nenašel. "Chceš plejtvat mým časem, nebo sis myslel, že ty tvoje nesmysly mají nějakou cenu?" Bish hrozivě zamával svou zbraní. "Vypadá to, že budu muset prodat tvoji mrtvolu!"~ */
  IF ~~ THEN REPLY #34174 /* ~"Vyzývám tě..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Bish na tvůj pozdrav odpověděl vytáhnutím zbraně! "Co jsem ti říkal, vole? Budeš tady pobíhat a já se ti proběhnu po vnitřnostech!"~ */
  IF ~~ THEN REPLY #34175 /* ~"No jó..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Bish si odfrkl. "No, tak to bys mu radši měl říct, ať si svoje názory upraví, jestli chce, abych dál se svými muži hlídal tuhle zatracenou smradlavou ďouru." Strčil si zbraň za opasek a mávl rukou k padacím dveřím. "Padej."~ */
  IF ~~ THEN REPLY #66910 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Bish si tě podezřívavě měří. "Pharod mi věčinou vo návštěvníkách říká a já si nějak nepamatuju, že by se ňák zmiňoval vo někom, co by vypadal jak ty." Rychle tě přejel pohledem, pak ale apaticky pokrčil rameny. "Nááh. Nevypadáš jako někdo, koho by hlídky nezvládly. Tak padej."~ */
  IF ~~ THEN REPLY #66909 /* ~"Sbohem."~ */ EXIT
END
