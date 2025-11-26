// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  !InParty("Morte")
Global("Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #39792 /* ~"Zdar šefíku. Seš v pořádku? Hraješ si tu na mrtváka nebo se snažíš zmást Spalovače? Myslel sem, že seš naprosto vytuhlej."~ [MRT001] */
  IF ~~ THEN REPLY #39793 /* ~"Co...? Kdo jsi?"~ */ DO ~SetGlobal("Morte","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39795 /* ~"Ehm... kdo jsem *JÁ?* Neměl bys začít spíš *TY*? Kdo seš ty?"~ */
  IF ~~ THEN REPLY #39796 /* ~"Já... nevím. Nemůžu si vzpomenout."~ */ GOTO 2
  IF ~~ THEN REPLY #39797 /* ~"Já se *TĚ* ptal první, lebko."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #39798 /* ~"Jó, tak pán si nemůže vzpomenout na méno? Ha. Tak příště, až budeš na flámu, tak to s tim chlastem zas tak nepřeháněj. Já jsem ňákej Morte. Taky jsem tu zavřenej."~ */
  IF ~~ THEN REPLY #39799 /* ~"Zavřenej?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #39800 /* ~"Jo a já se ptal *druhej*. Takže, jak se menuješ?"~ */
  IF ~~ THEN REPLY #39801 /* ~"Já... nevím. Nemůžu si vzpomenout."~ */ GOTO 2
  IF ~~ THEN REPLY #39802 /* ~"Ty první, lebko. Tohle je naposledy, co se ptám."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #39803 /* ~"Ouuuu... s tebou je sranda jak s oprátkou kolem krku. Tak teda jo, klaďase si zahraju já. Jmenuju se Morte. Kdo seš ty?"~ */
  IF ~~ THEN REPLY #39804 /* ~"Já... nevím. Nemůžu si vzpomenout."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39805 /* ~"Jo, přesně tak. Zatímco ty sis tady válel šunky, tak já už jsem makal jako včelka: Vodzkoušel jsem všecky dveře, jenže tahle místnost je zamčená víc než pás cudnosti."~ */
  IF ~~ THEN REPLY #39806 /* ~"Takže jsme zamčení v... kdeže? Co je tohle za místo?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #39807 /* ~"Říká se tomu Márnice... je to taková velká černá budova připomínající svou strukturou gravidního pavouka."~ */
  IF ~~ THEN REPLY #39808 /* ~"Márnice? To jako že jsem mrtvý?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39809 /* ~"Minimálně z mýho pohledu ne. Máš teda spoustu jizev a... vypadáš, jako by tě ňákej čipera pomaloval nožem. To je další důvod, proč zdrhnout z tohodle místa. Přece bys nechtěl, aby se ten umělec vrátil dokončit svou práci."~ */
  IF ~~ THEN REPLY #39810 /* ~"Jizvy? Vypadají hodně zle?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #39811 /* ~"Nooo... ty na hrudníku eště nejsou zas tak moc špatný... jenže ty na zádech..." Morte se odmlčel. "Dalo by se říct, že máš na zádech vyobrazenej katalog z tetovacího salónu, chápeš, šéfíku? Moh bych je přečíst..."~ */
  IF ~~ THEN REPLY #39812 /* ~"Tetování na zádech? A co říkají?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #39813 /* ~"Hohó! Tak se mi zdá, že tu máš napsaný pokyny..." prohodil Morte. "Tak se na to podíváme... začíná to...

"Vím, že se cítíš, jako bys vypil několik džberů bahna z řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl válet deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých."~ */
  IF ~~ THEN REPLY #39814 /* ~"Pharod...? Je tam ještě něco?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39815 /* ~"Jo, ještě pořád tu něco zbejvá..." Morte se odmlčel. "Takže... pokračuje to..."

"Hlavně ten deník neztrať, protože pak bychom zase byli v bahně Styxu. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria. Udělej, co ti říkám: PŘEČTI si deník, pak NAJDI Pharoda."~ */
  IF ~~ THEN REPLY #39816 /* ~"A já se divím, že mě bolí záda; vždyť tam mám hotový román. A k tomu deníku, co jsem měl mít u sebe... neválí se tu někde kolem?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #39817 /* ~"Ne... přivlekli tě sem svlečenýho až na kůži. Ale stejně to vypadá, že velkej díl toho deníku máš napsanej na svým těle."~ */
  IF ~~ THEN REPLY #39818 /* ~"A co ten Pharod? Znáš ho?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39819 /* ~"Nikoho takovýho neznám... na druhou stranu, já neznám zrovna moc lidí. Tak ale pořád by tu moh bejt někdo, kdo o Pharodovi vědět bude... teda nejdřív se vocaď budem muset dostat."~ */
  IF ~~ THEN REPLY #39820 /* ~"A jak se odsud dostaneme?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39821 /* ~"No, všecky dveře sou zavřený, takže by se nám šiknul klíč. Je možný, že ho bude mít jedna z těch chodících mrtvol."~ */
  IF ~~ THEN REPLY #39822 /* ~"Chodících mrtvol?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39823 /* ~"Jo, majitelé Márnice je vydržujou jako levnou pracovní sílu. Ty mrtvoly sou zamlklý jak kameny, ale taky sou neškodný a nenapadnou tě, pokud ty nezaútočíš první."~ */
  IF ~~ THEN REPLY #39824 /* ~"Nebyla by nějaká jiná možnost? Nechci je zabíjet jen tak pro klíč."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Morte_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #39825 /* ~"Takže mám jednu z těch mrtvol zabít a sebrat jí ten klíč?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39826 /* ~"Copak ty myslíš, že je to bude bolet? Sou MRTVÝ. A když to vezmeš z tý druhý stránky: zabiješ je a oni tak konečně dosáhnou odpočinku. Teda až do tý doby, než je znovu oživěj."~ */
  IF ~~ THEN REPLY #39827 /* ~"Tak dobrá... sundám jednoho z nich a seberu mu ten klíč."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #39828 /* ~"No, ale než to uděláš, tak by ses moh eště ozbrojit. Myslím, že někde v těch poličkách kolem se válí skalpel."

POZNÁMKA: Prozkoumej police v místnosti a najdi zbraň pro napadení zombie. Až nějakou najdeš, přepni se do obrazovky inventáře (tlačítko batohu vpravo dole) a ozbroj se. Přeješ-li si prozkoumat předmět, který najdeš, klikni na něj pravým tlačítkem v obrazovce inventáře.~ */
  IF ~~ THEN REPLY #39829 /* ~"Tak dobrá, podívám se po něm."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39830 /* ~"A ještě jedna věc: Tydle mrtvoly jsou sice jak zpomalenej film, jenže dostat ránu vod jedný z nich je, jako by tě políbilo beranidlo. Dyž už ti začne docházet dech, uvědom si, že ty můžeš UTÍKAT, jenže ony ne. Takže pokavaď se potřebuješ zotavit, můžeš si tak udržovat odstup."

POZNÁMKA: Pro běh buď přepni položku běh v nastavení, nebo stiskni klávesu SHIFT a levým myšítkem klikni na místo, kam chceš jít. Jsi-li v nebezpečí, nebo umíráš-li, můžeš si tak udržovat odstup od zombie a zotavit se.~ */
  IF ~~ THEN REPLY #39831 /* ~"Výborně. Dík za radu."~ */ DO ~ShowFirstTimeHelp()
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #39832 /* ~"Někde v těch policích kolem by se měl poflakovat skalpel. Bejt tebou, tak ho najdu dřív, než si pudu poklábosit s některým zombíkem."

POZNÁMKA: Prozkoumej police v místnosti a najdi zbraň pro napadení zombie. Až nějakou najdeš, přepni se do obrazovky inventáře (tlačítko batohu vpravo dole) a ozbroj se. Přeješ-li si prozkoumat předmět, který najdeš, klikni na něj pravým tlačítkem v obrazovce inventáře.~ */
  IF ~~ THEN REPLY #39833 /* ~"Tak fajn... ještě se tu podívám."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #39834 /* ~"No hurá, našels ten skalpel! Teď si to skoč vyřídit s těma mrtvolama... a nemusíš se bát, já zůstanu vzadu a budu ti poskytovat cenné taktické informace a rady."~ */
  IF ~~ THEN REPLY #39835 /* ~"Možná bys mi mohl pomoci, Morte."~ */ GOTO 20
  IF ~~ THEN REPLY #39836 /* ~"Tak dobrá."~ */ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #39837 /* ~"No vždyť já ti budu pomáhat. Nejni přece nad dobrou radu."~ */
  IF ~~ THEN REPLY #39838 /* ~"Měl jsem na mysli pomoci mi s napadením zombie."~ */ GOTO 21
  IF ~~ THEN REPLY #39839 /* ~"Tak tedy dobrá."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39840 /* ~"Cože, já? Já sem romantik a ne žádnej voják. Prostě se budu držet stranou."~ */
  IF ~~ THEN REPLY #39841 /* ~"Hele, až napadnu tu mrtvolu, tak ty budeš stát vedle mě a bojovat taky, jinak budeš další věc na řadě, do které zarazím tenhle skalpel."~ */ GOTO 22
  IF ~~ THEN REPLY #39842 /* ~"Tak tedy dobrá."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39843 /* ~"Ehmm... tak jo. Pomůžu ti."

POZNÁMKA: Pokud chceš, aby ti Morte pomohl v boji, ujisti se, že oba dva jste označeni, když napadáš soupeře. Morte se potom přidá k útoku.~ */
  IF ~~ THEN REPLY #39844 /* ~"Jsem rád, že si rozumíme."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 19.1 20.1 21.1 22.0
  SAY #39845 /* ~"Je čas představit těm mrtvolám jejich druhou smrt..."

POZNÁMKA: Možnost útoku můžeš vybrat jak z rychlého menu, tak i pomocí tlačítka "A".~ */
  IF ~~ THEN REPLY #39846 /* ~"Tak jdeme."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #39847 /* ~"No sláva, zdá se, že todle byla ta správná mrtvolka. Teď už jenom najít ten klíč. Měl by bejt někde u toho těla. Až ho najdeš, konečně vocaď vypadnem."

POZNÁMKA: Nese-li nějaká bytost předmět a je-li zabita, pak tento předmět je položen na zem. Všechny předměty se zobrazí na hromádce vedle mrtvého těla. Přejeď kursorem přes dané místo pro ujištění, že ti nic neuniklo.~ */
  IF ~~ THEN REPLY #39848 /* ~"Dobrá."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("KeyPr")
~ THEN BEGIN 25 // from:
  SAY #39849 /* ~"Hohó, to bude ten klíč. Určitě pasuje do jedněch z těch dveří."~ */
  IF ~~ THEN REPLY #39850 /* ~"Tak teda vyzkoušíme všechny postupně."~ */ EXIT
END

IF WEIGHT #0 ~  !InParty("Morte")
GlobalGT("Morte","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #39851 /* ~"Já věděl, že se vrátíš, šéfíku! Konečně ti došlo, jak mě potřebuješ, co?"~ [MRT516] */
  IF ~~ THEN REPLY #39852 /* ~"Jo... tak půjdem."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39853 /* ~"Ještě ne, Morte."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #39854 /* ~"Hmmmph. Nevim, jak dlouho tu ještě vydržím stát, takže ti dávám POSLEDNÍ šanci. Určitě nepotřebuješ můj bystrej úsudek a moudrý rady?"~ */
  IF ~~ THEN REPLY #39855 /* ~"Morte, ani jednu z těchto věcí neovládáš."~ */ GOTO 28
  IF ~~ THEN REPLY #39856 /* ~"Dobrá, rozmyslel jsem si to. Tak pojď, půjdeme."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39857 /* ~"Teď ne, Morte. Možná později."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.2
  SAY #39858 /* ~"Snažíš se ranit mý city? Copak sem něco špatnýho řek? Je to tím, že nemám ruce? Co?"~ */
  IF ~~ THEN REPLY #39859 /* ~"Dobrá, rozmyslel jsem si to. Tak pojď, půjdeme."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39860 /* ~"Nic takového. Prostě tvojí společnost momentálně nepotřebuju. Sbohem, Morte."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #39861 /* ~"No, ale já tu nehodlám čekat VĚČNĚ, takže se rači brzo vrať, než si to rozmyslím."~ */
  IF ~~ THEN REPLY #39862 /* ~"Vrátím se. Zatím sbohem, Morte."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #39863 /* ~"Co tě žere, šéfíku?"~ [MRT515] */
  IF ~~ THEN REPLY #39864 /* ~"Teď zrovna nic, Morte. Jenom se ujišťuji, že jsi pořád se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #42298 /* ~"Ehm, šéfe... voni tě neslyší, kapišto? Jsou mrtví."~ */
  IF ~~ THEN REPLY #42299 /* ~"Ale ty jsi taky mrtvý. A přesto se mnou mluvíš."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #42300 /* ~"No jo, ale *Já* sem výjimka. Smrt ňák nemůže ukončit mou chuť k životu. Ty mrtváci támhle..." Morte pohlédne směrem k nim. "Ty nemaj tolik osobnosti, aby něco takovýho dokázali."~ */
  IF ~~ THEN REPLY #42301 /* ~"Jo... chápu."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42302 /* ~"Koukni šéfe... sledovat, jak se snažíš plkat s těmahle mrtvákama, mě moc nebere. Nenecháme radši tydle záhrobní bláboly na těch pitomcích, co?"~ */
  IF ~~ THEN REPLY #42303 /* ~"V pohodě. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #42306 /* ~"Zdá se, že naše přání byly vyslyšený šéfe. Koukni... má v ruce klíč."~ */
  IF ~~ THEN EXTERN ~DZM782~ 2
END
