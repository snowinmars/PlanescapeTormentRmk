// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~Stará bába se zahnutým nosem, stojící před tebou, vůbec nevypadá jako živá legenda. Je oblečená v jednoduché hnědé košili a kamaších, u roztřepeného opasku jí visí několik váčků. Tvé přítomnosti si zřejmě nevšímá, více se stará o zamotané černé kořeny, které spletené vytvářejí podlahu bludiště kolem ní.~ */
  IF ~~ THEN REPLY #2977 /* ~Chvíli si ji prohlížej.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~Zpod kápě vylézají stařeně prameny šedých vlasů, splývají jí na ramena jako smotek šedých kořínků. Na tváři jí visí faldy nemocně vypadajícího modrošedého masa, brada, ostrá a dlouhá, vyčnívá v extrémním předkusu, z dolní čelisti jí vyčnívají dva velké, špinavě zažloutlé špičáky, jako malé kly.~ */
  IF ~~ THEN REPLY #51567 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~Zaútoč, než si tě všimne.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~Zaútoč, než si tě všimne.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~Když začínáš na stařeně hledat nějaké slabosti, tvým žaludkem projel nepříjemný pocit, jako by se ti chtělo zvracet. Víš, ve svém srdci, že útok zní takticky dobře, ale VÍŠ, že nejprve musíš zjisti, co o tobě... to stvoření... ví.~ */
  IF ~~ THEN REPLY #51572 /* ~Stejně na ni zaútoč.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~Jak ti hlavou projela myšlenka na útok, bába zvedla hlavu, jako by jí najednou něco podivného napadlo. Mrkla a vydala ze sebe drsné zasyčení, zní to jako povzdech.~ */
  IF ~~ THEN REPLY #51575 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"Ah... návštěvníci." Stařenin hlas je hrubý a škrábavý, jako by se prodíral ven několika vrstvami prachu. Její oči jsou kalné, krvavě rudé, protkané černými žilkami. Jak se na tebe zadívala, tělem ti proběhl nepříjemný pocit, jako by se ti pod kůži zarývalo klubko hadů.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"Zdravím... Ravel."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"No no, moje hezounká věcičko, konečně jsi zpátky?" Ravelina tvář se zkroutila v groteskním úsměvu, ukazujíc řadu polámaných zažloutlých zubů. "Byl jsi dlouho pryč, bála jsem se, žes zapomněl na ubohou opuštěnou Ravel."~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"Na čas jsem zapomněl. Teď jsem se vrátil."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"Jak bych na tebe mohl zapomenout, Ravel. Chybělas mi, ale skryla ses na místě, na které se dá jenom těžko dostat. No tak... nepřála sis mou společnost?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"Ahhh...." Ravelin žlutý úsměv se rozšířil. Kdákavě se zasmála. "Taková *sladká* slova... už znáš odpověď na svou otázku, můj sladký mužíčku. Rozházela jsem kolem stopy, které tě měly zavést do mé zahrádky. Bála jsem se, že jsi na *MNE* zapomněl."~ */
  IF ~~ THEN REPLY #51582 /* ~"Ujišťuji tě, že se tak nestalo. Nakonec jsem se k tobě vrátil."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"Tak? Ale CO se vrátilo?" Mrkla na tebe svýma očima a lehce zasyčela. "Ukaž Ravel, jak daleko jsi cestoval v tomto světě." Natáhla se, jako by tě chtěla pohladit, a ty sis náhle uvědomil, že její prsty jsou pařáty, každý nehet špinavý a velice ostrý.~ */
  IF ~~ THEN REPLY #51584 /* ~Nechej ji, ať se tě dotkne.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"Nedotýkej se mě, Ravel. Chci si s tebou vyměnit jenom slova, nic více."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~Udeř ji, když se k tobě natáhne, aby se tě dotkla.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~Jakmile ti hlavou projela myšlenka o útoku, Raveliny oči *zazářily* jako ohně a v jejím hlase se objevila hluboká výhružnost. "NE. Pokud si ceníš toho *mála*, co ti ještě zbývá, NEDĚLEJ to."~ */
  IF ~~ THEN REPLY #51588 /* ~"Nevěřím, že mě dokážeš zastavit, Ravel. Zkus si to."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"Tak se mě nedotýkej, Ravel. Chci si s tebou vyměnit jenom slova, nic více."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"Zapomněl jsi své místo, POLO-muži. Na místě je pokora."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"Uvidíme, ty odporná čarodějnice..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~Její zubaté pařáty přejíždějí po tvé kůži, cítíš stejný pocit, jako když se na tebe Ravel poprvé podívala. Její oči se trochu zakalily, její drápy lehce a jemně přejíždějí po tvém obličeji, dotýkajíce se tvých jizev.~ */
  IF ~~ THEN REPLY #51594 /* ~Počkej...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~Natáhni se a dotkni se jí, jejich rysů.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~Natáhni se a dotkni se jí, jejich rysů.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~Natáhni se a dotkni se jí, jejich rysů.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~Tvé ruce se dotkly Raveliny tváře stejně, jako její pařáty laskají tvou tvář. Instinktivně opakuješ její pohyby - jak jede drápy po tvé levé tváři, tvé prsty cestují stejně po její. Zavřela oči, ty také. Je to podivně známé, ale nedokážeš přivolat vzpomínku. Po chvíli se její krvavé oči otevřely, přerušovaně zasyčela.~ */
  IF ~~ THEN REPLY #51599 /* ~Počkej.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~Tvé ruce se dotkly Raveliny tváře stejně, jako její pařáty laskají tvou tvář. Instinktivně opakuješ její pohyby - jak jede drápy po tvé levé tváři, tvé prsty cestují stejně po její. Zavřela oči, ty také. Je to podivně známé...~ */
  IF ~~ THEN REPLY #51601 /* ~Zavři oči, poddej se vzpomínce...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~Když se tvé oči otevřely, máš pocit, jako by ze stromů a bludiště vyprchala veškerá barva. *Vše* je bezvýrazné, zaprášené, smrtelně šedé. Raveliny oči jsou stále zavřené, ale pod tvým pohledem se pomalu otevírají a ona se usmála, smutným, šedým úsměvem. Cítíš, jak se k tvým rtům zevnitř derou slova, ozvěna něčeho, co jsi řekl v minulosti, na jiném místě, v jiné sféře...~ */
  IF ~~ THEN REPLY #51603 /* ~Ozvěna z paměti: "Říká se, že jsi nejmocnější ze všech Šedých Sester, Ravel. Cestoval jsem daleko, abych se s Tebou mohl setkat."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~Přikývla, ale pomalu, příliš pomalu, jako ve snu. Když promluvila, jsou její slova tlumená, jako by mluvila pod vodou. "Ale *proč* jsi cestoval tak daleko? Musíš něco velmi potřebovat... ale vypadá to, že jsi mi nepřinesl *nic*, co by mě mohlo zajímat. Za službu musíš ZAPLATIT..."~ */
  IF ~~ THEN REPLY #51605 /* ~Ozvěna z paměti: "Má potřeba je velká. Má cena je tato: výzva. Možná nesplnitelná výzva... taková, že se obávám, aby nebyla dokonce mimo *tvé* schopnosti..."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~Opakuješ slova a cítíš MANIPULACI, jemnou narážku, určenou na manipulaci s Raveliným egem. Její oči zahořely zuřivou šedí, a šeď, která pojídá krajinu, jako by vycházela z jejích rysů. "Není NIC, co by bylo pro mě nemožné, hloupý člověče! NIC! Předlož mi svou výzvu, vyslyším tě!"~ */
  IF ~~ THEN REPLY #51607 /* ~Ozvěna z paměti: "Na konci života čeká na každého člověka smrt. Potřebuju, aby na mně čekala déle... Dokážeš to, překrásná Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~Vize se vyjasnila, šeď z bludiště vyprchává, dokud se barvy úplně nevrátí. Tvá ruka je stále na Ravelinině tváři. Její oči jsou zavřené a ona si povzdychla. Pomalu jsi stáhnul ruku a o chvíli později se Raveliny oči otevřely a ona zasyčela. "Ano..."~ */
  IF ~~ THEN REPLY #51609 /* ~"Ravel...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~Když jsem přišel za Ravel do bludiště z černého trní, vzpomněl jsem si na něco, co je pravděpodobně naše první setkání... na místě, kde převládala šeď, jako by něco vysálo ze všeho barvy. Předložil jsem jí výzvu, aby mě učinila nesmrtelným, a pokud mě paměť neklame, souhlasila.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~Raveliny prsty se stáhly. Smutně se na tebe podívala. "Oh, smutná, smutná zlomená poloviční věcička." Znovu na tebe zašilhala. "Už ne více ta, kterou znala Ravel... jsi stále zlomený, znovu po všem tom smutném, smutném čase?"~ */
  IF ~~ THEN REPLY #51612 /* ~"Zlomený? Co tím myslíš?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"Ah... vždy opatrný, má nejmilovanější hádanko?" Stáhla prsty, ruka jí padla k boku. "Tak jsem si tě označila, když jsi *poprvé* za mnou přišel na pustiny, se svou výzvou pro Ravel."~ */
  IF ~~ THEN REPLY #51614 /* ~"Já... nepamatuju si na takové setkání. Zapomněl jsem toho mnoho."~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"O čem to mluvíš?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~Ravel si tichounce povzdychla, zatímco tě pozorně zkoumá. "Oh, smutná, smutná zlomená poloviční věcička." Znovu na tebe zašilhala. "Už ne více ta, která znala Ravel... jsi stále zlomený, znovu po všem tom smutném, smutném čase?"~ */
  IF ~~ THEN REPLY #51617 /* ~"Co tím myslíš?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"Ravel, rituál, který jsi použila, byl vadný... Nefunguje. Pokaždé, když zemřu, nebo alespoň pokaždé, kdy jsem *umřel*, jsem zapomněl na sebe a stal se někým jiným. Ano, jsem zlomený. Můžeš mě dát do pořádku, pomoct mi vzpomenout si?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"Tělo vlastníš, ale znalosti už ne?" Ukázala pařátem na tvou hruď, na tvé jizvy. "Mnoho a moc, takových jizev máš, všechny na tvé kůži. Mnoho příběhů ta tvá kůže vypráví."~ */
  IF ~~ THEN REPLY #51620 /* ~"O čem to mluvíš?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"Jaké příběhy vypráví má kůže?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"Tvé jizvy a tetování na mě křičí, 'tady je muž, který se vzpírá světu.'" Ravel vydala zvláštní nechutný zvuk, něco jako umírající pták. "Ano, takové příběhy donutí zakrýt si uši dokonce i *čarodějnici*."~ */
  IF ~~ THEN REPLY #51623 /* ~"Řekni mi ty... příběhy. Chci je znát."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"Příběhů je mnoho. Odrážejí nevyrovnanou rovnováhu, zkoušky války, bitvy s fiendskými elementy a vyprávějí o stvoření, které se krmí ostatními zdaleka, aby samo přežilo... a o utrpení. Taková *utrpení*, jaké maso nikdy dříve nepoznalo..."~ */
  IF ~~ THEN REPLY #51625 /* ~"Nevyrovnaná rovnováha?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"Zkoušky války?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"Bitvy s fiendskými elementy?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"Stvoření krmící se ostatními z dálky?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"A ta utrpení... o jakých utrpeních a mukách to mluvíš?"~ */ JOURNAL #51631 /* ~Ravel mi řekla, že jsem "zlomený." Dělala nejasné poznámky ohledně mých jizev a tetování, řekla, že mluví o "nevyrovnané rovnováze", "zkouškách války", "bitvách s fiendskými elementy" a nazvala mne "stvořením, které se krmí ostatními z daleka". Uznala, že mi vzala mou smrtelnost, a řekla mi, že funguju jako magnet pro zmučené duše, přitahuju je jako magnet k sobě přitahuje železo.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"A ta utrpení... o jakých utrpeních a mukách to mluvíš?"~ */ JOURNAL #51631 /* ~Ravel mi řekla, že jsem "zlomený." Dělala nejasné poznámky ohledně mých jizev a tetování, řekla, že mluví o "nevyrovnané rovnováze", "zkouškách války", "bitvách s fiendskými elementy" a nazvala mne "stvořením, které se krmí ostatními z daleka". Uznala, že mi vzala mou smrtelnost, a řekla mi, že funguju jako magnet pro zmučené duše, přitahuju je jako magnet k sobě přitahuje železo.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"Rozdělený na dva jsi byl, když byla z tebe vytáhnuta tvá smrtelnost. Už ne více vyrovnaný, zlomený v rozdělení... jak požehnání, tak chyba... Ale více chyba, než požehnání, myslí si Ravel."~ */
  IF ~~ THEN REPLY #51633 /* ~"Ty jsi *vzala* mou smrtelnost? Jak?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"Zapomněla jsem jak... že?" Ravelin zrak se na chvíli zakalil, černé žilky v jejích očích plavou. "A i kdybych si na to vzpomněla, už bych to nikdy neudělala podruhé. Nezapomněla jsem na ten okamžik, kdy po *zlomení* jsem viděla tryskat bolest z tvých žil, tvůj křik byl jako křik naříkajícího dítěte, každá částečka tvého já naplněná *prázdnotou*. Děsivé, dokonce i pro tyto oči."~ */
  IF ~~ THEN REPLY #51635 /* ~"Takže... proto se vevnitř cítím tak prázdně? Protože jsem přišel o svou smrtelnost? Dobrá... jaké další příběhy má kůže vypráví?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"Velké, obrovské zkoušky války... moc, příliš mnoho na jakoukoliv smrtelnou věc."~ */
  IF ~~ THEN REPLY #51637 /* ~"Jaká válka? Kde?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"Ta válka zasahuje VŠE, můj skvělý polo-muži. Není místo, kde by její doteky nebyly cítit... nedotkla se snad tebe?" Ravelin hlas ztichl, je z něj slyšet hořkost. "Na toto, Ravel říká ano."~ */
  IF ~~ THEN REPLY #51639 /* ~"To by vysvětlovalo ty jizvy... jaké další příběhy vypráví má kůže?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"Dva fiendí pitomci..." Ravel si odfrkla. "Jejich malé hlavičky naplněné představami, jaké by Sféry *měly* být, ale jaké *nikdy* nebudou, jinak už by Sféry nebyly více. Taková pitomost!"~ */
  IF ~~ THEN REPLY #51641 /* ~"Nejsem si jistý, že rozumím... jaké další příběhy vypráví má kůže?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"Necítíš žádné základní hlady, ale mnohem, mnohem horší se dusí pod tvou kůži. A za *takovou *cenu..."~ */
  IF ~~ THEN REPLY #51643 /* ~"Hlady? Co tím myslíš?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"Já nevím. Neznám povahu ani důvod těch hladů. Ale slyš tohle: Přicházející události před sebe vrací své *stíny*, můj skvělý poločlověče... Nedá se říct, jaké ty události budou, dokonce ani *Raveliny* oči to nevidí."~ */
  IF ~~ THEN REPLY #51645 /* ~"Uh, dobrá... jaké další příběhy vypráví má kůže?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"Magnet k sobě přitahuje železo... a stejně tak ty, můj vynikající polo-člověče, ale u tebe to není železo, nýbrž mučené duše. Jak ostatní trpí, jsou přitahováni k tobě a jejich cesta se stává tvou."~ */
  IF ~~ THEN REPLY #51647 /* ~"Proč je to tak?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"Magnet k sobě přitahuje železo... a stejně tak ty, můj vynikající polo-člověče, ale u tebe to není železo, nýbrž mučené duše. Jak ostatní trpí, jsou přitahováni k tobě a jejich cesta se stává tvou." Mávla rukou. "Nevidíš to v očích těch, kteří s tebou cestují?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"Mí společníci? Co tím myslíš?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"Chceš to vysvětlit *ty*, githe?" Ravel vrhla na Dak'kona žhavý pohled, doplněný zubatým úsměvem. "Přísahy jsou pevnější než řetězy, že? Okovy rasy dříve zotročené, a teď znovu otrokem?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"Hrací skřínka..." Ravelin pohled se přesunul na Nodroma. "Dříve znal jenom definici *utrpení*, ale teď cítí její osten. Ve světě jedniček a nul neexistuje místo pro dvojku. Žádné místo pro možná ve světě pravdivé a nepravdivé, a žádná trávově zelená v černobílém světě. Když objeví, jak fungují sféry, když objeví PRAVDU za loajalitou a nelogičností, pouze pozná více utrpení..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"Ravel, nech mé společníky být. Chci se tě zep--"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"Ravel, nech mé společníky být. Chci se tě zep--"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"Ravel, nech mé společníky být. Chci se tě zep--"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"Ravel, nech mé společníky být. Chci se tě zep--"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"Ravel, nech mé společníky být. Chci se tě zep--"~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"Praskající doutnající kouzelník..." Raveliny oči odrážejí Ignusův oheň, září pekelným světlem. "Nese s sebou žhavý uhlík dřívější Raveliny vášně, protože se nestará o to, co dělá, ale možná... hluboko v temných místech je mučen tím, čím dříve BYL, než na něj přišla vášeň... hoří má slova pravdou, doutnající mrtvolo?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"Blekotající lebka..." Ravel se ani neobtěžuje podívat se na Morteho, jakoby si ho ani nevšímala. "Jsou vtípky dostatečný štít pro to, co leží uvnitř tvého mozku, hmm? Proč říkat pravdu, když lež postačí?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"Morte...? Co tím myslíš, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"Morte...? Co tím myslíš, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"Morte...? Co tím myslíš, Ravel?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"Svůdkyně z Abyssu..." Ravel zavrčela, její zažloutlé tesáky se zarývají do rtů, jak se šklebí na Fall-from-Grace. "Pokožka tak jemná, rty tak plné, oči takové, že bys dokázal zapomenout na samotnou Ravel, a přece trpí, víc než kdokoli jiný. Když se někdo vzepře své povaze, mnohé je utrpení, které vznikne z takové zrady..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"LŽEŠ, sukubo!" Raveliny rty se shrnuly dozadu. Cení zuby. "LŽEŠ! NEOPOVAŽUJ se mi lhát, když je tvé srdce pro mě jako KNIHA! Každé slovo, které VYPLIVNEŠ, *ječí* tvým utrpením!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"Dej si pozor na svá slova, Ravel! Už toho bylo dost!"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"Dej si pozor na svá slova, Ravel! Už toho bylo dost!"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"Ah..." Ravel ukázala na Annah, jakoby se jí chystala prodat na aukci. "Podívejte se čipernou tieflingici... takové plamenné vlasy a povaha..." Ravel se usmála a odhalila řady zažloutlých zubů. "Mám mluvit o tvém utrpení, tieflingu?" ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"Ne... ne, nebudu o tom mluvit." Ravelin hlas poklesl, jakoby vyčerpáním. Úsměv jí z tváře vymizel. "Už unavují krutosti a muka, unavují Ravel... svět je dost hnusné místo..." Otočila se k tobě, krvavé oči zakalené, a povzdychla si.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"A můj drahý, milovaný polo-člověk... pro *tebe* největší utrpení ze všech... život navždy. Že by se o tebe život staral tak jako Ravel?" Zaskřípala svými žlutými zuby. "Tak odvážný, tak vášnivý, tak hrozivě ztracený, smutný, moc smutný."~ */
  IF ~~ THEN REPLY #51680 /* ~"Ravel, *proč* jsi mě udělala nesmrtelným? Musím vě-"~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"Hádanka z kostí a kůže, to jsi byl, vždy, prosící, zajímavý a nejmilovanější ze všech, kdo ke mně přišli s žádostmi a prosbami. Prosící o pomoc." Ravel se na tebe upřeně zadívala, zúženýma očima protkanýma černými žilkami. "Tak *těžké* vidět za těmi jizvami muže, který tam býval dříve..."~ */
  IF ~~ THEN REPLY #51682 /* ~"Ravel, můžeš mi říct cokoli o tom, jaký jsem byl dříve?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"Stín bez podstaty, hledající to, co vydává světlo. Znala jsem tě víc a ne.. vím.." Ravel se odmlčela, oči se jí zakalují. "Ne více, než vím o povaze KTERÉHOKOLI člověka. Naše minulost propojená... muž poskvrněný nemrtvým, stále cítící soužení z rozdělení, a stará vyschlá bába, teď uvězněná."~ */
  IF ~~ THEN REPLY #51684 /* ~"Propojená minulost?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"Vypadá to, že se potkáváme poprvé? Ne, ne, ne, ne, ne. Ne?" Ravel vypadá na chvilku zmateně, pak se otřásla, jako by ze sebe shazovala nějaké závaží. "Vůbec ne. Ozvěnou minulosti je tohle setkání... nebo budoucnosti, záleží na tom, kterým směrem míří čas."~ */
  IF ~~ THEN REPLY #51686 /* ~"Takže tohle... setkání je ozvěna setkání v minulosti?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"Teď a tehdy - velmi... podobné? Tak zmatené je teď a tehdy, obojí se zrcadlí v druhém.. znovu a znovu dokola, přicházíš ke mně s problémem, výzvou, abych vyřešila NEMOŽNÉ." Ravel na tebe zasyčela, její oči zahořely. "Krásný, *nevděčný*, milovaný muž!"~ */
  IF ~~ THEN REPLY #51688 /* ~"O jakou nemožnost jsem tě požádal?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~Ravel tě zřejmě neslyšela - stále se nachází v minulosti, její oči jsou zakalené, jako by se dívala někam úplně jinam. "Takový oheň v tvých očích, dost na rozpálení srdce Šedé dámy...vášeň, která se měla uvolnit, ale neuvolnila, oheň v tvých očích vyhořel. S rozdělením tvůj život ztratil smysl, obávám se." Ravel se usmála a zacvakala svými zažloutlými zuby, jako by se smála. "Možná bys měl sednout na zadní a belhat se po předních - a možná ti Ravel dá další útržek znalosti."~ */
  IF ~~ THEN REPLY #51690 /* ~"Pokud mi prosby pomohou, tak tě naléhavě prosím, Ravel: Řekni mi, co víš. Potřebuju tvou pomoc, abych si vzpomněl."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"Nebudu *žebrat* o pomoc, Ravel. Jenom se ptám, nic víc."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"Ah... mírné srdce nyní?" V Raveliných očích se zablesklo, kout jejích úst se zkroutil nahoru, jako had. "Život tě zmírnil... ale jeden může doufat..."~ */
  IF ~~ THEN REPLY #51693 /* ~"Ravel, je tady spousta věcí, na které bych se tě chtěl zeptat..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"Stejně jako předtím, nepadneš přede mnu na kolena, můj drahý člověče."~ */
  IF ~~ THEN REPLY #51695 /* ~"Ravel, je tady spousta věcí, na které bych se tě chtěl zeptat..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"Oh, VÍCE otázek máš?" Ravel si tiše brouká, jako by tě kárala. "Csss-css. Ale už jsi mi jich dal táááák moc." Raveliny oči nabraly výraz zvědavosti. "Přišel čas na MÉ otázky, polo-člověče."~ */
  IF ~~ THEN REPLY #51697 /* ~"Dobrá, Ravel... ptej se."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"Ravel, nejdřív potřebuju nějaké informace..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"Nezískáš VÍCE semínek znalosti z mé mysli, dokud nebudou zodpovězeny MÉ otázky. NESNAŽ se mě přesvědčit jinak - v mých očích jsou limity i pro tvou vzácnost."~ */
  IF ~~ THEN REPLY #51700 /* ~"Velmi dobře..."~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"Dám ti své otázky, a ty mi na ně odpovíš, Ravel. Nemám čas ani trpělivost na tvé otázky...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"Neodpovíš na otázky mé... OPOVAŽUJEŠ se?" K tvému překvapení se její zažloutlé tesáky zaleskly a prodloužily, její pařáty *rostou*. "VAROVALA jsem tě. Dej si pozor s odpověďmi, nebo tě otázky ROZTRHAJÍ..."~ */
  IF ~~ THEN REPLY #51703 /* ~"Ravel, já..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~"Věz tohle a znej Ravelin zákon: pokud neodpovíš na mé otázky, neodpovím já více na *tvé*, můj milovaný človíčku. Dej si pozor s odpověďmi, nebo tě otázky ROZTRHAJÍ..."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"Rozumím. Ptej se, Ravel."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"Rozumím. Ptej se, Ravel."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"To je fér. Ptej se, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"To je fér. Ptej se, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"*Nevyhrožuj* mi, Ravel... ptej se, ať to máme za sebou."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"*Nevyhrožuj* mi, Ravel... ptej se, ať to máme za sebou."~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"Chci vědět, proč přede mnou stojíš tak sám... proč s tebou nejsou jiní, kteří by tu přede mnou také stáli?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"Nepřeju si společníky. Moje cesta je moje vlastní, a já nechci, aby po ní šel někdo se mnou."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"Nepotkal jsem nikoho, s kým bych chtěl cestovat."~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"Nikdy bych sem nikoho nepřivedl, Ravel, zvláště, když neznám cestu ven. Je to cesta, kterou jsem se rozhodl podniknout sám."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~Pravdivě: "Ostatní jsou tady. Řekl jsem jim, ať na mně počkají, protože jsem si myslel, že bychom si měli promluvit o samotě."~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"Chtěl jsem s tebou mluvit o samotě, Ravel."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"Myslel jsem, že bychom si mohli promluvit o samotě, krásná Ravel, o starých časech, ty a já..."~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"Na tuhle otázku ti neodpovím, Ravel... dej mi další."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"Už mě nudí tvé otázky, Ravel. Teď jsem na řadě já."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"Ahhh... tak to bylo tehdy... tak je to teď. Další otázku mám já..."~ */
  IF ~~ THEN REPLY #51756 /* ~"Pokračuj..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"Proto jsi jim řekl, ať na tebe počkají někde nedaleko v mém bludišti, můj milý človíčku? Cestuješ sám pouze ve slovech, protože jsi sebou přivedl *ostatní*. A možná mluvíš pravdu... Ale Ravel nevěří tvým medovým slovíčkům. A teď další otázka..."~ */
  IF ~~ THEN REPLY #51758 /* ~"Pokračuj..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"Zkoušela jsem pomoct Paní Bolesti a ona to moc dobře nepřijala."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"Ahhh... velmi dobře. Odpovědi a otázky si vyměníme, ty a já... budou *tajemství* mezi tebou a mnou. A teď mám další otázku..."~ */
  IF ~~ THEN REPLY #51761 /* ~"Pokračuj..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"Css! Lichotníku!" Ravelina tvář se zkroutila v děsivém úsměšku, pak se kdákavě zasmála. "Ale tvá pozornost není nevítaná... možná ti tady lichocení dobře poslouží. Takže... Odpovědi a otázky si vyměníme, ty a já... budou *tajemství* mezi tebou a mnou." Její úšklebek zmizel. "A teď mám další otázku..."~ */
  IF ~~ THEN REPLY #51763 /* ~"Pokračuj..."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"Chci vědět, *proč* jsi cestoval s těmi ostatními... nevěděli snad, kam cestujete?"~ */
  IF ~~ THEN REPLY #51765 /* ~"Vybrali si, že půjdou po této cestě se mnou."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"Jistě že věděli. Kdo by *nechtěl* cestovat sem a setkat se s tebou, krásná Ravel? Život dává velmi málo příležitostí, jako je tato. Přáli si vědět, jestli jsou příběhy o tvé moci a kráse pravdivé... jak jsem já věděl, že jsou."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"Na tuhle otázku ti neodpovím, Ravel... dej mi další."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"Už mě nudí tvé otázky, Ravel. Teď jsem na řadě já."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~Ravel na tebe chvíli tiše zírá, pak se její tvář zkroutila do hrozivého šklebu, řady zažloutlých zubů světélkují ve světle jejích očí. "Ahhhh... můj milý mužíčku, máš sebou *pouze* slova..." Z růžových rtů vystřelil černý jazyk a oblíznul je, jakoby se těšila na jídlo. "... ale jsi DOBŘE vyzbrojený, to rozhodně..."~ */
  IF ~~ THEN REPLY #51770 /* ~Pravdivě: "Říkám pouze pravdu, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~Lži: "Říkám pouze pravdu, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~Pomalu přikývla, škleb zmizel. "A cestují s tebou dobrovolně?"~ */
  IF ~~ THEN REPLY #51773 /* ~"Vybrali si, že mě budou následovat. Jak už jsem řekl, kdo by---"~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*Vybrali*? Ahhh... nebezpečné slovo. Je to tak?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"Ano."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"Ano. Podívej, Ravel, nemám čas na tyhle---"~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"Ano?" Ravel upřela pohled na Dak'kona, její hlas jako šíp. "Je to *výběr*, githe? Je to? Nebo je to záležitost dvou nebes?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"A co hrací skřínka?" Ravel se otočila k Nordomovi. "Co TA ví o *výběru*?" Luskla prsty, vydala tak zvuk praskající kosti. "Je tady pouze poslušnost a poslušnost, hmnnn?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"Myslíš si, že hořícího muže zajímá nějaký *výběr*? Pálit, či nepálit, to jsou jeho jediné výběry, a na konec, jeden výběr vždycky vyhraje. Copak může mít oheň jinou touhu, *než* pálit?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~Ravel se otočila k Mortemu. "Lebka, lebka, lebka..." Ravel po každém slovu mlaskla jazykem, její úsměv se rozšířil. "Tvůj výraz se těžko čte, bez kůže na kostech, ale i odsud cítím tvůj STRACH. Přijít sem, to *nebyl* tvůj výběr."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"Sukuba..." Ravel zašilhala. "Měla na výběr? Možná v její jemňoučké mysli plné hebkého hedvábí a tvrdých pravd, MOŽNÁ , měla na výběr... csss. Ale ne. Vnímavý MUSÍ zažít všechno, a odmítnout přijít - to by NEBYLA Vnímavý. Stále žádný výběr!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"Ravel. Už dost..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"Ravel. Už dost..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"*Tiefling*. Tak ŽHAVÁ." Ravel se zasmála, jakoby pobaveně. "Žádný výběr. Vůbec. Když *cítíš* místo *myšlení*, na výběr už nezbývá moc místa."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"Ššššššš... budeš mít spoustu času na mluvení, můj vzácný mužíčku." Ravel zaťukala pařátem na jeden ze svých tesáků. "Tahle otázka je další: Co cítíš k těm, kteří s tebou přišli? ZÁLEŽÍ ti na nich?" Usmála se, černé žilky tančí v jejích očích. "Nebo jsou pro tebe jenom NÁSTROJE?"~ */
  IF ~~ THEN REPLY #51792 /* ~"Proč chceš vědět něco takového?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~Pravdivě: "*Záleží* mi na nich. A to je vše, co to k tomu řeknu. Dej mi další otázku."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~Pravdivě: "Jenom nástroje. Nic víc. A to je vše, co to k tomu řeknu. Dej mi další otázku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"Mé city k mým společníkům jsou záležitostí mezi mnou a jimi, Ravel. Dej mi další otázku, protože na tuhle ti neodpovím."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"Na tuhle otázku ti neodpovím, Ravel..."~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"Už mě nudí tvé otázky, Ravel. Teď jsem na řadě já."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"Cssss... tvrdohlavý jako githzerai! To je DALŠÍ otázka, ale odpověď na ni tě nebude stát nic - má odpověď zní, protože si to PŘEJU vědět, nic víc. A teď mi vydej odpověď ze svého pochybovačného srdce."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~Pravdivě: "Jenom nástroje. Nic víc. A to je vše, co to k tomu řeknu. Dej mi další otázku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"Mé city k mým společníkům jsou záležitostí mezi mnou a jimi, Ravel. Dej mi další otázku, protože na tuhle ti neodpovím."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"Na tuhle otázku ti neodpovím, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"Už mě nudí tvé otázky, Ravel. Teď jsem na řadě já."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"Nebudeš přede mnou mít žádná tajemství, polo-člověče!" Ravel zasyčela. "ODPOVÍŠ mi na mou otázku, jinak tady mezi těmito zdmi budeš trpět."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~Pravdivě: "*Záleží* mi na nich."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~Pravdivě: "Jenom nástroje. Nic víc. A to je vše, co to k tomu řeknu. Dej mi další otázku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~Pravdivě: "Jenom nástroje. Nic víc. Následují mě z vlastních důvodů, a já využiju jejich dovednosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"Na tuhle otázku ti neodpovím, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"Už mě nudí tvé otázky, Ravel. Teď jsem na řadě já."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"Dokonce i gith?" Ravelin žhavý pohled padl na Dak'kona, pak se vrátil k tvým očím. "Řekni, co pro tebe znamená, a řekni pravdu, jinak pohnojí mou zahrádku."~ */
  IF ~~ THEN REPLY #51834 /* ~Pravdivě: "Je to můj spojenec. *Znám* ho. Je to můj přítel."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~Pravdivě: "Gith? Nezáleží mi na něm tak či onak."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~Pravdivě: "Často mě štve. Nenávidím ho."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~Pravdivě: "O mnoha věcech mlčí. Ještě mu úplně nevěřím."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~Pravdivě: "Je užitečný... nic víc."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~Pravdivě: "Vypadá dost důvěryhodně. Je loajální a bojoval statečně po mém boku."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~Pravdivě: "Ještě o Dak'konovi nevím dost, abych se mohl vyjádřit."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"Dokonce i gith?" Ravelin žhavý pohled padl na Dak'kona, pak se vrátil k tvým očím. "Neznamená pro tebe nic? Mluv pravdivě, je jenom nástroj."~ */
  IF ~~ THEN REPLY #51842 /* ~Pravdivě: "Nestarám se o něj. Chodí se mnou a poslouchá mé rozkazy. To je vše."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~Pravdivě: "Nenávidím ho."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~Pravdivě: "Ano, a vždy bude jenom nástroj, protože mezi námi není žádná důvěra."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~Pravdivě: "Možná ho ještě dost neznám, ale prozatím pro mě nic neznamená."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"Ach..." Ravel kývla... a pak se zase usmála, její drápy cvakají o sebe.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"Překvapuje tě to?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"Překvapuje tě to?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"Překvapuje tě to?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"Překvapuje tě to?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"Překvapuje tě to?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~Ravel si odfrkla, pak cvakla zuby. "Jednoduchá odpověď. Nezáleží na tom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"Je to pravda, Ravel."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"Je to pravda, Ravel."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"Je to pravda, Ravel."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"Je to pravda, Ravel."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"A co lebka?" Ravel se ani neobtěžuje podívat se na Morteho. "Takovému, jako jsi ty, na něm určitě nezáleží! Nebo... ano?"~ */
  IF ~~ THEN REPLY #51858 /* ~Pravdivě: "Mám ho rád... je to můj přítel."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~Pravdivě: "Lebka? Nijak se o něj nestarám."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~Pravdivě: "Často mě rozzuří a v boji je na nic; Nenávidím ho."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~Pravdivě: "Abych řekl pravdu, ještě mu nevěřím. Vypadá to, že toho hodně zná, ale moc mi toho neřekne."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~Pravdivě: "Bývá otravný... ale dá se k lecčemu použít."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~Pravdivě: "Je užitečný... nic víc."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~Pravdivě: "Ještě o Mortovi nevím dost, abych mohl něco říct."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~Pravdivě: "Vypadá docela důvěryhodně. Je loajální a pomohl mi zachránit život v márnici."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"A co lebka?" Ravel se ani neobtěžuje podívat se na Morteho. "Nepřekvapuje mně, že ti na něm nezáleží! Nebo... ano?"~ */
  IF ~~ THEN REPLY #51867 /* ~Pravdivě: "Ne, nestarám se o něj. Jde za mnou a poslouchá mé rozkazy. To je vše."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~Pravdivě: "Nenávidím ho."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~Pravdivě: "Ano, a vždy bude jenom nástroj, protože mezi námi není žádná důvěra."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~Pravdivě: "Možná ho ještě dost neznám, ale prozatím pro mě nic neznamená."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"Zajímavé, zajímavější, zajímavoučké..." Ravel se usmála. "Začíná se mi tady rýsovat docela zajímavá hádanka. "Co se ještě skrývá v temných částech tvé mysli?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"Nic neskrývám."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"Nic neskrývám."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"Nic neskrývám."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"Nic neskrývám."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"Nic neskrývám."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"Ach..." Ravelin hlas nabral výhružnou hloubku. Otočila se k Fall-from-Grace, její rudé oči září. "A tady je jádro všeho - svůdnice z Abyssu... je to pro tebe pouhé maso, plné sexu, nebo je v tvých očích něco *jiného*?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~Ravel se otočila zpět k tobě, zacvakala tesáky. "*Mluv*, vzácný mužíčku, ale dej si pozor, jaká slova mi povíš."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~Lži: "Co je v porovnání s tebou, krásná Ravel? Nedokáže se srovnávat s tvým vzhledem, tvou inteligencí, tvou mocí."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~Pravdivě: "Co je v porovnání s tebou, krásná Ravel? Nedokáže se srovnávat s tvým vzhledem, tvou inteligencí, tvou mocí."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~Pravdivě: "Mohl bych se do ní zamilovat."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~Pravdivě: "Mám ji rád. Považuju ji za přítelkyni."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~Pravdivě: "Sukuba? Nijak zvlášť mi na ní nezáleží, tak či tak."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~Pravdivě: "Její nadřazenost se dá jen těžko vydržet. Nenávidím ji."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~Pravdivě: "Na fienda, který žije století toho řekla jenom málo o své minulosti. Ještě jí nevěřím."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~Pravdivě: "Má své využití... nic víc."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~Pravdivě: "Ještě jí dost neznám."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~Ravel přejela pohledem zpět na Grace. "Hmmmmnnn..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"Dost těch her, Ravel. Hele - "~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"Dost těch her, Ravel. Hele - "~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"Další otázky?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~Ravel přejela pohledem zpět na Grace. "Hmmmmnnn... takže kdybych ji srazila k zemi, rozmáčkla její pekelné srdce, ani by ses nepohnul? Odpovídej opatrně..."~ */
  IF ~~ THEN REPLY #51893 /* ~"Já... stahuju svá slova. Nechci, abys jí ublížila."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"Sraz ji na zem, Ravel - nestarám se o ni. Nic pro mě neznamená."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"Pah! Paličáku!" Raveliny oči zadoutnaly, a když se otočila zpět k tobě, vidíš, že žilky v jejích očích se *zostřily*. Jaká myšlenka ti teď proletuje lebkou?"~ */
  IF ~~ THEN REPLY #51896 /* ~"Mluvil jsem falešně - nevěděl, jsem co říkám, ale už mám dost smrti... své i jakékoli jiné... na několik životů dopředu."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~Ravel si přeměřila Fall-from-Grace, pak se zasmála. "Jakékoli obrany, které dokážeš shromáždit, jsou tady *bezcenné*, tanar'ri... ale snažíš se. Drž se pevně svého strachu. Brzy se ti budu věnovat..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"Dost těch her, Ravel. Hele - "~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"Dost těch her, Ravel. Hele - "~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"Další otázky?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"Hmnnnn..." Ravel se otočila, cvakla zuby a pak se podívala na Annah, s odfrknutím. "A co TENHLE kus masa... fiendko, tiefling s rudými vlasy a ohnivou vášní. Co je pro tebe ONA, můj vzácný mužíčku?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~Lži: "Nic, krásná Ravel. Jenom ty pro mě něco znamenáš... žádná jiná."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~Pravdivě: "Nic, krásná Ravel. Jenom ty pro mě něco znamenáš... žádná jiná."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~Pravdivě: "Mohl bych se do ní zamilovat."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~Pravdivě: "Mohl bych se do ní zamilovat."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~Pravdivě: "Mám rád její společnost... považuji ji za přítelkyni."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~Pravdivě: "Fiendku? Nestarám se o ni, tak či tak. Je mi ukradená."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~Pravdivě: "Její drzost se občas nedá vydržet. Nenávidím ji."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~Pravdivě: "Myslím, že má ty nejhorší fiendské vlastnosti. Věřím jí asi tak daleko, jak daleko s ní dokážu hodit."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~Pravdivě: "Má své využití... nic víc."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~Pravdivě: "Ještě jí dost neznám."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~Raveliny oči ZAHOŘELY, zvedla své pařáty vzhůru. Nedobrovolně si ustoupil o krok vzad. "Ty nevíš nic o LÁSCE, můj vzácný mužíčku, když si myslíš, že by se mohla SDÍLET mezi těma dvěma fiendskýma děvkama a Ravel... už nechci slyšet víc tvých slov - ODPOVĚDĚL jsi na mé otázky..."~ */
  IF ~~ THEN REPLY #51913 /* ~"Ravel, přeřekl jsem se! Nevěděl jsem, co říkám, nevěděl jsem, že to -"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~Raveliny rty se odhrnuly, její hlas začíná být řezavý, jako ječící vichr. "Co TY víš o VĚDĚNÍ, polo-muži?! VĚZ tohle: VĚZ, že tady zůstaneš až do KONCE DNŮ, tady v mé zahrádce, nikdy neodejdeš, a budeš mě MILOVAT, jak jsi MĚL, jak jsi SLIBOVAL!"~ */
  IF ~~ THEN REPLY #51915 /* ~"Pokud musíme bojovat, abychom to vyřešili... Připrav se, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"Ah... a teď je tady otázka, ne dvojsečná, ale stosečná, každý osten OSTŘEJŠÍ než ten minulý" Ravel píchla pařátem směrem k Annah. Fiendka, tiefling s rudými vlasy a ohnivou vášní. Co je pro tebe ONA, můj vzácný mužíčku?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~Lži: "Nic, krásná Ravel. Jenom ty pro mě něco znamenáš... žádná jiná."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~Pravdivě: "Nic, krásná Ravel. Jenom ty pro mě něco znamenáš... žádná jiná."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~Pravdivě: "Mohl bych se do ní zamilovat."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~Pravdivě: "Mám rád její společnost... považuji ji za přítelkyni."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~Pravdivě: "Fiendku? Nestarám se o ni, tak či tak. Je mi ukradená."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~Pravdivě: "Její drzost se občas nedá vydržet. Nenávidím ji."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~Pravdivě: "Myslím, že má ty nejhorší fiendské vlastnosti. Věřím jí asi tak daleko, jak daleko s ní dokážu hodit."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~Pravdivě: "Má své využití... nic víc."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~Pravdivě: "Ještě jí dost neznám."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~Ravel se podívala na Annah, pak si odfrkla, její oči protkané černými žilkami září. "Hmmmmnnn... budiž."~ */
  IF ~~ THEN REPLY #51927 /* ~"Dost těch her, Ravel. Hele - "~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~Ravel se podívala na Annah, pak si odfrkla, její oči protkané černými žilkami září. "Hmmmmnnn... takže by ti nechyběla? Její ohnivá krev by byla vítané krmivo pro Trigity... už dlouho neochutnali fiendskou krev." Ravel stále pohledem sleduje Annah, ale mluví s tebou. "Odpověz opatrně, můj vzácný mužíčku. Tohle NENÍ hra."~ */
  IF ~~ THEN REPLY #51929 /* ~"Já... stahuju svá slova. Nechci, abys jí ublížila."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"Sraz ji k zemi, Ravel - nestarám se o ni. Je to jenom odpad z Úlu, nic víc."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"Pah! Paličáku!" Raveliny oči zadoutnaly, a když se otočila zpět k tobě, vidíš, že žilky v jejích očích se *zostřily*. Jaká myšlenka ti teď proletuje lebkou?"~ */
  IF ~~ THEN REPLY #51932 /* ~"Mluvil jsem falešně - nevěděl jsem co říkám, ale už mám dost smrti... své i jakékoli jiné... na několik životů dopředu."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"Nezabiju ji... zatím. Protože ona tady v mém bludišti dlouho nevydrží... slyšíš mě, děvče? Stíny, které máš ráda, tě tady NEUCHRÁNÍ." Ravel se zasmála. "Modli se, ať ti tvá zuřivost dá sílu, může to znamenat několik cenných chvilek mezi životem a smrtí..."~ */
  IF ~~ THEN REPLY #51934 /* ~"Dost těch her, Ravel. Už jsi vyčerpala své otázky?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"Má DALŠÍ otázka je tato..." Ravelin hlas ztichl, téměř šeptá. A náhle máš silný pocit, že NECHCEŠ slyšet další otázku. "Proč ti trvalo tak dlouho, než ses ke mně *vrátil*? Ravel tady byla bez tebe hodně osamělá, mužíčku."~ */
  IF ~~ THEN REPLY #51936 /* ~"Cesta na toto místo je... složitá, Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"Cesta na toto místo je složitá, krásná Ravel. Bylo vynaloženo hodně snahy, abys tady neměla žádnou společnost, mnoho bylo zkoušek, které jsem musel splnit, abych se tady k tobě dostal. Ale jsem rád, že tě zase vidím, Ravel - jak vidím, čas nezasáhl tvou krásu."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"Na tuhle otázku ti neodpovím, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"Je cesta tak těžká?" V koutku úst jí hraje náznak úsměvu. "Tak potom je tvá návštěva vzácná a já ti za ni děkuju."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"Máš pro mě další otázku?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"Máš pro mě další otázku?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"Máš pro mě další otázku?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"Tvé odpovědi..." V Raveliných očích se zablesklo, její rty se shrnuly v groteskním úsměvu. "Tvá slova jsou *konejšivá*, tak dlouho jsem je neslyšela... rozrušily dokonce i mé černé srdce. Ať už jsou tvé vzpomínky kdekoli, tvůj šarm stále zůstává, krásná věcičko..." ~ */
  IF ~~ THEN REPLY #51944 /* ~"Ne, to *tvůj* šarm zůstává, krásná Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"Možná. Máš pro mě další otázku?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"Možná. Máš pro mne další otázku?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"Možná. Máš pro mne další otázku?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"Amulety, kouzla, klamy... všechny ty Ravel zvládla... ale ještě stále je tady mnoho, co bych tě mohla *naučit*..."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"Možná. Máš pro mě další otázku?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"Možná. Máš pro mě další otázku?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"Možná. Máš pro mě další otázku?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"Ahhhh, annnooo. Třetí a poslední z mých otázek je jednoduchá. Odpověz mi, a pak TVÉ otázky mohou létat volně, a Ravel je uzavře odpověďmi... má poslední otázka je tato..."~ */
  IF ~~ THEN REPLY #51954 /* ~"Ano...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"Ahhhh, annno. Třetí a poslední otázka je *tato*..." Jak Ravel otevřela ústa, aby vyslovila svou poslední otázku, náhle sis s hrozivým otřesem uvědomil, že tato poslední otázka zabila mnoho jiných, kterým byla položena. Víš, co to je, a cítíš, jak se v tobě zdvihá, něco tě nutí, abys jí vyslovil.~ */
  IF ~~ THEN REPLY #51962 /* ~Ozvěna: "Co dokáže změnit charakter člověka?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"Co dokáže změnit charakter člověka?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~Pravdivě: "Já... já nevím."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~Pravdivě: "Láska."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~Pravdivě: "Nenávist."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~Pravdivě: "Moc."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~Pravdivě: "Chamtivost."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~Pravdivě: "Zrada."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~Pravdivě: "Smrt."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~Pravdivě: "Žal."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~Pravdivě: "Věk."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~Pravdivě: "Utrpení."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~Pravdivě: "Úspěch."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~Pravdivě: "Sféry."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~Pravdivě: "Ty, Ravel. Tak jako jsi změnila mou povahu navždy."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~Lži: "Krásná žena, Ravel. Tak jako jsi mě změnila ty."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~Pravdivě: "Nic nedokáže změnit povahu člověka, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~Pravdivě: "Na tuhle otázku nedokážu odpovědět..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"Vidím, že jsi nezapomněl..." Ravel se usmála, její žluté zuby se zaleskly. "Jaká je tvá odpověď?"~ */
  IF ~~ THEN REPLY #51981 /* ~Pravdivě: "Já... já nevím."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~Pravdivě: "Láska."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~Pravdivě: "Nenávist."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~Pravdivě: "Moc."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~Pravdivě: "Chamtivost."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~Pravdivě: "Zrada."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~Pravdivě: "Smrt."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~Pravdivě: "Žal."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~Pravdivě: "Věk."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~Pravdivě: "Utrpení."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~Pravdivě: "Úspěch."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~Pravdivě: "Sféry."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~Pravdivě: "Ty, Ravell. Tak jako jsi změnila mou povahu navždy."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~Lži: "Krásná žena, Ravel. Tak jako jsi mě změnila ty."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~Pravdivě: "Nic nedokáže změnit povahu člověka, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~Pravdivě: "Na tuhle otázku nedokážu odpovědět..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"A to je tvá odpověď...?" Žilky v Raveliných očích se začínají pohybovat, samotná Ravel se velice zle usmála. "Buď si jistý, než odpovíš."~ */
  IF ~~ THEN REPLY #51998 /* ~"Možná to není *tvá* odpověď, ale je to *má* odpověď."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"Ah!" Ravel se zasmála, ale její smích rychle odumřel. Zaryla do tebe pohled takovou silou, že téměř cítíš, jak se pod ním kroutí tvá kůže. Žilky v Raveliných očích se začínají přesouvat. Ravel se pomalu, velice zle usmála. "Potěšující odpověď... ale je to ta pravá? Buď si jistý, než odpovíš."~ */
  IF ~~ THEN REPLY #52000 /* ~"Možná to není *tvá* odpověď, ale je to *má* odpověď."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"A to je vše, co jsem si přála, můj vzácný mužíčku." Ravelin úsměv se uklidnil. "Jednoduchá odpověď, a přitom bylo tolik lidí, které jsem složila, zatímco oni hledali MOU odpověď."~ */
  IF ~~ THEN REPLY #52002 /* ~"Tak je to...? Myslel jsem..."~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"Ha! Hlupáci... ale copak takoví nejsou všichni smrtelníci?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~Ravel se zasmála. "Nespočetněkrát jsem tuhle otázku položila, ale ani JEDNOU ti patetičtí ubožáci neodpověděli SVOU odpovědí, ale snažili se přijít na to, co je v mé mysli a odpovědět to, co jsem si myslela *já*... csss! Není v tom žádná pravda."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"Já... nevěřím ti. Vlastně si nemyslím, že by ti někdy mohli odpovědět pravdivě, i kdyby to byla pro ně pravda."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"Oh, no tak, nemusíš mi lhát, Ravel. Oba víme, že ti nikdy nemohli odpovědět pravdivě, i kdyby to pro ně byla pravda."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~Ravel náhle podivně ztichla. Pozorně si tě prohlíží.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"MÁ odpověď byla ta jediná, kterou jsi chtěla. Proto ti nikdy nikdo nemohl odpovědět. Ta hromada mrtvol musela být nakonec dost vysoká, co?"~ */ JOURNAL #52010 /* ~Ta špinavá baba Ravel mě otravovala třemi šílenými otázkami, a o té poslední *vím*, že už jsem jí dřív slyšel: "Co dokáže změnit charakter člověka?" Odpověděl jsem a ona přijala mou otázku - jak jsem podezíral, jakákoliv odpověď, kterou bych ji dal, byla ta, na kterou tak dlouho čekala. Spousta hlupáků po staletí umírala, když se snažila přijít na Ravelinu odpověď... a nikdo z nich nevěděl, že ona chtěla znát jenom tu moji. Možná že debilita je to, co pohání Sféry...~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"*Nikdy* ses nestarala o jinou odpověď, než mou. Nikdy. Ale stále jsi tu otázku pokládala, i když jsi věděla, že ať už ti odpoví jakkoli, zemřou tvou rukou."~ */ JOURNAL #52011 /* ~Ravel mi dala tři otázky, o té poslední vím, že už jsem jí dříve slyšel: "Co dokáže změnit charakter člověka?" Odpověděl jsem a ona přijala mou otázku - jak jsem podezíral, jakákoliv odpověď, kterou bych ji dal, byla ta, na kterou tak dlouho čekala. Myslím, že během staletí zemřela spousta lidí, která se pokoušela odpovědět na Ravelinu otázku... nikdo z nich nevěděl, že jí záleží jenom na mé odpovědi.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~Ravel zasyčela. "JASNĚ že jsem toužila po tvé odpovědi, protože ty jsi byl JEDINÝ důvod, proč jsem se na to ptala! Myslíš si, že mi na nich záleželo? Csss! Myslíš, že jsem k nim cítila jenom *zlomeček* toho, co jsem cítila k tobě, můj vzácný mužíčku.? Odpověz mi na to!"~ */
  IF ~~ THEN REPLY #52013 /* ~"Už jsem skončil s odpovídáním na tvé otázky. Ravel. Teď budeš odpovídat ty mně."~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"Jistě... vždy otázky, vždy otázky..."~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"Proč jsi ze mně udělala nesmrtelného, Ravel?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"Pověz mi znovu, Ravel - proč jsi ze mě udělala nesmrtelného?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"Takže ty jsi mi vzala mou smrtelnost, Ravel... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"Takže ty jsi mi vzala mou smrtelnost, Ravel... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"Takže ty jsi mi vzala mou smrtelnost, Ravel... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"Je má smrtelnost stále neporušená, Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"Kdo je ten, kdo ví, kde je má smrtelnost?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"Mám nějaké otázky o TOBĚ, Ravel..."~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"Děkuju ti za informace, které jsi mi dala, Ravel. Teď musím odejít."~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"To jsi přece *chtěl*, a žádal jsi o to tak sladce... jak by mohla Ravel říct 'ne' někomu, jako jsi ty? Nesmrtelnost bylo *tvé* řešení a tvá výzva pro mě."~ */
  IF ~~ THEN REPLY #52025 /* ~*"Mé* řešení? Ale proč?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"Nevím. Čas osekal i mé vzpomínky, jak to tak vypadá... napadá? Pokud si pamatuješ, řekni mi to, já sama jsem zvědavá. Muselo to být něco důležitého... není to v povaze člověka, že chce žít navždy?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"Ravel... tohle je VELMI důležité: Nemáš tušení, proč jsem tě požádal, abys to udělala?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"Smrt byla věc, které ses chtěl vyhnout. Lehko se to řekne, ale UDĚLAT, to už ne! Nesmrtelnost, dokonce i s těmi chybičkami, bylo nejlepší řešení, s kterou tahle mysl dokázala přijít..."~ */
  IF ~~ THEN REPLY #52031 /* ~"Ale..."~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"Olovo se mění nesnadno na zlato, ale je to možné, i když nemoudré. Pokud může být z krve vytáhnuta voda, může být smrtelnost vytažena ze smrtelníka, sloupnuta, jak vrstva špíny..."~ */
  IF ~~ THEN REPLY #52034 /* ~"Takže jsi ji odstranila?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"Rozdíl mezi člověkem a nečlověkem je velký. Procestoval jsi velkou vzdálenost. Dodala jsem ti prostředky, ale šel jsi sám." Ravel se plácla do hlavy, zajela si prsty do vlasů. "Zlá Ravel! Smrtelnící jsou příliš vadní, aby vydrželi! Stále se lámou! Musí být dotáhnutí, zatímco křičí a kopou, do nové, nezdravé formy."~ */
  IF ~~ THEN REPLY #52037 /* ~"Nezdravé..? Takže rituál měl... chybu?"~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"Musí se použít zkratky, a pak se to může *zlomit*.. protože ne vždy se zlomí forma, ale někdy substance, která je do ní nalitá. Vnuť něčemu tvar, jaký nemá mít, a zlomí se! Myslela jsem, že materiál je dostatečně silný, ale ty jsi zlomený."~ */
  IF ~~ THEN REPLY #52040 /* ~"Ale já *jsem* nesmrtelný - takže to byl úspěch?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"Přežil jsi dlouho, znesmrtelněný, ale stal ses obětí stvoření, kterým je život." Sevřela dlaně dohromady. "Tělo je pouze domek pro duši. Ale v tvém domku nikdo nesídlí."~ */
  IF ~~ THEN REPLY #52043 /* ~"Co bylo špatně s tím rituálem?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"Zlomený, překrásný, překrásný smrtelný mužíčku, rituál nebyl... nebyl? Byl... Nebyl dokončený." Ravelino obočí se svraštilo, její pařáty přejely po jejích vlasech, uvolňujíce jeden pramen. "Rituál ti dal, co jsi chtěl, ale..."~ */
  IF ~~ THEN REPLY #52046 /* ~"Ale..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"Rituál ti dal, co jsi chtěl, ale *ohromná* byla cena... vrhání stínů, klidné, násilné smrti mysli, bolestivá prázdnota... tyhle věci jsou nebezpečné v tak křehké nádobě, ať už je smrtelník sebesilnější. Lituješ toho, co ti rituál dal."~ */
  IF ~~ THEN REPLY #52049 /* ~"Vrhání stínů?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"Tichá, násilná smrt mysli?~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"Bolestivá prázdnota?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"Navzdory těmhle problémům to vypadá, že rituál fungoval..."~ */ JOURNAL #52054 /* ~Ravel řekla, že jsem ji sám požádal, ať mne učiní nesmrtelným, ale nemůže si vzpomenout, proč jsem to chtěl. Dlouze hovořila o rituálu - řekla mi, že "vrhám stíny na existenci." Pokaždé, když zemřu, zrodí se další stín a hledá mě, aby mě zavraždil. Také řekla, že zatímco se moje tělo hojí, moje mysl ne... čím víckrát umírám, tím více ze sebe sama ztrácím, když se znovu proberu ze smrti. Mohlo by tohle vysvětlit mou ztrátu paměti? Nevím. A také řekla, že ta prázdnota, kterou v sobě cítím, je místo, kde byla dříve má smrtelnost...~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"Nevděčné stíny... ale nevděčné bez důvodu? Stíny... ony tě nenávidí, Bezejmenný, protože jsou stvořeny tebou, tvé děti, jednou zavržené, nikdy neodpustí. Udělají cokoli, aby zničily svého rodiče... takové už děti bývají."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"Jak tvořím... ty stíny?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"Jak tvořím... ty stíny?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"Vrháš stíny na existenci, Bezejmenný. S každou smrtí povstane z tvého masa nový stín. Chvíli poletují, ale pak se vždy vrátí a chtějí zabít svého rodiče. Tak už to často bývá s dětmi..." Ravel se zatvářila znechuceně, pak tě náhle bodla drápem do hrudi. "... a nevděčnými mladými muži, jako jsi ty."~ */
  IF ~~ THEN REPLY #52060 /* ~"Pověz mi víc o tom rituálu..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"Tisíce smrtí, a ty ses z každé vzpamatoval. Ale ne mysl, mysl je mnohem křehčí. Její jizvy zabíhají hluboko a neléčí se. Mozek je zakrytý v tvrdé kostěné schránce, těžké na rozbití, ale bez jakékoli obrany proti tomu, co ho pojídá zevnitř."~ */
  IF ~~ THEN REPLY #52063 /* ~"Pověz mi víc o tom rituálu..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"Máš v sobě díru - plnou pýru? - díru, kde dříve byla tvá smrtelnost." Sevřela ruku v pěst a zatřásla s ní. "Štěrchej, štěrchej, dutý muži, dětská hračko, chrastítko pro dítko, jenom malý kamínek uvnitř, který chrastí..."~ */
  IF ~~ THEN REPLY #52066 /* ~"Pověz mi víc o tom rituálu..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"Pochybuješ o Ravel? Jistě, že jsem ti dala, co bylo slíbeno! Jenom chvilku poté, co kouzlo skončilo, jsem tě zabila, abych viděla, jestli fungovalo. Tak jsi bojoval, ale já tě svírala *pevně* a sledovala jsem, jak umíráš první z mnoha smrtí." Ravel zacvakala zuby. "Tak jsem objevila chyby..."~ */
  IF ~~ THEN REPLY #52072 /* ~"Jaké chyby?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"Ego nás omotává jako vězení. Zapomněla jsem, že často funguje jako štít." Ravel mlaskla jazykem. "Má hezká, krásná věcičko, je mnoho moudrosti a pochopení v pravdě, že život je jenom příprava na konečný cíl: smrt. Naše životy jsou jenom prostředky, které nás učí, *jak* zemřít. A když na něco takového ZAPOMENEME..." ~ */
  IF ~~ THEN REPLY #52075 /* ~"Takže tak jsi zjistila, že ztrácím vzpomínky pokaždé, když zemřu..."~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"Už jsem slyšel dost. Mám jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"Ano..." Ravel kývla. "Nešťastné... bez smrtelnosti, která drží vzpomínky pevně pohromadě, je tělo jenom skořápka..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"Takže ty jsi mi vzala mou smrtelnost... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"Takže ty jsi mi vzala mou smrtelnost... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"Takže ty jsi mi vzala mou smrtelnost... Je ještě neporušená?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~Ravel je nejdříve překvapená, pak poplašená. "Ano, ano, *ano*! Neboj se o zlomenou smrtelnost... když jsi tady... slyšíš? Slyšíš mě, jak k tobě mluvím, v kuse musí být tvá smrtelnost. Taková věc nemůže... vymůže... přemůže... nemůže být zničena, dokud existuješ. Jsi *kotva* pro svou smrtelnou duši. Dokud jsi neporušený *ty*, bude tak i ona. Vydržíš mnoho..." Ravel se usmála, sípavě se rozesmála. "Protože život tě spolkl a pak vyplivl!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~Ravel je nejdříve překvapená, pak poplašená. "Ano, ano, *ano*! Neboj se o zlomenou smrtelnost... když jsi tady... slyšíš? Slyšíš mě, jak k tobě mluvím, v kuse musí být tvá smrtelnost. Taková věc nemůže... vymůže... přemůže... nemůže být zničena, dokud existuješ. Jsi *kotva* pro svou smrtelnou duši. Dokud jsi neporušený *ty*, bude tak i ona. Vydržíš mnoho..." Ravel se usmála, sípavě se rozesmála. "Protože život tě spolkl a pak vyplivl!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~Ravel je nejdříve překvapená, pak poplašená. "Ano, ano, *ano*! Neboj se o zlomenou smrtelnost... když jsi tady... slyšíš? Slyšíš mě, jak k tobě mluvím, v kuse musí být tvá smrtelnost. Taková věc nemůže... vymůže... přemůže... nemůže být zničena, dokud existuješ. Jsi *kotva* pro svou smrtelnou duši. Dokud jsi neporušený *ty*, bude tak i ona. Nemůže být zničena o nic více než ty."~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~"Už dost, Ravel. Vzala jsi mi mou smrtelnost, a způsobilo to více škod než užitku. Vezmu si ji zpátky - myslím, že už jsi ji měla dost dlouho."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"Velmi dobře. Mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"Ah... požaduješ ty...?" Raveliny žilnaté oči se zaostřily, nabraly nebezpečný lesk, a Ravel vycenila své zažloutlé zuby. "Ne, ne, ne. To já, Ravel, *neudělám*. Co je zrušeno, nemůže být provedeno."~ */
  IF ~~ THEN REPLY #52087 /* ~"Ravel... Už mě unavují tvoje slovní hříčky. Už s tebou nehraju. Dej mi zpět mou smrtelnost, nebo tě zabiju."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"Proč ne?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"Už jsem slyšel dost. Mám nějaké jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"Zabiješ ty mně, mně zabiješ ty, nezáleží na tom. Je těžké říct, kterým z mnoha směru času já teď mířím. Smrtelníci stoji v opačném směru, dívají se do budoucnosti, a já se dívám do minulosti, protože se mi nelíbí, co vidím v budoucnosti."~ */
  IF ~~ THEN REPLY #52091 /* ~"Nech těch nesmyslných keců, Ravel. Už mě to nebaví. Vrať mi mou smrtelnost... *teď*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"Už jsem slyšel dost. Mám nějaké jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"Ravel ti *nemůže* dát takovou věc, můj vzácný mužíčku, protože Ravel nemá *co* ti dát... Nikdy jsem nevlastnila *tebe* nebo tvou smrtelnost... I když jsem si přála nechat si obojí ve své zahradě, ze sobeckosti, kvůli tvému masu a duchu... ale k takové věci se Ravel nedokázala donutit..."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"Proč ne?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"Proč ne?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"Jestli ji ty nemáš, Ravel... kde je má smrtelnost?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"Už jsem slyšel dost. Mám nějaké jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~Ravel se široce usmála. "Je tomu tak těžké uvěřit, fiendko?" Zasmála se, sama pro sebe. "To, že je Ravel Ravel, a tedy mýtus, znamená to snad, že si *nezaslouží* mít takový pocit ve svém černě trnitém srdci?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"Tak jestli ji nemáš ty, Ravel... kde je má smrtelnost?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"Už jsem slyšel dost. Mám nějaké jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~Ravel se široce usmála. "Je tomu tak těžké uvěřit, sukubo?" Zasmála se, sama pro sebe. "To, že je Ravel Ravel, a tedy mýtus, znamená to snad, že si *nezaslouží* mít takový pocit ve svém černě trnitém srdci?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"Csss! Minulost je minulost a historie se málo stará o vlastní pravdivost..." Ravel se zamračila, pak se její hlas trochu snížil, výhružně, jak si prohlíží Grace. "Pocit mě *přejel*, ano... a teď tě *držím* za tvůj stříbrný jazyk, dcero Abyssu. Nepotřebuju tvá měkká slova, která tady rozprostírají mlhu. Muž a já si promluvíme, a ty nás necháš. Brzy se ti budu věnovat."~ */
  IF ~~ THEN REPLY #52103 /* ~"Dost, Ravel: Jestli ty mou smrtelnost nemáš, tak kde je?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"Už jsem slyšel dost. Mám nějaké jiné otázky..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"*Já* nevím, cukříčku. Ale na tvém místě bych ji získala zpátky, rychle-rychle. Nevíš, jaké hrozivé věci by mohl někdo provést, kdyby zadržel tvou smrtelnost." Ravel zacvakala pařáty. "Bylo by to, jako držet něčí slaďoučkou, bezmocnou dušičku... loutka, tančící, jak zatahají za provázky, to bys byl, a moc smutňoučká loutka, že... baže? Kde je, to nevím já."~ */
  IF ~~ THEN REPLY #52106 /* ~"No, bylo by to moc JEDNODUCHÉ, kdybys věděla, kde by se dala najít... vypadá to, že mě čeká další hon."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"Vydrž chvíli... říkala jsi, že TY nevíš, kde je má smrtelnost. Víš o někom, kdo VÍ, kde je?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"Ahhh... ne tak rychle, to ne ne." Ravel se hrozivě usmála, její tesáky se zableskly. "*Já* nevím, kde je tvá smrtelnost, můj vzácný mužíčku... ale je tady *jiný* kdo by mohl vědět o takové věci..."~ */
  IF ~~ THEN REPLY #52109 /* ~"'Jiný, kdo by mohl vědět?' Kdo?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~Ravel se hrozivě usmála, její tesáky se zaleskly. "Chytrý, chytrý, *chytrý* jsi. Ano, je tady JINÝ, kdo by mohl vědět o věcech, které Ravel nezná..."~ */
  IF ~~ THEN REPLY #52111 /* ~"'Jiný, kdo by mohl vědět?' Kdo?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~Raveliny oči se zakalily, jako by se dívala na něco v dálce, její hlas se zpomalil. "Světlého... musíš se zeptat. Anděl, deva, ten, kdo poletuje na křídlech světla a jeho ruce jsou architekty horizontu. Leží, leží daleko, v jiné kleci, v jiném vězení... v jeho vědomostech je znalost, kterou hledáš. Dej mu své otázky, poslouchej jeho odpovědi, použij je jako vodítka."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"Kde najdu toho anděla?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~Ravel mi řekla, že má smrtelnost je stále neporušená... někde a ona neví kde, ale ví o někom, kdo by to *mohl* vědět. Řekla mi, ať cestuju za její bludiště, do jiného vězení, kde najdu anděla, "devu", který mi řekne, kde je má smrtelnost - pokud bude cesta k tomu andělovi jenom z poloviny tak těžká, jako k Ravel, tak začínám pochybovat, jestli svou smrtelnost VŮBEC NĚKDY najdu. A navíc to vypadá, že je to mnohem důležitější, než jsem si původně myslel. Ravel mě varovala, ať spěchám a získám smrtelnost dřív, než někdo jiný, protože potom by mě podle ní mohl ovládat jako loutku.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"Kde najdu toho anděla?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"Opuštěním tohohle vězení, do *jiného* prokletého vězení dorazíš... i když to tak možná nebude na první pohled vypadat. Dej si pozor a najdi zlatý článek v neustále se zkracujícím řetězu. Světlo ti dá tajemství celé záležitosti, a nové cesty se ti otevřou..."~ */
  IF ~~ THEN REPLY #52117 /* ~"Krásně tajemné... ale nepřekvapuje mně to. Díky."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"Mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~Ravel se zasmála. "Z minulosti nemám podrobnosti... můžeš být rád, že jsi dostal *alespoň* něco."~ */
  IF ~~ THEN REPLY #52120 /* ~"Oh, jsem? Jenom, že řetěz těch, kdo ví co a kde, nikdy nevypadá jako hladce následující články."~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"Možná že ano. V každém případě mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"Ahhh..." Ravel se usmála. "A to proto musíš každý článek udržovat v bezpečí, protože pokud není řetěz jasný teď, představ si, jaký by byl, kdy bylo roztříštěno JEŠTĚ VÍCE článků... čas a smrt nemají s ostatními takovou trpělivost, jako s tebou."~ */
  IF ~~ THEN REPLY #52123 /* ~"Co to říkáš?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"Doufám, že to nebyla výhrůžka."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"Možná že ano. V každém případě mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"Co když jeden z tvých cenných článků *zemře*? A co když zase zapomeneš? CO uděláš pak? Kde je tvá ukradená smrtelnost... to pak bude ZTRACENO navždy, protože už nezbude nikdo, koho by ses mohl ZEPTAT. Hledání tvé cesty se stane ještě těžším, možná NEMOŽNÝM..."~ */
  IF ~~ THEN REPLY #52127 /* ~"To je pravda. V každém případě mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"Ne má výhružka, ale rozhodně velmi vážná hrozba. Co když jeden z tvých cenných článků *zemře*? A co když zase zapomeneš? CO uděláš pak? Kde je tvá ukradená smrtelnost... to pak bude ZTRACENO navždy, protože už nezbude nikdo, koho by ses mohl ZEPTAT. Hledání tvé cesty se stane ještě těžším, možná NEMOŽNÝM..."~ */
  IF ~~ THEN REPLY #52129 /* ~"To je pravda. V každém případě mám pro tebe další otázku, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"Ano? Ptej se na Ravel, můj vzácný mužíčku."~ */
  IF ~~ THEN REPLY #52131 /* ~"Ravel... kdo jsi? Odkud pocházíš?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"Jaké další formy jsi měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"Co je tohle za místo?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"Proč jsi byla uvězněna, Ravel?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"Proč jsi byla uvězněna, Ravel?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"Proč jsi byla uvězněna, Ravel?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"Proč jsi byla uvězněna, Ravel?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"Legendy tvrdí, že jsi mocný mág, Ravel. Můžeš mě naučit něco z Umění?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"Mám nějaké jiné otázky ohledně mé smrtelnosti..."~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"Díky za informace, které jsi mi dala, Ravel. Teď budu muset odejít."~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"Já? Ravel jsem já, tvůrce a luštitel hádanek, řešitel *neřešitelného*, mysl odhalující a zahalující, dokud nejsou vlákna myšlenek zamotána do uzlů, jako vlasy opilce." Ravel zvedla jeden ze svých hrubých šedých vlasů a začala si ho namotávat na prst. "Je to dost, dost toho je."~ */
  IF ~~ THEN REPLY #52142 /* ~"Ale *co* jsi? Někteří říkali, že jsi 'noční čarodějnice', ať už je to cokoli."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"Mám pro tebe další otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"Noční čarodějnice?" Ravel se děsivě usmála. "Jsem jenom *žena*, které velice... převelice... nevelice? Velice chyběl její milovaný výtvor. Někteří mi říkali babice, šedá dáma, baba Jaga, noční čarodějnice - ale JÁ jsem Ravel, Ravel, co se vyzná v hádankách, schopná rozluštit i nerozluštitelné. Ale..."~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"Ale...?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"Ale...?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"Ale na tom nezáleží. Už jsme na tomhle místě byli dříve." Ravel zasyčela. "Další otázky máš?"~ */
  IF ~~ THEN REPLY #52148 /* ~"Ano..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"MNOHO věcí se říká o nás šedých dámách. Rasa my jsme 'noční čarodějnice', ale *jednotlivec* já jsem. Někteří nám říkají Zlo Starých, hrůzy snů smrtelníků, odporné, hnusné věci, jejichž domov leží v temných místech lidských myslí." Raveliny oči se zúžily, září jako rudé jiskry. "Ale pro mě to NIC neznamená... Jak bys mě popsal TY, hezounká věcičko?"~ */
  IF ~~ THEN REPLY #52150 /* ~Lži: "Řekl bych, že jsi krásná, Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~Pravdivě: "Pro mě jsi krásná, Ravel. Možná ne pro oko, ale tvá mysl je ostrá a vzrušující."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~Pravdivě: "Řekl bych o tobě, že jsi odporná."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~Pravdivě: "Řekl bych o tobě, že jsi odporná."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~Pravdivě: "Řekl bych o tobě, že jsi odporná."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"Řekl bych, že všechny ty popisy jsou správné."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~Ravel je na chvíli tiše, pak se zasmála. "Ó, ty jsi *diamant*, můj krásný ptáčku zpěváčku. Vyplatilo se čekat ta staletí! Jak sladce zpíváš těmhle unaveným uším, které žily jenom z ticha a z pomalého růstu trnů..." Ravel se usmála. "Ale ty mi LŽEŠ..."~ */
  IF ~~ THEN REPLY #52157 /* ~"Ne, Ravel, Já ne..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"Csss! Myslíš si, že mě zajímá pravda?! Klam je pro mě *krásný*, zpěváčku, a Ravel miluje, když jí někdo říká takové věci. Odporná možná jsem..."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"Csss! Myslíš, že mě zajímá taková pravda?! Vnitřní krása, bez ohledu na maso kolem. Myslíš si, že jsem odporná...?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"Ravel, ty *nejsi* odporná..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"Jsou, ale to není TVÁ odpověď. Csss! Stahuju otázku. Už o tom nebudeme mluvit."~ */
  IF ~~ THEN REPLY #52167 /* ~"Oh... uh, mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"Ale odporná *nemusím* být, hezounku. Má podoba je pro mou vůli nic, mohu své maso předělat na líbivější obraz..." Ravel se podívala na Fall-from-Grace, usmála se a olízla si rty. "Ano..."~ */
  IF ~~ THEN REPLY #52169 /* ~"Ravel, co..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~Ravel se... přeměnila na Fall-from-Grace, vzala na sebe její vzhled, její tvář, její oblečení... "Je tahle podoba přijatelnější?" Ravel se usmála, její zuby jsou teď zářivě čisté a bílé, rty lehounce rudé. "Tak uhlazená, dech beroucí?" Ukázala ti, ať jdeš blíž. "Pojď, můj vzácný mužíčku, *mé* rty nehoří utrpením Abyssu. Dej své rty k mým."~ */
  IF ~~ THEN REPLY #52171 /* ~"Dobře..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"Ne, Ravel."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"Ne, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"Ravel, nech těch her... Nemám na ně čas ani trpělivost. Vrať se do své podoby."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"Ravel, nech těch her... Nemám na ně čas ani trpělivost. Vrať se do své podoby."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~Dotkl ses svými rty Raveliných. Navzdory její podobě jsou její rty suché, jako písek a když se vaše rty dotkly, ucítil jsi ostré píchnutí, jako bys políbil ostnatou větvičku. Odtáhnul ses a slíznul si krev ze rtu. Ravel napodobila tvé gesto, které je v její nové formě ještě hrozivější. Kapka tvé krve zůstává v koutku jejích úst. Zle se usmála.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"Tys... ty jsi mě kousla."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"Tys... ty jsi mě kousla."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"Tys... ty jsi mě kousla."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"Tys... ty jsi mě kousla."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"Tys... ty jsi mě kousla."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"A ty jsi mě kousnul, tak dávno, ale nebyl to tehdy polibek, ale hryznutí do srdce..." Ravel se usmála. "Nebuď překvapený, můj vzácný mužíčku. Nikomu to neublížilo... snad s výjimkou těch, se kterými cestuješ." Usmála se. Náhle sis uvědomil pohled, který na tebe upírá Grace. Tváří se neutrálně, ale máš podivný pocit, že se mezi vámi dvěma něco *změnilo*.~ */
  IF ~~ THEN REPLY #52183 /* ~"Vrať se do své normální podoby, Ravel."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"A ty jsi mě kousnul, tak dávno, ale nebyl to tehdy polibek, ale hryznutí do srdce..." Ravel se usmála. "Nebuď překvapený, můj vzácný mužíčku. Nikomu to neublížilo... snad s výjimkou těch, se kterými cestuješ." Usmála se. Náhle sis uvědomil pohled, který na tebe upírá Annah - její oči jsou rozšířené a srdce jí divoce buší.~ */
  IF ~~ THEN REPLY #52185 /* ~"Vrať se do své normální podoby, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"A ty jsi mě kousnul, tak dávno, ale nebyl to tehdy polibek, ale hryznutí do srdce..." Ravel se usmála. "Nebuď překvapený, můj vzácný mužíčku. Nikomu to neublížilo... snad s výjimkou těch, se kterými cestuješ." Usmála se. Náhle sis uvědomil pohled, který na tebe upírají Grace a Annah. Grace se tváří se neutrálně, ale máš podivný pocit, že se mezi vámi dvěma něco *změnilo*. Annah má přimhouřené oči, její ocas divoce šlehá sem a tam.~ */
  IF ~~ THEN REPLY #52187 /* ~"Vrať se do své normální podoby, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"A ty jsi mě kousnul, tak dávno, ale nebyl to tehdy polibek, ale hryznutí do srdce..." Ravel se usmála. "Nebuď překvapený, můj vzácný mužíčku. Nikomu to neublížilo... snad s výjimkou těch, se kterými cestuješ." Usmála se. Náhle sis uvědomil pohled, který na tebe upírá Annah. Její oči jsou rozšířené a srdce jí divoce buší. Grace pozoruje Annah se zaujatým výrazem.~ */
  IF ~~ THEN REPLY #52189 /* ~"Vrať se do své normální podoby, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"Ale odporná *nemusím* být, hezounku. Má podoba, je pro mou vůli nic, mohu své maso předělat na líbivější obraz..." Ravel se podívala na Annah, která se pod jejím pohledem otřásla. Ravel se usmála, když uviděla její strach, a olízla si rty. "Ano..."~ */
  IF ~~ THEN REPLY #52192 /* ~"Ravel, co..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~Ravel se.. změnila na Annah, vzala na sebe její vzhled, tvář, její koženou vestu... "Tuhle drsnou ženu máš rád, tu, kterou ještě věk nepřipravil o vášeň?"
Ocas Annah... Ravel sebou švihnul, jakoby v očekávání. "Pojď a užij si s mými rty, nepřipravuj se o potěšení, když se ti nabízí."~ */
  IF ~~ THEN REPLY #52194 /* ~"Dobře..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"Ne, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"Ravel, nech těch her... Nemám na ně čas ani trpělivost. Vrať se do své podoby."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"Možná... dáš přednost drsnější ženě, naplněné ohnivou vášní?" Ravel se podívala na Annah, která pod jejím pohledem ztuhla. "Možná to je ONA, kdo více vyhovuje tvému vkusu..."~ */
  IF ~~ THEN REPLY #52198 /* ~"Ravel, nech toho. Nemám čas na tvé h-"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~Počkej, co se bude dít...~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"Odporná být nemusím, hezounku. Má podoba, je pro mou vůli nic, mohu své maso předělat na líbivější obraz..." Ravel se na tebe usmála. Začala se... měnit.~ */
  IF ~~ THEN REPLY #52201 /* ~"Co to -"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~Ravel se... změnila na krásnou mladou ženu - VŠE se změnilo - její vzhled, obličej, postava, šaty... "Jemnější, mladší ženě bys dal předost, takové, na které ještě čas nezanechal svou stopu?" Usmála se, její rty jsou rubínově rudé... zvou tě k sobě. "Pojď sem a polib mně, neodpírej si potěšení."~ */
  IF ~~ THEN REPLY #52203 /* ~"Dobře..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"Ne, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"Ravel, nech těch her... Nemám na ně čas ani trpělivost. Vrať se do své podoby."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~Mrknul jsi a Ravel se *zkroutila* zpátky do své původní podoby. "Je složité potěšit takového chlapa jako ty! Pah! A oni se diví, že náš druh nemá žádné samce!"~ */
  IF ~~ THEN REPLY #52207 /* ~"Jaké další podoby můžeš... jaké další podoby jsi měla?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"Dost... Mám nějaké jiné otázky..."~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"Možná mnoho, možná žádné, Enebene Mebbeth nene." Ravel vypadá velice zmateně. "Nechodila jsem moc ven, ej ven, Ej-ven, Ei-vene, asi? Ani s partou ani s Martou... tolik vláken a rozvětvení času, tak moc Ravel... pokaždé rostoucí, šijící a starající, mé podoby jsou."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"Mebbeth? Tys byla Mebbeth?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"Mebbeth? Tys byla Mebbeth? Ale... ona je mrtvá."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"Tys byla Ei-Vene? V Márnici?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"Tys byla Ei-Vene? V Márnici? Ale... ona je mrtvá."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"Tys byla ta bláznivka v Pohřebené vesnici? Marta?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"Tys byla ta bláznivka v Pohřebené vesnici? Marta? Ale... ona je mrtvá."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"Uh... Aha. Mám nějaké jiné otázky..."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"Mohlo to být jedno z mých jmen..." Ravel vypadá ještě zmateněji, její oči se zakalují. "Jména se *těžko* pamatují..." Její hlas slábne. "Jako volání na velkou vzdálenost..."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"Mebbeth na mně byla hodná a pomohla mi, Ravel. To znamená, že jsi mi pomohla ty. Děkuju ti."~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"Určitým způsobem mi Ei-Vene pomohla, Ravel. To znamená, že jsi mi pomohla ty. Děkuju ti."~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"Marta byla šílená, Ravel, ale byla hodná a pomohla mi. Jestli jsi byla ona, tak jsi mi neublížila. Děkuju ti."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"Proč jsi mi pomohla, Ravel?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"Aha. Mám pro tebe další otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~Ravel mrkla... "Ano... v knize mrtvých ta je. Už nemohu více použít její sílu..."~ */
  IF ~~ THEN REPLY #52224 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"Mám nějaké jiné otázky...~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~Téměř nevědomě Ravel natáhla ruku. Přísahal bys, že to je pařát Ei-Vene...~ */
  IF ~~ THEN REPLY #52227 /* ~Ustup.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~Zůstaň na místě...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~Ustoupil jsi a Ravel mrkla, pak si něco zamumlala pod nosem. "Blbá zomfie... blbá zomfie..."~ */
  IF ~~ THEN REPLY #52230 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~Ravelina levá ruka vytrhla z její hlavy vlas, omotala ho kolem drápu a bleskovou rychlostí ti vrazila jiný dráp pod kůži blízko jedné z velkých jizev. Je to sotva víc než píchnutí komára, ale vypadá to, že se tě Ravel chystá zašít.~ */
  IF ~~ THEN REPLY #52233 /* ~Nechej ji pracovat.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~Ukázalo se, že Ravel byla Ei-Vene, podivný tiefling,kterou jsem potkal v Márnici. Když jsem jí s tím zkonfrontoval, Ravel se stala na krátkou chvíli znovu Ei-Vene a "zašila" mé rány, což mé kondici jenom prospělo.~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~Stejně jako s Ei-Vene je to podivně bezbolestné, ale nit a šití jde do mnohem větší hloubky, téměř DOVNITŘ tebe, ale bez toho, že by pronikalo za povrch kůže. Za chvilku Ravel stáhla své drápy a ty se cítíš... lépe, silněji. Ravel zamumlala Ei-Veniným hlasem: "Blbá zomfie..."~ */
  IF ~~ THEN REPLY #52236 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~Když jsi vyslovil její jméno, Ravelin obličej se *posunul*, její kůže se prověsila, až má stejný smutný výraz, jaký jsi viděl na Martině tváři. "No tak... nedělej Martě problémy..." Zvedla dráp na ukazováčku jako skalpel a přibližuje se k tobě. "Hnusná, škaredá, falešná mrtvola."~ */
  IF ~~ THEN REPLY #52239 /* ~Ustup.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~Zůstaň na místě...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~Ustoupil jsi a Ravel mrkla, pak si něco zamumlala. Její tvář se *změnila* zpět na její vlastní... ale její výraz je pořád zmatený, jakoby měla problémy s orientací. "Škaredej mrtvák, eh, Marto...? Ano, Marto, to je..."~ */
  IF ~~ THEN REPLY #52242 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~Ravelin špinavý dráp se zaryl do tvého břicha a pak sebou brutálně škubnul, v řezavém pohybu jako pila... ale necítíš žádnou bolest. Sleduješ, jak se pod jejím dotekem stahuje tvá kůže stranou - ale rána vůbec nekrvácí. "Podívej na to, Marto... podívej na to..."~ */
  IF ~~ THEN REPLY #52246 /* ~Nechej ji pracovat.~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~Ravelina volná ruku zajela do tvého břicha, namotala na sebe vnitřnosti a vyškubla je ven... A tvé břicho zase srostlo, jakoby se teď čas vracel zpátky. Marta... Ravel... zvedla tvé vnitřnosti jako trofej. "Hezký, hezký, eh, Marto...? Takový věci by se neměly polykat, ne ne..."~ */
  IF ~~ THEN REPLY #52248 /* ~"Uh... můžu je dostat zpátky, prosím? Možná je ještě budu potřebovat..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~Podala ti věnec střev... navzdory tomu, že ti je právě vyoperovala ven, tekutina obalující vnitřnosti zaschla, jako pryskyřice. Na dotek je to jako glazurovaný... provaz.~ */
  IF ~~ THEN REPLY #52250 /* ~"Uh... díky. Nechám si to na památku."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~Ukázalo se, že Ravel byla Marta, ta bláznivka, již jsem potkal v Pohřbené vesnici. Když jsem jí s tím zkonfrontoval, Ravel se na krátký okamžik znovu stala Martou a vyškubla mi vnitřnosti... které mi prý poslouží jako talisman obrovské moci. Zdá se mi, že je spousta lidí, co mi neustále sahají do těla a vytahují odtamtud věci, které by se NEMĚLY vytahovat, a co je nejhorší: prochází jim to.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~Marta... Ravel... pomalu kývla. "Neměl by, že by neměl, Marto? Ano... ano, měl by, Marto. Mocná magie se dá najít uvnitř nesmrtelného, ano... ne jako zoubky... nebo očička..."~ */
  IF ~~ THEN REPLY #52253 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~Jak jsi zmínil Mebbeth, z Ravelina obličeje vybledly všechny barvy, dokud není úplně šedý -- doslova. Jakoby barvy - zmizely. "A kerejpak seš ty, hmmm? Zase tě jednou tvoje cesta přivedla ke dveřím starý Mebbeth, chlapče?"~ */
  IF ~~ THEN REPLY #52256 /* ~"Ano... Mebbeth... Já, uh, přišel jsem se naučit více o Umění. Můžeš mě ještě něco naučit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"Tentokrát ne... jaké další podoby jsi ještě měla, Ravel?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"Pah! Jsem jenom babka kořenářka, dítě, a taková moc, jako jsou příkazy Umění, to je nad mé síly..."~ */
  IF ~~ THEN REPLY #52259 /* ~"Já... nemyslím si to. Myslím si, že mě můžeš naučit mnohem víc,než si uvědomuješ. Mnohem víc."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~Pak přišla otázka jako ozvěna: "Chceš se učit Umění, jo? *Proč* by ses chtěl učit něco takovýho?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~Ozvěna: "Protože chci zkrátka vědět."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~Ozvěna: "Protože to můžu potřebovat při řešení záhady, kdo vlastně jsem."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~Ozvěna: "Protože potřebuju moc."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"Mám své důvody."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~Ravel... Mebbeth... se zamračila. "To není jako slabikář pro děti, ani jako sbírka zákonů guvernérů. To je *Umění*, dítě. Budu tě učit, ale musíš mít jasnou hlavu a dávat pozor..." Naklonila se blíž. "Poslouchej..."~ */
  IF ~~ THEN REPLY #52266 /* ~Poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Ukázalo se, že Ravel byla Mebbeth, ta hodná porodní bába z Hadrníkova náměstí. Když jsem jí s tím zkonfrontoval, stala se na chvíli opět Mebbeth a něco mi řekla... něco, na co si nedovedu ani vzpomenout, ale mám pocit, že vyladila mé smysly pro Sféry, takže jsem teď *pozornější*.~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"Ne, nemyslím si, že se chci učit zrovna teď... možná někdy později."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~Po chvíli Ravel... Mebbeth... kývla. "Umění může pomoct, ale nemusí a nesmíš na ně spoléhat, že vyřeší všechny problémy." Povzdychla si. "Dítě, nejspíš to akorát přidá další kousek do tvé hromady otázek..." Naklonila se blíž. "Ale jestli chceš vědět, tak poslouchej..."~ */
  IF ~~ THEN REPLY #52270 /* ~Poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Ukázalo se, že Ravel byla Mebbeth, ta hodná porodní bába z Hadrníkova náměstí. Když jsem jí s tím zkonfrontoval, stala se na chvíli opět Mebbeth a něco mi řekla... něco, na co si nedovedu ani vzpomenout, ale mám pocit, že vyladila mé smysly pro Sféry, takže jsem teď *pozornější*.~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"Ne, nemyslím si, že se chci učit zrovna teď... možná někdy později."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"Pah! Mizerná touha, protože žebříček Umění ti bude vždycky připomínat, že hned nad tebou je nějaký další stupínek, na kterým už je hromada lidí a věcí. Vždycky bude někdo lepší, a budou o tobě vědět, jestli se budeš snažit příliš." Naklonila se blíž. "Ale jestli chceš vědět, tak poslouchej..."~ */
  IF ~~ THEN REPLY #52273 /* ~Poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~Ukázalo se, že Ravel byla Mebbeth, ta hodná porodní bába z Hadrníkova náměstí. Když jsem jí s tím zkonfrontoval, stala se na chvíli opět Mebbeth a něco mi řekla... něco, na co si nedovedu ani vzpomenout, ale mám pocit, že vyladila mé smysly pro Sféry, takže jsem teď *pozornější*.~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"Ne, nemyslím si, že se chci učit zrovna teď... možná někdy později."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~Mebbeth... Ravel... něco zašeptala, a ty se cítíš *jiný*, nějak pozměněný. Řekla ti něco příšerného, něco o tom, jak fungují Sféry, ale tvá mysl její slova nepřijala, nedokážeš si na ně vzpomenout. Už jenom když na to myslíš, tak se ti srdce rozbuší... Ravel ti řekla něco, o čem si nejsi jistý, jestli to má vědět vůbec *někdo*. Dívá se na tebe, pozorně tě studuje.~ */
  IF ~~ THEN REPLY #52276 /* ~"J-jaké... jaké další podoby jsi měla, Ravel?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"Já... já... mám ještě nějaké další otázky, Ravel."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"Tak? Jestli máš vlastní důvody, tak má *znalost* je má vlastní. Nebudu učit někoho, kdo se schovává před učitelem... pouze... zlo... přichází... z takové cesty." Mebbeth... Ravel... mrkla, jako by se snažila znovu zorientovat.~ */
  IF ~~ THEN REPLY #52279 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"Nemůžu si pomoct, ale musím ti POMOCI, můj vzácný mužíčku... a to bude vždy pravda, ať už bude kolik chce Ravel... na tomhle se myslím shodneme."~ */
  IF ~~ THEN REPLY #52282 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"Pokoušela jsem se pomoct Paní Bolesti a ona to nepřijala moc dobře."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"Co tím myslíš?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"Co tím myslíš?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"To nic. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"Pokoušela jsem se pomoct Paní Bolesti a ona to nepřijala moc dobře."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"Má nabídka pomoci byla nevítaná. *Pokusila* jsem se UVOLNIT ji. Sigil je KLEC, Město Dveří a Zámků, je to pro ní vězení. Musí, není to tak? Proč by se jinak Sigilu říkalo 'Klec'? A kdo je v kleci? Paní! Příliš malé vězení pro někoho tak ohromného. Nespravedlivé, špatné, netolerovatelné mučit tak ženu!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"Má nabídka pomoci byla nevítaná. *Pokusila* jsem se UVOLNIT ji. Sigil je KLEC, Město Dveří a Zámků, je to pro ní vězení. Musí, není to tak? Proč by se jinak Sigilu říkalo 'Klec'? A kdo je v kleci? Paní! Příliš malé vězení pro někoho tak ohromného. Nespravedlivé, špatné, netolerovatelné mučit tak ženu!"~ */
  IF ~~ THEN REPLY #52291 /* ~"Aha."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"To nic. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"Pokusila jsem se prolomit Klec, aby byla Paní volná." Mávla rukou, zatvářila se velice bolestivě. "Kšá, Kšá, ó trpící ženo, ať je prstenec Sigilu prolomen, abys mohla odletět daleko od jeho špinavých ulic a pitomých dabusů, kteří se neopovažují mluvit slovy, protože mají strach, že někdo vyslechne jejich myšlenky!" Raveliny ruce přestaly mávat. Dlouze si povzdychla.~ */
  IF ~~ THEN REPLY #52294 /* ~"Pokračuj..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"Aha. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"Než jsem to mohla dokončit, objevila jsem se tady a má paměť na tom není zrovna nejlépe... mnoho zmizelo, mnoho zapomenuto, ano je to tak. Bylo?" Ravel se usmála a ukázala zažloutlé zuby. "Mnoho jsem zapomněla... mám štěstí, že si ještě pamatuju tebe."~ */
  IF ~~ THEN REPLY #52297 /* ~"Ravel, ale... PROČ jsi chtěla uvolnit *Paní Bolesti*?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~Ukázalo se, že Ravel byla uvězněna, protože se pokoušela uvolnit Paní Bolesti ze Sigilu... to byl takový zločin? Rozhodně měla dobré pohnutky... Ravel řekla, že zkrátka nedokáže snést, když je někdo zavřený nebo uvězněný.~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"Aha. Mám pro tebe ještě jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~Ravelin hlas se snížil, téměř k šepotu. "Nesnáším, když je kdokoli, dokonce i Mocnost, uvězněný. Myslím si, že vše... ať už kameny, písek nebo tiché ostnaté dámy... by mělo být volné. Někteří říkali, že jsem hlupák. Proč riskovat takovou věc, říkali."~ */
  IF ~~ THEN REPLY #52301 /* ~"Souhlasím. Já bych Paní nechal v kleci."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"Myslím, že jsi udělala správnou věc, když ses jí pokoušela uvolnit, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~Lži: "Já... myslím, že jsi udělala správnou věc, když ses jí pokoušela uvolnit, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"Jsou věci, které nesnesu, a za nic se nebudu omlouvat, můj skvělý polomužíku - ale... když nemohu nechat události jen tak být... mnoho je životů a snů, které zůstaly ležet na zemi, roztříštěné na kusy. Kdybych tě nechala být, možná by byl tvůj život mnohem lepší..."~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"Možná. Mám pro tebe další otázky, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"Jsem ráda, že máme na tuhle věc stejný názor. Ale... když nemůžu nechat události jen tak být... připadá mým očím, že mnoho životů a snů zůstalo ležet na zemi, roztříštěných na kusy."~ */
  IF ~~ THEN REPLY #52310 /* ~"Alespoň jsi to zkusila, Ravel. A v tvých důvodech nevidím nic špatného."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"Takže se cítíš vinná, Ravel? Alespoň ses *pokusila* tam, kde ostatním chyběla odvaha. Nevidím v tvých úmyslech nic zlého - vlastně tam vidím sílu, odvahu."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"Mám pro tebe další otázky, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"Csss. Alespoň *někdo*."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"O to ses pokoušela tehdy, když jsem tě před dávnou dobou potkal? Zkoušela jsi mně uvolnit?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"Mám pro tebe další otázky, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~Ravel na tebe chvíli potichu zírá, pak se pro sebe zasmála. "Taková sladká slova! Jak jsi mi CHYBĚL, můj mužíčku! Zpíváš tak sladce, i kámen by pro tebe prolil svou krev!"~ */
  IF ~~ THEN REPLY #52320 /* ~"Není na škodu mluvit pravdu. Mám pro tebe další otázky, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"Docela možné, možné docela. Řetězy života a strach ze smrti mohly být příliš silné na muže, které jsem znala... spala? Spala či znala, hmmmm-hmmmm?" Ravel si začala namotávat jeden ze svých šedých vlasů kolem prstů. "Žádnou lásku pro řetězy a klece, to Ravel nemá..."~ */
  IF ~~ THEN REPLY #52322 /* ~"Ah, takže jsem byl nějak uvězněný? Nebo připoutaný? Připadá mi, že se tvá paměť ozývá, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"Ano..." Ravel zamrkala, její oči protkané černými žilkami se zamlžily, jakoby jí někdo udeřil do hlavy. Její pařát zatahal za vlas, tak silně, že si ho asi brzy vyškubne. "Možná... možná jsi byl zavřený? Ale žádná normální klec tě nedržela..."~ */
  IF ~~ THEN REPLY #52324 /* ~"Nemáš ponětí, *co* mně drželo?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~Ravel si myslí, že jsem byl tehdy dávno, když jsem k ní přišel, nějak uvězněný nebo upoutaný... ale nedokáže si přesně vzpomenout. Říkala něco o nějakém slibu, pak si vytrhla z hlavy jeden vlas a řekla mi, ať si ho vezmu místo odpovědi.~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~Ravel vypadá zmateně, její tvář se *zkroutila*, jakoby bojovala s nepříjemnou představou. "Zapomněla jsem... možná slib...? Ne, ne..." Její prst sebou škubnul a k tvému překvapení se ozvalo prasknutí, jakoby se zlomila větvička, a Ravel si vytrhla vlas z hlavy. Zpod její čepice vytekl pramínek černé krve, Ravel zlostně zasyčela.~ */
  IF ~~ THEN REPLY #52327 /* ~"Ravel...? Jsi v pořádku?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"Už VÍCE neřeknu..." Ravelina tvář se zkroutila v bolesti, na drápu má namotaný šedý vlas s krvavým konečkem. "Nevím, a o neznalost se nebudu dělit!" Podívala se na vlas, zasyčela a podala ti ho. "Vezmi si to a nechej minulost ležet tam, kde je, poločlověče!"~ */
  IF ~~ THEN REPLY #52329 /* ~"Dobrá, Ravel; už k tomu nění co říct. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~Ravel ukazuje okolo. "Dříve to bylo bludiště mrtvého kamene, ale v mých vlasech zůstalo malé černé semínko, když jsem sem přišla, a to mezi kameny vyrostlo, rozšířilo se, vzkvétalo, vzkvétalo, až prorostlo celým bludištěm... a tak se z bludiště někoho jiného stala MÁ zahrádka."~ */
  IF ~~ THEN REPLY #52331 /* ~"Mám nějaké jiné otázky, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~Ravel se zklamaně zamračila, její namodralá kůže se zkroutila jako hadr. "Zná Ravel *Umění* ?! Copak se tvá hlava úplně vyprázdnila?! Zapomněla jsem z Umění víc, než ty..." Ukázala na tebe prstem. "...budeš kdy vědět."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"Můžeš mě tedy naučit něco z Umění?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"Můžeš mě tedy naučit něco z Umění?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"No tak to nic. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~Ravel svraštila obočí a prohlíží si tě. "Možná bych se nechala přesvědčit někým, jako jsi ty... ale žádný jiný by NEMĚL šanci, ani by nedostal dar, který nabízím. Jsi začátečník, student umění, nebo stojím před opravdovým mistrem?"~ */
  IF ~~ THEN REPLY #52409 /* ~"Jsem jenom začátečník."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"Jsem jenom začátečník, krásná Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"Mistr umění."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"Mistr umění, krásná Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"Opravdu nedokážu říct... Někdy mám pocit, že zvládám vše, a jindy mi nejdou ani základy."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"Možná se naučím něco později. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~Ravel si odfrkla. "Ha! Nebudu se dělit o své umění s nikým jiným, než OPRAVDOVÝM uživatelem magie, a v tomhle mě nic nepřesvědčí změnit názor, ani ty."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"Krásná Ravel, pouze tě žádám, abys mě naučila něco z tvého vědění... žádám jenom o náhled do tvé rozsáhlé studnice znalostí, které vlastníš."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"Dobrá, tedy. Mám nějaké jiné otázky..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"Lichotník... ale tvá slova mě hřejí." Ravelin hlas se změnil, je teď vyšší, jako když někdo drnká na strunný nástroj. "Mnoho jsem se naučila při ošetřování své zahrádky. Amulety a kouzla, destilovaná z plevele..." Začíná si pískat. "... rýmující se, poletující tóny a pohyby, které ti přivedou pomoc... poslouchej, větve o tom právě mluví."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"Velmi dobře..." Ravelin hlas se změnil, je teď vyšší, jako když někdo drnká na strunný nástroj. "Mnoho jsem se naučila při ošetřování své zahrádky. Amulety a kouzla, destilovaná z plevele..." Začíná si pískat. "... rýmující se, poletující tóny a pohyby, které ti přivedou pomoc... poslouchej, větve o tom právě mluví."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~Když jsi zavřel oči, projelo tebou zachvění, jakoby se ti něco ostnatého násilím zarývalo do kůže... Když jsi otevřel oči, na své dlani jsi uviděl podivné semeno s černými ostny. Nemáš tušení, jak se tam dostalo. Ravel tě pozorně sleduje. "Vezmi si semínko. Uč se od něj."~ */
  IF ~~ THEN REPLY #52431 /* ~"Velmi dobře... Mám pro tebe další otázku, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~Když jsi zavřel oči, projelo tebou zachvění, jakoby se ti něco ostnatého násilím zarývalo do kůže... Když jsi otevřel oči, na své dlani jsi uviděl několik podivných semínek s černými ostny. Nemáš tušení, jak se tam dostalo. Ravel tě pozorně sleduje. "Vezmi si semínka. Uč se od nich."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"Velmi dobře... Mám pro tebe další otázku, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"Velmi dobře... Mám pro tebe další otázku, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~Když jsi zavřel oči, projelo tebou zachvění, jakoby se ti něco ostnatého násilím zarývalo do kůže... Když už se bolest skoro nedá vydržet, začal jsi instinktivně pískat stejnou melodii jako Ravel... a bolest zmizela. V dálce slyšíš cvakání stromových stvoření, jakoby odpovídala na tvé volání.~ */
  IF ~~ THEN REPLY #52436 /* ~Pískej dál.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~Ravel se na tebe dívá s překvapením v jejích očích, protkaných černými žilkami. "Taková *moc*..." Zasyčela, nejspíš v údivu, její rty se shrnuly dozadu, když se široce usmála. "Dotýká se všech, kdož jí slyší. Jsi mocný, můj vzácný mužíčku, tak mocný... jednoho dne se i Sféry budou ohýbat podle tvé vůle."~ */
  IF ~~ THEN REPLY #52438 /* ~"Nepřeju si takovou věc, Ravel. Je mnoho takových, kteří by sledovali takovou cestu, ale ne já."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"Den, kdy mě budou poslouchat samy Sféry, se blíží, Ravel. Čím více vzpomínek získávám, tím více moci ovládám, brzy už mě nedokáže nikdo a nic zastavit.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~Ravel kývla a pak ukázala na tvou ruku, ve které je k tvému překvapení hrst semen s černými ostny. "Vezmi si ta seménka. Použij je, jak uznáš za vhodné... a k tomu ti dám ještě jeden dárek." Vytrhla si z hlavy vlas a vzala si pár semínek. Rozdrtila je v dlani. Ze sevřené pěsti vytekl pramínek černé krve, ale když otevřela ruku, nemá na ní žádnou ránu... pouze náhrdelník ze semínek, navlečených na Ravelině šedém vlasu. "Vezmi si to, je to *ze* mě, a dobře ti to poslouží. ~ */
  IF ~~ THEN REPLY #52441 /* ~Vezmi si semínka a podivný amulet.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~Ravel mě naučila něco z Umění, během toho jsem se napojil na okolí ostnatého bludiště, tak, že mi odpověděly stromová monstra Trigiti, když jsem je zavolal. Na Ravel to udělalo dojem, takže mi dala další amulet a řekla mi, že je tady, v bludišti, tajné místo, kam se dostanu, pokud budu mít u sebe ostnatá semena.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"Šetři si ta semena... nevyužívej je všechny, protože jsou mnohem užitečnější v *jiných* místech tohoto bludiště... ale s tvou mocí ta místa snadno najdeš."~ */
  IF ~~ THEN REPLY #52445 /* ~"Velmi dobře... Mám pro tebe další otázku, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"Jsi ten, kdo se v řeči drží střední cesty, jak vidím. Taková cesta postrádá přesvědčení..." Ravel zamhouřila oči. "Řekla bych, že jsi mizerný mág, ale máš v sobě potenciál, který ještě může růst. Dám ti toto... šššš... zavři oči a poslouchej..."~ */
  IF ~~ THEN REPLY #52447 /* ~Zavři oči, poslouchej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"Vydrž..." Ravelin hlas klesl do hlubokého syčení. "Nejdůležitější otázku jsi mi JEŠTĚ nepoložil, můj vzácný mužíčku. Už tě napadla?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"Ne... o jaké otázce to mluvíš?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"Ano... Chci vědět, jak opustit tohle místo. Znáš odpověď na tuhle otázku?"~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"Ano... Chci vědět, jak opustit tohle místo. Znáš odpověď na tuhle otázku?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'Ravel, víš, jak mohu opustit tvou překrásnou zahrádku,' se musíš zeptat - tak se ptej, ano?" Ukázala na tebe drápem, její krvavé oči září. "No tak, no tak."~ */
  IF ~~ THEN REPLY #52453 /* ~"Ravel... víš, jak mohu opustit tvou překrásnou zahrádku?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"Znám větve tohohle místa, jak se kroutí, převrací a zarývají do země. Ale nejsou tady žádné listy, takže můžeš odejít, kdykoli budeš chtít."~ */
  IF ~~ THEN REPLY #52455 /* ~"Takže VÍŠ, jak odejít?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"Omotej kolem sebe své ruce, jako větve, ať obalí tvou hruď jako klec. Z hranice bludiště vstup do temnoty a do jiné klece půjde tvé tělo - jednoduchý odchod, ale pak už NENÍ návratu, takže než uděláš poslední krok, VEZMI si vše, co budeš potřebovat."~ */
  IF ~~ THEN REPLY #52457 /* ~"Ze kterého okraje bludiště mohu odejít?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"Ze kterého, kteréhopak, kterého? Jeden z okrajů to ví, já ne. Vzpomínka, který okraj, mě zklamala a okraje bludiště k tomu nikdy moc neřekly."~ */
  IF ~~ THEN REPLY #52459 /* ~"Tys věděla jak odejít? Celou dobu? Tak... tak proč jsi neodešla?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"Proč zůstávat, když může jeden odejít, to je otázka pro mě?" Ravel se zasmála a odhalila řadu tesáků. "Obracím otázku na hlavu a posílám ji k tobě. Odpověď neleží v zůstávání nebo odcházení, ale v důvodech a případech, můj slaďoučký mužíčku."~ */
  IF ~~ THEN REPLY #52461 /* ~"Copak *nechceš* odejít?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"Je *chtít*, dříve chtít, teď nechtít a více a více a více ne, už nechtít. Co potřebuju z toho, co leží za mými zdmi? Je tam krutý, nehezký svět, tam za hranicí mého bludiště, a Ravel už byla tím světem *mockrát* zraněna."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"Velice jsi mi pomohla, krásná Ravel. Děkuju ti, že jsi vyslyšela mou žádost a podělila ses se mnou o své znalosti."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~Ravel zkroutila tvář do úsměvu a zasmála se. "Ah, to *já* ti děkuju, můj vzácný mužíčku. Dlouho předlouho do doby, kdy jsem slyšela tak sladké lichocení... Za to ti dám dárek, můj ptáčku zpěváčku."~ */
  IF ~~ THEN REPLY #52467 /* ~"Žádný dar není nutný, krásná Ravel."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"Dar? Velice rád přijmu cokoli, co mi dáš."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"Tvé protesty tady nemají co dělat, ptáčku. Šššš... povím ti tajemství..."~ */
  IF ~~ THEN REPLY #52470 /* ~"Znovu opakuju: žádný dar není nutný, krásná Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"Velmi dobře..."~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"Velmi dobře..." Ravel tiše zasyčela, jakoby zklamáním. "Žádné dary nedám tento den..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"Tak mě poslouchej... zavři oči, a já tě nechám nehlédnout na podstatu mnohovesmíru..."~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~Zavři oči a poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~Zavři oči a poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~Zavři oči a poslouchej...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~Zavřel jsi oči a okamžitě jsi ucítil prudkou, bodavou bolest v pravém oku. Tvé oko... *jedno* z tvých očí... se otevřelo... a ty před sebou vidíš Ravel, její krvavě rudé oči září nadšením. Jeden pařát má natažený. Špička je od krve... a je na něm oko. Tvé oko.~ */
  IF ~~ THEN REPLY #52480 /* ~"Co... jsi... to... udělala...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"Dárek ti dám, ptáčku zpěváčku. Zkroucení vnímání, napojení na větve mysli, napojení na kořený Raveliných znalostí, to vše jsem ti dala... kousek mne samotné..." Vzala tvé oko a ty se znechucením sleduješ, jak vytáhla černé semínko a obojí si dala do dlaně. S groteskním úsměvem je rozdrtila dohromady. "Achhh..."~ */
  IF ~~ THEN REPLY #52482 /* ~"Dej... to... sem..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"Jistě, mužíčku..." Ravel otevřela dlaň. Tvé oko tam leží, bez zjevného poškození, a zírá na tebe. Ravel ho vzala mezi palec a ukazováček a než stačíš zareagovat, nacpala ti ho do prázdného očního důlku.~ */
  IF ~~ THEN REPLY #52484 /* ~"Erhhkkkk..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~Jako odpověď na mé lichocení mi Ravel vyškubla pravé oko, rozdrtila do něj ostnaté semeno a pak ho vrazila do mého krvavého očního důlku. Teď vidím věci jinak... jako bych viděl Sféry jak Ravelinou, tak svou vlastní perspektivou. A tahle zkušenost mě taky poučila, že bych si měl dávat opravdu pozor, komu budu lichotit, zvlášť když bude na vzdálenost, při níž mi může ublížit.~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"Kousek mě teď leží v tvém oku, mužíčku. Když budeš tím okem sledovat Sféry, pochopíš VÍCE, než dříve... moudřejší budeš a více zkušeností a znalostí Sfér uvízne v tvé mysli... a to je vše."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"Velmi dobře... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~Když už jsi téměř vyslovil slovo sbohem, v lebce se ti rozlil nepříjemný pocit - a všiml sis, že v Raveliných očích protkaných černými žilkami se objevil podivný, dravý oheň.~ */
  IF ~~ THEN REPLY #52490 /* ~"Ty mě nenecháš odejít, Ravel, viď?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"Uh... děkuju ti, Ravel. Teď ti musím dát sbohem."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"Rozumná otázka - ale není to opravdová otázka." Ravelin hlas přešel do podivného šepotu - velmi smutného, který ti připadá nějak známý. "Otázka je, jestli mě ty *chceš* opustit, polo-člověče?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"Ravel, pomohla jsi mi, když jsem za tebou přišel před dávnou dobou, a teď znovu. Nezapomenu, co jsi pro mě udělala. Ale teď musím odejít - musím se dozvědět více sám o sobě."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"Musím. Je důležité, abych o sobě zjistil vše, co jde, a je tady spousta věcí, které potřebuji znát."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"Nechci být uvězněný na tomto místě, Ravel. Je to tvůj domov, ne můj."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"Nechci být zavřený v tomhle bludišti. Chci odejít? Ano."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"Ach... jak říkáš..." Ravelin hlas přešel do podivného šepotu - velmi smutného, který ti připadá nějak známý. "Mám pro tebe ještě jednu poslední otázku. A ta zní: *chceš* mě opustit, polo-člověče?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"Ravel, pomohla jsi mi, když jsem za tebou přišel před dávnou dobou, a teď znovu. Nezapomenu, co jsi pro mě udělala. Ale teď musím odejít - musím se dozvědět více sám o sobě."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"Musím. Je důležité, abych o sobě zjistil vše, co jde, a je tady spousta věcí, které potřebuji znát."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"Nechci být uvězněný na tomto místě, Ravel. Je to tvůj domov, ne můj."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"Nechci být zavřený v tomhle bludišti. Chci odejít? Ano."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"Ne, ne, ne... věz TOHLE..." Ravel zvedla prst s dlouhým drápem, jakoby tě varovala. "Věz, že tohle je NÁŠ domov, můj sladký poločlovíčku. V téhle zahrádce budou dva nesmrtelní, a já si tě tady uchráním před Sférami."~ */
  IF ~~ THEN REPLY #52503 /* ~"Myslím, že nevíš, co říkáš, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"V odchodu nacházím chybu a tvá odpověď je sice přesvědčivá, ale je to *špatná* odpověď, můj sladký poločlovíčku." Zacvakala svými žlutými tesáky. "Ne, ne. *Nechám* si tě tady. V téhle zahrádce budou dva nesmrtelní a já si tě tady uchráním před Sférami."~ */
  IF ~~ THEN REPLY #52505 /* ~"Myslím, že nevíš, co říkáš, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~Kolem Ravel se objevilo hrozivé *světélkování* - a ozývá se zvuk praskajících větví, hrozivý zvuk *ohýbaných* a *tříštěných* stromů...~ */
  IF ~~ THEN REPLY #52507 /* ~"Cc--?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~Raveliny rty se shrnuly dozadu, její hlas zní jako vytí zuřícího větru. "Co ty VÍŠ o VĚDĚNÍ, poločlověče?! VĚZ tohle: VĚZ, že tady zůstaneš až do KONCE DNŮ, tady v mé zahrádce, nikdy neodejdeš, a budeš mě MILOVAT, jak MÁŠ, jak jsi SLÍBIL!"~ */
  IF ~~ THEN REPLY #52509 /* ~"Ne, Ravel. Nevyhrožuj mi... Já odsud ODEJDU."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"Ravel, uklidni se - potřebuju odejít, ale vrátím se..."~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"Obávám se, že budu ubohá společnost, Ravel. A v žádném případě nemohu zůstat. Obávám se, že mě budeš muset propustit."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"NENECHÁM tě odejít - mám moc, která tě tady UDRŽÍ, a já ji POUŽIJU. Mé černě trnité bludiště tě NEPUSTÍ, dokud budu NAŽIVU, můj drahocenný, *milovaný* mužíčku..."~ */
  IF ~~ THEN REPLY #52513 /* ~"Ravel, nechci s tebou bojovat... nedělej to, prosím. Propusť mě, a já se k tobě vrátím. Nemusíš tady být sama."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"Takže můžu odejít jedině přes tvou mrtvolu? Dobrá, možná jsi udělala chybu TY, když jsi mě podcenila, babizno."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"VRÁTÍŠ?! VRÁTÍŠ se, jak jsi SLÍBIL před TAK DÁVNEM?!?! Ne... ne, nebudeš LHÁT Ravel DVAKRÁT! Už na tebe nebudu ČEKAT další STOLETÍ..." Raveliny rty se odhrnuly dozadu, její drápy jakoby narůstaly, narůstaly do ďábelských pařátů. "V mé zahrádce ZŮSTANEŠ, po Sférách už nebudeš chodit VÍCE...!"~ */
  IF ~~ THEN REPLY #52516 /* ~"Ravel, uklidni se, tohle není NUTNÉ..."~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"Zapomněl jsi na své MÍSTO, POLOčlověče. Na místě je pokora."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"Ravel, NEDĚLEJ to..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~Ravel mi odpověděla na mé otázky, ale myslím, že nečekala, že budu chtít odejít. Když jsem jí řekl, že odcházím, zaútočila na mně a přísahala, že odejdu pouze přes její mrtvolu. Neměl jsem jinou možnost než bojovat.~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"Uvidíme, čarodějko..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"Pročpak, můj vzácný, milovaný polomužíku, vždyť ty si sebou neseš ta nejhorší muka... život navždy. Myslíš, že se o tebe život stará, tak jako Ravel?" Cvakla zažloutlými zubisky. "Tak odvážný, tak vášnivý, tak hrozivě ztracený, smutný, smutný..."~ */
  IF ~~ THEN REPLY #52522 /* ~"Ravel, *proč* jsi ze mně udělala nesmrtelného? Musím to---"~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"Prohlédni si jejich oči... *uvidíš* jejich muka, protože oni o nich mluvit nebudou. Nic více Ravel neřekne... možná kdyby byli blíž a Ravel by jim viděla do očí, mohla by říct více... ale ne tentokrát."~ */
  IF ~~ THEN REPLY #52524 /* ~"Proč jsou ke mně přitahováni?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"A ty jsi mě kousnul, tak dávno, ale nebyl to tenkrát polibek, ale kousnutí do srdce." Ravel se usmála. "Nebuď překvapený, můj vzácný mužíčku. Žádná škoda nevznikla..."~ */
  IF ~~ THEN REPLY #52526 /* ~"Vrať se do své normální podoby, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~Mebbetina... Ravelina... tvář se uklidnila, do kůže se vrátil namodralý nádech, krvavě rudá barva se opět rozlila v jejích očích. Zamrkala, pomalu, jakoby se zorientovávala.~ */
  IF ~~ THEN REPLY #52528 /* ~"Jaké podoby jsi ještě měla, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"Mám pro tebe další otázky, Ravel."~ */ GOTO 141
END
