// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~Vidíš muže středních let v zaprášených šatech, nevypadá to, že je na tom dobře se zdravím. Má světle žlutou kůži, na jeho pažích vidíš spoustu vřídků.~ */
  IF ~~ THEN REPLY #36265 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~Otočil se a přeletěl tě pohledem prázdných očí. Po chvíli oči podezřívavě zamhouřil. "Co chceš?" Jeho hlas je chraptivý.~ */
  IF ~~ THEN REPLY #36267 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~Věnuje se ti. "Proč mě otravuješ? Vypadám snad jako průvodce?"~ */
  IF ~~ THEN REPLY #36269 /* ~"Jsi na dosah."~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~"Vypadáš na znalou osobu, od které se můžu něco naučit."~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~"Co je průvodce?"~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~Podíval se na tebe a odfrkl si. "To mám ale štěstí... a teď zmiz. Na todle nemám čas." Odvrátil se...~ */
  IF ~~ THEN REPLY #36273 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~Povzdechl si. "Co chceš vědět?"~ */
  IF ~~ THEN REPLY #36274 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~"Cítíš se dobře?"~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~"Je tady v okolí něco zajímavého?"~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~"Měl jsem lebku a někdo mi ji ukradnul. Nevíš, kdo by to mohl udělat?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~"Chci být bojovník. Můžeš mě to naučit?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~"Chci být lepší bojovník. Můžeš mi pomoct s vylepšením mých dovedností?"~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~"Díky, ale musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~"Nic, co by nevyléčilo pár let smrti." Zakašlal a zvedl pohled. "Vzduch ve Čtvrti se v poslední době zhoršuje. Řek bych, že to přejde, až se Velká slévárna zklidní... nebo bude vítr foukat skrz Jehlan."~ */
  IF ~~ THEN REPLY #36281 /* ~"Co je tady se vzduchem?"~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~"Pověz mi o slévárně."~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~"Co to bylo s tím větrem?"~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~"Většinou kvůlivá portálům." Na chvíli se rozkašlal.~ */
  IF ~~ THEN REPLY #36286 /* ~"Co tím myslíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~"Spousta dveří do Nižších sfér sem pouští špatnej vzduch a výpary z bůhvíkterý díry. Proto se tomu tady říká Dolní Čtvrť." Směje se. "Procházka tudyma je jako dejchat jídlo. Sůl, kouř, dýmkový koření... a všechny ty žlutý závany kouře a kyselejch plynů, který tadle čtvrť vyplivuje do vzduchu." Usmál se na tebe, chybí mu spousta zubů. "Hezký, ne?"~ */
  IF ~~ THEN REPLY #36289 /* ~"Uh, ano... zmínil ses o slévárně."~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~"Co jsi to říkal o větru?"~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~"Centrum čtvrti. Dívej se po skladech. Boží lidi tam dělaj spoustu věcí ze železa, nic zvláštního, ale dělaj. A taky přidávaj špatnej vzduch."~ */
  IF ~~ THEN REPLY #36293 /* ~"Boží lidé?"~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~"Co je tady se vzduchem?"~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~"Dříve jsi říkal něco o větru..."~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~" Věřící. Maj bejvák ve Velký slévárně, bouchaj, zpívaj a odříkávaj ty svý nesmysly, jak budou příště Mocnosti, v některým z příštích životů." Zakoulel očima, pak si odplivl. "Všechno, co dělají, je, že trpěj, otročej a pracujou. Dřu dvakrát tolik co oni a určitě ze mě nebude nějaká Mocnost, rozumíš mi, ne?" Dutě se zasmál.~ */
  IF ~~ THEN REPLY #36298 /* ~"Co je tady se vzduchem?"~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~"Dříve jsi říkal něco o větru..."~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~"Když fouká vod Sigilskýho Jehlanu, jde smog pryč..." Zakašlal. "...na chvilku."~ */
  IF ~~ THEN REPLY #36302 /* ~"Co je tady se vzduchem?"~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~"Pověz mi o té slévárně."~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~"Eh..." Dívá se na tebe, jakoby ses zbláznil. "Seš blázen? Řemeslníci, sklady, všichni tam maj flek." Zašilhal na tebe, oči má dost kalné. "Hledáš něco určitýho?"~ */
  IF ~~ THEN REPLY #36306 /* ~"Co se tady dá dělat?"~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~Chvíli si tě prohlíží, pak se na tebe vědoucně zadívá. "Možná si chceš nechat překovat meč, he?" Rozesmál se, ale rychle přešel ze smíchu do kašle. "Žádný blízký místo, měl bys to zkusit v jinejch Čtvrtích. Pokud teda chceš něco takovýho."~ */
  IF ~~ THEN REPLY #36309 /* ~"Promiň?"~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~"Hodily by se mi nějaké peníze."~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~"Rád bych si něco koupil."~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~"Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~Znovu se zasmál, což ho donutilo ještě k silnějšímu kašli. "Sorry, kámo. Nevšímej si toho. Hledáš něco určitýho?"~ */
  IF ~~ THEN REPLY #36314 /* ~"Hodily by se mi nějaké peníze."~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~"Rád bych si něco koupil."~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~"Mám ještě další otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~"Pokud hledáš práci, tak máš smůlu. Je toho dost málo pro ty, co tu žijou..."~ */
  IF ~~ THEN REPLY #36318 /* ~"Rád bych si něco koupil."~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~"Pokud si chceš něco málo koupit nebo prodat, tak bys měl zajít na Trh pod votevřeným nebem." Zase začal kašlat.~ */
  IF ~~ THEN REPLY #36321 /* ~"Co mi můžeš říct o trhu?"~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~Ošklivě se usmál. "Můžeš tam kupovat a prodávat, vole. Je to trh - co bys vo tom ještě chtěl slyšet?"~ */
  IF ~~ THEN REPLY #36325 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~"Eh..." Chvíli se soustřeďuje. "No, je tady ta věž. V poslední době se o ní dost kecá."~ */
  IF ~~ THEN REPLY #36327 /* ~"Pověz mi o věži."~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~"Nenapadá tě nic jiného?"~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~"Ha!" Rozesmál se, ale hned přešel do kašle. "Jedno ze zatracenějších tajemství Čtvrti... slyšel jsem, že se prostě jednou před mnoha, mnoha lety objevila v Sigilu, nikdo neví odkud, jak se sem dostala, nebo jak do tý zatracený věci proniknout. Zabírá místo a podle toho jak vypadá... všechny ty spáleniny od kyseliny a škrábance po zbraních... nejspíš zažila pár set válek."~ */
  IF ~~ THEN REPLY #36331 /* ~"Nenapadá tě nic jiného?"~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~Chvíli přemýšlí, pak pokrčil rameny. "Nic zajímavého mě nenapadá."~ */
  IF ~~ THEN REPLY #36334 /* ~"Mám pro tebe ještě nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~Vypadá nervózně a jezdí zrakem po okolí. "Já... slyšel sem o něm. Nezaplýtej se s nim, to ti radim. Má flek na místě, kterýmu se říká nějak Kosti Noci nebo podobně."~ */
  IF ~~ THEN REPLY #36336 /* ~"Kde můžu najít to místo?~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~Zamračil se. "No, todle je dost nebezpečný... kdybych ti něco řek, což ti neřeknu, tak bych ti řek, ať si dáš bacha na poničenej barák tady ve Čtvrti. Možná bys tam na něco narazil, hm?" Upřeně se na tebe dívá. "Ale neslyšels to ode mě."~ */
  IF ~~ THEN REPLY #36337 /* ~"Děkuju ti. Mám ještě nějaké další otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~Vypadá znepokojeně. "Chybí ti lebka, eh? No, ode mne to neslyšels, ale sou tady lidi, keří si vydělávaj..." Přejel pohledem okolí. "... sbíráním hlav mrtvejch. Pracujou pro bouchače ménem Lothar, Říkaj mu *Pán Kostí*."~ */
  IF ~~ THEN REPLY #36339 /* ~"Kde můžu najít toho Lothara?"~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~Zamračil se na tebe. "Najdi si někoho jinýho, komu budeš dávat hromadu blbejch otázek..." Zírá na tebe.~ */
  IF ~~ THEN REPLY #36341 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~Vidíš muže středních let v zaprášených šatech. "Zase zpátky, huh?" Zamračil se na tebe. "Co zas?"~ */
  IF ~~ THEN REPLY #36343 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~"Chci být bojovník. Můžeš mě to naučit?"~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~"Chci být lepší bojovník. Můžeš mi pomoct s vylepšením mých dovedností?"~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~Lehce se ti uklonil. "Jmenuju se Korur. V lepších dobách jsem bejval docela dobrej válečník..." Odmlčel se a povzdechl si. "Ty časy sou dávno pryč, ale eště si pamatuju pár triků."~ */
  IF ~~ THEN REPLY #36345 /* ~"Můžeš mě učit cestu bojovníka?"~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~"No, proč ne. Chceš se zbavit svýho momentálního povolání?"~ */
  IF ~~ THEN REPLY #36347 /* ~"Ano, jsem si jistý."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~"Ne, nech mě, ať si to promyslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~"No... V čem přesně chceš pocvičit?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~"Můžeš mi říct, jestli už jsem připravený na další trénink?"~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~"Můžeš mi říct, jestli už jsem připravený na další trénink?"~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~"Teď zrovna ne. Přijdu později."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~"Víš všechno, co tě prozatím můžu naučit... přijď později, až získáš nějaké další zkušenost."~ */
  IF ~~ THEN REPLY #52340 /* ~"Dobrá, děkuju ti."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~"Myslím, že bych tě mohl ještě něco naučit."~ */
  IF ~~ THEN REPLY #52342 /* ~"Jsem připravený, co mě můžeš naučit?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~"Co se chceš naučit?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~"Nauč mě, jak bojovat s pěstmi."~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~"Nauč mě, jak používat dýky."~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~"Nauč mě, jak používat palice."~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~"Nauč mě, jak používat sekery."~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~"Nauč mě, jak používat kladiva."~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~"Dneska se na trénink necítím. Přijdu později."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~"Přesáhl si mý schopnosti. Seš nejlepší bojovník, co sem kdy viděl.. možná dokonce jeden z nejlepších, co choděj po Sférách."~ */
  IF ~~ THEN REPLY #52351 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~"Pěsti, eh? No... můžu tě to naučit, esli chceš."~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~"Dýky, eh? No... můžu tě to naučit, esli chceš."~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~"Palice, eh? No... můžu tě to naučit, esli chceš."~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~"Sekery, eh? No... můžu tě to naučit, esli chceš."~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~"Kladiva, eh? No... můžu tě to naučit, esli chceš."~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~"Ano, rád bych se naučil ovládat tuhle zbraň."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~"Ne... s jakými dalšími zbraněmi mě můžeš cvičit?"~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~"Ne, nemyslím si, že chci dneska trénovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~"No, tak jdeme na to... připravenej?"~ */
  IF ~~ THEN REPLY #52378 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~"Heh... no, a je to. Řekl bych. Co teď?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~"Děkuju ti. Rád bych se naučil ovládat i jiné zbraně, jestli mě budeš učit."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~"Děkuju ti. Rád bych se naučil ovládat i jiné zbraně, jestli mě budeš učit."~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~"Děkuju ti. To je vše, co chci pro dnešek vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~"No... teď už tě nemůžu nic víc naučit. Ne, pokud se nerozhodneš zasvětit život cestě bojovníka. Musíš se *specializovat* v bojování, jestli chceš být ještě lepší. Nemáš oddanost k bitkařskýmu řemeslu. Jedině, když změníš svý tělo na zbraň, tě budu moct naučit víc."~ */
  IF ~~ THEN REPLY #52384 /* ~"Dobrá. Jaké další zbraně mě můžeš naučit ovládat?"~ */ JOURNAL #68288 /* ~Bylo mi řečeno, že více se o zbraních už nemohu naučit, pokud se nebudu specializovat na cestu bojovníka. Zaměření na bojová umění, které bych nikdy neopouštěl kvůli zlodějně nebo magii by mi mělo dát specializaci, o které mluví mí cvičitelé.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~"Děkuju ti. Sbohem."~ */ JOURNAL #68288 /* ~Bylo mi řečeno, že více se o zbraních už nemohu naučit, pokud se nebudu specializovat na cestu bojovníka. Zaměření na bojová umění, které bych nikdy neopouštěl kvůli zlodějně nebo magii by mi mělo dát specializaci, o které mluví mí cvičitelé.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~Překvapeně se na tebe podíval. "Chceš se naučit víc? Příteli, o tý zbrani už tě víc poučit nedokážu. Nikdo ve sférách to nedokáže. Seš už moc dobrej."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~"Děkuju ti. Rád bych se naučil něco i ostatních zbraních, jestli mě budeš učit."~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~"Děkuju ti. Rád bych se naučil něco i ostatních zbraních, jestli mě budeš učit."~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~"Děkuju ti. To je pro dnešek vše."~ */ EXIT
END
