// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~Vidíš vychrtlého zachmuřeného muže. Drsná tvář je plná vrásek a ošlehaná větrem, oči má podlité krví. Když tě uviděl, napřímil se. "Vítej u Zrádcovy Brány. Jsem hostinský Zkaženej Vrdel."~ */
  IF ~~ THEN REPLY #48097 /* ~"Co se děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"Co je to za jméno?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"Co tady prodáváš?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"Potřebuju nocleh."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"To je pro tebe dobré. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"Co je špatné? Moji dceru unesli zatracení otrokáři a teď je celá tahle díra zadlužená, a tak o ni brzo přijdu a dostane ji do pracek jeden z těch hnusnejch bohatejch zasranů z prvního kruhu." Pozorněji si tě prohlédl. "Ty seš ten chlápek, co se vyptává na devu, co? Něco ti povím. Když mi pomůžeš, tak pak píchnu i já tobě."~ */
  IF ~~ THEN REPLY #48110 /* ~"Co víš o devovi."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"Co mám udělat?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"Promluvíme si o tom později. Teď se tě ještě chci zeptat..."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"Promyslím si to. Ještě se vrátím. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~Zabíjí tě pohledem. "Vrdel mě pojmenovali po narození. A Zkaženej mi přidali po tom, co o mně někteří bývalí kámoši vyprávěli prolhaný sviňárny." Vypadá *hodně* rozzuřeně. "Co sakra vlastně chceš? Seš dobrodruh nebo co?"~ */
  IF ~~ THEN REPLY #48116 /* ~"Proč? Co se děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"Chtěl jsem se zeptat na pár věcí..."~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"Co tady prodáváš?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"Potřebuju nocleh."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"To je pro tebe dobré. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~Lstivě se usmál. "Hledáš ho, co? Můžu ti říct, že je schovanej hluboko pod vězením. A taky ti můžu říct, jak se tam dostaneš jinak než, že se dáš zavřít, nebo někoho podplatíš - což by ale stejně asi nefungovalo."~ */
  IF ~~ THEN REPLY #48127 /* ~"Co pro to musím udělat?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"Co chceš vědět?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"Co je s městem, že vypadá tak opuštěně?"~ */ JOURNAL #47843 /* ~Zkažený Vrdel, hospodský v krčmě U zrádcovy brány, mi řekl, že tvůrci města nedávno rozšiřovali vězení a našli v podzemí devu, uvězněného v jedné z jeskyní. Samozřejmě jej neosvobodili; jen mu vzali meč a využili jeho sílu k uzamčení cel s vězni tam dole.~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"Co je s městem, že vypadá tak opuštěně?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~Zkažený Vrdel, hospodský v krčmě U zrádcovy brány, mi řekl, že tvůrci města nedávno rozšiřovali vězení a našli v podzemí devu, uvězněného v jedné z jeskyní. Samozřejmě jej neosvobodili; jen mu vzali meč a využili jeho sílu k uzamčení cel s vězni tam dole.~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"Říkal jsi, že potřebuješ něco vyřešit. Co mám udělat?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"Co víš o devovi?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"Co tady prodáváš?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"Řekl bych, že nic. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"Řekl bych, že nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"Jdi támdle a promluv si s Marquezem. Dřív patřil k Harmoniu. Ví o těch otrokářích - má první část klíče, který tě dostane k devovi. Klíč má pět částí, ale není to fyzický klíč. Až dáš části dohromady, přijď mi to říct - a já ti odemknu znalosti v mý hlavě. Do tý doby je to tajemství. Musíš vyhovět vlastníkům klíče."~ */
  IF ~~ THEN REPLY #48137 /* ~"Nech mě, ať si to promyslím. Mám ještě další otázky."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Zkažený Vrdel mě požádal, ať zachráním jeho dceru od otrokářů. Řekl mi, ať si promluvím s Marquezem, důstojníkem Harmonia. Najdu ho v taverně.~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"Neudělám to."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~Zkažený Vrdel mě požádal, ať zachráním jeho dceru od otrokářů. Řekl mi, ať si promluvím s Marquezem, důstojníkem Harmonia. Najdu ho v taverně.~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"Udělám to."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"Poslouchej... ksakru! Nesnáším, když musím o něco prosit cizince, ale myslím, že ti můžu pomoct, jestli ty pomůžeš mě." Rychle pokračuje dál. "Unesli moji dceru, chystají se ji prodat, já o tohle místo přijdu, jestli tady nebude, aby mi pomohla a mám informaci, která pro tebe má velkou cenu. Ty píchneš mně, já píchnu tobě, chápeš?"~ */
  IF ~~ THEN REPLY #48141 /* ~"Co potřebuješ?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Zkažený Vrdel mě požádal, ať zachráním jeho dceru od otrokářů. Řekl mi, ať si promluvím s Marquezem, důstojníkem Harmonia. Najdu ho v taverně.~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"Zapomeň na to. Zrovna mám nějakou práci."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"Heh. Hromada problémů, jako vždycky. Za prvé - pořád hrabou hlouběji, aby bylo to blbý vězení větší - a narazili tam na devu, zavřenýho v obsidiánové bublině a svázanýho řetězama. Vzali jeho meč a používají jeho moc, aby udrželi kriminálníky v celách. Pořád jenom debatujou, co s tím nebešťanem udělaj, vyškubávaj si vlasy z hlav, jak se snažej přijít na to, kterak na tom objevu něco vydělat a jak zradit svý 'kamarády'... a nakonec je tady teď mor."~ */
  IF ~~ THEN REPLY #48144 /* ~"Mor?"~ */ JOURNAL #48160 /* ~Zkaženej Vrdel mi řekl, že je Curst ochromený morem, který se objevil chvíli poté, co Curstští představitelé otevřeli devovu celu.~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"Co víš o devovi?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"Proč je deva uvězněný?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"Mám ještě pár dalších otázek..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"Todle místo je plný klepů a blbejch poznámek. Nikdo nikomu nevěří. Nikomu nepomáhej, dokud si nebudeš jistej, že ti to nějak vrátí. Všichni nenáviděj všechny a každej se jenom dívá, jak koho zneužít nebo dostat. Takový jako ty... seš skvělej cíl pro místní lidí, protože se nevyznáš v politice. A já ti zaručuju, že tě do ní vtáhnou."~ */
  IF ~~ THEN REPLY #48162 /* ~"Mám ještě pár otázek..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"Když mi nepomůžeš, já tobě taky ne. Vypadni vocaď."~ */
  IF ~~ THEN REPLY #48166 /* ~"Ne. Co tady prodáváš?"~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"Ne. Potřebuju nocleh."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"Rozmyslel jsem si to. Pomůžu ti."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"V tom případě jdu pryč. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"Marquez ti řekne, co máš udělat. Až to dokončíš, pošle tě za další osobou, která má klíč."~ */
  IF ~~ THEN REPLY #48171 /* ~"Sbohem."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Zkažený Vrdel mě požádal, ať zachráním jeho dceru od otrokářů. Řekl mi, ať si promluvím s Marquezem, důstojníkem Harmonia. Najdu ho v taverně.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"Dostaneš to, jenom když mě zabiješ - a jestli to uděláš, nikam se v tomhle městě nedostaneš. Shniješ tady, vole. Nekecám ti. Nikdy se vocaď nedostaneš."~ */
  IF ~~ THEN REPLY #48173 /* ~Stejně ho zabij. Určitě jenom kecá.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"To je fakt. Občas to lidi dostane. Jsou pak strašně naštvaní - a přitom tak slabí, že s tím nic neudělají. Stráže uzavřeli jednotlivé části města a držej všechno pod kontrolou. Strčej tě do vězení pod sebemenší záminkou. Nevím, jak ses dostal do města, ale nedostaneš se pryč, pokud si nenajdeš portál."~ */
  IF ~~ THEN REPLY #48176 /* ~"Mám ještě pár otázek..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~Pozorně si tě prohlíží a snaží se odhadnout, jestli si z něj neděláš legraci. "Říkal jsem ti, že ho našli pohřbeného pod zemí, ne? Nemám tušení, jak se tam dostal. Přál bych si být tak mocný, abych dokázal uvěznit devu. To by byla síla... takovou se vyplatí mít."~ */
  IF ~~ THEN REPLY #48180 /* ~"Dobrá tedy. Nejdřív mi odpověz na pár otázek."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~Pokouší se skrýt úzkost, ale oči ho prozrazují: "Zjistil jsi něco o mé dceři? Bojím se o ni. Prosím, řekni Marquezovi, jestli něco víš."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"Nebudu ji hledat."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"Ještě ne. Mám nějaké otázky."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"Ještě ne. Co tady prodáváš?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"Ještě ne. Potřebuju nocleh."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"Ano. Brzy by se měla vrátit. Půjdu to říct Marquezovi. Sbohem."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"Zemřela, když jsem se ji pokoušel zachránit. Řeknu to Marquezovi."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~V očích má smutek. "Co chceš, drsňáku?"~ */
  IF ~~ THEN REPLY #48190 /* ~"Tak jak je to s tím klíčem?"~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"Co tady prodáváš?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"Potřebuju nocleh."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"Je to klíč, ale není to fyzický klíč, jestli mi rozumíš. Až budeš mít všechny části pohromadě, přijď mi to říct - a já ti odemknu znalosti z mé hlavy. Do té doby je to tajemství. Musíš vyhovět vlastníkům klíče. Je to všechno, nebo chceš ještě něco?"~ */
  IF ~~ THEN REPLY #48195 /* ~"Co tady prodáváš?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"Potřebuju nocleh."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"Ano. Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"Jak jsi na tom s klíčem? Měl bys s tím pohnout."~ */
  IF ~~ THEN REPLY #48199 /* ~"Jak je to vlastně s tím klíčem."~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"Co tady prodáváš?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"Potřebuju nocleh."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"Musíš udělat ještě jednu věc. Vidíš toho ožralého sviňáka Chek'ku Pluta? Zabij ho." Zvýšil hlas. "Hej, Chek'ko! Jde si pro tebe smrt!"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"Když jsi teď zabil toho ožralého parchanta, můžeme otevřít bránu. Jsi připravený? Zpátky cesta nevede - dveře se zamknou a budou magicky zablokované, jakmile projdeš. Takže, jdeš do toho?"~ */
  IF ~~ THEN REPLY #48205 /* ~"Jsem připravený."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"Nejdřív bych si tady rád odpočinul."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"Nejdřív bych se rád podíval, co máš na prodej."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"Ještě ne."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"Tak se zkrátka vrať a řekni mi, až se na to budeš cítit."~ */
  IF ~~ THEN REPLY #48210 /* ~"Udělám to. Sbohem."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"Jsi připravený? Zpátky cesta nevede - dveře se zamknou a budou magicky zablokované, jakmile projdeš. Takže, jdeš do toho?"~ */
  IF ~~ THEN REPLY #48212 /* ~"Jsem připravený."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"Nejdřív bych si tady rád odpočinul."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"Nejdřív bych se rád podíval, co máš na prodej."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"Ještě ne."~ */ GOTO 20
END
