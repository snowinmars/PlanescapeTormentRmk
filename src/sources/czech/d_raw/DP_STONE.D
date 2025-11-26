// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DP_STONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DP_STONE~

IF ~  Global("PStone","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49785 /* ~Nápis na podstavci tohoto senzorického kamene označuje, že obsahuje zážitek "Týdenní lovecká výprava do lesů Arborea."~ */
  IF ~~ THEN REPLY #49786 /* ~Začni s vnímáním.~ */ DO ~SetGlobal("Pstone","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49787 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49788 /* ~Stojíš uprostřed kruhu bílých stanů někde hluboko v lesích. Stromy okolo tebe jsou zdaleka ty největší, jaké jsi kdy viděl. Ale najednou tě hluboko v hlavě zasvědí nějaký zvláštní pocit...~ */
  IF ~~ THEN REPLY #49789 /* ~Pokračuj v zážitku.~ */ GOTO 3
  IF ~~ THEN REPLY #49790 /* ~Přeruš zážitek, odejdi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #49791 /* ~Přes všechny tvé snahy jsi zjistil, že ten vjem nedokážeš ukončit. Dál nepozván pokračuje a vtahuje tvou mysl ještě dále do zážitku...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #49792 /* ~Tvé okolí se rozplynulo v bezbarvou skvrnu a pak pomalu přešlo v něco, co vypadá jako vnitřek velké šedé koule. Naproti tobě stojí člověk téměř stejný jako ty. Jeho oči se v pološeru blýskají; šílený úsměv rozdělí jeho rysy. "VĚDĚL jsem, že přijdeš..."~ */
  IF ~~ THEN REPLY #49793 /* ~"Zdravím..."~ */ GOTO 4
  IF ~~ THEN REPLY #49794 /* ~"Kdo jsi?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #49795 /* ~"Och, 'zdravím, zdravím, tak rád tě vidím.'" Ušklíbl se. "Přál bych si, aby byl ten tvůj VRAHOUNSKÝ jazyk zticha! Ano: vrahounský. Tvá předstíraná nevinnost je SMĚŠNÁ!"~ */
  IF ~~ THEN REPLY #49796 /* ~"Kdo jsi?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #49797 /* ~"Och, copak NEVÍŠ? Neřekly ti všechny ty ŠPINAVÉ, LŽIVÉ, ZATRACENÉ DENÍKY, kdo jsem? Ty deníky, co byly pro mě tak příhodně 'zanechány', když jsem se probudil... ty deníky, které mě nazývaly INKARNACÍ! Cha! Spálil jsem je VŠECHNY, ano, všechny, které jsem NAŠEL..."~ */
  IF ~~ THEN REPLY #49798 /* ~"Co přesně říkaly?"~ */ GOTO 6
  IF ~~ THEN REPLY #49799 /* ~"Takže... ty jsi jedna z mých dřívějších inkarnací?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #49800 /* ~"Říkaly LŽI, LŽI, LŽI a nic jiného! Špínu o muži, co zapomíná sám sebe, o dalších inkarnacích, o uchování jejich zážitků psaním, aby z nich mohly pozdější životy těžit... ZLODĚJI! Toto je MŮJ život; MŮJ! VY VŠICHNI CHCETE UKRÁST MÉ TĚLO, ALE NEDOSTANETE HO!"~ */
  IF ~~ THEN REPLY #49801 /* ~"Takže... ty jsi jedna z mých dřívějších inkarnací?"~ */ GOTO 7
  IF ~~ THEN REPLY #49802 /* ~"Kde jsem?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #49803 /* ~Zkřížil ruce a dívá se pryč. "Jestli budeš VĚŘIT takovým ŽVÁSTŮM, pak ano."~ */
  IF ~~ THEN REPLY #49804 /* ~"Co ty 'lživé' deníky říkaly?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #49805 /* ~"Och, TOTO?" Ukázal kolem sebe a uchechtl se. "Jenom malá PAST, toť vše. Uvědomil jsem si, že ZABÍJENÍ vás, ZLODĚJŮ TĚL, nemusí stačit... Mohl bych vás CHYTIT, POLAPIT vás navěky. Možná sis už teď všiml, že odsud ze senzorického kamene není žádný východ... tvá mysl je zde uzamčená. Zjistíš, jak docela PRÁZDNÉ okolí jsem tu pro tebe nechal... vše k tomu, aby se ŠÍLENSTVÍ dobře a RYCHLE usídlilo než shnije tvé tělo." Zlověstně zamlaská.~ */
  IF ~~ THEN REPLY #49806 /* ~"Pak bych tedy měl pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #49807 /* ~Zkus ukončit zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 10.3 11.3 12.3 15.4 16.1 19.4 20.3 21.3 22.3
  SAY #49808 /* ~Zkoušíš uniknout ze zážitku, ale bezvýsledně. Tvá dřívější inkarnace se prohýbá předstíraným smíchem. "Vzdej se! NIKDY neunikneš! Stejně tak si můžeš lehnout a čekat až se vypaříš v NIC. Jenom já jediný tě můžu propustit a to neudělám."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49809 /* ~"Počkej... ale já *jsem* ty. To znamená, že *můžu* propustit sám sebe..."~ */ GOTO 14
  IF ~~ THEN REPLY #49810 /* ~"Pak bych tedy měl pro tebe pár otázek..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.1
  SAY #49811 /* ~Tvá dřívější inkarnace zkříží ruce a dívá se pobouřeně jinam. Až na o několik málo chomáčů vlasů na hlavě navíc je naprosto identická s tebou - i její ruce mají většinu tetování, jako ty.~ */
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49812 /* ~"To ty jsi vytvořil ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49813 /* ~"Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49814 /* ~"To ty sis nechal udělat ta tetování?"~ */ GOTO 19
  IF ~~ THEN REPLY #49815 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0 15.2 19.2 20.1 21.1 22.1
  SAY #49816 /* ~"Nevím o čem to žvaníš. He. He-he. Dobrá, BYL jsem to já. BRILANTNÍ, že ano? POHRÁL sis s tím trochu? Přišel jsi o PRST nebo o OKO, doufám?" Radostně se zasměje.~ */
  IF ~  Global("P_Journal","GLOBAL",5)
~ THEN REPLY #49817 /* ~"Chytré, ale otevřel jsem ho a taky přečetl."~ */ GOTO 12
  IF ~~ THEN REPLY #49818 /* ~"Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49819 /* ~"To ty sis nechal udělat ta tetování?"~ */ GOTO 19
  IF ~~ THEN REPLY #49820 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49821 /* ~Dřívější inkarnace vypadá zhrozená. "NE! NE! NE! NEMOŽNÉ! Nikdo nedokáže přečíst ten jazyk, v němž to bylo napsáno; podřízl jsem JEDINÉHO člověka, který mu rozuměl, hned, jak mě ho NAUČIL. MRTVÝ jazyk, MRTVÝ lingvista... oba v páru v halách Smrti."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49822 /* ~Lež: "Dokázal jsem to přečíst, protože jsem *ty.* Nepatřím mezi falešná já; sám sebe jsi zde uvěznil. Polapil jsi sám sebe. Copak to nevidíš?"~ */ GOTO 13
  IF ~~ THEN REPLY #49823 /* ~"Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49824 /* ~"To ty sis nechal udělat ta tetování?"~ */ GOTO 19
  IF ~~ THEN REPLY #49825 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #49826 /* ~"Ale... to není... ty nejsi jeden z... Myslel jsem, že jsem vložil POJISTKY! Jak jsi mohl... jak já... být tak POŠETILÝ!" Zalomil rukama kousaje se do dolního rtu. "Jak se dostat VEN? JAK? Zapomněl jsem... moment: 'Jenom já jediný tě můžu propustit a to neudělám.' Jestli jsi já, pak MŮŽEŠ propustit sám sebe..."~ */
  IF ~~ THEN REPLY #49827 /* ~Zkus sám sebe propustit tím, že jsi 'ochoten' past otevřít.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #49828 /* ~"Ne! Ne... to nemůže... PŘESTAŇ!"~ */
  IF ~~ THEN REPLY #49829 /* ~Zkus sám sebe propustit tím, že jsi 'ochoten' past otevřít.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 11.1 12.1 19.3 20.2 21.2 22.2
  SAY #49830 /* ~"To ti nedokážu říct... nikdy to nebude ZOPAKOVÁNO, magie použitá při jejím vyváření je ZTRACENA, i pro mne. Ale je CHYTRÁ... jedna zkušenost SCHOVANÁ za jinou tak, aby ji žádné jiné TĚLO kromě mého VLASTNÍHO nespustilo."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49831 /* ~"Ale... jestliže tvé tělo ji aktivuje, neznamená to, že jsem *ty?* Chytil jsi sám sebe. *Já* jsem chytil sám sebe. Copak to nevidíš?"~ */ GOTO 13
  IF ~~ THEN REPLY #49832 /* ~"Takže jsou zde v kameni vlastně dvě zkušenosti?"~ */ GOTO 16
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49833 /* ~"Vytvořil jsi také ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49834 /* ~"To ty sis nechal udělat ta tetování?"~ */ GOTO 19
  IF ~~ THEN REPLY #49835 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #49836 /* ~"Ano; ta s loveckou výpravou v Arboreu a ta s touto PASTÍ." Pojednou vypadá ostražitě. "PROČ?"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #49837 /* ~Zkus se přinutit projít do druhého zážitku pomocí síly vůle.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #49838 /* ~Zkus se přinutit projít do druhého zážitku pomocí síly vůle.~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49839 /* ~"Co... co to DĚLÁŠ? NECH TOHO!"~ */
  IF ~~ THEN REPLY #49840 /* ~Pokračuj ve vynucování své cesty do druhého zážitku.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #49841 /* ~Nakonec ses protlačil do 'vnější' zkušenosti - lovu v Arboreu - a ukončil vjem dříve, než jsi byl vtažen zpět do pasti.~ */
  IF ~~ THEN REPLY #49842 /* ~Odejdi.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2 11.2 12.2 15.3
  SAY #49843 /* ~"Ne!" Vypadá rozrušeně. "To udělala jiná inkarnace, ta 'PRAKTICKÁ'. Pokoušel jsem se je sežehnout, ale kůže se REGENEROVALA opět s tetováními! Pokoušel jsem se je STRHAT, odbarvit KYSELINOU... NENÁVIDÍM je..."~ */
  IF ~~ THEN REPLY #49844 /* ~"Ale... proč?"~ */ GOTO 20
  IF ~~ THEN REPLY #49845 /* ~Přečti tetování.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49846 /* ~"Vytvořil jsi ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49847 /* ~"Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49848 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49849 /* ~Jeho oči znepokojeně pomrkávají. "Je nesnesitelné cítit ty OČI na tobě, čtoucí tvé TĚLO jako KNIHU..."~ */
  IF ~~ THEN REPLY #49850 /* ~Přečti tetování.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49851 /* ~"To ty jsi vytvořil ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49852 /* ~"Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49853 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #49854 /* ~Jeho oči zdivočely. "Přestaň! PŘESTAŇ MĚ ČÍST!" Zkouší se zakrýt rukama a otáčí se od tebe.~ */
  IF ~~ THEN REPLY #49855 /* ~Čti dál.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 22
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49856 /* ~"Dobrá. To ty jsi vytvořil ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49857 /* ~"Dobře. Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49858 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49859 /* ~Oči postavy ještě více zdivočely. "PŘESTAŇ! Přestaň HNED! Varuji tě!" Otočil se pryč a schoulil se, aby zakryl větší část těla. Na jeho zádech vidíš řadu vytetovaných varování, které ti Morte tehdy v Márnici přečetl. Je tam nicméně na konci ještě jeden řádek, který Morte opomněl přečíst nahlas: 'NEVĚŘ TÉ LEBCE.' Tvá dřívější inkarnace se stávala čím dál víc šílená, jak jsi na ni zíral. "NAPOSLEDY tě VARUJI! PŘESTAŇ!" ~ */
  IF ~~ THEN REPLY #49860 /* ~"Nemůžeš mě ohrozit... jsi uložená paměť, zjevení. Prostě tě budu dál číst dokud mě odtud nepustíš."~ */ GOTO 23
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49861 /* ~"Dobrá. To ty jsi vytvořil ten dvanáctistěn s pastí?"~ */ GOTO 11
  IF ~~ THEN REPLY #49862 /* ~"Dobře. Jak jsi vytvořil tuto past?"~ */ GOTO 15
  IF ~~ THEN REPLY #49863 /* ~Zkus ukončit tento zážitek.~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49864 /* ~Zavyl jako šílenec, divoce sebou zmítal, drásal si paže a pěnil z úst. "VEN! VEN! VEN! VEN! VEN! VEN! VEN!" A poté vše *skončilo*... zase stojíš zpět v senzoriu, poněkud zmatený, ale zcela v pořádku.~ */
  IF ~~ THEN REPLY #49865 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("PStone","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #49866 /* ~Nápis na podstavci tohoto senzorického kamene označuje, že obsahuje zážitek "Týdenní lovecká výprava do lesů Arborea." Nicméně pokud se ho dotkneš, budeš vtažen zpět do pasti té šílené dřívější inkarnace.~ */
  IF ~~ THEN REPLY #49867 /* ~Nechej tu věc být.~ */ EXIT
END
