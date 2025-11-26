// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~Vidíš šupinatého fienda, který je velice podobný tomu, který stojí vedle něj. Kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tenhle má pod levým okem malou jizvu. Všiml si Annah a Fall-From-Grace, stojících vedle tebe, a zasyčel: "Pošli ten šmejd z Abyssu pryč a pak si promluvíme. Do tý doby neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #12396 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~Vidíš šupinatého fienda, který je velice podobný tomu, který stojí vedle něj. Kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tenhle má pod levým okem malou jizvu. Všiml si Annah a Fall-From-Grace, stojících vedle tebe, a zasyčel: "Pošli tu fiendskou děvku pryč a pak si promluvíme. Do tý doby neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #12397 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~Vidíš šupinatého fienda, který je velice podobný tomu vedle něj - kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tenhle má pod okem malou jizvu. Uviděl Fall-from-Grace stojící vedle sebe a zasyčel: "Odvěď tu havěť z Abyssu pryč a promluvíme si. Jinak neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #12399 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~Vidíš šupinatého fienda, který je velice podobný tomu vedle něj - kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tenhle má pod levým okem malou jizvu. "Zdravím tě, starý příteli. Opravdu tě zase rád vidím."~ */
  IF ~~ THEN REPLY #12401 /* ~"Zase?"~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~Abishai se zkroutil nechutí. "Odveď si ty chaotické krysy pryč," ukázal na Fall-from-Grace a Annah, "od nás, a my si s tebou promluvíme. Dokud tady budou, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12403 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~Abishai se zkroutil nechutí. "Odveď si tu chaotickou krysu pryč," ukázal na Annah, "od nás, a my si s tebou promluvíme. Dokud tady bude, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12405 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~Abishai se zkroutil nechutí. "Odveď si tu chaotickou krysu pryč," ukázal na Fall-From-Grace, "od nás, a my si s tebou promluvíme. Dokud tady bude, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12407 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"Marnotratník se vrací, eh?" Fiend na tebe s úsměvem zasyčel, z koutku úst mu uniklo trochu jedovatého plynu. "Vrátily se k tobě tvé vzpomínky, starý příteli?"~ */
  IF ~~ THEN REPLY #12409 /* ~"Co tím myslíš?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"Měl bych pár otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"Tak tak, Aethelgrine, přesně tak. Ale jeho oči nezáří tak jako kdysi. Co myslíš, co ho přivedlo zpět k nám? Co tě PŘIVÁDÍ zpět k nám, příteli?"~ */
  IF ~~ THEN REPLY #12411 /* ~"Kdo jsi?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"Co to děláš?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"Co je tohle za místo?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"Řekni mi o fiendech."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"Znáš Sběrače jménem Pharod?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"Hledám deník."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"Ach, Aethelgrine, čas ukradl vzpomínky našeho přítele! Ty si nás vážně nepamatuješ, viď? Oh, cítím se dotčen."~ */
  IF ~~ THEN REPLY #12419 /* ~"Ale..."~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"Tak myslím drahý příteli, že čas, náš starý nepřítel, na tobě provedl zlomyslný skutek. Ukradl tvé vzpomínky. Pokud si nás nepamatuješ, tak jedině proto, že ses stal obětí jedné ze slabin smrtelnosti. Jsme tví staří přátelé, opravdu staří. Co pro tebe můžeme udělat?"~ */
  IF ~~ THEN REPLY #12421 /* ~"Mám pár otázek..." ~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"Ahh, dobře promluveno. Starý příteli, jsme párek abishaiů na dovolené, na propustce z našeho umístění v Baatoru. Jsem Tegar'in Trojprokletý, pojmenovaný tak pro svou schopnost nalézt to nejlepší v každé situaci. Toto je Aethelgrin, který si zatím nevysloužil žádné zvláštní jméno, i když to není z nedostatku snahy."~ */
  IF ~~ THEN REPLY #12424 /* ~"Nedostatek snahy? Co tím myslíš?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~Tegar'in tě ignoruje a odpovídá svému soudruhovi. "Zase jednou tvrdím, že nějaká pozornost je lepší než žádná pozornost." Abishai se otočil zpět k tobě. "Starý příteli, zodpovědělo ti toto na tvou otázku ohledně našich identit?"~ */
  IF ~~ THEN REPLY #12426 /* ~"Řekl bych, že bude muset. Mám pár dalších otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"Řekl bych, že bude muset. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"Co se týče přímé současnosti, bavíme se v tomto... rozkošném... zařízení. A pochopitelně oslavujeme návrat starého přítele. Ale zápach zdejších větrů -  které sem dveřmi občas donesou trochu smradu dobroty - nás znechucuje a tak nás fyzicky, mentálně a duševně oslabuje. Naštěstí s sebou vzduch v této čtvrti většinou nese rozkošnou vůni bolesti a utrpení. Nesouhlasíš?" Fiend se na tebe znovu široce usmál.~ */
  IF ~~ THEN REPLY #12429 /* ~"Mám pár dalších otázek."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"Je to hospoda u Doutnajícího nebožtíka, jedna ze zábavnějších tavern, které tvůj druh vystavěl v tomto městě - poetická spravedlnost toho hořícího chlápka u vchodu mě doslova vzala za srdce. Je tady ještě něco, na co by ses rád zeptal?"~ */
  IF ~~ THEN REPLY #12432 /* ~"Ano, mám pár dalších otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"Tanar'ri jsou přímo zodpovědní za Válku Krve! Kdyby nebylo jich, Nižší Sféry by spočívaly v míru a nebyly by roztrhány tou prokletou válkou, stejně jako by nebyly ty... nešťastné... úniky do okolních sfér, které způsobují takové starosti mezi těmi kdo vyznávají odpornost dobra. Tanar'ri můžeme směle obvinit za smutný stav mnohovesmíru."~ */
  IF ~~ THEN REPLY #12435 /* ~"Na to jsem se neptal. Chtěl jsem vědět, jak se od sebe odlišujete vy a oni."~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"Aha. Mám pár dalších otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~Fiend se na chvíli odmlčel, pak se rozzářil. "Ah, ano! Víš, my představujeme řád a pořádek. Ti, kteří překračují zákon, musí být potrestáni. Pokud nebudeme mít řád, bude tu pouze anarchie a jasně vidíš, co udělala anarchie s Abyssem - díky ní vznikly dosud nepředstavitelné hrůzy. Baatezu se pouze snaží zastavit vlnu chaosu, vyvolávanou tanar'ri. Nechceme nikomu ublížit - dáváme přednost tomu, když všichni vědí, kde jsou hranice."~ */
  IF ~~ THEN REPLY #12439 /* ~"Aha. Mám pár dalších otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"Pharod? Slyšel jsem to jméno. Není to nějaký mudrc? Nekromancer? Nebo je to nějaký kněz? Slyšel jsem o něm, příteli, ale ještě jsem neměl potěšení z jeho přítomnosti. Možná někdo z ostatních návštěvníků tohoto zařízení ti bude schopen pomoci."~ */
  IF ~~ THEN REPLY #12442 /* ~"Možná. Mám pár dalších otázek."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"Možná. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"Protože, příteli, snadno uděláš chybu, že něco řekneš potomstvu, nebo ještě spíš někomu, komu jsi věřil," na tomhle místě vrhl jedovatý pohled na Aethelgrina, "a zjistíš, že jsou ta slova použita proti tobě. Často to může vést dokonce k činům na úrovni konečné ztráty... taková ztráta deníku tě může stát tvou existenci."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"Aha. Mám pár dalších otázek..."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"Aha. Mám pár otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"Aha. Sbohem."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"Má na mysli Lovce zpustlíků, že ano?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"Ptá se na něj... vyptával by se nás náš přítel, kdyby to nevěděl? Nebo byl nedůvěřivý, přinejmenším."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"A to se divíš, Aethelgrine, že tvé jméno dosud nemá žádný zvuk?" Fiend se otočil zpátky k tobě. "Bude mi potěšením tě informovat."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"Přísahal, ano, ale ne jako ty! Nesmím o tom mluvit s žádným z Tanar'ri. Ale mám dojem, že tady náš přítel nepatří zrovna do této skupiny."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"A jak!" Fiend tě znovu oslovil. "Tento sběrač, můj příteli, je ďábel, třebaže prokletý svatým mužem. Ten pohledný mladý gentleman, kterého můžeš spatřit v jeho blízkosti, je v otroctví Sběračů, ačkoli on si to vůbec neuvědomuje."~ */
  IF ~~ THEN REPLY #14767 /* ~"No..."~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"Měl bych Aethelgrine? Nemyslím."~ */
  IF ~~ THEN REPLY #14768 /* ~"Jaký přívěšek?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"To už jsem někde slyšel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"Ten zloduch má přívěsek, magický artefakt, který bychom velice rádi uvítali jakožto náš majetek. Můžu ti zaručit, že by měl pro tebe jen malý nebo žádný užitek, příteli, tak možná..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"...*všechno*..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"...požadujeme jenom ten přívěsek. Ten přívěsek, který nám umožní věnovat ti tu slíbenou moc."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"Želbohu, dokonce ani já se nemůžu protivit pravidlům. Naše ruce jsou v tomto případě svázány, příteli."~ */
  IF ~~ THEN REPLY #14770 /* ~"A co dělá ten přívěšek?"~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"Srozuměn."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"Ne. Nejde to."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"Vůbec nic, příteli."~ */
  IF ~~ THEN REPLY #14773 /* ~"Řekni mi víc, nebo se nedohodneme."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"A proč se ho nezmocníš sám?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"Rozumím."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"Ne. Nejde to."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"Chytá duše, jakmile opustí své schránky."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"Co bys s takovou věcí dělal? Prodal ji pro trošku bohatství? Vystavil si ji nad krb?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"Ano, Aethelgrine, je to škoda. Zůstaneme tady, starý příteli, měl by sis to ještě uvážlivě promyslet."~ */
  IF ~~ THEN REPLY #14777 /* ~"Mám pár otázek..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"Ten 'Sběrač' byla Erinyí. Překročila své hranice; přemožena touhou zkusila svést někoho o hodně mocnějšího, než měla."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"Teď, víš, Erinye nejsou žádné bojovnice."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~Fiend se otočil na svého společníka. "Ano, vskutku." Obrátil se zpět a zasyčel: "Jak jsem říkal, bez magického provazu, který nosí všechny její Sestry, a bez obvyklých ďábelských odolností by mohla být jednoduše zabita -- bez jejího mladého a prchlivého nemravy poblíž, samozřejmě."~ */
  IF ~~ THEN REPLY #14779 /* ~"Jak jsem ji jenom mohl nechat samotnou?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"Ach, právě jsem se k tomu dostával, můj starý příteli. Můžeš ji najít schovanou a samotnou v uličce přímo na sever právě od tohoto podniku, mezi dvěma budovami. Najdi ji tam, kolem půlnoci."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"Och, ale obchod byl uzavřen, příteli. Už jsi souhlasil, vzpomínáš? My jsme svou část dohody splnili; to bys byl tak bezohledný a bezcitný k našemu dávnému přátelství a nesplnil svou část?"~ */
  IF ~~ THEN REPLY #14780 /* ~"Ne, máš pravdu."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"Ano."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"Vskutku, Aethelgrine." Fiend se k tobě otočil s výrazem ohromného znepokojení. "A už jsi zapomněl na moc, kterou jsme ti slíbili? Ten talisman v našich rukou tě může učinit silnějším, příteli..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"Jsi si jistý, že nás můžeš jen tak jednoduše odmítnout?"~ */
  IF ~~ THEN REPLY #14782 /* ~"Ne, máš pravdu."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"Ano, a to právě nemohu udělat"~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"Byl jsem blázen, Aethelgrine. Měl jsem sepsat smlouvu, ale udělal jsem hrubou chybu, že jsem do dohody tahal naše přátelství." Pohrdavě se k tobě otočil. "Buď proklet, bídný člověče... budeš toho litovat. Měj na paměti, že ode dnešního dne bude Tegar'in Trojprokletý usilovat nejen o tvoji zkázu, ale i o tvoji duši. Až půjdu do Války krve, budeš mě doprovázet a sloužit jako otrok vrtochů těch nejnižších fiendů!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"Ne, teď ne. Nechme jej jít jeho cestou. Nakonec, máme k osnování proti němu celou věčnost..." Oba fiendové se na sebe šibalsky usmáli a pak tě nasměrovali pryč.~ */
  IF ~~ THEN REPLY #14784 /* ~"Počkej! Počkej! Změnil jsem rozhodnutí!"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~Odejdi.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"Ticho, Aethelgrine! Všichni jsme se dopustili chyb." Tegar'in se na tebe podíval s pohrdavým úsměvem. "Víš, čeho teď po tobě žádáme. Většinu našich ran zhojí čas... možná, že jednou i ty dostojíš své části úmluvy a naše přátelství bude jako dřív. Sbohem."~ */
  IF ~~ THEN REPLY #14786 /* ~Odejdi.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"Měli bychom užít této moci k tvé stimulaci... měl bys pocítit, že tě udělá psychicky zdatnějším i silnějším. Efekt by měl být permanentní... dokud nezemřeš, samozřejmě, ale o takových věcech nemluvme, starý příteli."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"Tady je ten přívěšek."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"Mám nějaké otázky..."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"Mám nějaké otázky..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"Počkej... nejdřív chceme ten přívěsek."~ */
  IF ~~ THEN REPLY #14792 /* ~"Tady je ten přívěšek."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"Rozhodl jsem se, že si přívěšek ponechám"~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"Ano, Aethelgrine, to je. A teď ti poskytneme ukradenou sílu přívěsku, druhu starých..." Fiend mačká přívěsek ve svých pařátech a jeho oči se zalily plamennou září. Na chvíli obklopila přívěsek gloriola moci -- a pak nic.~ */
  IF ~~ THEN REPLY #14794 /* ~"Co se stalo?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"Já... já nevím, starý příteli!" Tegar'in vypadá opravdu šokován, ale Aethelgrin se za ním zle usmívá. "Zdá se... zdá se, že na tebe byla použita nějaká podivná kouzla, čáry, které nějak přívěsku brání v tvém posílení."~ */
  IF ~~ THEN REPLY #14795 /* ~"Co? Ty jsi už o tom věděl předem?"~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"Ne, můj starý příteli! Skutečně jsem to nevěděl. Aethelgrine?" Fiend hodil přívěsek zpět svému společníku.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"Je mi to opravdu líto, nejdražší příteli, opravdu. Možná, kdyby sis nechal ty kouzla --odstranit-- tak bychom mohli využít přívěsek k tvému užitku. Víš, kde nás můžeš najít, snad v tom uspěješ." Fiend se na tebe usmívá.~ */
  IF ~~ THEN REPLY #14796 /* ~"Tak vrať ten přívěšek. Vrátím ho až bude kouzlo odstraněno."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~Zaútoč na fiendy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"Hmmm. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~Tegar'in s ním smutně zatřese.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"Je teď po právu náš. Vzpomeň si na dohodu, příteli dlouhých let."~ */
  IF ~~ THEN REPLY #14799 /* ~"Tak fajn, tady je přívěšek."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"Ne, myslím že si ho zatím ponechám."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"Och, jak smutné... opravdu bys zahodil naše přátelství takovým bezohledným způsobem? Prosím, žádám tě... nezrazuj tak staré kamarádství. Vrať ten přívěsek."~ */
  IF ~~ THEN REPLY #14801 /* ~"Fajn, tady je."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"Ne. Nic se nestane."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"Ano, jdeme na to."~ */
  IF ~~ THEN REPLY #14803 /* ~Akceptuj útok.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~Prchni s přívěškem.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"No..." Oba fiendové se na sebe usmějí a pak kývnou. "V tom případě..."~ */
  IF ~~ THEN REPLY #14805 /* ~"Počkej -- Jaký druh síly mi nabízíš"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"Tady je ten přívěšek."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"Ne, myslím že si přívěšek zatím ponechám."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"Podívej, vrátil se i s přívěskem!"~ */
  IF ~~ THEN REPLY #14808 /* ~"Počkej -- Jaký druh síly mi nabízíš?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"Tak fajn, tady je přívěšek."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"Rozhodl jsem se, že si přívěšek zatím ponechám"~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"Ach, podívej, kdo se vrátil. Promiň, příteli, nebudeme s tebou mluvit, dokud se nevrátíš s naším přívěskem. Sbohem."~ */
  IF ~~ THEN REPLY #14811 /* ~Odejdi.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"Ano, ano... Zrádce Přátel!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~Fiendové na tebe chladně zírají po dlouhou nepříjemnou dobu ticha, která po tvých slovech nastala. Tegar'in nakonec řekne: "Dobrá. Je to škoda... příteli."~ */
  IF ~~ THEN REPLY #14812 /* ~"Mám pár dalších otázek."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"Toť vše. Sbohem"~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
