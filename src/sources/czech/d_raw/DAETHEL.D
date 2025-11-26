// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~Vidíš šupinatého fienda, který je velice podobný tomu, který stojí vedle něj. Kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tomuhle chybí zub na pravé straně. Všiml si Annah a Fall-From-Grace, stojících vedle tebe, a zasyčel: "Pošli ten šmejd z Abyssu pryč a pak si promluvíme. Do tý doby neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #3059 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~Vidíš šupinatého fienda, který je velice podobný tomu, který stojí vedle něj. Kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tomuhle chybí zub na pravé straně. Všiml si Annah a Fall-From-Grace, stojících vedle tebe, a zasyčel: "Pošli tu fiendskou děvku pryč a pak si promluvíme. Do tý doby neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #12343 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~Vidíš šupinatého fienda, který je velice podobný tomu vedle něj - kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tomuhle chybí na pravé straně tlamy zub. Uviděl Fall-from-Grace stojící vedle sebe a zasyčel: "Odvěď tu havěť z Abyssu pryč a promluvíme si. Jinak neřeknem ani slovo." Odplivl si.~ */
  IF ~~ THEN REPLY #12345 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~Vidíš šupinatého fienda, který je velice podobný tomu vedle něj - kromě propíchnutého levého ucha jsou oba černí a ještěrovití, se složenými netopýřími křídly. Tomuhle chybí na pravé straně tlamy zub. "Ah, Tegar'ine," řekl, "náš starý přítel se vrátil a navštívil nás."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~Abishai se zkroutil nechutí. "Odveď si ty chaotické krysy pryč," ukázal na Fall-from-Grace a Annah, "od nás, a my si s tebou promluvíme. Dokud tady budou, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12348 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~Abishai se zkroutil nechutí. "Odveď si tu chaotickou krysu pryč," ukázal na Annah, "od nás, a my si s tebou promluvíme. Dokud tady bude, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12350 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~Abishai se zkroutil nechutí. "Odveď si tu chaotickou krysu pryč," ukázal na Fall-From-Grace, "od nás, a my si s tebou promluvíme. Dokud tady bude, neřeknem už ani slovo."~ */
  IF ~~ THEN REPLY #12352 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"Marnotratník se vrací, eh?" Démon na tebe s úsměvem zasyčel, z koutku úst mu uniklo trochu jedovatého plynu. "Vrátily se k tobě tvé vzpomínky, starý příteli?"~ */
  IF ~~ THEN REPLY #12354 /* ~"Co tím myslíš?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"Mám pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"Nějaké otázky? Možná budeme mít odpovědi. Samozřejmě ti pomůžeme, jak jenom budeme moci, starý příteli."~ */
  IF ~~ THEN REPLY #12358 /* ~"Kdo jsi?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"Co to děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"Co je tohle za místo?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"Řekni mi o fiendech."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"Znáš Sběrače jménem Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"Hledám deník."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"Rozmýšlím o té smlouvě, o které jsi mluvil dřív"~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"Neznáš Sběrače, který jedná s démony?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"Ještě jednou, kde že se ten Sběrač skrývá?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"Jaký je druh 'moci', co mi ten přívěsek poskytne?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"Nedostal jsem přívěšek od Erinye, a ona už je pryč..."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Lež: "Nemohl jsem najít Erinye; prostě v té aleji, o které jsi mi řekl, nebyla."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"Tady je ten přívěšek."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"Nic, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"Já i Tegar'in se cítíme dotčeni. Ale nevadí. Nakonec, je to už několik set let a my víme, že mysli smrtelníků se časem rozplývají a ztrácejí."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Aethelgrin tě ignoruje a odpovídá svému společníkovi. "A zase jednou, Tegar'ine, jsi udeřil hřebík na hlavičku. I když je možná lepší nepřilákávat pozornost, kterou musí někdo, kdo nese jméno 'Trojprokletý' rozhodně přitahovat."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"Mám pár dalších otázek..."~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"Mám pár dalších otázek..."~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"Ale, vidím to tam malou létající lebku? Krásně voníš Baatorským rozkladem, krasavče. Možná si o tom ještě promluvíme... později." Abishai vrátil pozornost k tobě. "A teď... říkal jsi, že máš nějaké otázky?"~ */
  IF ~~ THEN REPLY #12370 /* ~"Kdo jsi?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"Co to děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"Co je tohle za místo?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"Řekni mi o fiendech."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"Znáš Sběrače jménem Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"Hledám deník."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"Rozmýšlím o té smlouvě, o které jsi mluvil dřív"~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"Nevíš něco o Sběrači, který obchoduje s fiendy?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"Kde se skrývá ten Sběrač, hmmm?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"A jaký druh síly mi tento přívěšek dá?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"Nepodařilo se mi dostat přívěšek od Erinye, a ona už je pryč..."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Lež: "Nemohl jsem najít Erinye; prostě v té aleji, o které jsi mi řekl, nebyla."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"Tady je ten přívěšek."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"Co to děláme? Copak to není úplně jasné, starý příteli? Máme dovolenku z našeho milovaného umístění, užíváme si tak potřebný odpočinek a možná taky trochu přibíráme další pro naši slavnou věc. Naši nadřízení plně podporují naši přítomnost."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"Jak to vidíme my, jsou dva druhy fiendů: Ti správní, a ti, kteří správní nejsou. Naše strana - baatezu - je správná. Druhá strana prokletých, nenáviděných chaotických tanar'ri je nesprávná a musí být vyhlazena."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"Nepíšu si deník, příteli a tobě radím to samé. Zeptej se mého drahého soudruha Tegar'ina proč a dozvíš se to."~ */
  IF ~~ THEN REPLY #12380 /* ~"Dobrá tedy. Tegar'ine, proč bych si neměl psát deník?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"Možná později. Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"Možná později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"Ano, ano, má. Ví to?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"Ano, samozřejmě, máš úplnou pravdu." Fiend se otočil k tobě. "Co bys chtěl o tomto Sběrači vědět, příteli z dávných let?"~ */
  IF ~~ THEN REPLY #14741 /* ~"Trochu, jenom to, že má zvláštní zvyky, a že byl viděn jak si povídá s fiendy."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"Nic. Opravdu!. Doufal jsem, že alespoň ty mi to trochu objasníš."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"Hmmm, trošku. Zeptám se tě na něj někdy jindy. Zatím Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"Řekl bych ti to, druhu, ale žel, slíbil jsem o tom mlčet!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"Ty jsi nepřísahal, Tegar'ine?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"Báječné!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~Než mohl Tegar'in pokračovat, druhý fiend jej přerušil. "Ten přívěsek! Nezapomeň!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"...možná bys byl ochoten s námi uzavřít obchod? Jako za starých časů..."~ */
  IF ~~ THEN REPLY #14743 /* ~"Ne. Nejde to"~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"Co tím myslíš?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"Povíme ti všechno, co víme o tom 'Sběrači'..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"...jeho slabosti a jak jej porazit, čímž bys získal jeho přívěsek -- pomocí kterého tě učiníme mnohem silnějším. Na oplátku..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"Ano, ten přívěsek. Má tvar lidské hlavy se šesti krystaly, zářícími z její koruny."~ */
  IF ~~ THEN REPLY #14745 /* ~"A proč se ho nezmocníš sám?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"Co způsobuje ten přívěšek?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"Jasně."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"Ne. Nejde to"~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"Je nám zakázáno se třeba jen přiblížit k tomu 'Sběrači', natož jej obtěžovat nebo zranit."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"Pro tebe nic."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"Kromě toho žádnou moc nemá; vlastně je to docela nečinná věc."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"Ale najisto bys jednou mohl vidět, jak pro něj najdeme použití my."~ */
  IF ~~ THEN REPLY #14749 /* ~"A proč se ho nezmocníš sám?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"Jasně."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"Ne. Nejde to"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"Moc špatné, moc špatné."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"Skvělé."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"Mno, byla prokleta do podoby, v jaké ji můžeš vidět. Mnoho její moci bylo promrháno, odčerpáno svatou silou kněží."~ */
  IF ~~ THEN REPLY #14752 /* ~"Zajímavé..."~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"Jsou to vrkající poletuchy."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"Prostě seber ten přívěsek z jejího těla a vrať nám ho, abys dostál naší dohody, příteli. My použijeme síly, kterou se jí podařilo uzavřít uvnitř, abychom tě posílili a pak si to vyprázdněné zařízení ponecháme."~ */
  IF ~~ THEN REPLY #14753 /* ~"Chápu..."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"Nechci to udělat. V žádném případě."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"Jak úžasné! Vrať se sem, až bude dílo hotovo."~ */
  IF ~~ THEN REPLY #14755 /* ~"Ještě než odejdu, smím pár otázek?"~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"Sbohem..."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"Jak kruté!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"Ano, *mnohem* silnějším!~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"Tegar'ine! Co se stalo?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"Zabijeme jej hned teď a odvlečeme do Baatoru?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"Ha! Vidíš, jak kňučí, Tegar'ine?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"Jak excelentní!" Aethelgrin Yemethův přívěsek popadl a hodil Tegar'inovi.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Aethelgrin se dívá pryč, jeho pozornost najednou upoutalo něco na baru za ním.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"Hmm? Och, ne, nevěděl jsem to."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"Obávám se, že to není možné. Teď je náš a moc by pro nás znamenalo jej ztratit. Prosím, vrať se, až se vymaníš z jakýchkoliv kouzel, která nám brání ti pomoci."~ */
  IF ~~ THEN REPLY #14757 /* ~Zaútoč na fiendy.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"Hmmm. Nashledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"Cože? Ne! To nemůžeš!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"Zabijeme ho?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"Zatracený ničemo! Jdi pryč!"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"Stůj... Mám přívěšek."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Odejdi.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"Podívej, vrátil se i s přívěskem!"~ */
  IF ~~ THEN REPLY #14761 /* ~"Počkej -- Jaký to druh síly mi nabízíš?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"Tady je ten přívěšek."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"Rozhodl jsem se mít ten přívěšek."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"Ach, podívej, kdo se vrátil. Promiň, příteli, nebudeme s tebou mluvit, dokud se nevrátíš s naším přívěskem. Sbohem."~ */
  IF ~~ THEN REPLY #14764 /* ~Odejdi.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"Podívej kdo to je, Tegar'ine..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"Měla by se schovávat osamocena v uličce přímo na sever od tohoto podniku, mezi dvěma budovami. Hledej ji tam pozdě večer."~ */
  IF ~~ THEN REPLY #14765 /* ~"Mám ještě i jiné otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ EXIT
END
