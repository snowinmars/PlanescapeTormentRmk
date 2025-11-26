// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Starší přísně vypadající žena někam cílevědomě míří. Když si všimla, že se blížíš, prohlédla si tě se znechuceným zamračením.~ */
  IF ~~ THEN REPLY #29200 /* ~"Zdravím..."~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~Žena se krátce nakloní a ledově chladným hlasem řekne: "Ano? Co to má být? A dávej pozor na svá slova, protože já jsem Diligence, Čtvrtý soudce téhle čtvrtě."~ */
  IF ~~ THEN REPLY #29202 /* ~"A ty jsi *kdo?*"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"Ptal jsem se na..."~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"Něco se ti na mně nelíbí?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"To bych si měla zajisté myslet také! Zákon o regulaci zbraní by konečně měl být schválen, lidé vašeho druhu nám nedovolují chodit v noci po ulicích normálně, musíme být také ozbrojeni a vypadat špinavě jako ty, abychom nevzbudili pozornost."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"Promineš-li, budu docela upřímný a... samozřejmě nemám nic proti, paní... ale v některých kruzích by mohl *tvůj* oděv působit velmi pohoršujícím dojmem."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"Velmi rychle posuzuješ jiné podle vzhledu, že jo?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"Takto vypadá nejnovější móda v Úlu, víš. Možná by sis to měla vyzkoušet; třeba ti to bude slušet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"Rozumím. Měl bych několik otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"Hmm. Nyní se s tebou rozloučím. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~Přísně tě moment zkoumavě prohlíží a pak přikyvuje. "Jdeš na to dobře... pane. Stejně ale nemůžeš popřít, že patříš do té sebranky, co pořád někomu ubližuje."~ */
  IF ~~ THEN REPLY #29211 /* ~"Můj vzhled je dán pouze prostředím v němž žiju, paní a také těžkým životem. Neměl bych za to být trestán."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"To nemůžu. V žádném případě, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"Ó, ale to bys měl! Je jednoduché někoho obvinit z něčeho, když sám jsi obklopen mnoha svými chybami! Podle tvého vyjadřování soudím, že jsi vysoce vzdělaný, i když se jevíš jako někdo, komu jde pouze o potulování a nesmyslné násilí. Proč se neusadíš v Sigilu a nestaneš se váženým občanem, než abys zůstal zakrváceným kočovníkem městských ulic?"~ */
  IF ~~ THEN REPLY #29213 /* ~"Ujišťuji tě, že v tomto případě nemůžu rozhodovat."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"Zvážím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"Oh? Jak to?" Její studený výraz se mění v podivný pohled.~ */
  IF ~~ THEN REPLY #29215 /* ~"Je těžké to vysvětlit..."~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~Pověz jí svůj příběh... nebo alespoň to, co o něm víš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"Nicméně, nařizuju ti, abys to tak udělal, pane."~ */
  IF ~~ THEN REPLY #29218 /* ~Pověz jí svůj příběh... nebo alespoň to, co o něm víš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"Raději ne; je to osobní záležitost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~Dovyprávíš jí svůj příběh.

Diligence vypadá šokovaně. "To... to je pomalu jako pohádka, pane."
~ */
  IF ~~ THEN REPLY #29220 /* ~"Kdyby to byl pouze příběh, paní, ale je to můj život a zůstaly mi jizvy, které to jasně dokazují -- jistě sis jich všimla, když jsme se poprvé setkali."~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"Že ano? Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"Ano, ano... nejspíš máš pravdu." Jemně se pousmála... divíš se, že se jí to vůbec podařilo. "Přeji ti mnoho štěstí, pane, ve tvém snažení. Snad ještě někdy najdeš sám sebe."~ */
  IF ~~ THEN REPLY #29222 /* ~"Děkuji. Chtěl jsem se zeptat na..."~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"Děkuji ti. Sbohem, paní Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"To mi chceš jako říct, že nejsi jenom poutník, který prochází městem a klade otázky každému, kdo mu zkříží cestu, a který se porve na život a na smrt mnohem častěji, než je zdrávo?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"Mimo to všechno, paní, abych byl upřímný... nic proti... ale některé lidi by mohl *tvůj* oděv pohoršovat."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"Eh... tedy..."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~Lež: "To není pravda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~Diligence se na tebe chladně podívala. "Lžeš mi do očí. Už s tebou nehodlám ztrácet víc času. Pokus se promluvit další slůvko nebo se ke mně jenom přiblížit a zavolám stráže. A teď se odsud kliď."~ */
  IF ~~ THEN REPLY #29227 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"Stráže!"~ */
  IF ~~ THEN REPLY #29229 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~Zkus odejít než kdokoliv přijde.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~Do tváře se jí vedral nepatrný náznak pošklebku. "Rychle se rozhoduji, protože jsem pasovaným soudcem. Už s tebou nehodlám ztrácet víc času. Pokus se promluvit další slůvko nebo se ke mně jenom přiblížit a zavolám stráže. A teď se odtud kliďte."~ */
  IF ~~ THEN REPLY #29231 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~Její oči se jí zúžily. "Nezahrávej si se mnou; nemám na to trpělivost. A teď, co ode mě chceš?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"Omluv, prosím, moji pošetilost, paní. Abych řekl pravdu, upřímně... nic proti... ale některé lidi by mohl *tvůj* oděv pohoršovat."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~"Rychle posuzuješ ostatní podle jejich vzhledu, že?"~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"Chtěl jsem se zeptat na..."~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"Hmm. Budu tě muset opustit. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~Diligence se na tebe upřeně dívá, ve tváři se jí zračí znechucení.~ */
  IF ~~ THEN REPLY #29237 /* ~"Chtěl jsem se zeptat na..."~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"Něco se ti na mně nezdá?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"Nyní tě opustím. Sbohem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~Diligence rozhořčeně odpověděla. "Nejsem nikdo, kdo by kolemjdoucím odpovídal na otázky za pár peněz. Najdi si pro své otázky někoho jiného; já mám příliš mnoho práce s vládními povinnostmi."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"Nemyslel jsem si o tobě, že ehmm... špehuješ, paní. Spíš jsi mi připadala velmi dobře informovaná a doufal jsem, že bys mi mohla pomoci."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"Můžu teda otázečku?"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"Tak jo, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"Ani jednu jedinou. A teď mě nech na pokoji! Opovaž se promluvit další slůvko nebo se ke mně jenom přiblížit a máte na krku stráže."~ */
  IF ~~ THEN REPLY #29243 /* ~"Ale..."~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"Takže ještě jednou. Nemám čas na tvé přiblblé otázky."~ */
  IF ~~ THEN REPLY #29245 /* ~"V tom případě se omlouvám, paní a děkuji za čas, který jsi mi věnovala. Sbohem."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"Dobře, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"Počkej chviličku... podle tvého vyjadřování soudím, že jsi vysoce vzdělaný, i když se jevíš jako někdo, komu jde pouze o potulování a nesmyslné násilí. Proč se neusadíš v Sigilu a nestaneš se váženým občanem, než abys zůstal zakrváceným kočovníkem městských ulic?"~ */
  IF ~~ THEN REPLY #29266 /* ~"Ujišťuji tě, že v tomto případě nemůžu rozhodnout já."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"Zvážím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"Nebuď tak zbrklý... zpomal!" Přeměřila si tě očima. "Kdo jsi?"~ */
  IF ~~ THEN REPLY #29268 /* ~"Já... nevím."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~Lež: "Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~Lež: "Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"Do toho ti nic není."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"Hmm. Tak tedy sbohem, Adahne."~ */
  IF ~~ THEN REPLY #29272 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"Bezdůvodně jsi mě oslovil na ulici, donutil mě strpět tvou přítomnost a teď máš ještě tu drzost říct mi, že to není moje starost? Já myslím, že to moje starost je! Jak se jmenuješ?"~ */
  IF ~~ THEN REPLY #29273 /* ~"Já... nevím."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~Lež: "Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~Lež: "Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"No tak. Přece si nemyslíš, že se ze toho vykroutíš tak snadno, že ne? Tvoje jméno: pověz mi ho!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"Jsem teď ve velmi zamotané situaci a proto bych tě chtěl požádat o trochu shovívavosti v této záležitosti: doopravdy neznám svoje jméno. Zapomněl jsem, kdo jsem."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"Doopravdy nevím. Ztratil jsem paměť."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~Chvíli na tebe povýšeně hleděla s nevrlým výrazem ve tváři. Potom konečně promluvila: "Tak fajn. Nech mě na pokoji a snaž se vyvarovat jakýchkoliv problémům."~ */
  IF ~~ THEN REPLY #29278 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"Tvá slova jsou pečlivě vybraná, ale postrádají smysl." Zamračila se. "Ale je skutečně pravda, že jsi zapomněl na svou minulost? Mluv, prosím, pravdivě a pečlivě vol svá slova."~ */
  IF ~~ THEN REPLY #29279 /* ~"Přísahám ti, paní, že je to pravda."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~Po chvíli ze sebe vydala podrážděný povzdech. "Podle tvého vyjadřování soudím, že jsi vysoce vzdělaný, i když se jevíš jako někdo, komu jde pouze o potulování a nesmyslné násilí. Proč se neusadíš v Sigilu a nestaneš se váženým občanem, než abys zůstal zakrváceným kočovníkem městských ulic?"~ */
  IF ~~ THEN REPLY #29280 /* ~"Ujišťuji tě, že v tomto případě nemůžu rozhodovat."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"Zvážím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~Zatřásla hlavou. "Obávám se, že jsem velice zaneprázdněná žena; má pozice Čtvrtého soudce mi nedává příliš času na tvé otázky. Jsem si jistá, že by ti dokázal pomoci i nějaký jiný občan."~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"Než odejdeš, paní, mohu tě požádat o laskavost?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"V tomto případě sbohem, paní Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~Obdarovala tě zvědavým pohledem, ale neřekla nic.~ */
  IF ~~ THEN REPLY #29284 /* ~"Zdá se, že jsem na svých toulkách urazil některé z místních občanů..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~Dokončila tvou větu za tebe: "Protože přitahuješ pozornost Harmonických, je to tak? A ty se obáváš, že tě snad špehují?"~ */
  IF ~~ THEN REPLY #29285 /* ~"Ano, paní."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~Zatřásla hlavou a podívala se na tebe jako na malé dítě. "Udělám, co bude v mých silách, ale budu si muset dát pozor, abych v budoucnu nevyvolávala takovéto rozhovory."~ */
  IF ~~ THEN REPLY #29286 /* ~"Jsem nesmírně vděčný, paní Diligence. Sbohem."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~Diligence se zamračila, jakmile jsi k ní přistoupil. "Jsi mi povědomý..." Pak se její tvář stala ještě nevrlejší, když se zvrásnila jak seschlá švestka. "Ach ano... už jsi vzpomínám."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"Paní... bojím se, že jsem ti neprokázal patřičnou úctu, když jsme se naposledy potkali. Doufám, že přijmeš moji omluvu."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"Chtěl jsem se zeptat na..."~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"Nyní se s tebou rozloučím. Sbohem."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~Diligence tě obdarovala pohledem krajního rozhořčení. "Cožpak jsem ti neříkala, aby ses ode mne držel dál? Varovala jsem tě, takže teď zavolám stráž..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"Paní Diligence... moc tě prosím, počkej. Bojím se, že jsem ti neprokázal patřičnou úctu, když jsme se naposledy potkali. Doufám, že přijmeš moji omluvu."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"Ale měl bych několik otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"V tom případě tě opustím. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~Diligence na tebe pokynula hlavou. "Ráda tě opět vidím."~ */
  IF ~~ THEN REPLY #29293 /* ~"Rád tě vidím, paní Diligence. Chtěl jsem se tě zeptat na..."~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"Rád tě vidím, paní. Mohu tě požádat o laskavost?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"Šel jsem pouze kolem. Sbohem, paní Diligence."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~Když tě tato žena spatřila, ve tváři se jí zračil úžas. "Zbláznil ses, přiblížit se ke Čtvrtému soudci téhle čtvrti s takovou reputací, jakou máš ty? Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #29296 /* ~Zaútoč na ni.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~Zkus odejít než někdo přijde.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
