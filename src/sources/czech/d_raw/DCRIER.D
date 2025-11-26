// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~Proudy slz si vyhlodaly kanálky na zaprášené tváři tohoto muže. Vypadá jako mnich, nebo nějaký svatý muž, ale špína, která pokrývá jeho tělo, ti znemožňuje prohlédnout si muže pod ní.  Něco tlumeně prozpěvuje a kýve hlavou dopředu a dozadu -- vypadá to jako nějaký rituál.~ */
  IF ~~ THEN REPLY #26007 /* ~"Zdravím.."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~Nechej svatého muže být.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~Vidíš Oplakávače z Es-Annonu. Stále ze sebe vydává vzlyky a odříkává jméno mrtvého města, slzy se mu kutálí po tvářích.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"Musím se tě zeptat. Proč oplakáváš město?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"Ještě jsem nenašel náhrobní kámen, na který bych mohl vyrýt jméno Es-Annonu."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"Dohlédl jsem na to, aby bylo jméno Es-Annonu zapamatováno. Jméno je vyryto na černém kamenném památníku před Márnicí."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~Dohlédl jsem na zapsání jména Es-Annonu na Spalovačský monument. Vrátil jsem se a řekl to Oplakávači, a potoky jeho slz vyschly. V jeho duši je teď mír a je mi vděčný za mé úsilí.~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~Nechej Oplakávače být.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~Vidíš Oplakávače z Es-Annonu. Vypadá odpočatě a v jeho očích vidíš mír, který tam nebyl, když jsi s ním mluvil poprvé. "Děkuji ti, můj příteli. Brzy se vydám na cestu a budu hledat své bratry, abych jim oznámil, že oplakávání je dokončeno."~ */
  IF ~~ THEN REPLY #26531 /* ~"Velmi dobře. Přeju ti hodně štěstí na tvé výpravě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~Oplakávač potřásl hlavou. "Je to tak, jak jsem se bál. Oplakávači z Es-Annonu jsou ti jediní, kteří mohou nést břímě. Už nemusíš dále hledat, příteli..."~ */
  IF ~~ THEN REPLY #26532 /* ~"Ne. Budu hledat náhrobní kámen dál a až na něm bude jméno Es-Annonu, vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~Muž přestal ve svém šíleném odříkávání a zírá na tebe zaslzeným pohledem. Otevřel svá vyschlá ústa, aby promluvil, ale vše, co zvládl, je slabé zakrákorání.~ */
  IF ~~ THEN REPLY #26534 /* ~"Co se děje? Proč pláčeš?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"Promiň, že obtěžuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"Já..." jeho hlas je tak chraplavý, že ti připadá, jako by byl týden bez vody. Zatímco ho sleduješ, slza pomalu stéká po jeho tváři. "Já... jsem Oplakávač z Es-Annonu."~ */
  IF ~~ THEN REPLY #26537 /* ~"Es-Annon? Kdo je to?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~Na ulicích Úlu jsem potkal 'Oplakávače z Es-Annonu'. Podle něj bylo Es-Annon město zničené před dávným časem a on (a ostatní přeživší) teď cestují po Sférách a pláčí pro město všude, kde je bude někdo poslouchat. Jejich přáním je, aby bylo jméno Es-Annon zapamatováno.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"K... *Kdo* je Es-Annon?!" Muž pohodil hlavou a skřípavě se rozesmál. Pak promluvil a jeho hlas zní krutě a poraženecky. "Es-Annon, to není člověk. To je město."~ */
  IF ~~ THEN REPLY #26542 /* ~"Proč pláčeš pro město?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"Obávám se, že jsem tě rozzlobil. Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"Oplakáváme jméno, protože Es-Annon nesmí být zapomenut. Všichni Oplakávači z Es-Annonu nesou toto břímě."~ */
  IF ~~ THEN REPLY #26545 /* ~"Truchlíte pro *město*? Proč?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"Aha, tak to tě nechám, ať můžeš pokračovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"Protože jméno je to jediné, co zbývá. Ty ulice světla, ty ohromné spirálové parky... když bylo zničeno a zůstala jenom vzpomínka, jenom několik lidí přežilo. Je to naše povinnost dohlédnout na to, že jméno Es-Annonu bude zapamatováno ve Sférách. Mnoho Oplakávačů zemřelo kvůli vzpomínce... mnoho..."~ */
  IF ~~ THEN REPLY #26549 /* ~"Pokud kvůli tomu ty a ostatní tolik riskujete, proč toho nenecháte?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"Je mi líto ztráty tvého města a jeho obyvatel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"Slzy které roním, prach, který mě pokrývá... to není nic v porovnání s tím, co mě čeká, pokud bych vzdal své svaté břímě. MUSÍME dohlédnout na to, aby bylo jméno zapamatováno. Jsme živé památníky města Es-Annon."~ */
  IF ~~ THEN REPLY #26552 /* ~"Jestli je to tak, co se stane, až zemřete všichni?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"Je mi líto ztráty tvého města a jeho obyvatel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~Z Oplakávačova oka skanula čerstvá slza. Ani jeho zaprášená tvář nemůže skrýt výraz zoufalství. "Já NEVÍM. My Oplakávači z Es-Annonu nemůžeme truchlit navždy. I teď se na naše roucha lepí prach, sliny v našich ústech vysychají, naše těla slábnou a umírají."~ */
  IF ~~ THEN REPLY #26556 /* ~"Je nějaký způsob, jak bych mohl pomoci?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"Je mi líto ztráty tvého města a jeho obyvatel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"Jsi hodný, že se ptáš..." Oplakávač potřásl hlavou. "Jedině, že by se ti podařilo znesmrtelnit jméno Es-Annonu. Jiná pomoc není."~ */
  IF ~~ THEN REPLY #26560 /* ~"Musíš to být ty, kdo oplakává jméno Es-Annonu?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"Musí být znesmrtelněno člověkem? Nestačil by náhrobní kámen?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"Musí být znesmrtelněno člověkem? Nestačil by náhrobní kámen?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"Je mi líto ztráty tvého města a jeho obyvatel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"Záleží na tom? Další muž může oplakávat jméno, ale on taky zemře." V koutku jeho oka se pomalu formuje slza a začíná stékat po tváři dolů.  "Není nic, co by se dalo udělat. Až Oplakávači z Es-Annonu zemřou, zemře i Es-Annon."~ */
  IF ~~ THEN REPLY #26565 /* ~"A možná by to tak mělo být. Jestli je město pryč, jak říkáš, mělo by být zapomenuto."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"Připadá mi, že akt zapamatování Es-Anonnu přivádí zbývající obyvatele do riskantních situací. Má to cenu?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"Co takhle náhrobní kámen?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"Je mi líto ztráty tvého města a jeho obyvatel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~Povlak špíny  zakrývající mužovu tvář praskl a on si odfrkl. "Ty nic nevíš! Neviděl si nic z krásy Es-Annonu. Nic z jeho velkoleposti! Ty by ses vzdal takové vzpomínky, takové perfektní paměti, kdybys ji vlastnil?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"Věci mají zemřít. Mají být zapomenuty. Tohle je má rada pro tebe, Oplakávači z Es-Annonu... Pokud si to město poneseš až do svého hrobu, komu tím posloužíš?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"Věci mají zemřít. Mají být zapomenuty. Tohle je má rada pro tebe, Oplakávači z Es-Annonu... Pokud si to město poneseš až do svého hrobu, komu tím posloužíš?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"Věci mají zemřít. Mají být zapomenuty. Tohle je má rada pro tebe, Oplakávači z Es-Annonu... Pokud si to město poneseš až do svého hrobu, komu tím posloužíš?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"Nenechal bych hloupě zmizet takovou vzpomínku tím, že bych vystavoval poslední pamětníky nebezpečí. Bylo by lepší, kdybys strávil zbytek svých dnů zapamatovávání Es-Annonu se svými bratry."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"Nenechal bych hloupě zmizet takovou vzpomínku tím, že bych vystavoval poslední pamětníky nebezpečí. Bylo by lepší, kdybys strávil zbytek svých dnů zapamatovávání Es-Annonu se svými bratry."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"Nenechal bych hloupě zmizet takovou vzpomínku tím, že bych vystavoval poslední pamětníky nebezpečí. Bylo by lepší, kdybys strávil zbytek svých dnů zapamatovávání Es-Annonu se svými bratry."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"A co tedy náhrobní kámen?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"Zapomeň na to. Nechám tě samotného s tvými myšlenkami. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~Oplakávač se odmlčel a ty sleduješ, jak se další slza formuje v koutku jeho oka. Po chvíli promluvil a jeho hlas rachotí jako přesýpání štěrku, tak je nasáklý pocity. "V tom co říkáš, je jistá pravda."~ */
  IF ~~ THEN REPLY #26581 /* ~"Je to těžká pravda. Je těžké poslouchat ji a ještě těžší je jí uvěřit."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~Slza v koutku jeho oka najednou zmizela - stalo se to tak rychle že si nejsi jistý, jestli tam vůbec byla. "Přesto ji přijmu. A dohlédnu na to, aby ji přijali i mí bratři."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"Dobrá. Tak tedy sbohem."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~Přesvědčil jsem Oplakávače z Es-Annonu aby vzdal své putování. Už ho není dále třeba, aby pobíhal po sférách a snažil se zachovat vzpomínku na něco, co bude stejně zapomenuto. Souhlasil a řekl, že to poví i svým bratrům.~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"Dobrá.. Tak tedy sbohem."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~Přesvědčil jsem Oplakávače z Es-Annonu aby vzdal své putování. Přesvědčil jsem ho,  že by ani on, ani ostatní oplakávači měli riskovat vzpomínky na Es-Annon cestováním po Sférách. Souhlasil a řekl, že to poví i svým bratrům.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~Oplakávač mrkl. "Náhrobní... kámen?"~ */
  IF ~~ THEN REPLY #26588 /* ~"To je kámen, který zaznamenává jméno člověka, jeho života a vychvaluje ho. Jestli takhle dokáže posloužit člověku, nedokázal by to udělat i pro město, které zemřelo?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"Na tom nezáleží, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"Kameny dokáží takové věci?"~ */
  IF ~~ THEN REPLY #26591 /* ~"Ano. Jejich výdrž je mnohem větší než ta člověka. Jestli bude jméno Es-Annonu vyryto do kamene, nebude to stačit?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"Na tom nezáleží, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~Muž se odmlčel. "Uvidí i ostatní jméno?"~ */
  IF ~~ THEN REPLY #26594 /* ~"Ano. Bude tam, kde ho budou moci všichni vidět, dlouho po tom, co ty sám zemřeš."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"Na tom nezáleží, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~Muž přikývl. "Kdyby byla taková věc možná..." Otočil se k tobě. "Kde by se dal najít takový kámen?"~ */
  IF ~~ THEN REPLY #26597 /* ~"Můžu se po nějakém podívat. Jestli takový najdu, dohlédnu na to, aby do něj bylo vyryto jméno Es-Annonu."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"Za pár měďáků ti náhrobní kámen najdu a nechám do něj vyrýt jméno Es-Annonu."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"Na tom nezáleží, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"Ty... ty... ty bys to udělal? Já..." Mužovy oči se znovu zalévají slzami. "To by uvolnilo všechny Oplakávače z Es-Annonu. Ještě nás několik zůstává... Břímě zapamatování bude konečně odhozeno... po TOLIKA letech..."~ */
  IF ~~ THEN REPLY #26601 /* ~"Udělám to. Vrátím se, až bude jméno vytesáno."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~Souhlasil jsem, že pro Oplakávače najdu náhrobní kámen, na který dám vyrýt jméno Es-Annonu.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"Ty... ty... ty bys to udělal? Já..." Mužovy oči se znovu zalévají slzami. "To by uvolnilo všechny Oplakávače z Es-Annonu. Ještě nás několik zůstává... Břímě zapamatování bude konečně odhozeno... po TOLIKA letech... A vše, co žádáš, je pár měďáků?"~ */
  IF ~~ THEN REPLY #26603 /* ~"Ano."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"Zapomeň na to, udělám to zadarmo. Vrátím se, až bude jméno vyryto."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"Máš je tedy mít." Oplakávač vytáhl ze své róby pět měďáků a podal ti je. "Tohle je vše, co mám. Doufám, že je to dost."~ */
  IF ~~ THEN REPLY #26606 /* ~"Bude to stačit. Dobře, vrátím se, až nechám jméno Es-Annonu vyrýt do kamene."~ */ JOURNAL #26608 /* ~Za několik měďáků jsem souhlasil, že najdu náhrobní kámen, do kterého pro Oplakávače vyryju jméno Es-Annon.~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"Měďáky, to je to, o co mi šlo. Žádný náhrobek pro Es-Annon nebude. Sbohem."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~Souhlasil jsem, že za pár měďáků najdu náhrobní kámen, do kterého pro Oplakávače vyryju jméno Es-Annon. Ale když mi ten blbec dal své poslední peníze, vysmál jsem se jeho hlouposti a řekl jsem mu, že takovou pitomost zařizovat nebudu. Měl by vědět, že v Úlu se nedá nikomu věřit.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~Najednou se ozvalo slabounké zašeptání a mužovy oči vyschly. Jedna ze slz, která stékala po jeho tváři jednoduše zmizela. "Es-Annonu je poslouženo. Řeknu to ostatním Oplakávačům a popíšu jim kámen, na který jsi to vyryl. Máš mou vděčnost, příteli."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"Um... stálo mě to nějaký ten měďák, to vyrytí jména do kamene. Myslíš, že bys mi to mohl nějak vrátit?"~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"To nic nebylo. Sbohem... doufám, že ty a tví bratři strávíte zbytek svých dnů v míru."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~Přikývl a sáhl do svého roucha. "Vše, co mám, je tvé." Vytáhl pět měďáků a podal ti je. "Vezmi si je a s nimi i mou vděčnost."~ */
  IF ~~ THEN REPLY #26616 /* ~"To nic nebylo... doslova. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"Rádo se stalo. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END
