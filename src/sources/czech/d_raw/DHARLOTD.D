// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~Žena do tebe vrazila, pak ustoupila o krok zpět a křivě se usmála. Smrdí jako destilační kolona. Zkrátka a dobře, vzduch kolem ní by se dal s minimální úpravou prodávat v láhvích s nápisy 40%.~ */
  IF ~~ THEN REPLY #1893 /* ~"Uh... Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"Dávej si bacha, kudy chodíš, ženská!"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"Ahóóóój..." Zamávala ti a pak se rozškytala. "Hoj, velkej kámo..." Začala se smát.~ */
  IF ~~ THEN REPLY #7486 /* ~"Jsi v pořádku?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~Zašilhala na tebe, založila si ruce v bok a předklonila se. Máš teď krásný náhled do jejího výstřihu. "Ti nepřipadaj fajn, kámo, ne? Co?" Otřásla se, škytla si a znovu se rozesmála. "Vypadáš jako někdo, kdo potřé-buje lásku a -hic- pé... péči." Píchla tě prstem do prsou.~ */
  IF ~~ THEN REPLY #7491 /* ~"Tvoje nabídka?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"Jistě, to rozhodně. Podívej, možná mi můžeš pomoct. Chtěl bych se přeptal na..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~Nadějně se na tebe zadívala. "Bych mohla bejt tvoje, esli mi dáš tu správnou nabídku." Přitiskla se k tobě. "Tak co to bude?"~ */
  IF ~~ THEN REPLY #7497 /* ~"Ne, díky. "Vrtá mi hlavou ještě pár otázek, třeba..."~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"Ne, díky."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"Jistě."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~Naštvala se. "Tě seru, teda. Si zkus najít nějakou lepší, než sem já. S tím, jakej máš ksicht se na to můžeš rovnou vysrat."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"Tak dobře." Prohlédla si tě od hlavy k patě a zřejmě z toho částečně vystřízlivěla. "Eh... ne, ne. Si myslim, že seš víc, než bych asi zvládla, to jo."~ */
  IF ~~ THEN REPLY #7508 /* ~"Tak teda v pořádku. Teď bych rád položil následující otázku..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"Rozumím... Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"Rozumím... Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"Rozumím... Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"Rozumím... Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"Chápu... Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"Ou, tak ty si myslíš, že ti můžu helfnout *já*?! No esli ty nejseš náročnej! Teda, mě ta tvoje lichotka přímo srdce láme." Usmála se.~ */
  IF ~~ THEN REPLY #7513 /* ~"Můžeš mi říct něco o tomhle městě?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"Můžeš mi říct něco o tomhle místě?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"Hledám deník. Neviděl jsi ho?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"Hledám člověka jménem Pharod. Nevíš, kde bych ho našel?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"Áno!" Opile se rozesmála.~ */
  IF ~~ THEN REPLY #7521 /* ~"Ano, co?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"Potřeboval bych informace ohledně..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"Néééé!" To slovo ji nejspíš pořádně vzrušuje, protože tě začala plácat do hrudi, aby to zdůraznila. "Ne! Ne!"~ */
  IF ~~ THEN REPLY #7527 /* ~"Uhm... zajímalo by mě ještě pár odpovědí..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"Nevadí."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"Nevadí."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"Nevadí."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"Nevadí."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"Jóó?" Zašilhala na tebe. "A co jako to?"~ */
  IF ~~ THEN REPLY #7532 /* ~"Co mi můžeš říct o tomhle městě?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"Hledám deník. Neviděl jsi ho?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"Hledám někoho jménem Pharod. Nevíš, kde bych ho našel?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"Nevadí. Sbohem."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~Už ses  málem otočil, ale náhle ses zastavil. Najednou máš pocit, že je něco *špatně*... a pak sis uvědomil, že žena opilost jenom předstírá. Když ses na ni zadíval, všiml sis, že si něco strká do rukávu... a to něco je určitě tvoje.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Chyť její ruku.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Popadni její ruku.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"Hej! Co si myslíš, že děláš?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Nalákej ženu, aby tě znovu okradla a dávej pozor jak to dělá.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Nalákej ženu, aby tě znovu okradla a pozorně sleduj jak to dělá.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Nalákej ženu, aby tě znovu okradla a dávej pozor jak to dělá.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Zaútoč na ni. ~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Ignoruj to a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~Tvoje ruka vyletěla a popadla ji drtícím sevřením za zápěstí. Okamžitě vystřízlivěla a zoufale se snaží uvolnit. Ječí přitom ze všech sil, jako řvoucí banší.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Tiše: "Přestaň křičet nebo ti odeberu hlasivky."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"Buď zticha! Zatraceně, ženská, zmlkni!"~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Zlom jí volnou rukou vaz.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Nechej ji odejít.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~Než jsi ji stačil chytnout, ucukla rukou. Opilý výraz okamžitě mizí. Začala ječet z plných plic.~ */
  IF ~~ THEN REPLY #7553 /* ~"Pak je to v pořádku..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~Opilý výraz zmizel a žena začíná ječet z plných plic.~ */
  IF ~~ THEN REPLY #7554 /* ~"Dobrá tedy..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~Stále se snaží vyškubnout a křičí o pomoc. Nechce se ti věřit, že může mít taková žena takové plíce... v uších ti z toho začíná zvonit. ~ */
  IF ~~ THEN REPLY #7555 /* ~Zaútoč na ni.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Volnou rukou jí zlom vaz.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Nechej ji jít.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~Stále se snaží vyškubnout a křičí o pomoc. Nechce se ti věřit, že může mít taková žena takové plíce... v uších ti z toho začíná zvonit. ~ */
  IF ~~ THEN REPLY #7558 /* ~Zaútoč na ni.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Volnou rukou jí zlom vaz.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Nechej ji jít.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Možná že ti pomohly tvé vlastní schopnosti vybírání kapes, že sis dal pozor, ale když ses otočil, instinktivně sis zkontroloval váček... A všiml sis, že tam měla děvka ruku. Zřejmě ale neví, že jsi ji zaregistroval.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Chyť její ruku.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Popadni ji za ruku.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"Hej! Co si myslíš, že děláš?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Nalákej ženu, aby tě znovu okradla a bedlivě ji při tom pozoruj.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Nalákej ženu, aby tě znovu okradla a pečlivě sleduj jak to dělá.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Nalákej ženu, aby tě znovu okradla a pozorně sleduj její techniku.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Zaútoč na ni. ~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Ignoruj incident a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~Naklonil ses k ní a směješ se taky. Sleduješ, jak její ruka znovu vlétla do tvého váčku... její technika spočívá v rozptýlení kořena opilými kecy (a poprsím), zatím co mu vybírá mince z měšce. Rukávy jejích šatů jsou schválně dlouhé a pytlovité, aby mohla snadno a rychle schovávat ukradené předměty. Udělal sis mentální poznámku na téma vykrádání kapsy... a sleduješ jak její ruka opět zalétla tam, kam by neměla.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Popadni její ruku.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Chyť ji za ruku.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"Hej! Co si myslíš, že děláš?!"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Zaútoč na ni. ~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Ignoruj incident a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~V tvém tónu muselo *něco* zaznít, protože se náhle zarazila a podívala se na tebe velkýma vystrašenýma očima.~ */
  IF ~~ THEN REPLY #7576 /* ~"Vrať, cos mi ukradla. Hned."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Volnou rukou jí zlom vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Nechej ji odejít. ~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~Přikývla. Vyhrnula si dlouhé rukávy a odhalila malý vycpávaný váček připevněný k zápěstí. Vypadá to, že do něj může snadno skrýt mince, vycpávka přehluší jakékoli cinkání, které by mince mohly způsobit. Beze slova ti podala váček... je v něm několik tuctů měděných mincí.~ */
  IF ~~ THEN REPLY #7579 /* ~"Jsme vyrovnáni. Už tě zde nechci nikdy vidět. Jasné?"~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Bluf: "Dej mi všechno, co máš a nechám tě žít."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Pravda: "Dej mi všechno, co máš a nechám tě naživu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Kývni na znamení díků, potom jí volnou rukou zlom vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Nechej ji odejít. ~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~Sáhla za svůj podvazek a vytáhla další váček, který ti hned podala. Je plný měďáků, které jsi hned přesypal do svého měšce.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"Myslel jsem *všechno*, takže mi *všechno* dej."~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"Už tě nechci nikdy vidět. Jasné?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Kývni na znamení díků, potom jí volnou rukou zlom vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Nechej ji odejít.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~Pomalu sáhla do boty a vytáhla podivnou štíhlou dýku, kterou ti podává jílcem napřed. Pak sáhla do druhé boty a vytáhla *další* dýku, ještě hrozivější, než byla ta první, se širším ostřím. Podala ti i druhou dýku, opět jílcem napřed. Pak škubla hlavou a odhrnula si vlasy. Odhalila tak malou náušnici, kterou rozepnula a předala ti ji.~ */
  IF ~~ THEN REPLY #7588 /* ~"Fajn, stačí. Takže, už tě nechci nikdy vidět. Rozumíš?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Kývni na znamení díků, potom jí volnou rukou zlom vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Nechej ji odejít.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~Přikývla. ~ */
  IF ~~ THEN REPLY #7591 /* ~Volnou rukou jí zlom vaz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Nechej ji odejít.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Oči se jí rozšířily, když jsi jí sáhl na krk. Pokoušela se uvolnit, ale než se jí to podařilo, uslyšel jsi suché *prásk* a její boj skončil.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Pusť ji.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Pusť ji.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Pusť ji.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~Pustil jsi ji. Tělo spadlo na zem. Lámání krku bylo mnohem snazší, než stejné pokusy u Spalovačů. Když se díváš na její tělo, cítíš podivné zachvění. *Víš*, že už jsi takhle zabíjel. Zoufale se snažíš vzpomínku vytáhnout na světlo, ale vyklouzla ti a zmizela v tvém podvědomí.~ */
  IF ~~ THEN REPLY #7595 /* ~Odejdi.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~Pustil jsi ji, bezvládně se sesula k zemi. Když se díváš na její tělo, cítíš podivné zachvění. *Víš*, že už jsi takhle zabíjel. Někde v hlavě se ti objevila vzpomínka, ale zase zmizela, dřív než sis ji stačil uvědomit.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdi.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~Žena přikývne a začne utíkat pryč. Nemyslíš, že ji ještě někdy uvidíš.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdi.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~Žena přikývne a začne utíkat pryč. Nemyslíš, že ji ještě někdy uvidíš.~ */
  IF ~~ THEN REPLY #7596 /* ~Odejdi.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
