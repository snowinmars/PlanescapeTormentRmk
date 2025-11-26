// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~Vidíš velice korpulentního muže se záhyby tuku přetékajícími na všechny strany. Pomalu k tobě pozvedne oči a jak se na tebe podívá, jsi pojednou zasažen pocitem nevýslovného nebezpečí. "Uchovávám skutečnou podstatu meče. To, co vidíš, je pouhá skořápka. To ostří je ve mě. Musíš mě porazit, abys ho dostal."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"Kdo jsi?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"Přišel jsem pro meč."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"Ano. Už jsem ti ukradl tvé obvazy. Myslíš, že mi zabráníš sebrat ti i tvou zbraň, když si to usmyslím?"~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~Jeho hluboký hlas se vyline z vrstev tuku. "Jmenuji se Cassius. Byl jsem nejstrašnější zbraní dnes mrtvého Lorda Hlubin, a jeho dědic se po mně ještě ptá. Před mým jménem se klepou všichni z chaotických sfér, a jsem strážný této čepele."~ */
  IF ~~ THEN REPLY #59670 /* ~"Tys byl *zbraň?*"~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"Ty nevidíš to nebezpečí..."~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"Dojdu si pro meč."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"Aha. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~Je ještě dutější a hlubší než dřív. "Tento meč má sílu Vězení Curstu. Jeho přemístění osvobodí všechny vězně odsouzené k zapomenutí. Dohlížím a chci předejít tomu, aby se to nestalo. Ty si přeješ tento meč?"~ */
  IF ~~ THEN REPLY #59705 /* ~"Ano."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"Ne."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"Opravdu bych už chtěl odejít."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"Já jsem byl velice účinná a efektivní zbraň všude v Abyssu, jsem ten nejlepší. Mohu jedním prstem zahubit jakéhokoli tvora. Zabil jsem tolik nepřátel mého mrtvého pána, než kolik měli oni všichni dohromady. Můj bratr, můj stín, můj Xekiel, ten ještě pořád vraždí v hlubinách Abyssu."~ */
  IF ~~ THEN REPLY #59710 /* ~"Proč jsi odešel?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"Dobře, jak chceš. Dojdu si pro meč."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"Dobře. Musím jít."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"Můj mistr vnikal do srdce Abyssu, zatímco já jsem pustošil jinde. Když jsem se já navrátil, nadobro odešel a poptávky se začaly obracet na mě. Nikdo mě nemohl zkrotit, a tak jsem odešel. Tato skutečnost je veselá. Ten, kdo přijde, toho zabiji - není to pro mne obtížné."~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"Přicházím si pro čepel."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"Chceš mě zabít?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"Aha. Tak sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~Pozorně tě zkoumá. Po chvilce oznámí toto: "Myslím, že by to byl dobrý souboj. Připravíš se na to, že tě rozdrtím?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"Opravdu si pro ni přicházím."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"Chci tě vyzkoušet."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"Ne. Vlastně, musím jít."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"Řeni mi, že si přicházíš pro čepel a já tě rozdrtím."~ */
  IF ~~ THEN REPLY #59729 /* ~"Přicházím si pro čepel."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"Zapomeň na to. Já odcházím."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~Cassiův hlas se opět vyvalí z obrovských vrstev jeho tuků. "Hledáš čepel?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"Napřed mě řekni o sobě."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"Ano."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"Ano. Už jsem ti stačil ukrást obvazy; myslíš, že kdybych chtěl ukrást tu čepel, pořád bych tady stál a pokoušel se o to?"~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"Ještě ne.. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"Jestli chceš zažít sílu a moc čepele, vrať se ke mně a můžeme o ni svést souboj. Tak to chodí, srovnat své síly, nebo nic."~ */
  IF ~~ THEN REPLY #59736 /* ~"Prfektní. Já musím jít."~ */ JOURNAL #59745 /* ~Odporně tlustý muž mě vyzívá na malý souboj v centru vězení. Řekl mi podstatu a pravidla. Je to celkem jasné - myslím si, že zemřu...~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"Tak zde jsou pravidla. Musíš si vybrat z těchto soubojů: Síla, chytrost, nebo rychlost. Jestli v nich prohraješ, zbude z tebe jen mastný flek."~ */
  IF ~~ THEN REPLY #59746 /* ~"Volím sílu."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"Volím smysly."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"Volím rychlost."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"Zapomeň na to."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"Tak můžeme zápasit. Jestliže zvítězíš, můžeš si z mé mrtvoly čepel vzít. Pokud prohraješ, pochutnám si na tvých kostech."~ */
  IF ~~ THEN REPLY #59751 /* ~"Dobře..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~Rozhodl sem se pro test síly, abych získal čepel. Cassius je silný, a vyhrožuje mi, ze si pochutná na mých kostech, pokud neuspěji.~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"Rozhodl sem se, že zvolím ty smysly."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"Rozhodl sem se, že zvolím rychlost."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"Hele, víš co? Kašlem na to..."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"Tak se tě zeptám na tři otázky. Jestliže odpovíš špatně, zchřoupu si tvou lebku, pohraju si s tvou duší a nechám si ji na věky."~ */
  IF ~~ THEN REPLY #59757 /* ~"Hmm, velmi dobře. Odpovím na hádanku."~ */ JOURNAL #59738 /* ~Započal jsem test smyslů s Cassiem, jsou to tři hádanek. Možná že uspěju, pak dostanu tu zatracenou čepel. Ale nemusím uspět, a to by znamenalo že si osvojí moji kostru a mou duši. ~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"Už sem se rozhodl - zvolím si test síly."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"Už sem se rozhodl - zvolím si test rychlosti."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"Zapomeň na všechno, já na to kašlu."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"Pak musíš ukrást smotek obvazů z mého těla. Vyhraj, a já ti čepel dobrovolně vydám. Prohraj, a čeká tě něco strašného. A to i pro tvou duši po smrti. Můžeme začít?"~ */
  IF ~~ THEN REPLY #59765 /* ~"Hmm hmm..."~ */ JOURNAL #59739 /* ~Započal jsem test rychlosti s Cassiem, je to hlídač meče. Jestliže se mi podaří dostat smotek obvazů z jeho těla, pak si s ním musím znovu promluvit, a on mi dá čepel. Jestliže se mi to nepodaří, zničí mě. ~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"Už sem se rozhodl - zvolím si test síly."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"Už sem se rozhodl - zvolím si test smyslů."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"Kašlem na to."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"Pak na to zapomeň, nebo si budu myslet, že se snažíš najít nějakou jinačí cestu."~ */
  IF ~~ THEN REPLY #59769 /* ~"No dobře. Začneme."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"Začneme klasickou hádankou: Co kráčí za úsvitu po čtyřech nohou, k polednímu po dvou, a k večeru po třech?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~Odpověď znáš: "Lidská bytost, která se po narození plazí po čtyřech, v průběhu života chodí po dvou, a opírá se o hůl ve stáří."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"Ehm, muž?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"Zraněný brouk - hovnivál?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"Medvěd?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"Tvarem poměnlivý tanar'ri?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"Je to špatně. Zahyneš v nesnesitelné agónii."~ */
  IF ~~ THEN REPLY #59775 /* ~"Počkej!"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~Útoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"Je to správně. Přejdeme na druhou hádanku: Sténám, ale má slova nikdy neopustí rty. Mohu být prázdný, ale nikdy nejsem plný. Kdo jsem?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~Odpověď znáš: "Jsi hladový?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"Uh, duch?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"Vězeň bez jazyku?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"Hlad?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"Měsíc?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"Ano. Další otázka zní: Co létá, a nemůže neustále stát? Co pohltí všechno, čeho se dotkne, ale nikdy nejí? Co nemůže být nikdy vypůjčené, když je to neustále pusté? Co je to, když jeho zásoby jsou vždy vyčerpány a nikdy doplněny?"~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~Odpověď znáš: "Je to čas."~ */ JOURNAL #59740 /* ~Porazil jsem Cassia, strážce čepele ve vězení Curstu, ve zkoušce chytrosti. Jeho otázky byly jednoduché.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"Je to čas?"~ */ JOURNAL #59740 /* ~Porazil jsem Cassia, strážce čepele ve vězení Curstu, ve zkoušce chytrosti. Jeho otázky byly jednoduché.~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"Je to oheň?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"Je to síla?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"Je to magie?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"Sužuješ mě. Vede mě to, že tvoje chytrost tě vedla k další jizvě na odbličeji. Selhal jsem ve své činnosti - tady máš čepel. Teď musím opustit toto místo."~ */
  IF ~~ THEN REPLY #59787 /* ~"Děkuji."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"Tvoje vzezření mluví lživě o tvých dovednostech. Jsi na mě příliš vychytralý zloděj. Toto je klíč. Musím si najít místo, kde se schovám před hanbou."~ */
  IF ~~ THEN REPLY #59788 /* ~"Tak tedy sbohem."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~Porazil jsem Cassia, strážce čepele ve vězení Curstu, ve zkoušce rychlosti. Byl příliš pomalý. ~ */ EXIT
END
