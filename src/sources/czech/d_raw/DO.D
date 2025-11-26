// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3070 /* ~Vidíš může, stojícího v pozoru. Nehýbe ani jedním svalem. Při bližším prozkoumání máš dojem, jako by ani nedýchal - jenom stál. Má prázdné oční důlky, ve kterých je šedé světélko, které jako by tančilo. Když se díváš do očních důlků, prolétl tebou strašidelný pocit bezedné prázdnoty, jako by ses podíval na zlomek nekonečna. Hlava se k tobě pomalu natočila (všiml sis, že se pod jeho kůží nepohnul ani sval) a on promluvil jasným, zvonivým hlasem. "Vítám tě, poutníku. Snad jsi zase nezapomněl?"~ */
  IF ~~ THEN REPLY #3370 /* ~"Ty mě znáš, cizinče?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10698 /* ~"Nemám čas na tajemné bláboly. Hledám deník. Je to naléhavé. Nevíš, kde bych ho mohl najít?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10699 /* ~"Ty jsi Pharod? Hledám Pharoda, Sběrače."~ */ GOTO 14
  IF ~~ THEN REPLY #10700 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #10701 /* ~"Zapomeň na to. Mám jiné úkoly. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10702 /* ~"Znovu vítej, poutníče." O vypadá, že se nehnul z místa kde stál, když jsi s ním naposledy mluvil. "Co ode mne potřebuješ?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10703 /* ~"Pověz mi o té božské abecedě, o které ses zmínil dřív."~ */ GOTO 9
  IF ~~ THEN REPLY #10704 /* ~"Pověz mi něco o sobě."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10705 /* ~"Hledám deník. Je to naléhavé. Nevíš, kde bych ho mohl najít?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10706 /* ~"Viděl jsi nebo slyšel jsi něco o Pharodovi, Sběrači?"~ */ GOTO 14
  IF ~~ THEN REPLY #10707 /* ~"Řekni mi něco o štamgastech v této hospodě."~ */ GOTO 20
  IF ~~ THEN REPLY #10708 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #10709 /* ~Jak otevřel svá ústa, znovu tě polil ten pocit věčnosti -- uvnitř jeho úst nevidíš žádný jazyk, žádné zuby. Je to jako by tento muž byl jen skořápka obalující nekonečný prostor. "Již jsem s tebou předtím mluvil a vždycky jsi zapomněl. Tvé nekonečné pátrání po poznání sebe sama končí vždy tvou ztrátou paměti. Dostaneš se vždy blízko k pravdě a pak ucukneš. Doufejme, že máš dostatek sil, abys unesl svoji vlastní existenci."~ */
  IF ~~ THEN REPLY #10710 /* ~"Co o mně všechno víš? Jak ses tohle dozvěděl?"~ */ GOTO 3
  IF ~~ THEN REPLY #10711 /* ~"Nemám čas na tuhle bláznivost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10712 /* ~"Vím že se ty, stejně jako moucha, vylíhneš ze zbytků své staré skořápky, bzučíš nějaký čas okolo, a pak se zhroutíš a zemřeš za oknem pravdy. Potácíš se za okenní tabulí a hledáš světlo bez jakéhokoliv plánování svých činů a padneš vyčerpáním, když neuspěješ. Přistáváš na ostatních, aby ses jimi čas od času nakrmil a pak zas odlétneš, aniž bys jim věnoval pozornost. Viděl jsem tě přicházet sem, naslouchal jsem tvým slovům a viděl jsem tě odcházet pryč o nic chytřejšího. Poučíš se ze svých chyb, ty, jenž hledáš?"~ */
  IF ~~ THEN REPLY #10713 /* ~"Myslím, že se mi nelíbí tvůj tón."~ */ GOTO 4
  IF ~~ THEN REPLY #10714 /* ~"Kdo jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #10715 /* ~"Tentokrát nikoliv. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #10716 /* ~Zaútočit na něj.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 20.1
  SAY #10717 /* ~Ačkoliv se jeho tvář neusmívá, v jeho hlase je patrný humor. "Je odpovědí na všechny tvé problémy jen slepý boj? Nejsi nic víc než bodavý hmyz, nebo dosáhneš nějakého smyslu ve své ubohé existenci?"~ */
  IF ~~ THEN REPLY #10718 /* ~"Varuji tě..."~ */ GOTO 5
  IF ~~ THEN REPLY #10719 /* ~"Kdo jsi, že se mnou takto mluvíš?"~ */ GOTO 6
  IF ~~ THEN REPLY #10720 /* ~"Nepotřebuji to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10721 /* ~"Ty vyzýváš mne? Mne, který byl povolán k existenci, který zná slova, která tě zničí, spálí to, co zbude z tvé duše a zanechá tě kňučícího na podlaze. Avšak nepotřebuji plýtvat takovými tajemstvími na někom, jako jsi ty, když tě mohu oslepit pouhou svou přítomností."~ */
  IF ~~ THEN REPLY #10722 /* ~Zaútočit na něj.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #10723 /* ~"Kdo vůbec jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #10724 /* ~"Už mám dost té okázalosti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.1 3.1 4.1 5.1 11.4
  SAY #10725 /* ~"Jsem O." Z nějakého důvodu, když vyslovuje své jméno, zní to jako by říkal mnohem více než jen jediné písmeno -- jako by vyslovení jeho jména obsahovalo v sobě nevyřčené možnosti a nuance. Žádná lidská ústa by nikdy nemohla vytvořit takový zvuk.~ */
  IF ~~ THEN REPLY #10726 /* ~"Co je to za jméno?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10727 /* ~"Co jsi zač?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10728 /* ~"Rád jsem tě potkal, O. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #10729 /* ~"To je moje jméno. Je to jméno jež je součástí věčnosti. Jsem písmeno v božské abecedě. Pochopit mne znamená pochopit samotnou existenci. Jsem písmo pravých jmen poloviny všeho. Moje bytí obsahuje pravdu. Jsem matematický, organický i metafyzický."~ */
  IF ~~ THEN REPLY #10730 /* ~"Myslím, že jsi úplný blázen."~ */ GOTO 8
  IF ~~ THEN REPLY #10731 /* ~"Takže, co to znamená?"~ */ GOTO 9
  IF ~~ THEN REPLY #10732 /* ~"...správně. Odpovíš mi ještě na jiné otázky, že?"~ */ GOTO 11
  IF ~~ THEN REPLY #10733 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10734 /* ~"Pokud to je to, čemu si přeješ uvěřit. Mnoho štěstí, poutníče. Sbohem."~ */
  IF ~~ THEN REPLY #10735 /* ~"Odpověz mi ještě na jiné otázky, ano?"~ */ GOTO 10
  IF ~~ THEN REPLY #10736 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 7.1 11.0
  SAY #10737 /* ~"Božská abeceda je písmo názvů všeho co existuje, od sémě v nitrech elementálních sfér po jádro Vyššího Neznáma. Moji bratři/sestry" (jediné slovo jež se v tvé mysli rozloží do dvou)" a Já se rozkládáme přes všechno co je, bylo, nebo kdy bude. My jsme myšlenka a realita, představa i nepředstavitelné."~ */
  IF ~~ THEN REPLY #10738 /* ~"Pověz mi o Velkém Neznámu."~ */ GOTO 12
  IF ~~ THEN REPLY #10739 /* ~"Takže co tady děláš?"~ */ GOTO 16
  IF ~~ THEN REPLY #10740 /* ~"Pak to tedy znamená, že znáš všechna tajemství existence, ne?"~ */ GOTO 18
  IF ~~ THEN REPLY #10741 /* ~"Potom bys' měl být schopen odpovědět mi na nějaké otázky."~ */ GOTO 11
  IF ~~ THEN REPLY #10742 /* ~"Potřebuji nějaký čas, abych o tom mohl přemýšlet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #10743 /* ~Ignoruje tě. Jistota, že tě bude ignorovat i nadále se ti usadí na hřbetě, ačkoliv nemáš ani potuchy odkud se vzala.~ */
  IF ~~ THEN REPLY #10744 /* ~"Tedy, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.3 12.1 13.2 14.0 15.0 17.0 18.1 20.0
  SAY #10745 /* ~"Co je to, co si přeješ vědět?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10746 /* ~"Co to bylo, co jsi říkal o té božské abecedě?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10747 /* ~"Hledám deník. Je to naléhavé. Nevíš kde bych ho mohl najít?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10748 /* ~"Viděl jsi nebo slyšel jsi o Pharodovi, Sběrači?"~ */ GOTO 14
  IF ~~ THEN REPLY #10749 /* ~"Pověz mi o ostatních štamgastech v téhle putyce."~ */ GOTO 20
  IF ~~ THEN REPLY #10750 /* ~"Pověz mi o sobě."~ */ GOTO 6
  IF ~~ THEN REPLY #10751 /* ~"Když na to přijde tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #10752 /* ~"Nepochopil bys to. Žádný smrtelník by asi nemohl. Je to v moci pochopení ničeho menšího než síly všech sil a jakmile tomu kdo porozumí, posune se za hranici smrtelného chápání. Nemohu to vysvětlit jinak než tak. Možná, že to jednou pochopíš."~ */
  IF ~~ THEN REPLY #10753 /* ~"Takže, co tady děláš?"~ */ GOTO 16
  IF ~~ THEN REPLY #10754 /* ~"Potom mi tedy odpověz na jiné otázky."~ */ GOTO 11
  IF ~~ THEN REPLY #10755 /* ~"Aha. Takže, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.1 1.2 11.1
  SAY #10756 /* ~"Vím kde ho můžeš nalézt, ale není mým úkolem odhalovat takovéto informace. Buď však ujištěn, že ho najdeš, stejně tak jako muže, kterého hledáš."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10757 /* ~"Víš kde se nalézá Pharod?" ~ */ GOTO 14
  IF ~~ THEN REPLY #10758 /* ~"Co o tom víš?"~ */ GOTO 15
  IF ~~ THEN REPLY #10759 /* ~"Mé díky, předpokládám. Snad bys mi mohl odpovědět na odlišnou otázku?"~ */ GOTO 11
  IF ~~ THEN REPLY #10760 /* ~"Mé díky, předpokládám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 1.3 11.2 13.0
  SAY #10761 /* ~"Vím kde je. Mohu ti dát jen jedno jediné slovo: poblíž. Najdeš ho v Úlu, pod rouškou tajnosti."~ */
  IF ~~ THEN REPLY #10762 /* ~"Pod ní se, jak se zdá, rovněž ukrývají i všechny tvé odpovědi. Můžeš mi dát odpověď na další otázku?"~ */ GOTO 11
  IF ~~ THEN REPLY #10763 /* ~"Potom se ho raději vydám hledat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #10764 /* ~"Vím, že tě tvá cesta zavede daleko za hranice pátrání po tvém deníku, až k samotným hranicím existence. Budeš bojovat o svůj život a svoji duši... a nic víc už ti o tom neřeknu."~ */
  IF ~~ THEN REPLY #10765 /* ~"Pak mi tedy řekni o něčem jiném."~ */ GOTO 11
  IF ~~ THEN REPLY #10766 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1 12.0
  SAY #10767 /* ~"Nuže, pozoruji příliv a odliv smrtelnosti."~ */
  IF ~~ THEN REPLY #10768 /* ~"A co na něm vidíš?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #10769 /* ~"Vy smrtelníci jste jako vosy. Stavíte svá hnízda z nejtenčích větviček a když vítr rozfoukne váš dům, snažíte se ubodat vítr k smrti. Místo abyste si uvědomili své dětinské chyby, snažili se napravit škodu, kterou jste sami sobě způsobili a poučili se ze svých chyb, přinášíte zkázu  každému, kdo měl tu smůlu, že se motal kolem v okamžiku vaší bolesti a zármutku. Má rada tobě -- a všem smrtelníkům: Přestaňte se chovat jako nějaký hmyz a začněte se chovat vnímavě."~ */
  IF ~~ THEN REPLY #10770 /* ~"Budu o tom přemýšlet. Zatím bys mi mohl odpovědět na nějaké otázky."~ */ GOTO 11
  IF ~~ THEN REPLY #10771 /* ~"Vřelé díky za radu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #10772 /* ~"Znám části mnoha z nich. Bez spojení se svými bratry/sestrami jsem pouhé písmeno. Osamocení jsme symboly. Dohromady jsme jazyk a moc."~ */
  IF ~~ THEN REPLY #10773 /* ~"Takže neznáš tajemství existence?"~ */ GOTO 19
  IF ~~ THEN REPLY #10774 /* ~"Potom nevíš nic. Možná, že znáš odpovědi na některé mé otázky?"~ */ GOTO 11
  IF ~~ THEN REPLY #10775 /* ~"Úplná metafora na mnoha úrovních. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #10776 /* ~"To jsem neřekl. Písmeno je stále mocná síla, i když je osamoceno. Dovol mi, abych ti to předvedl." O začne otvírat svá ústa do stále větší šíře až maska jeho tváře praskne okolo očí, úst i nosu a odhalí tu trochu věčnosti, již jsi předtím jen tušil. Jsi v ní ztracen, jsi jí zmítán... jsi její součástí. Najednou se vrátíš zpět do svých pozemských smyslů - a uvědomíš si, že O zmizel. Přesto se tvé horizonty jaksi rozšířily. Osvícení tě, i když jen mírně, přeneslo přes okraj srázu.~ */
  IF ~~ THEN REPLY #10777 /* ~"To bylo... nepopsatelné."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 11.3
  SAY #10778 /* ~"Místní štamgasti jsou různí, leč všichni smrtelní. A jako u všech smrtelníků jsou jejich záležitosti omezené, s nepatrnou možností přerůst ve skutečnou Pravdu. Avšak mohu ti říci toto: Můžeš zde nalézt společníka blízkého svému srdci - alespoň tak blízkého, jak to tvoje srdce dovoluje."~ */
  IF ~~ THEN REPLY #10779 /* ~"Myslím, že bych se mohl urazit, ale nechám to plavat. Odpověz mi na jinou otázku, ano?"~ */ GOTO 11
  IF ~~ THEN REPLY #10780 /* ~"Myslím, že se mi nelíbí tvůj tón."~ */ GOTO 4
  IF ~~ THEN REPLY #10781 /* ~"Mé díky. Sbohem."~ */ EXIT
END
