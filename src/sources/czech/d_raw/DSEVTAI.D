// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~Tvář téhle ženy vypadá zničeně. Má jí celou pokrytou jizvami - vypadají jako stopy po kousnutí a po škrábancích. V rukou houpá hromádku rozervaných hadrů a prázdně zírá na jména na stěně monumentu.~ */
  IF ~~ THEN REPLY #25996 /* ~"Zdravím.."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~Nechej ženu na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"Sssst! Vrať se!" Ženiny rty vyšpulily a odhalily řadu černých špičáků. "Co chceš od Sev'Tai?!"~ */
  IF ~~ THEN REPLY #26494 /* ~"O co jde?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"Promiň, že tě vyrušuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"O co jde?! Tihle  Chs... cha-aus... CHAOTICI zničili můj vozík, zaútočili na mě a zabili tři mé sestry, které se je snažily zastavit. Už nejsou sestry! Jenom jako jména na památníku!"~ */
  IF ~~ THEN REPLY #26497 /* ~"Chaotici?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"Chaotici, společenství říkají si. Ale co JSOU ve skutečnosti? Banda zkaženců, která divoce pobíhá po Úlu a dělá si co chce! My jim nikdy nic neudělali! A oni sem přiběhnou jako divocí psi a roztrhají na kusy všechno, na co dosáhnou."~ */
  IF ~~ THEN REPLY #26500 /* ~"Kdo jsou ti Chaotici, kteří na tebe zaútočili?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"Je to gang z Úlu, banda zkažených parchantů, kteří si říkají... ' Hladoví psi' nebo takovým nějakým pitomým jménem!"~ */
  IF ~~ THEN REPLY #26503 /* ~"Víš, nevadilo by mi zapsat si jména pár můžu do knihy smrti. Za nějaké drobné, pochopitelně. Jestli máš měďáky, můžeme se domluvit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"Jejich akce byla nespravedlivá. Jestli si to budeš přát, můžu dohlídnout na napravení události. Tři smrti způsobili, tři smrti tito 'Hladoví psi' utrpí."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~"Dám si na ně pozor... je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"Měděná náušnice do tvý kapsy, když zapíšeš tři z těch vraždících bestií do své knihy smrti, dobře?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"Dobrá tedy, ale úkol už je splněn. Už jsem zabil tři z nich v Úlu, není to moc dlouho. Možná to byli ti, kteří zavraždili tvé sestry."~ */ JOURNAL #26101 /* ~U Spalovačského monumentu, venku před Márnicí, jsem potkal divnou ženu jménem Sev'Tai. Oplakávala smrt svých tří sester, na které zaútočila skupina 'Chaotiků' zvaných Hladoví psi. Požádala mě, ať zabiju tři z nich a já souhlasil... Sranda je, že já už jsem se s nimi utkal předtím, než jsem s ní mluvil. Takže jsem vlastně její žádost splnil ještě dřív, než mě o službu požádala.~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"Dohlédnu na to, aby byli zapsáni do knihy smrti. Můžeš mi říct, kde bych je mohl najít?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"Nemyslím, že bych ti mohl pomoct, Sev'Tai. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"Síly nejsou dnes slepé ve spravedlnosti!" Žena sáhla do svých vlasů, připomínajících pavučinu, a vytáhla měděnou náušnici. "Tady máš. Mělo by ti to dost hodit. Má cenu aspoň třiceti tří měďáků, na to si vsaď. Patřila mé sestře... ale ta už ji potřebovat nebude.."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"Dobrá tedy. Nashledanou, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"Dobrá tedy. Nashledanou, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~Vrátil jsem se k Sev'Tai a prohlásil, že jsem Hladové psy povraždil. Ta holka chtěla tak zoufale věřit tomu, že jsou mrtví, že mi to uvěřila. Hloupá ženská... ale aspoň jsem si lehce vydělal pár měďáků.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"Vyjdi jižní branou, po spirále... pak obejdi blok, dokud nedorazíš na místo, kde lidé pobíhají v kruzích a vyjí na Velké nebe. To jsou Hladoví psi."~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"Jo, už jsem tam byl. To je ten blok plný děvek a ožralů na jih odsud. Zajdu tam, za chvíli se vrátím."~ */ JOURNAL #26099 /* ~U Spalovačského monumentu, venku před Márnicí, jsem potkal divnou ženu, jménem Sev'Tai. Oplakávala smrt svých tří sester, na které zaútočila skupina 'Chaotiků' zvaných Hladoví psi. Požádala mě, ať zabiju tři z nich a já souhlasil. Řekla mi, že je najdu v části Úlu jižně od památníku, tam kde se zdržují všichni ochlastové a děvky.~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"Jdu se na ně podívat."~ */ JOURNAL #26098 /* ~U Spalovačského monumentu venku před Márnicí, jsem potkal divnou ženu, jménem Sev'Tai. Oplakávala smrt svých tří sester, na které zaútočila skupina 'Chaotiků' zvaných Hladoví psi. Požádala mě, ať zabiju tři z nich a já souhlasil. Řekla mi, že je najdu v části Úlu jižně od památníku, až za bránou.~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"Zase ty..." Žena se otočila k tobě, její rty se vyšpulily, když zavrčela. "Máš zprávy pro Sev'Tai?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"Našel jsem Hladové psy a zapsal jsem tři z nich do Knihy mrtvých."~ */ JOURNAL #26520 /* ~Vrátil jsem se k Sev'Tai po tom, co jsem zabil tři z Hladových psů. Sev'Tai mi za to dala měděnou náušnici a poděkovala mi za pomstění svých sester.~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~Lži: "Našel jsem Hladové psy a zapsal jsem tři z nich do Knihy mrtvých."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"Žádné dobré zprávy. Ještě pořád hledám ty Chaotiky."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~Zubatá žena ti kývla na pozdrav. "Sev'Tai a její sestry ti děkují za tvou spravedlnost."~ */
  IF ~~ THEN REPLY #26522 /* ~"Dobře, Sev'Tai. Sbohem."~ */ EXIT
END
