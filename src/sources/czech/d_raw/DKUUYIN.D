// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~Skleslý muž se na tebe zadíval a v očích mu zasvítila jiskřička naděje, ale mluví stále stejně bez citu, jako předtím. "Dala ti mé jméno a číslo? Nabídla peníze, že jo? Nemůžu žít. Peníze neznamenají nic beze jména. Získej mi zpět mé jméno. Dala ti ho?" Jeho oči přejíždějí po tvé tváři, jsou plné očekávání.~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"Ano. Dala."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~Lži: "Ne. Ještě ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"Ne. Ještě ne."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"Ne. Ještě ne. Pořád na tom pracuju. Sbohem."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"Nabídla za ně peníze."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~Tvář se mu zacukala. "Odpusť mi," řekl, "protože jsem ti nevěřil. Vidím v tvé tváři, že máš mé jméno a číslo, ale slyším tvůj hlas, jak mi říká pravý opak. Ptám se znovu. Máš mé jméno a číslo?"~ */
  IF ~~ THEN REPLY #20115 /* ~Lži: "No, nemám."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"Ano."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"Odpovíš mi nejdřív na pár otázek?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"Třikrát se musím zeptat, než musím mlčet. To je zákon. Máš mé jméno a číslo?"~ */
  IF ~~ THEN REPLY #20119 /* ~Lži: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"Ano."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"Odpovíš mi nejdřív na pár otázek?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"Není žádná spravedlnost. Bylo mi ublíženo a nesmím o tom mluvit. Nejsem nic a tím také navždy zůstanu. Už se neuvidíme."~ */
  IF ~~ THEN REPLY #20123 /* ~"Počkej, mám tvé jméno a číslo..."~ */ JOURNAL #66390 /* ~Ku'u Yin mě odmítnul, když jsem mu nabídl zpět jeho jméno a číslo. Do devíti pekel s ním.~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"Odpovíš mi na pár otázek?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"Dobrá. jestli to tak chceš."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~Zavrtěl hlavou a odchází pryč.~ */
  IF ~~ THEN REPLY #20127 /* ~"Tak tedy sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"Můžu je dostat zpátky?~ */
  IF ~~ THEN REPLY #20129 /* ~"Co mi za ně dáš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"Ano. Tvé jméno je Ku'u Yin. Tady je tvé číslo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"Nemůžu ti dát nic, protože nic nemám. Dáš mi zpět mé jméno a číslo?"~ */
  IF ~~ THEN REPLY #20133 /* ~"Ano. Tvé jméno je Ku'u Yin. Tady je tvé číslo."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"Děkuju ti za své jméno a číslo. Ano. Ku'u Yin. Ano. Ale ne. Teď si uvědomuju, že tady už nepotřebuju číslo. Najdu si sám nové číslo, pokud ho budu potřebovat. Dám ti své staré číslo. Možná ti pomůže. Je to pláštěm zákona. Je obranou. Přijímáš ho?"~ */
  IF ~~ THEN REPLY #20136 /* ~"Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"Ne."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~Slavnostně je přijal. "Děkuji ti za mé jméno a číslo. Ano. Ku'u Yin. Ano. Máš mou vděčnost. Zapamatuju si tě." Hodil si číslo kolem krku jako šálu, a číslo se zanořilo do jeho kůže. Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #20139 /* ~"Počkej. Mám ještě pár otázek..."~ */ JOURNAL #66391 /* ~Vrátil jem Ku'u Yinovi jméno a číslo. Nic mi za ně nenabídnul. Možná jsem ho měl trochu vydírat...~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~Vrátil jem Ku'u Yinovi jméno a číslo. Nic mi za ně nenabídnul. Možná jsem ho měl trochu vydírat...~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"Ať tě zahřívá. Věř mu. Ochrání tě. Sbohem." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #20142 /* ~"Počkej. Mám ještě pár otázek..."~ */ JOURNAL #66392 /* ~Vrátil jem Ku'u Yinovi jméno a číslo. Nabídnul mi své číslo, o kterém prohlásil, že mě bude hřát a chránit.~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~Vrátil jem Ku'u Yinovi jméno a číslo. Nabídnul mi své číslo, o kterém prohlásil, že mě bude hřát a chránit.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"Co jsou zač?"~ */
  IF ~~ THEN REPLY #20145 /* ~"Řekni mi o sobě."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"Řekni mi o tomhle místě."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"Co to děláš?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"Nic. Zapomeň na to. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"Jsem Ku'u Yin. Přišel jsem sem omylem. Teď, když jsem tady, toužím po dalších znalostech. Musím znát více."~ */
  IF ~~ THEN REPLY #20150 /* ~"Mám pár dalších otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"Hodně štěstí. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"Hodlám to odhalit sám. Se svým jménem jsem znovu někdo. Mohu se učit. Udělám to tak."~ */
  IF ~~ THEN REPLY #20153 /* ~"Mám pár dalších otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"Hodně štěstí. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"Připravuji se na svět se svou starou identitou. Teď, když vím, že jsou zde skryté léčky, toužím odhalit, co budu moci. Teď jsem připraven."~ */
  IF ~~ THEN REPLY #20156 /* ~"Mám pár dalších otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"Hodně štěstí. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~Přehodil si číslo kolem krku a to se zanořilo do jeho kůže. "Tak budu tedy nosit své staré číslo. Máš mou vděčnost. Sbohem." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #20159 /* ~"Mám pár dalších otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"Hodně štěstí. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~Promluvil plochým hlasem: "Žádám tě, abys pokračoval ve vyjednávání se zlodějkou. Bez svého jména a čísla nejsem ničím."~ */
  IF ~~ THEN REPLY #20162 /* ~"Pracuju na tom. Odpovíš mi nejdřív na pár otázek?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"Co chceš vědět?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"Řekni mi o sobě."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"Řekni mi o tomhle místě."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"Řekni mi o Sigilu."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"Nic. Sbohem."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"Objevil jsi ženu s mým jménem a číslem? Řekne ti, že ode mne to jméno vyhrála, ale to tvrzení se nezakládá na pravdě. Ukradla mi ho. Žádám zpět své jméno a číslo. Zlodějka je někde zde ve vesnici."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~Lži: "Ne, ještě ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"Mám tvé jméno a číslo."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"Našel jsem ji, ale ona to nechce vrátit."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"Ještě to nemám."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~Na chvíli zbledl. "Musí. Je to moje. Ukradla mi to. Žádám tě o pomoc."~ */
  IF ~~ THEN REPLY #20177 /* ~"Dostaneš ji."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"Možná, kdybys mi nejdřív odpověděl na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"Zapomeň na to."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"Žádám o pomoc. Každá pomoc, kterou mi budeš moci poskytnout bude odměněna mou vděčností. Prosím, pomoz."~ */
  IF ~~ THEN REPLY #20181 /* ~"Můžeme začít tím, že mi odpovíš na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"Kdysi jsem žil v zemi kovových strojů a dveří, které se otevíraly slovem. Sním o čistých kovových městech a prázdných skořápkách, kterými jsou naši lidé. Měl jsem tam jméno a číslo a teď nemám ani jedno. Stejně jako u mého druhu, je to vše, co mám. Jsou vše, co jsem měl v životě svého vlastního. Byly mi ukradeny. Bez nich jsem ničím. Žádám tě o pomoc."~ */
  IF ~~ THEN REPLY #20184 /* ~"Uvidím, co s tím půjde udělat. Odpověz mi na pár otázek..."~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"Kdo má tvé jméno a číslo?"~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"Co mi můžeš dát?"~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"Uvidíme. Odpověz mi na pár otázek."~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"Uvidíme. Sbohem."~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"Zkusím to. Sbohem."~ */ JOURNAL #66389 /* ~Potkal jsem podivného muže, kterému někdo ukradl jméno a číslo. Muž zřejmě pochází ze země řádu a kovu, kde mají všechny věci své místo a číslo. Bez čísla se cítí jako nahý.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"Nic o tom nevím. Neznám toto místo. Nemám jméno. Nemám číslo. Nemám vzpomínku na toto místo. Jsem chladný. Jsem vyděšený. Je to podivné, být tak nahý. Obávám se, že zemřu."~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"Co tím myslíš?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"Mám pár dalších otázek..."~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"Hm. Zajímavé. Sbohem."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"Hm. Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"Nemám nic. Žádám tě o pomoc."~ */
  IF ~~ THEN REPLY #20197 /* ~"Uvidím, co s tím půjde udělat. Odpověz mi na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"Uvidíme. Odpověz mi na pár otázek."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"Zkusím to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"Ta, jež bývala Radine. Ukradla mi je. Nabídl jsem jí přístřešek mého jména a čísla a ona mi je ukradla. Jsou mé podle zákona a práva. Najdi ji. Je někde zde ve vesnici."~ */
  IF ~~ THEN REPLY #20202 /* ~"Uvidím, co s tím půjde udělat. Odpověz mi na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"Blbý. Odpověz mi na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"Uvidím, co s tím půjde udělat."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"To je pro tebe fakt blbý. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~Vidíš bezvýrazného muže s tváří kulatého měsíce. Dívá se na tebe bez jakéhokoli výrazu a nic neříká.~ */
  IF ~~ THEN REPLY #20207 /* ~"Zdravím. Doufal jsem, že bys mi mohl odpovědět na pár otázek..."~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~Nechej ho být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"Žádné peníze nemohou koupit jméno. Žádná suma nemůže koupit číslo. Mince je mizivá útěcha za identitu. Jistě tomu rozumíš."~ */
  IF ~~ THEN REPLY #45397 /* ~"Ano, mohu. Udělám, co budu moci. Sbohem."~ */ EXIT
END
