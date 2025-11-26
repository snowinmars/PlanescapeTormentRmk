// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
InParty("Morte")
~ THEN BEGIN 0 // from:
  SAY #41144 /* ~"Pssst... Nějaký rady, šéfe: Měli bychom bejt víc potichu - není třeba zapisovat více mrtvol do Knihy mrtvých než je doopravdy nutný... hlavně ženy. A když je zabiješ silou, přiláká to sem hlídače."~ */
  IF ~~ THEN REPLY #41145 /* ~"Nemyslím si, že jsi se o tom předtím zmínil... *kdo* jsou ti hlídači?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41146 /* ~"Ty mrtvoly tady... odkud všechny jsou?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #41147 /* ~"Proč se staráš o ženská těla?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41148 /* ~"V pořádku... já se... pokusím si to zapamatovat."~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 7.0
  SAY #41149 /* ~"Říkají si 'Spalovači.' Nemůžeš je přehlídnout: maj' vášeň pro temnotu a ztuhlej posmrtnej škleb ve tváři. Je to jenom přiblblá banda ghúlskejch uctívačů smrti; věřej, že všichni musej' zemřít... čím dřív, tím líp."~ */
  IF ~~ THEN REPLY #41150 /* ~"Nechápu to... proč se tihle Spalovači o mne starají, když jsem unikl?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #41151 /* ~"Ty jsi mě snad neposlouchal?! Říkal jsem, že tihle Spalovači věří, že VŠICHNI musí zemřít, čím dřív, tím líp. Ty si snad myslíš, že ty mrtvoly tady jsou radši v knize mrtvých než mimo ni?"~ */
  IF ~~ THEN REPLY #41152 /* ~"Ty mrtvoly tady... odkud všechny jsou?"~ */ GOTO 3
  IF ~~ THEN REPLY #41153 /* ~"Předtím jsi říkal něco o ujišťění, že jsem nezabil mrtvolu *ženy*. Proč?"~ */ GOTO 4
  IF ~~ THEN REPLY #41154 /* ~"V pořádku... já se... pokusím si to zapamatovat."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 7.1
  SAY #41155 /* ~"Smrt navštěvuje sféry každej den, šéfe. Všichni tihle belhalové měli tu smůlu, že po svý smrti někdo hlídačům prodal jejich mrtvoly."~ */
  IF ~~ THEN REPLY #41156 /* ~"Řekni mi... *kdo* jsou tihle hlídači?"~ */ GOTO 1
  IF ~~ THEN REPLY #41157 /* ~"Předtím jsi říkal něco o ujišťění, že jsem nezabil mrtvolu *ženy*. Proč?"~ */ GOTO 4
  IF ~~ THEN REPLY #41158 /* ~"V pořádku... já se... pokusím si to zapamatovat."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.2 2.1 3.1
  SAY #41159 /* ~"Co - to myslíš *vážně?* Podívej, šefe, tyhle mrtvý škvrňata jsou pro takový bouchače jako my poslední šancí, jak se spárovat. Musíme být *rytířští*... žádné rozsekávání kvůli klíči, žádné utínání jejich údů a tak podobně."~ */
  IF ~~ THEN REPLY #41160 /* ~"Poslední šance? O čem to *mluvíš*?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #41161 /* ~"Šéfe, ONI SOU mrtví, MY SME mrtví... chápeš, kam směřuju? No? Jo?"~ */
  IF ~~ THEN REPLY #41162 /* ~"Ne... ne, vlastně ne."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41163 /* ~"*Nemůžeš* mluvit srozumitelněji?."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #41164 /* ~"Šéfe, už máme něco společnýho s těma belhajícíma se ženama. *Všichni* jsme mrtvý minimálně jednou: máme spolu o čem mluvit. Budou si vážit mužů, kerý maj zkušenosti se smrtí, jako třeba my."~ */
  IF ~~ THEN REPLY #41165 /* ~"Počkej... neříkal jsi snad, že *nejsem* mrtvý?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41166 /* ~"Dobře... v pořádku, *ty* nemusíš bejt mrtvej, ale *já* sem. A dokud ještě stojím, nehodlám se s nějakou z těchhle krásnejch a silnejch mrtvol, kerý tu vidím, dělit o rakev." Morte začal klapat zubama, jako když na něco čeká. "'Možná, že se s nima budou chtít hlídači spárovat jako první, a to není dobrý..."~ */
  IF ~~ THEN REPLY #41167 /* ~"Tak znova, kdo jsou ti hlídači?"~ */ GOTO 1
  IF ~~ THEN REPLY #41168 /* ~"Ale odkud jsou všechna tahle těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #41169 /* ~"V pořádku... pokusím se si to zapamatovat."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
  SAY #41170 /* ~"Podívej se, šéfe. Je jasný, že seš pořád jenom kapku popletenej po tvým setkání se smrtí, takže pro tebe mám dvě malý rady: první, když máš nějakou votázku, *zeptej* se mě, jasný?"

POZNÁMKA: Abys mohl rozprávět se členem party, vyber možnost 'mluv' z rychlého menu a potom klikni levým tlačítkem na člena party, se kterým chceš hovořit.~ */
  IF ~~ THEN REPLY #41171 /* ~"Rozumím... když se budu chtít na něco zeptat, tak se zeptám tebe."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41172 /* ~"Za druhé, když seš takovej *trouba* a pořád něco zapomínáš, začni si zapisovat důležitý věci - dycky, když přijdeš na něco, co *může* bejt důležitý, tak si to zapiš a nemusíš si to pamatovat."~ */
  IF ~~ THEN REPLY #41173 /* ~"Jestli mám deník, který bych *snad* měl mít s sebou, budu to dělat."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41174 /* ~"Tak můžeš začít vod začátku, šéfe. Bez obav. Je tu dost pergamenu a inkoustu, který bys mohl použít."~ */
  IF ~~ THEN REPLY #41175 /* ~"Hmmmm. V pořádku. Nemohlo se mu nic stát... ale stejně si udělám nový."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41176 /* ~"Používej ho, aby sis mohl zapsat své kroky. I když se dokonce mlhavě začneš dostávat k důležitým věcem, například kdo jsi... nebo důležitějším, kdo jsem *já*... použij ho, abys si osvěžil paměť."

POZNÁMKA: Aby ses dostal k deníku, vyber si tlačítko 'deník' v pravém dolním rohu světové obrazovky, nebo si vyber tlačítko 'deník' v rychlém menu. Té zapísky se aktualizují automaticky v průběhu hry.~ */
  IF ~~ THEN REPLY #41177 /* ~"Jasně... mám to. Jdeme."~ */ JOURNAL #39516 /* ~Postrádám svůj původní deník, takže jsem musel začít psát nový. Probral jsem se na místě zvaném "Márnice." Nevím, kdo jsem, nevím, co tu dělám a nevím, jak jsem se sem dostal. Jediná bytost, kterou se mi poštěstilo potkat, byla mluvící lebka Morte... když mi o chvíli později prohlížel rány na zádech, narazil na několik vytetovaných 'pokynů':

"Vím, že se cítíš, jako bys vypil několik džberů bahna z Řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl válet deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých."

"Hlavně ten deník neztrať, protože pak bychom zase byli v bahně Styxu. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria. Udělej, co ti říkám: PŘEČTI si deník, pak NAJDI Pharoda."

Copak jsem tuto zprávu nechal sám sobě? Asi bych vážně měl najít toho 'Pharoda' a svůj deník. ~ */ EXIT
END

IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0)
!Global("Mortuary_Walkthrough","GLOBAL",1)
!Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 12 // from: 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0
  SAY #41178 /* ~"Co tě žere, šéfe?"~ */
  IF ~~ THEN REPLY #41179 /* ~"Můžeš mi znova přečíst to tetování na mých zádech?~ */ GOTO 13
  IF ~~ THEN REPLY #41180 /* ~"Tak znova, co je tohle za místo?"~ */ GOTO 18
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41181 /* ~"Tohle místo je ohromné... kdo se o to stará?"~ */ GOTO 19
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41182 /* ~"Kdo jsou ti místní hlídači?"~ */ GOTO 19
  IF ~~ THEN REPLY #41183 /* ~"Ty mrtvoly tady... odkud všechny jsou?"~ */ GOTO 22
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41184 /* ~"Předtím jsi říkal něco o ujišťování se, že jsem nezabil mrtvolu *ženy*. Proč?"~ */ GOTO 23
  IF ~  PartyHasItem("Bandage")
~ THEN REPLY #41185 /* ~"Jak se používaji tyhle obvazy?"~ */ GOTO 21
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41186 /* ~"Teď nic, Morte. Jenom kontroluju, jestli jsi pořád se mnou."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41187 /* ~"Teď nic, Morte. Jenom kontroluju, jestli jsi pořád se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #41188 /* ~"Ah, *tak pojď,* šéfe. Ale neříkej mi, že jsi to už zapomněl."~ */
  IF ~~ THEN REPLY #41189 /* ~"Potřeboval jsem si osvěžit paměť, to je všechno."~ */ GOTO 14
  IF ~~ THEN REPLY #41190 /* ~"Tak nic. Nevadí. Mám ještě jiné otázky..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41191 /* ~"Tak na to zapomeň. Jdeme."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41192 /* ~"Tak na to zapomeň. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #41193 /* ~"Vsadím se, že se DOZVÍM tak hodně." Morte si čistí hrdlo. "Tak se na to podíváme..."

'Vím, že se cítíš jako kdybys pil pár soudků bahna ze Styxu, ale potřebuješ se SOUSTŘEDIT. Mezi tvými věcmi je i DENÍK, který vnese kapku světla do té temnoty, která zahaluje, co se stalo. PHAROD ti může doplnit zbytek písně, jestli ještě není v knize mrtvých.'~ */
  IF ~~ THEN REPLY #41194 /* ~"Pharod... hmmm. Pojď dál."~ */ GOTO 15
  IF ~~ THEN REPLY #41195 /* ~"Nevadí. Mám jiné otázky..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41196 /* ~"Zapomeň na to. Už jsem slyšel dost. Jdeme."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41197 /* ~"Zapomeň na to. Už jsem slyšel dost. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41198 /* ~"Jasně, jasně, vydrž." Morte se na chvíli odmlčel. "Jasně, tady je poslední část..."

'Neztrať deník, jinak budeme zase ve Styxu. A ať děláš co chceš, NEŘÍKEJ nikomu KDO jsi nebo CO se ti stalo, nebo ryclhe poputuješ do krematoria. Dělej, co ti říkám: PŘEČTI si deník, potom NAJDI Pharoda.'~ */
  IF ~~ THEN REPLY #41199 /* ~"A neměl jsem deník u sebe, když jsem se probudil?"~ */ GOTO 16
  IF ~~ THEN REPLY #41200 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41201 /* ~"Zapomeň na to. Už jsem slyšel dost. Jdeme."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41203 /* ~"Zapomeň na to. Už jsem slyšel dost. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41202 /* ~"Ne... odřel jsi se až na kůži. Jak jsem už říkal, vypadáš jako kdybys měl celkem dost deníku vyryto do těla."~ */
  IF ~~ THEN REPLY #41204 /* ~"A jseš si jistý, že neznáš nikoho jménem Pharod?"~ */ GOTO 17
  IF ~~ THEN REPLY #41205 /* ~"Dost pravděpodobné. Mám ještě další otázky..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41206 /* ~"Tak dobře. Jdeme."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41207 /* ~"Tak dobře. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41208 /* ~"Ne. Ale pořád by tady někdo okolo moh vědět kde ho najít. Poptej se kolem... POTOM, co se odtud dostaneme."~ */
  IF ~~ THEN REPLY #41209 /* ~"Potřebuji se ještě na něco zeptat než půjdeme..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41210 /* ~"V pořádku. Jdeme."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41211 /* ~"V pořádku. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY #41212 /* ~"Říká se tomu 'Márnice'... je to velká černá budova se všemi stavitelskými půvaby těhotného pavouka."~ */
  IF ~~ THEN REPLY #41213 /* ~"Nech to. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41214 /* ~"To je všechno co jsem chtěl vědět. Díky."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41215 /* ~"To je všechno co jsem chtěl vědět. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2 12.3
  SAY #41216 /* ~"Říkají si 'Spalovači.' Nemůžeš je přehlídnout: maj' vášeň pro temnotu a ztuhlý mrtvoly. Je to jenom přiblblá banda ghúlskejch uctívačů smrti; věřej, že všichni musej' zemřít... čím dřív, tím líp."~ */
  IF ~~ THEN REPLY #41217 /* ~"Jsem zmatený... proč se tyhle Spalovači starají o můj únik?"~ */ GOTO 20
  IF ~~ THEN REPLY #41218 /* ~"Nech to. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41219 /* ~"Rozuměl jsem. Budu opatrný."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41220 /* ~"Rozuměl jsem. Budu opatrný."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #41221 /* ~"Ty jsi snad neposlouchal?! Říkal jsem, že Spalovači věří, že všichni musí zemřít, čím dřív, tím líp. Nebo ty si snad myslíš, že ty těla tady okolo jsou raději v knize mrtvých než mimo ni?"~ */
  IF ~~ THEN REPLY #41222 /* ~"Nech to. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41223 /* ~"Jasně... já... se pokusím si to zapamatovat."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41224 /* ~"Jasně... já... se pokusím si to zapamatovat."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY #41225 /* ~"Ty, dobře... *použij* je. Pořád krvácíš, a všude."

POZNÁMKA: Abys mohl použít obvazy sám na sebe , klikni na ně pravým tlačítkem v obrazovce inventáře. Abys je použil na někoho jiného, umísti je do jednoho ze slotů pro rychlý přístup, zvol tlačítko "použít" z rychlého menu na světové obrazovce, poté klikni na cíl léčení.~ */
  IF ~~ THEN REPLY #41226 /* ~"Nech to. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41227 /* ~"Díky. Myslím, že už s tím umím zacházet."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41228 /* ~"Díky. Myslím, že už s tím umím zacházet."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 12.4
  SAY #41229 /* ~"Smrt navštěvuje Sféry každým dnem, šéfe. Tyhle belhalové jsou všehno, co zustává ze zlých existencí, kteří zaprodali svou duši po smrti hlídačům."~ */
  IF ~~ THEN REPLY #41230 /* ~"Nech to. Mám pár dalších otázek..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41231 /* ~"Jasně... já... se pokusím si to zapamatovat."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41232 /* ~"Jasně... já... se pokusím si to zapamatovat."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.5
  SAY #41233 /* ~"Co - to myslíš *vážně?* Podívej, šefe, tyhle mrtvý škvrňata jsou pro silné stydlivky jako my poslední šancí, jak se spárovat. Musíme být *rytířští*... žádné rozsekávání kvůli klíči, žádné utínání jejich údů a tak podobně."~ */
  IF ~~ THEN REPLY #41234 /* ~"Poslední šance? O čem to *mluvíš*?"~ */ GOTO 24
  IF ~~ THEN REPLY #41235 /* ~"Nevadí. Mám pro tebe další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #41236 /* ~"Jasně... já... se pokusím si to zapamatovat."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #41237 /* ~"Šéfe, ONI JSOU mrtví, MY JSME mrtví... chápeš, kam směřuju? Jo? No?"~ */
  IF ~~ THEN REPLY #41238 /* ~"Ne... ne, vlastně nechápu."~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41239 /* ~"Hele *nemůžeš* jít rovnou k věci?"~ */ GOTO 25
  IF ~~ THEN REPLY #41240 /* ~"Nevadí. Mám pro tebe další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #41241 /* ~"Už jsem slyšel dost. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #41242 /* ~"Šéfe, už máme spojovací rys s těma belhajícíma ženama. *Všichni* jsme zemřeli nejméně jednou: máme o čem mluvit. Budou si vážit mužů, kteří mají zkušenosti se smrtí, jako třeba my."~ */
  IF ~~ THEN REPLY #41243 /* ~"Počkej... neříkal jsi předtím, že já *nejsem* mrtvý?"~ */ GOTO 26
  IF ~~ THEN REPLY #41244 /* ~"Nevadí. Mám pro tebe další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #41245 /* ~"Už jsem slyšel dost. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41246 /* ~"Dobře... jasný, *ty* nemusíš bejt mrtvej, ale *já* sem. A dokud ještě stojím, nehodlám se s nějakou z těchhle krásnejch a silnejch mrtvol, který tu vidím, dělit o rakev." Morte začal klapat zuby, jako když na něco čeká. "'Možná, že se s nima budou chtít hlídači spárovat jako první, a to není dobrý..."~ */
  IF ~~ THEN REPLY #41247 /* ~"Chci se tě ještě na něco zeptat, Morte..."~ */ GOTO 12
  IF ~~ THEN REPLY #41248 /* ~"Už jsem slyšel dost. Jdeme."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */
~  !InParty("Morte")
~ THEN BEGIN 27 // from:
  SAY #41250 /* ~"Věděl jsem že se vrátíš, šéfe! Konečně jsi zjistil, že mě potřebuješ, huh?"~ */
  IF ~~ THEN REPLY #41251 /* ~"Jasně... jdeme."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41252 /* ~"Teď to není správné, Morte."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #41253 /* ~"Hmmmph. Dobře, nevím, jak dlouho jsme sem chodil čekat, tak ti dávám JEDNU poslední šanci. Jseš si jistý, že nechceš moje chytré rady a mou rychlou hlavu?"~ */
  IF ~~ THEN REPLY #41254 /* ~"Morte, nemáš OBĚ tyhle věci."~ */ GOTO 29
  IF ~~ THEN REPLY #41255 /* ~"Jasně, změnil jsem své mínění. Pojď, jdeme."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41256 /* ~"Teď ne, Morte. Možná později."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #41257 /* ~"Snažíš se zranit moje city, šéfe? Co, řekl jsme snad něco? Nebo snad proto, že nemám ruce? Co?"~ */
  IF ~~ THEN REPLY #41258 /* ~"Jasně, změnil jsem své mínění. Pojď, jdeme."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41259 /* ~"Nic z toho. Jenom si myslím, že teď nepotřebuji tvou společnost. Sbohem, Morte."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #41260 /* ~"Dobře, nebudu čekat NAVŽDY, takže pro tebe bude lepší přijít hned jak změníš svoje mínění."~ */
  IF ~~ THEN REPLY #41261 /* ~"Příjdu. Sbohem, Morte."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 31 // from:
  SAY #41262 /* ~"Vysoké mocnosti. To je PEKLO tahleta kniha."~ */
  IF ~~ THEN REPLY #41263 /* ~"Co je to?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #41264 /* ~"Jestli tuším správně, říkal jsem, že je to kniha, do které píšou jména všech špatných existencí, které mají tolik smůly, že se jim nepodaří dostat se odsud."~ */
  IF ~~ THEN REPLY #41265 /* ~"Může tam být i moje jméno?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41266 /* ~"Eh... inu... *tuším.* Aby ses odsud dostal, musíš žvanit tou svojí kebulí na toho vznášejícího se Spalovače tady. Ale nejsem si jistý, že je to dobrý nápad."~ */
  IF ~~ THEN REPLY #41267 /* ~"Dobře, potřebuji odpověď. Jdu si s ním promluvit." ~ */ EXIT
END
