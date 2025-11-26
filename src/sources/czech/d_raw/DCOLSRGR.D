// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~Tento bledý, hubený, ponuře vypadající muž, vzbuzuje autoritu navzdory své protáhlé a poněkud nemotorné postavě. Chybí mu pěkný kus levého ucha; zbytek je rozedraná a zjizvená kůže, jako by mu to ucho někdo spíš ukousl než uřízl. Jeho úzké, pátravé oči - téměř pouhé štěrbiny - vypadají chytře... a nebezpečně.~ */
  IF ~~ THEN REPLY #18195 /* ~"Zdravím..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~Nechej toho člověka být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~Vyplivne na tebe odpověď: "Tebe neznám, troubo." Zle se na tebe dívá. "Co chceš? Odpověz svižně, než zavolám někoho, kdo si s tebou rychle poradí."~ */
  IF ~~ THEN REPLY #18198 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"Mám pár otázek..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"Nic. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"Nic. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~Tak zmizni, troubo. A až tě příště napadne se tu stavit, radši jdi dál, jasný? Jinak se mí bouchači postaraj o to, abys už moc dlouho nechodil.~ */
  IF ~~ THEN REPLY #18203 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~Posmívá se a nevěřícně na tebe kouká. "Kdo jsem je *druhá* věc, kterou jsi měl vědět, než si sem přišel, ty zjizvenej a jak mrtvola vypadající troubo."~ */
  IF ~~ THEN REPLY #18205 /* ~"A ta první věc je...?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"Uklidni se. Nechci dělat potíže."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"Zmírni ten tón, jestli chceš zůstat na nohou."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"Mám pár otázek..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"Tak... zapomeň na to. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"No... omlouvám se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"Že nesnáším hosty a nenávidím cizince. Ty seš obojí." Jízlivě se ušklíbne a poklepe si prstem na spánek. "Přeber si to."~ */
  IF ~~ THEN REPLY #18212 /* ~"Uklidni se. Nechci dělat potíže."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"Zmírni ten tón, jestli chceš zůstat na nohou."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"Mám pár otázek..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"Tak sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"No... omlouvám se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"No n-e-ř-í-k-e-j! Hned je to všechno *sakra* lepší, nebo ne? Tak, zeptám se ještě jednou, než tvoje prdel vyletí na ulici - pravděpodobně po částech - co po mně *chceš?*"~ */
  IF ~~ THEN REPLY #18218 /* ~"Zmírni ten tón, jestli chceš zůstat na nohou."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"Mám pár otázek..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"Nic. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"Nic. Omlouvám se za ten vpád... sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"Hm. No, už tě mám dost." Podívá se ti přímo do očí, na tváři drobný úsměv a zařve: "Bouchači! Pojďte zabít tohohle chlápka!"~ */
  IF ~~ THEN REPLY #18223 /* ~Opětuj útok.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~Utéč.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~Chvíli mlčí, pak kývne. "Jo? Co třeba?"~ */
  IF ~~ THEN REPLY #18226 /* ~"Řekni mi něco o Sigilu."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"Hledám muže jménem Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"To je jedno. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"To je jedno. Promiň, že jsem tě vyrušil... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~Zakoulí očima, pak zvedne ruce, jako by spatřil obraz nádhery a bohatství. "Město dveří, kde ulice jsou dlážděny zlatem a..." Zaujme opět svůj vážný postoj. "...mrtvými. Nevypadáš tak nezkušeně, aby ses musel zrovna mě ptát na Sigil... takže co opravdu chceš? A žádný hry, chlape - nemám trpělivost."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"Vlastně hledám muže jménem Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"Vlastně hledám deník, který jsem ztratil."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"To je vše. Sbohem"~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"To je vše. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"O tom nic nevím." Zamračí se a tvrdě se na tebe podívá. "Měl bych?"~ */
  IF ~~ THEN REPLY #18237 /* ~"Ne. Pověz mi něco o Sigilu."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"Ne. Hledám také muže jménem Pharod."~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"Ne. Sbohem."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"Ne. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~Napětí v místnosti náhle vzroste. "No to je mi srandovní otázka. Copak bys chtěl o starým Pharodovi vědět."~ */
  IF ~~ THEN REPLY #18242 /* ~"Něco mi ukradl a já to chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"Má nějaké mé věci a já je chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"Ví něco, co potřebuju zjistit."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"Jen se s ním chci setkat."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"Je to můj přítel."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"Je to můj přítel."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"Vlastně nic. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"To tak! Hromada keců, nebo se neznám!" Přimhouří na tebe oči. "Proč?"~ */
  IF ~~ THEN REPLY #18251 /* ~"Něco mi ukradl a já to chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"Má nějaké mé věci a já je chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"Ví něco co potřebuju zjistit."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"Je to můj přítel."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"Je to můj přítel."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"Prostě zapomeň, že jsem se ptal. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"Vlastně nic. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"Opravdu? Jako třeba co?"~ */
  IF ~~ THEN REPLY #18259 /* ~"Jako třeba kdo jsem."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"To je jedno. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"To je jedno. Omlouvám se za ten vpád... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"Jo?" Ušklíbne se a pak se ošklivě zasměje. "Tak to mu můžeš ode mě doručit tenhle vzkaz..." Najednou zařve: "Bouchači! Pojďte zabít tohohle chlápka!"~ */
  IF ~~ THEN REPLY #18270 /* ~Opětuj útok~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~Prchni.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~Když chceš promluvit, cítíš v hlavě divný pocit a raději jsi potichu. Něco v očích Sharegraveho ti říká, že on a Pharod nejsou zrovna nejlepší přátelé. ~ */
  IF ~~ THEN REPLY #18273 /* ~"Něco mi ukradl a já to chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"Ukradl mi mé věci a já je chci zpět."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"Ví něco, co já potřebuji vědět"~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"Je to můj přítel"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"Zapomeň na to, že jsem se ptal. Sbohem"~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"Nic, opravdu. Omlouvám se za to obtěžování."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~Po chvíli trapného ticha řekne: "Jsi idiot, vypadni."~ */
  IF ~~ THEN REPLY #18280 /* ~"Ale já mám ještě nějaké otázky"~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"Tak? Hmm. Zajímavé." Náhle začne křičet: "Stráže! Zabte toho chlapa!"~ */
  IF ~~ THEN REPLY #18283 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~Prchni.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~Muž se na chvíli odmlčel, pak ale vypotil na tváři úsměv. "On nás všechny okrádá, ať už jsme mrtví či živí, viď??" Pochechtává se.~ */
  IF ~~ THEN REPLY #18286 /* ~"Co tím míníš?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"Možná. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"Asi. Omlouvám se za to obtěžování... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"Náš hlavní zdroj... živých... tady kolem... je už u konce. Rozumíš?"~ */
  IF ~~ THEN REPLY #18290 /* ~"Ne tak docela."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"Jsi Sběrač."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"Mé stráže a já sbíráme a shromažďujeme těla mrtvých, která pak prodáváme Spalovačům. Už mi rozumíš ?"~ */
  IF ~~ THEN REPLY #18293 /* ~"Jsi Sběrač."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"Ano. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"Udělám. Omlouvám se za to obtěžování... Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"Aj, tak tak." Dívá se na tebe jako by něco zvažoval. "Teď je najednou spousta lidí mrtvejch. Já a mý stráže jich posbíráme spousty. A pokud někdo další taky sbírá mrtvé, znamená to menší zisky do našich kapes."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"Pharod sbírá těla také?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"Tak."~ */ JOURNAL #17089 /* ~Muž na Hadrníkově náměstí mi prozradil, že Pharod kápl na něco, co vypadá jako netenčící se zásoba mrtvol. Dotyčný je poněkud rozzloben, poněvadž sběr mrtvol je shodou okolností i jeho zaměstnáním a on by rád věděl o celé věci něco víc.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"To je vše co potřebuji vědět."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"Chápu. Omlouvám se, že jsem obtěžoval... Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"Aj."~ */
  IF ~~ THEN REPLY #18302 /* ~"Tak"~ */ JOURNAL #17089 /* ~Muž na Hadrníkově náměstí mi prozradil, že Pharod kápl na něco, co vypadá jako netenčící se zásoba mrtvol. Dotyčný je poněkud rozzloben, poněvadž sběr mrtvol je shodou okolností i jeho zaměstnáním a on by rád věděl o celé věci něco víc.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"Zajímavé. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"Chápu. Omlouvám se, že jsem obtěžoval... Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"Asi je to v tom, že našel nějakej *dobrej zdroj*, protože jsem už neslyšel o žádnejch masakrech v Sigilu." Zamračí se a poklepává si na bradu. "Tak bych rád věděl, odkud se všichni ti mrtví berou."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"Už to vím, skutečně."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"Zjistím to pro tebe, pokud budeš chtít."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"Zjistím to pro tebe za malou odměnu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"... a ještě něco. Mám pár otázek..."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"Možná to sám jednou zjistíš. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"Přeju hodně úspěchů při hledání odpovědí na tvé otázky. Omlouvám se za vyrušení... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~Ušklíbne se, trochu nahněván tvou odezvou. "Stačilo. A teď vypadni nebo zavolám stráž, aby ti ukázala cestu ven."~ */
  IF ~~ THEN REPLY #18313 /* ~"Ale já mám ještě nějaké jiné otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"Oj? A jak to chceš udělat?"~ */
  IF ~~ THEN REPLY #18316 /* ~"Vše co potřebuju je zjistit, kde přesně se skrejvá. Na mně bude, abych se o zbytek postaral."~ */ JOURNAL #18449 /* ~Slíbil jsem, že pomohu chlapíkovi z Hadrníkova náměstí zjistit, kde se berou Pharodovy nekonečné zásoby mrtvol a on řekl, že mi za tyto informace zaplatí. Také mi poradil, že pokud chci najít Pharoda, musím jít nahoru na plošiny, sledovat je severozápadním směrem a tak se dostanu k bráně, vedoucí do Pharodova úkrytu.~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~Chvíli na tebe kouká a prsty si mne pozůstatek svého levého ušního lalůčku. "Dobrá... řekni cenu a dohodnem se."~ */
  IF ~~ THEN REPLY #18318 /* ~"Tři sta měďáků."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"Dvě stě měďáků."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~Potkal jsem muže na Hadrníkově náměstí, který mi slíbil vyplatit odměnu, když mu zjistím odkud a jak Pharod bere tolik mrtvol.~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"Sto měďáků."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Potkal jsem muže na Hadrníkově náměstí, který mi slíbil vyplatit odměnu, když mu zjistím odkud a jak Pharod bere tolik mrtvol.~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"Nevadí. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"Uděláme to někdy jindy. Omluvám se za vyrušení... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~Posmívá se. "Nepotřebuju to zas až tak moc vědět. Vypadni, než zavolám stráže, které ti ukážou cestu ven."~ */
  IF ~~ THEN REPLY #18324 /* ~"Počkej! Sto měďáků..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Potkal jsem muže na Hadrníkově náměstí, který mi slíbil vyplatit odměnu, když mu zjistím odkud a jak Pharod bere tolik mrtvol.~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"Ale já mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~Chvíli přemýšlí, pak přikývne. "Dobrá. Platí. Vrať se zpět a penízky změní majitele. Potřebuješ vědět, kde starej Pharod je?"~ */
  IF ~~ THEN REPLY #18328 /* ~"Ano."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"Ne."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"Platí. Potřebuješ vědět, kde starej Pharod je?"~ */
  IF ~~ THEN REPLY #18331 /* ~"Ano."~ */ JOURNAL #18451 /* ~Muž z Hadrníkova náměstí mi poradil, že pokud chci najít Pharoda, musím jít nahoru na plošiny, sledovat je na severozápadním směrem a tak se dostanu k bráně, vedoucí do Pharodova úkrytu.~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"Ne."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"Musíš nahoru na plošiny. Běž po nich severním směrem, pak se stoč na západ a přijdeš k bráně, která vede do Pharodova úkrytu. Jak se dostaneš dovnitř a jak z něj vypáčíš informace, je tvoje věc. Když se bude někdo vyptávat, neznáš mě a nikdy jsme spolu nemluvili, jasný?"~ */
  IF ~~ THEN REPLY #18334 /* ~"Kdo *jsi*?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"Dobrá. Pokud se bude někdo vyptávat, neznáš mě a nikdy jsme spolu nemluvili, jasný?"~ */
  IF ~~ THEN REPLY #18337 /* ~"Kdo *jsi*?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"U vostrýho nože, ty mně dobře neposloucháš."~ */
  IF ~~ THEN REPLY #18340 /* ~"Uh..."~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~Muž vypadá, že není nijak nadšený, že tě znovu vidí "Nechci slyšet ani slovo, pitomče. Vypadni, než zavolám stráže, které ti ukážou cestu ven. "~ */
  IF ~~ THEN REPLY #18343 /* ~"Ale já mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~Muž pokyne na nepatrně hlavou. "Udělal jsi, oč jsem tě žádal? Zjistil ji to?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"Ano. Pharodovy zásoby mrtvol pocházejí z katakomb pod Sigilem. Prodává mrtvoly zpět Spalovačům, kteří už je předtím pohřbili."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Řekl jsem tomu muži, který chtěl znát pravdu o Pharodových operacích, všechno, co potřeboval vědět, a on mi také podle toho dobře zaplatil.~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"Ano. Pharodovy zásoby mrtvol pocházejí z katakomb pod Sigilem. Prodává mrtvoly zpět Spalovačům, kteří už je předtím pohřbili."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Řekl jsem tomu muži, který chtěl znát pravdu o Pharodových operacích, všechno, co potřeboval vědět, a on mi také podle toho dobře zaplatil.~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~Lež: "Pharod má prostě štěstí na hledání mrtvých. To je to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"Ještě ne."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"Běž a zjisti to, co chci vědět... a neukazuj se dřív, než tuto práci dokončíš. Padej, nebo zavolám stráže, které ti ukážou cestu ven."~ */
  IF ~~ THEN REPLY #18351 /* ~"Ale já mám ještě nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~Oči má vytřeštěné překvapením a řve: "Jak se tam dolů dostal, do pekla! Ten bastard!!!"~ */
  IF ~~ THEN REPLY #18354 /* ~"Jeho úkryt je za komplexem jeskyní, vedoucích do malé časti města pohřbené pod Hadrníkovým náměstím. Mají tam bránu, která vede dolů do katakomb." ~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"Pokud chceš vědět jak, tak to bude za zvláštní příplatek"~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"Pokud chceš vědět jak, tak to bude za zvláštní příplatek."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"Nevěřím, že ten bastard má takové štěstí"~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"Vlastně si myslím, že ho štěstí opustilo. Je mrtev."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"Teď, když jeho tajemství je prozrazeno, jak dlouho to ještě může trvat?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"Co?!" Ztěžka se vyrovnává s touto zprávou "Dnes mám tedy štěstí, opravdu mám! Tady jsou penízky, chlape. Užij si je."~ */
  IF ~~ THEN REPLY #18361 /* ~"Díky, mám nějaké otázky..."~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"Díky. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"Eh? Co? Promiň, kámo, teď nemám na tebe čas. Možná někdy jindy. Prosím odejdi, mám ještě nějaké plány, které musím promyslet."~ */
  IF ~~ THEN REPLY #18364 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"Dobrá, tak tedy ještě polovinu navrch ze sumy, kterou jsem ti nabídl: tři sta měděnejch. Platí?"~ */
  IF ~~ THEN REPLY #18366 /* ~"Platí. Jeho úkryt je za komplexem jeskyní, vedoucích do malé časti města pohřbené pod Hadrníkovým náměstím. Mají tam bránu, která vede dolů do katakomb."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~Dopomohl jsem si k získání dalších padesáti procent od člověka, který mi zaplatil za informace o Pharodově přísunu těl. Řekl jsem mu, jak se dostat do katakomb pod Sigilem, ~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"Dvakrát tolik a plácnem si."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"Nepřichází v úvahu. Zapomeň na to."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"Dobrá, tak tedy ještě polovinu navrch ze sumy, kterou jsem ti nabídl: sto měděnejch a ještě padesát navrch. Platí?"~ */
  IF ~~ THEN REPLY #18370 /* ~"Platí. Jeho úkryt je za komplexem jeskyní, vedoucích do malé časti města pohřbené pod Hadrníkovým náměstím. Mají tam bránu, která vede dolů do katakomb."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dopomohl jsem si k získání dalších padesáti procent od člověka, který mi zaplatil za informace o Pharodově přísunu těl. Řekl jsem mu, jak se dostat do katakomb pod Sigilem, ~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"Dvakrát tolik a plácnem si."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"Nepřichází v úvahu. Zapomeň na to."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"Polovinu zaplatím, ne více. A doporučuji ti abys *velice* dobře uvažoval nad tím, co řekneš, idiote."~ */
  IF ~~ THEN REPLY #18374 /* ~"Platí. Jeho úkryt je za komplexem jeskyní, vedoucích do malé časti města pohřbené pod Hadrníkovým náměstím. Mají tam bránu, která vede dolů do katakomb."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dopomohl jsem si k získání dalších padesáti procent od člověka, který mi zaplatil za informace o Pharodově přísunu těl. Řekl jsem mu, jak se dostat do katakomb pod Sigilem, ~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"Nepřichází v úvahu. Zapomeň na to."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"Polovinu zaplatím, ne více. A doporučuji ti abys *velice* dobře uvažoval nad tím co řekneš, idiote."~ */
  IF ~~ THEN REPLY #18377 /* ~"Platí. Jeho úkryt je za komplexem jeskyní, vedoucích do malé časti města pohřbené pod Hadrníkovým náměstím. Mají tam bránu, která vede dolů do katakomb."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Dopomohl jsem si k získání dalších padesáti procent od člověka, který mi zaplatil za informace o Pharodově přísunu těl. Řekl jsem mu, jak se dostat do katakomb pod Sigilem, ~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"Nepřichází v úvahu. Zapomeň na to."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"Tak jo, mám toho právě tak dost." Začal řvát: "Stráže ! Sem a zabijte toho chlapa!"~ */
  IF ~~ THEN REPLY #18380 /* ~Postav se útoku~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~Prchni.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"Hmm. Che, che, che!" Muž se pochechtává. "Tak je to správně, tak je to dobře! Tady máš penízky, chlape. Užij si je."~ */
  IF ~~ THEN REPLY #18383 /* ~"Díky, mám nějaké otázky..."~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"Díky. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"Nevěřím ti. Odkud by všechny byly?"~ */
  IF ~~ THEN REPLY #18386 /* ~"Nevím"~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"Z jiné Sféry?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"Vypadni odsud, ty "Budižkničemu", a nevracej se. Ty a já jsme se domluvili. A teď vystřel nebo zavolám strážce, aby ti trochu naložili."~ */
  IF ~~ THEN REPLY #18389 /* ~"Ale já mám nějaké otázky..."~ */ JOURNAL #18462 /* ~Pokoušel jsem se lhát muži, který mi zaplatil za informace o Pharodových dodávkách mrtvol. Hrozně se naštval a už se mnou nemluví.~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~Pokoušel jsem se lhát muži, který mi zaplatil za informace o Pharodových dodávkách mrtvol. Hrozně se naštval a už se mnou nemluví.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~Přemýšlí a mne si prsty zbytek levého ušního lalůčku. "Může být... ale jak? A z které Sféry"~ */
  IF ~~ THEN REPLY #18392 /* ~"Nevím"~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"Z vražedných polí Šedých pustin, že by?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Lhal jsem muži, který mi zaplatil za informace o  Pharodových dodávkách mrtvol. Byl sice podezíravý, ale zaplatil... Mám pocit že mne již nebude vítat s otevřenou náručí.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"Z vražedných polí Šedých pustin, že by?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Lhal jsem muži, který mi zaplatil za informace o  Pharodových dodávkách mrtvol. Byl sice podezíravý, ale zaplatil... Mám pocit že mne již nebude vítat s otevřenou náručí.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"Hmm." Dívá se na tebe pochybovačně. "Tady máš peníze, idiote. A teď vypadni než na tebe zavolám stráže."~ */
  IF ~~ THEN REPLY #18396 /* ~"Ale já mám nějaké otázky..."~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"Hmm. Heh. Máš to. Dám ti sto měděnejch za ty nesnáze. Musíš jít nahoru na plošiny, po nich běž na sever, pak se stoč na západ a přijdeš k bráně, která vede do Pharodova úkrytu. Jak se dostaneš dovnitř a jak z něj vypáčíš informace je tvoje věc. Pokud se někdo bude vyptávat, neznáš mě a nikdy jsme spolu nemluvili, jasný?"~ */
  IF ~~ THEN REPLY #18399 /* ~"Kdo *jsi*"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"Samozřejmě. Mám ještě nějaké otázky..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"Samozřejmě. Sbohem."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~Vypadá hodně překvapeně, že tě opět vidí. "Ha! Už jsem nevěřil že tě ještě uvidím, idiote. Co po mně chceš?"~ */
  IF ~~ THEN REPLY #18403 /* ~"Mám pár otázek..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"Nic. Sbohem."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"Nic. Omlouvám se za vyrušení."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~Vypadá hodně překvapeně, že tě opět vidí. "Eh? Co? Promiň, kámo, teď na tebe zrovna nemám čas. Možná někdy jindy. Prosím odejdi, mám ještě nějaké plány, který musím promyslet."~ */
  IF ~~ THEN REPLY #18407 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"Sto mincí, hmmm... Platí?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"Ztrojnásob to a plácnem si."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"Zdvojnásob to a plácnem si."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"Platí."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"Dobrá. Dvě stovky měděnejch. V pořádku?"~ */
  IF ~~ THEN REPLY #18413 /* ~"Pharodovy zásoby mrtvol pocházejí z katakomb pod Sigilem. Prodává mrtvoly zpět 
Spalovačům, kteří je už předtím pohřbili."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Muž z Hadrníkova náměstí mi zaplatil za informace o neustávajícím přísunu mrtvol od Pharoda.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~Posmívá se. "Nepotřebuju to zas až tak moc vědět. Vypadni, než zavolám stráže, které ti ukážou cestu ven.""~ */
  IF ~~ THEN REPLY #18415 /* ~"Počkej! Sto měděnejch, teda."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"Ale mám ještě nějaké otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~Odejdi.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"Dobrá. Sto měděnejch. V pořádku?"~ */
  IF ~~ THEN REPLY #18419 /* ~"Pharodovy zásoby mrtvol pocházejí z katakomb pod Sigilem. Prodává mrtvoly zpět Spalovačům, kteří je už předtím pohřbili"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Muž z Hadrníkova náměstí mi zaplatil za informace o neustávajícím přísunu mrtvol od Pharoda.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~Vysoký, vzpřímený, bledý a zasmušilý muž vyzařuje autoritu, i přes své, poněkud podivné, vzezření. Chybí mu pořádný kus levého ucha; to, co z něj zůstalo, se uchu už moc nepodobá. Vypadá to, jako by bylo spíše ukousnuto než useknuto. Jeho úzké, přivřené a neustále těkající oči vyzařují chytrost... ale také jisté nebezpečí.~ */
  IF ~~ THEN REPLY #18421 /* ~"Ty jsi Sharegrave?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~Nechej muže být.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~Okamžitě vyplivne odpověď: "Tebe neznám, idiote." Civí na tebe. "Kdo jsi, že se ptáš po Sharegravovi, chlape?"~ */
  IF ~~ THEN REPLY #18424 /* ~"Muž jménem Syfl mě odkázal na Sharegrava, prý by mohl vědět, kde bych našel Pharoda."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"Zapomeň na to, že jsem se ptal. Sbohem"~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"Nikdo. Omlouvám se za vyrušení; sbohem."~ */ EXIT
END
