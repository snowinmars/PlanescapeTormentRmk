// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~Tenhle starší, dobře oblečený gentleman naprosto jasně někam míří.~ */
  IF ~~ THEN REPLY #26111 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~Nechej ho jít.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~Zastavil se a podíval se tvým směrem. Zamračil se a nadzvedl obočí, když si prohlédl tvé vzezření. Nakonec se ti podíval do očí. "Mmm?"~ */
  IF ~~ THEN REPLY #26113 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"Nějaký problém s tím, jak vypadám?"~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"No. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~Promluvil hořkým, trochu povýšeným způsobem: "Ostuda. Opravdu. Nemám čas na tvé otázky. Sbohem."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"Jenom jednu otázku, dobře?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"Jenom jednu otázku, dobře?"~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"Tak si *udělej* čas. A odpověz na mé otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~Lehce se ušklíbl. "Huh! Když musím.. No, tak sem s tou  'otázkou.' A pohni s ní!!"~ */
  IF ~~ THEN REPLY #26117 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"Co je tady zajímavého?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"Kde bych tady mohl najít práci?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"Jenom potřebuju poradit směr..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"Co víš o Ravel Puzzlewell?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"No nic, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"To jsem si mohl myslet, že jsi se ztratil. Jsi v Úřednické čtvrti, 'pane.' Kdyby sis přál vrátit se do Dolní čtvrti nebo odkud jsi to přišel, tak brána je v severozápadní části této oblasti. Sbohem."~ */
  IF ~~ THEN REPLY #26119 /* ~"Počkej, mám víc otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"Už žádné otázky. Pokud musíš někoho obtěžovat, podívej se po jiné oběti. Sbohem."~ */
  IF ~~ THEN REPLY #26121 /* ~"Stůj. Zůstaneš tady a odpovíš na mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~Odfrkl si, podíval se ti do očí a zařval "Já  *nebudu* odpovídat na žádné další otázky. Zmizni, nebo zavolám důstojníky Harmonia, kteří už vyhodí tu zjizvenou trosku, kterou nazýváš svým tělem!"~ */
  IF ~~ THEN REPLY #26123 /* ~"Pochybuju, že by to stihli včas, aby tě zachránili."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"Jestli víš, co je pro tebe dobré, nebudeš nikoho volat."~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"Omlouvám se. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"Stráže! Stráže!" Muž začíná couvat.~ */
  IF ~~ THEN REPLY #26125 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~Zkus zmizet, než někdo dorazí.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~Zakroutil očima. "Vypadám snad jako nějaký turistický průvodce, pane? Spěchám na důležitou schůzku!" Chvíli něco mumlá a pak znovu promluvil: "Jdi do Městské haly. Možná tam najdeš něco, co tě bude zajímat."~ */
  IF ~~ THEN REPLY #26134 /* ~"Ještě něco?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"Ne." Vypadá, jako by si něco promýšlel. "No... možná. Nejsem si jistý, jestli dokážeš takové místo ocenit, ale možná bys mohl navštívit jistý dům - Nevěstinec... duševních rozkoší ~ */
  IF ~~ THEN REPLY #26136 /* ~"Pověz mi o tom domě."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"Ještě bych se chtěl zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~Vypadá překvapeně. "Hledáš poctivou práci? To je dobré. Zkus lékárnu. Nebo advokáta. Každý by měl být zaměstnaný, víš, najít si nějakou práci, která člověka činí užitečného pro zbytek společnosti."~ */
  IF ~~ THEN REPLY #26141 /* ~"Měl bych otázku o jednom z míst, které jsi zmínil..."~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"Ještě bych se chtěl zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"Kam? Ven s tím, chlape!"~ */
  IF ~~ THEN REPLY #26146 /* ~"Dům advokáta."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"Lékárna."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"Obchod s uměním."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"Nevěstinec."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"Katakomby pod čtvrtí.."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"Městská hala."~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"Obchod s kuriozitami~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"Krejčí."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"No nic, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"Hledáš advokáta? Hmm. Jdi na jih od brány do Dolní čtvrti. Je to na východní straně cesty.."~ */
  IF ~~ THEN REPLY #26148 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"Sleduj cestu, která vede na východ z brány do Dolní čtvrti. Když se cesta rozdělí na severovýchod a jihovýchod, jdi na jih... najdeš to tam, na jih od cesty. Vchod je jižně a má tři okna se špinavým sklem."~ */
  IF ~~ THEN REPLY #26152 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"Sleduj cestu, která vede na východ z brány do Dolní čtvrti. Když se rozdělí na severovýchod a jihovýchod, jdi na jih... najdeš to tam, na západ od cesty. Vchod je jižně a má střechu pokrytou taškami, které drží velké kameny."~ */
  IF ~~ THEN REPLY #26156 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~"To je na východ od brány do Dolní čtvrti. Je to velká, kulatá budova se vstupem na jihu."~ */
  IF ~~ THEN REPLY #26160 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"Jsou tady dva vstupy - jeden mezi Krejčím a Halou, na východ od brány do Dolní čtvrti, a druhý na jih od té samé brány.."~ */
  IF ~~ THEN REPLY #26164 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"Hala je ta masivní budova v severovýchodní části této oblasti. Musel bys být slepý jako netopýr, aby sis jí nevšiml."~ */
  IF ~~ THEN REPLY #26168 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"Hmm. Říkali mi, že je tady žena, nějaká dovozkyně, která prodává věci z jiných sfér .. většinou z Nižších Sfér. Pokud je to to, co hledáš, její obchod je v severozápadní části této oblasti, poznáš ho podle širokých schodů.."~ */
  IF ~~ THEN REPLY #26172 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"Aha. Dík za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"Jdi na sever a východ od brány do Dolní čtvrti. Je to široká budova, se vstupem na jih.."~ */
  IF ~~ THEN REPLY #26176 /* ~"Díky. Ještě se tě chci zeptat na něco jiného..."~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"Aha. Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~Zavrtěl hlavou a mávl rukou. "Najdi si někoho jiného, koho budeš otravovat. Sbohem."~ */
  IF ~~ THEN REPLY #26181 /* ~"Stůj. Zůstaneš tady a odpovíš na mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~Muž je chvíli zticha.  "Vím toho málo. Jenom to, co jsem četl v knihách, které se o ní zmínily."~ */
  IF ~~ THEN REPLY #26183 /* ~"Co o ní bylo napsané v těch knihách?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"Aha. Ještě bych se chtěl zeptat na něco dalšího..."~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"Díky, to je všechno, co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"Pouze to, že byla stvoření konečného zla. Mnoho lidí ji považuje za mýtus, ale její existence je zdokumentovaná. Málo, ale je. O jejím osudu po pokusu zruinovat Sigil... Myslím, že byla uvězněna v jednom z bludišť Paní Bolesti."~ */
  IF ~~ THEN REPLY #26190 /* ~"Řekni mi o Paní Bolesti."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"Dá se nějak dostat do těch bludišť?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"Mám další otázku..."~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"Podívej se na sebe, chlape! Jsi... jsi.. prakticky nahý, pokrytý jizvami, pobíháš po ulicích Sigilu a obtěžuješ občany... Viděl jsem fiendy s lepším vychováním a udržovanějším zevnějškem. Nechci tě urážet, ale rád odpovídám upřímně."~ */
  IF ~~ THEN REPLY #26196 /* ~"Ptal jsem se. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"Už víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"Zase ty! Už nemám čas na další pitomé otázky! Sbohem!"~ */
  IF ~~ THEN REPLY #26201 /* ~"Počkej. Chci se zeptat..."~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"Ne. Žádné otázky. Pospíchám a nemůžu se nechat zdržovat tvou zvědavostí. Najdi si někoho jiného, koho budeš obtěžovat. Sbohem."~ */
  IF ~~ THEN REPLY #26203 /* ~"Stůj. Zůstaneš tady a odpovíš na mé otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"Tak tedy sbohem."~ */ EXIT
END
