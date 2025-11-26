// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~Tieflingská dívka s divokýma očima se na tebe se zlobným zavrčením podívala. Její tetované tělo je prakticky nahé, má na sobě pouze kožené sandály, podprsenku z černé látky a chrániče ramen, které vypadají více jako dekorace než ochrana. Její střapaté vlasy - stejně jako hrubá srst, která pokrývá její jakoby kozí nohy - jsou bílé, z jejích uší, nosu, rtů a obočí visí spousta stříbrných prstýnků. Kolem hrdla má kožený obojek s nápisem Kimasxi-Zmijí jazyk.~ */
  IF ~~ THEN REPLY #2942 /* ~"Zdravím..."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~Kimasxi na tebe vycenila zuby. "Na co tak čumíš, kreténe?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"Na tebe. Mám nějaké otázky..."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"Ty - áále nic. Sbohem."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"Nic. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~Ušklíbla se na Morteho, poté se podívala pod něj, tam kde obvykle bývá tělo. "Vostrej jazyk... na někoho, kdo přišel vo to nejdůležitější."~ */
  IF ~~ THEN REPLY #41721 /* ~"Tak už dost, vy dva."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~Nech je pokračovat.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"Pche?! Jedinej vobtížnej hmyz seš tadý *ty!*" Náhle se otočila k tobě. "Hej! Chceš si pokecat, nebo co?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'Nebo co?' Co jinýho s tebou můžu dělat?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"Ano... mám nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~Obrátila oči v sloup. "Pol´ mi prdel!!"~ */
  IF ~~ THEN REPLY #41726 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"Co máš na mysli ty ukecanej podělánku? Jen do toho, dej mi důvod říct ti 'vodpal'."~ */
  IF ~~ THEN REPLY #41727 /* ~"Co tak obvykle pro zákazníky děláš?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"Mám jen pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"Zapoměn. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"Jsem odborník na urážky."~ */
  IF ~~ THEN REPLY #41730 /* ~"Co to znamená?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"Mám ještě jinou otázku..."~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"To je vše co sjem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"Ukážu ti." Její ruka vystřelila proti tvému obličeji a tobě se taktak podařilo její výpad odrazit. Kimasxi našpulila rty a zamračila se. "No dobrá."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"Řekni... dokážeš Morteho naučit větším sprosťárnám?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"Myslel jsem, že takové polovičaté zvíře bude mít rychlejší reflexy."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"Mám pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"To mi od tebe stačí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~Šlehla po tobě skepickým pohledem. "Myslíš? Hmmm. Abys věděl, myslela sem, že něco jako poloviční zombie bude mít pomalejší reflexy."~ */
  IF ~~ THEN REPLY #41737 /* ~"No, tos myslela špatně... a tuším, že se ti to stává často."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"Koukni, mám jen pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"Ty si hodně vymejšlíš co: myslíš si, že nejseš setsakramentsky škaredej, myslíš si, že tě ženský berou vážně... a přestaň se mi čumět na hrudník!" Její slova byly celkem překvápko - jelikož jsi nekoukal.~ */
  IF ~~ THEN REPLY #41740 /* ~"O čem to meleš"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"Je *to* to, co si myslím? Pokládal jsem je za nějaký druh malých, rakovinných výrůstků."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"Koukni, mám jen pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"No jasně; tak tys nekoukal, jo? Ty nevohrabaná chlípná zombie... Co máš za problém? Copa si ještě neviděl pár pěknejch koziček?"~ */
  IF ~~ THEN REPLY #41744 /* ~"Nekoukal sem se na ně. Chováš se jako nějaká ztřeštěná ženská..."~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"Je *to* to, co si myslím? Pokládal jsem je za nějaký druh malých, rakovinových výrůstků."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"Koukni, mám jen pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~Kimasxi dala oči v sloup, zkřížila ruce a našpulila rty. "Kecat s tebou je fakt sranda, asi jako kecat s modronem. Vodpal hošane; bude ti líp s ňákejma *vobyčejnejma* mrňatama."~ */
  IF ~~ THEN REPLY #41748 /* ~"Počkej - chci se na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~Pozvedla obočí. "Hele, esli nepoznáš pěknej párek koz jako sou ty moje, pak si zřejmě moc času v přítomnosti ženskejch nestrávil..."~ */
  IF ~~ THEN REPLY #41750 /* ~"Tak ty naznačuješ, že si ženská? Není to trochu přehnaný?"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"Koukni, mám jen pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~Kimasxi vypadá jako by najednou ztratila řeč. Na malou chvíli se jí na tváři promítl úsměv a rozbil tak kamený výraz, který se ale náhle změnil v daleko úšklebnější grimasu . "No dobře, co vodemě teda chceš?"~ */
  IF ~~ THEN REPLY #41753 /* ~"Odpovědi na otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~Protočila oči. "A proč si myslíš, že se *starám?* Proč mi radši nepolíbíš zadek?"~ */
  IF ~~ THEN REPLY #41755 /* ~"Nemám tak dlouhej jazyk... a navíc nesnáším, když mám v hubě vlasy."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"No, zdá se, že v hubě rád cítíš hnůj, ty kreténe se smrdutým dechem."~ */
  IF ~~ THEN REPLY #41757 /* ~"Jen proto, že je to jako tě políbit, ty prašivej smraďochu."~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"Políbit *mě?*" Vydala dávivý zvuk. "To bych radši políbila krvavej hlen, než bych se tebe dotkla svejma rtama. Fakt ne, dík!"~ */
  IF ~~ THEN REPLY #41759 /* ~"Neděkuj mi... děkuj bohům, že tě vůbec někdo chce políbit."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"To mi od tebe stačí. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~Pozvedla obočí. "No, *to* je neobvyklý přání. Myslím, že je sprostej až dost..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"Určitě si přeješ mít nohy jako já, ty ubohá držko! Můžu chodit, běhat, tancovat... a co můžeš ty? Houpat se vokolo a přát si, abys *měl* pár pořádnejch noh, ať už kozích nebo jakejchkoliv jinejch!"

Oba dva se do sebe pustili, vyměnují si kousavé, sarkastické urážky...~ */
  IF ~~ THEN REPLY #41761 /* ~Počkej až do konce...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~Konečně se přestali navzájem urážet a v místnosti se rozhostilo strašidelné ticho. Nakonec se Kimaxi přiznala Mortemu: "Nejseš tak špatnej, fak že ne. Vůbec nejseš špatnej."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~Kimasxi na Morteho přimhouřila oči. "Nesnaž se, *lebko.*"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~Otočila se k tobě. "Tak co všecko chceš? Nechci s tebou strávit víc času než budu muset."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"Mám jen pár otázek..."~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"Mám jen pár otázek..."~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"Taky si myslím. sbohem."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"To pro teď stačí. Sbohem."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"Taky si myslím. Sbohem."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"To pro teď stačí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~Vypadá mrzutě. "Fajn, cokoli... ptej se."~ */
  IF ~~ THEN REPLY #41768 /* ~"Kdo jsi?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"Co tu děláš?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"Řekni... dokážeš Morteho naučit větším sprosťárnám?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"Co mi můžeš říct o němé prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"Slyšel jsem, že Kesai-Serris je tvá nevlastní sestra. Je to pravda?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"Slyšel jsem, že Kesai-Serris je dcera Ravel. Je to pravda?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"Bylo mi řečeno, že jsi se nedávno plížila z Marissiny komnaty... má to něco společného s jejím závojem?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"Snažím se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"Hledám Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"Víš něco o Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"Mluvil jsem už s devíti prostitutkami... nevíš kde bych našel desátou?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"To opravdu nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~Uculila se. "Pche. Do prdele, možná? Při čertech nevím." Kimasxi si uhladila vlasy, které se téměř okamžitě vrátily do původní polohy.~ */
  IF ~~ THEN REPLY #41780 /* ~"Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"Co o ní vím? Připadám ti snad jako nějaká vědma? Zeptej se někoho víc 'znalýho'... nebo Yvy; určitě vo ní zná aspoň *pár* příběhů, když jich má furt plnou hubu."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"Slyšel jsem že Kesai-Serris je její dcera. Je to pravda?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~Pokrčila rameny. "Aspoň co vím, tak jo." Náhle se zatvářila podezíravě. "Proč?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"Ptal jsem se jí, ale zapřela to."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"O to se neboj. Mám jinou otázku."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"Fakt? No ne, že by ti po tom něco bylo."~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"Taky jsem slyšel, že Kesai-Serris je tvá nevlastní sestra."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"Možná ne, mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"Jo, jsem spřízněná s tou buclatou, ukňouranou fantastkou. Stejnej fotr, jiná matka. A co?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"Doufal jsem, že mi pomůžeš zjistit, jestli je Kesai opravdu Ravelina dcera."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~Kimasxi Zmijíjazyk, nevlastní sestra Kesai-Serris mi řekla, že bych měl říct Kesai, ať se podívá na svého otce, pokud chce důkaz, že je Ravelina dcera.~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"O to se neboj. Mám jinou otázku."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~Kimasxi se na tebe zamračila. "Normálně by se mi hnusilo ti takle pomáhat, ale mám pocit, že by to zkazilo naše povídání a udělalo to ze mě děvku. Řekni jí, ať se zeptá našeho otce... je mocný obchodník, takže by měla být schopná ho zavolat přímo teď a tady. Pak dostaneš svý odpovědi."~ */
  IF ~~ THEN REPLY #41794 /* ~"Obchodník?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"Díky. Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"Tak si s sí promluvím. Díky Kimasxi a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"Jo *obchodník.*" Kimasxi protočila očima. "Copa si mě předtím neslyšel? Uši ti přestaly fungovat hned, jak ti přestal fungovat mozek, co?"~ */
  IF ~~ THEN REPLY #41797 /* ~"Ptám se co je..."~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"Ne... ale mám jinou otázku."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"Bože ty si debil." Smutně potřásla hlavou a chvíli se snažila ovládnout. "Napůl fiend ty hňupe; něco jako ty... ale ty si spíš napůl *hovno*. A taky podle toho smrdíš."~ */
  IF ~~ THEN REPLY #41800 /* ~"Lepší to, než byť jen kousek tebe Kimasxi."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"Sbohem Kimasxi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"Přej si, abys byl aspon napůl Kimasxi blbe... i kdybys měl skončit s kozím zadkem na ramenou, budeš na tom furt líp, než teď s tím svým zjizveným ksichtem."~ */
  IF ~~ THEN REPLY #41803 /* ~"Kimasxi, to by stačilo. Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"Na takové věci nemám čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"Zkus stoky v Úlu... možná proto, že stejně voněj. Myslím to vážně... Marissa to ukradla."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"Marissa? Jsi si jistá?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"Marissa... s tou jsem ještě nemluvil. Jsi si tím jistá?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"Ne, ale doufám, že půjdeš do její cimry, dost ji tam rozčílíš, aby ti něco vopravdu hroznýho provedla."~ */
  IF ~~ THEN REPLY #41807 /* ~"Hmm. Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"Jo schovává se pod mou postelí. No tak... klekni na kolena a podívej se. Nekopnu tě... slibuju."~ */
  IF ~~ THEN REPLY #41809 /* ~Klekni si na všechny čtyři a zkonroluj to.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"Hmm. Mám jinou otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~Když ses koukl pod Kimasxinu postel - a nic jsi tam samozřejmě nenašel - uvědomil sis, že stojí přímo za tebou. "Nemohla sem... bylo to moc jednoduchý. Vstávej, ty pitomej mrtváku. Tady není žádnej desátej student."~ */
  IF ~~ THEN REPLY #41812 /* ~"Tak se zeptám na něco jiného ..."~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"Mý jméno? Nezajímavý. Ale myslím, že sem přišla na tvoje: 'Zjizvenej ksichte vypadni-vodsaď-než-ti-pod-prdelí-rozdělám-vatru.'"~ */
  IF ~~ THEN REPLY #41814 /* ~"Mám další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"Předpokládám je Kimasxi, jak se říká na řetězu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"Tebe ne, to je jistý." Pokrčila rameny. "Hledám nejlepší způsob, jak ti mám příště říct vysmrď."~ */
  IF ~~ THEN REPLY #41816 /* ~"Mám další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"Samo. Fall-From-Grace dala do kupy chudáčky sirotky z ulic Úlu, nutí nás, abysme šoustaly s podivnejma chlápkama, a když nechcem, tak nás bije, voblíká nás do hadrů a pije nám krev. Je to hrozný, fakt."~ */
  IF ~~ THEN REPLY #41818 /* ~"Jo... chápu. Mám další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"V pořádku... njespíš teď odejdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~Kimasxi začala úplně šílet: "KDO TI TO ŘEK-" náhle se ztišila zíraje na tebe zúženýma očima. "I kdybych tam *byla* troubo, tak bych ten její špinavej hadr nevzala... prohlídni si to tady esli chceš. Ale esli tě načapám, jak se přehrabuješ v mejch kalhotkách, tak se postarám vo to, aby ses tu už nikdy neukázal."~ */
  IF ~~ THEN REPLY #41820 /* ~"Proč by kdy kdo prošmátrával tvoje spoďáry?"~ */ JOURNAL #66514 /* ~Zeptal jsem se Kimasxi, co mi můžeš říct k tomu, že ji viděli, jak vychází z Marissiných komnat. Popřela, že by vzala Marissin závoj. Ale prohlásila, že i do její místnosti se někdo vloupal.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"Tak to zkus. I když někdo uhád mnohem víc, než že mám jenom dvě kozy. Taky mám mojí oblíbenou koženou podprdu s železnejma cvočkama." *Vypadá* naštvaně.~ */
  IF ~~ THEN REPLY #41822 /* ~"Hmm. Mám další otázku."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"Á tady seš, hnusnej jako vobvykle. Přišel sis zas pro pár urážek, co?"~ */
  IF ~~ THEN REPLY #41824 /* ~"Ne, mám jen další otázku..."~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"Vlastně jen procházím. Sbohem."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"Ooo to seš zase ty. Nemůžeš beze mě bejt, co?"~ */
  IF ~~ THEN REPLY #41826 /* ~"Mám nějaké otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"Jen procházím Kimaxi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"Co, myslíš to mrně 'Ecco'? Vo ní nic nevím. Nemluvím s ní... proč taky? Stejně nemůže vodpovídat. Na ni se optej té frigidy  Dolory... myslím, že jsem je kdysi viděla spolu, eště když Ecco mluvila."~ */
  IF ~~ THEN REPLY #41828 /* ~"Mám další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END
