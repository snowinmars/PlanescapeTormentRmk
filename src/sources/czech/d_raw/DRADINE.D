// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~Když tě žena zahlédla, zaječela. Otočila se a dala se na útěk. Tetování kolem jejího krku jako by se vlnilo.~ */
  IF ~~ THEN REPLY #20210 /* ~"Stůj a ani hnout..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~Nechej jí jít.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~Její výraz se zhroutil, jakmile tě spatřila. "Zase odmítl, že? A ty jsi přišel vzít si to, co je podle práva mé."~ */
  IF ~~ THEN REPLY #20213 /* ~"Podle práva tvého? Nemáš na to jméno a číslo žádné právo. Ukradla jsi to."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"Nepotřebuješ k životu číslo. On ano. I když ti to ublíží, musíš se ho vzdát. Bude to pro vás oba lepší."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"Dej to zpátky, nebo ti to vezmu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"TY jeho číslo k životu nepotřebuješ. Udělej si vlastní číslo, pokud potřebuješ něco, co tě zahřeje."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"Zapomeň na to. Nemá smysl se tím otravovat."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"Řekla bych, že máš pravdu. Byla jsem zlá. Nemůžu si to nechat. Tady." Sloupla si tetování z krku a podala ti ho. Otřásla se při tom. "A teď mu můžeš říct i jeho jméno. Byl a bude Ku'u Yin. A teď mě nech jít."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"Tady máš za problémy pár drobných. Kup si něco, co tě zahřeje."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"Děkuju. Mám ještě pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"Děkuju. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~Po tvé hrozbě se přikrčila. "A on mi řekl, že mě číslo ochrání před zlými muži. Vezmi si tu proklatou věc!" Strhla si tetování z krku, přibrala přitom slušný kus vlastní kůže. Hodila ti ho a dala se na útěk.~ */
  IF ~~ THEN REPLY #20223 /* ~Utíkej za ní.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~Nechej jí jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"Díky, kámo." Schovala peníze. Jakmile ji magie tetování opustila, vypadá ještě nevýrazněji. "Pro mě bude nejlepší, když odejdu... a s pomocí peněz, cos mi dal, mi snad bude líp. Snad se setkáme za nějakých příznivějších okolností pro nás oba."~ */
  IF ~~ THEN REPLY #20226 /* ~"Jo. Sbohem, Radine."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"Ne aby tě napadlo krást ještě nějaká další jména, Radine. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~Otočila se a pomalu se sune pryč. Bez číselného tetování, které jí propůjčovalo záhadnou auru, vypadá neživě. Vidíš jí naposledy.~ */
  IF ~~ THEN REPLY #20229 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~Prázdně na tebe zírá. Otřásla se, jakoby se svou apatii pokoušela setřást. Tetování kolem jejího krku se při pohybu zkroutilo. "Zase ty, eh? Říkala jsem ti, že mu to jméno a číslo zpátky nedám. Víš co - používání jeho jména a čísla mi přineslo štěstí. Zaplatím mu za to slušnou cenu a on si bude moct koupit nový, co ty na to?"~ */
  IF ~~ THEN REPLY #20231 /* ~"Kolik jsi ochotná dát?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"Nemyslím si, že tohle je řešení. Dej mi to jméno a číslo."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"Co kdybych to od tebe koupil?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"Co takhle dvacet měďáků? To by mělo stačit, aby si moh pořídit nový, ne?  Buď tak hodnej a jdi se ho zeptat, jestli s tím souhlasí."~ */
  IF ~~ THEN REPLY #20234 /* ~"Dej mi to jméno a číslo, nebo je z tebe vymlátím. A věř mi, že tohle opravdu nechceš, i kdybys byla masochistka."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"Fajn. Půjdu se ho zeptat. Nejdřív mi ale odpověz na pár otázek."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"Fajn. Půjdu se ho zeptat."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"Co kdybych to od tebe koupil?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"Možná pro tebe odpovědi mám a možná nemám."~ */
  IF ~~ THEN REPLY #20238 /* ~"Řekni mi o sobě."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"Řekni mi o tomhle místě."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"Řekni mi o tom tetování."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"Jakou cenu jsi to říkala?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"Tak na to zapomeň."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"Já? Mám teď dvě jména, ale ukážu ti jenom jedno - nechci, abys mi to nový ukrad, hehe! Můžeš  mi říkat Radine, chlapče, to druhý jméno si nechám jenom pro sebe, tak tak."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"Muž, kterému to jméno patří, ho chce zpět a stejně tak i své číslo. Bez nich brzy zemře."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"Vím, že to pro tebe bude těžké, ale... byla bys tak hodná a vrátila mu zpět jeho jméno a číslo?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"Dvě jména, eh? To musí být fakt fajn."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"To bych řek. Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"Todleto? To je identifikační číslo. Je to moje číslo, dal mi ho chlap, kterej viděl, jak je mi zima, protože mě nechrání žádné číslo. Teď ho mám a jsem šťastnější než kdy jindy."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"Ten muž to chce zpátky."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"Zajímavé. Jak to funguje?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"Pohřbená vesnice? Docela hezký místo, pokud ti nevadí smrad mrtvol, odpadky sesypaný na vysoký hromady a neustálý hemžení mizernejch krys. Je to tu ale studený, když máš jenom jméno a chybí ti číslo, který by tě zahřálo."~ */
  IF ~~ THEN REPLY #20255 /* ~"Řekni mi o svém jménu."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"Řekni mi o číslu."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~Hlas se jí roztřásl. "No, nedostane nic! Nabídnul mi je, tak jsem si je vzala. Neříkal nic o tom, že mi je jenom *pučuje* a nikdy neříkal, že je bude chtít zpátky! Nedostane je! Nedostane nic! Klidně mu to vyřiď! Jestli fakt potřebuje jméno, řekni mu, ať si klidně nechá moje. Jméno 'Radine' by mělo být dost dobrý pro každýho!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"Pro tebe dost dobré nebylo... proč by mělo stačit jemu?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"Řeknu mu to. Dej mi ještě pár odpovědí..."~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"Řeknu mu to. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"Co kdybych to od tebe koupil?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"Jo, to je."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"Muž, kterému to jméno patřilo, ho chce zpět i se svým číslem. Bez nich zemře."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"Vím, že to pro tebe bude těžké, ale... byla bys tak hodná a vrátila mu zpět jeho jméno a číslo?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"Můžeš mi odpovědět ještě na pár věcí?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"Bezpečnost v číslech a s bezpečím přichází teplo a teplo znamená pohodlí. Čísla to pro tebe všechno můžou udělat, drahouši, dokud respektuješ jejich moc."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"Muž, který ti to číslo dal, ho chce zpět..."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"Aha. Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"Je obrovskej rozdíl, když se jménem vyrosteš, nebo když dostaneš jméno někoho jinýho, drahouši. Nová nálada za starým jménem může všecinko změnit. Vidíš, co sem udělala s tímdle?"~ */
  IF ~~ THEN REPLY #20273 /* ~"Promluvím si s ním o tom. Nejdřív mi ale odpověz na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"Dobrá tedy. Promluvím si s ním o tom. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~Ženin výraz je opět vzdálený, ale její mysl tentokrát neodcestovala tak daleko - tentokrát jsi ji nevyděsil. "Zase ty?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"Ty jsi Radine? Muž, kterému jsi vzala jméno, ho chce zpátky."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"Mám pro tebe ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"Ne, promiň. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~Vidíš ženu s kosým obličejem v potrhaných šatech. V očích má vzdálený výraz, ale máš pocit, jako by z ní vyzařovala podivná vitalita, jako by jí někdo daroval nový život. Kolem krku má podivné tetování. Když jsi na ní promluvil, lekla se. "Eh? Co chceš?"~ */
  IF ~~ THEN REPLY #20280 /* ~"Jenom jsem se chtěl na něco zeptat..."~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~Podívá se na tebe, jako bys byl úplný blázen. "Copak jsi se úplně zbláznil ? Jasně, že neprodám mé jméno."~ */
  IF ~~ THEN REPLY #45391 /* ~"Proč ne?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"Protože to je moje jméno, troubo! Ty sám neprodáváš svoje!"~ */
  IF ~~ THEN REPLY #45392 /* ~"Jen mi dej to jméno a číslo, jinak ho z tebe budu muset vypárat. Důvěřuj mi, že to určitě nechceš!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"OK. Půjdu se k němu podívat. Odpověz mi nejdřív na pár otázek."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"Fine. Půjdu se k němu podívat."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
