// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~Muž s divokýma očima je předkloněný, vrčí a ztěžka úpí. Vypadá to, že si vlasy a vousy neupravoval už několik let ... jsou tak dlouhé, že tvoří kolem jeho očí temný závoj. Dlouhý knír je zanesený tukem a potem, špičky kníru se tak sklonily, že se zapletly do jeho rozcuchané bradky.~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"Zdravíčko."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~Zavrč na něj.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~Zavrč na něj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~Zavrč na něj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~Nechej muže být.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~Nechej muže být.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~Muž přestal bručet a zvedl ruku, aby roztáhl závoj vlasů kryjících jeho oči. Jakmile jeho vyschlá ruka odhrnula špinavé lokny, vypadlo z jeho vlasů několik podivných hnědofialových brouků a rozsypalo se po dláždění. Mužova pleť pod rouškou vlasů je bledá jako měsíc a zvrásněná mnoha vráskami. Jeho tlusté a huňaté obočí vytvořilo 'V', jak se na tebe podíval. "Ruku, moji vem ten měsíc letět, tééééž?"~ */
  IF ~~ THEN REPLY #13843 /* ~"Uh, dnes ne. Měl bych pár otázek..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'Vzít tě za ruku a letět na měsíc?' Dnes ne, můj příteli."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'Vzít tě za ruku a letět na měsíc?' Dnes ne, můj příteli."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"Měsíc - měsíce - ecísěm - císěm?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~Zavrč na něj a pak začni štěkat."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~Nakloň hlavu, jako bys jej studoval.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~Muž dychtivě přikývne, pak zatleská jako dítě. "Odpovědi se dělí bledě modrým olejem! VĚZ! Se tvého ptaní vyhýbej!" Nakonec vydal dlouhé zavytí uťaté krátkým ostrým výštěkem. ~ */
  IF ~~ THEN REPLY #13851 /* ~"Podívej, klid. Jen jsem se tě chtěl na něco zeptat..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~Muž zaklonil hlavu a *vyje*. Je to tak příšerný zvuk, že tě to donutilo zakrýt si uši. A ani to nestačí: jakmile sis zakryl uši, rozrostlo se vytí do jekotu zavrtávajícího se do tvé hlavy, deroucího se do tvých uší, bořícího se pod kůži, pak lezoucího vnitřkem tvé lebky užírajíc zbytky tvého zdravého rozumu. Zvuk je tak nesnesitelný, že ani nejsi schopen nabrat sílu k mluvení.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~Otoč se, nechej muže být.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~Otoč se, nechej muže být.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~Zamračil se, ale jeho obočí se protáhlo do obráceného 'V' a vytvořilo tak bizarní výraz. Nemáš ponětí, jak dokázal vytvořit takový výraz, ale necítíš se dobře, pozorujíc jak se svaly pod jeho obličejem přemísťují do nového vzoru. Nedokážeš říci, zda je rozlícený, zvědavý, obojí, nebo ani jedno z toho. "Zazpívaný polibek muži, odpovědi upředsrstňovat srdce lesní ženy."~ */
  IF ~~ THEN REPLY #13856 /* ~"Uh, dnes ne. Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"Huh?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~Zaimprovizuj písničku: "Svobodný muž, svrabový muž, skrz les oni jdou... srdce lesní ženy nikdy odloučené a směje se tmou." ~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'Zaslíbený polibek otevírá srdce lesní ženy, ale mužova odpověď je to, co upřednostňuješ?' Dobrá tedy, ale věz toto: moje odpověď je otázkou a otázka od tebe je, co já upřednostňuji."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'Zaslíbený polibek otevírá srdce lesní ženy, ale mužova odpověď je to, co upřednostňuješ?' Dobrá tedy, ale věz toto: moje odpověď je otázkou a otázka od tebe je to, co já upřednostňuji."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~Muž se zdá být fascinován tvým hlasem. S každým tvým slovem se mu rozzáří oči. "Štěkající Divous jsem já, já jsem! Ne-upokojivý, ptaný-po, smíš-li, ty smíš?"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"Ty smíš a já budu: Kdo... nebo co... jsi?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~"Ty smíš a já budu: Jsi jeden z Chaotiků?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"Má otázka je taková: Jsi jeden z Hladových Psů?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"Můžu se přidat k Chaotikům?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"Přidat se k můžu já k Chaotikům?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"Přidat se k můžu já k Chaotikům?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"Hledám muže jménem Pharod. Znáš jej?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"Hledám ztracený deník. Víš, kde bych mohl nějaký najít?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"Ještě jednou, cože jsi říkal o mých denících?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"Co získám přidáním se k Chaotikům? Nějakou moc? Nějaké zvláštní schopnosti?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"Můžu vidět, jaké věci prodávají Chaotici svým členům?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"Uh... dnes ne ptaný-po. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"Uh... dnes ne ptaný-po. Sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~Blaženě zatleskal rukama jako dítě na festivalu a pak vydal skučivý výkřik: "Ptaní ZANECH! Ptaní ZANECH!"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"Nevyhýbej se této otázce: Kdo... nebo co... jsi?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"Nevyhýbej se této otázce: Jsi jeden z Chaotiků?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"Má otázka je taková: Jsi jeden z Hladových Psů?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"Můžu se přidat k Chaotikům?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"Přidat se k můžu já k Chaotikům?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"Přidat se k můžu já k Chaotikům?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"Hledám muže jménem Pharod. Znáš jej?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"Hledám ztracený deník. Víš, kde bych mohl nějaký najít?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"Ještě jednou, cože jsi říkal o mých denících?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"Co získám přidáním se k Chaotikům? Nějakou moc? Nějaké zvláštní schopnosti?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"Můžu vidět, jaké věci prodávají Chaotici svým členům?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"Uh... dnes ne ptaný-po. Sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"Uh... dnes ne ptaný-po. Sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~Zamračil se, přimhouřil oči a zase je otevřel. Jakmile opět promluvil, jeho hlas je vyrovnaný a přímý... jako by mluvil jiný, příčetnější člověk. Výsledek je děsivý. "Více než jeden ztracen, musíš najít víc než jeden. Každá část tebe měla jeden, tedy více než jeden musíš nalézt." Zamrkal a zamával na chvíli rukama, jakoby překvapil sám sebe a upjatě se usmál. ~ */
  IF ~~ THEN REPLY #13889 /* ~"Můžeš mi říct, kde je alespoň jeden z nich?"~ */ JOURNAL #58924 /* ~"Mluvil" jsem se Štěkajícím Divousem před Hospodou U Doutnajícího nebožtíka - a k mému překvapení nejenom že věděl o mém deníku, řekl mi ještě, že jich je víc než jeden. Řekl, že jeden je na 'zdech zapečetěné hrobky pod městem,' a další je ve 'skříni v mé místnosti v Hale Vnímavých,' a že se dají najít i další. Nevím, jak moc můžu věřit téhle informaci, ale když mluvil o denících, zněl docela při smyslech.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~Tváří se, jako by chtěl něco namítnout, pak se najednou uhodí do tváře svou levou pěstí. Na odpověď zakňučí, pojednou ztichne a pomrkává. "Jeden je ve skříni v tvém pokoji v síni Vnímajících, další je na zdech hrobky uzavřené hluboko pod městem tam, kde pláčí kameny. A ostatní jsou..." Než to mohl dopovědět, vymrštil svou pravou pěst a udeřil se do tváře, takže opět zakňučel. Na chvíli pomrkává a kýve hlavou, jako by byl překvapen sám sebou a nejistě se usmál.~ */
  IF ~~ THEN REPLY #13890 /* ~"Síň Vnímavých? Kde to je?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"Hrobka pod městem? Kde?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"Kde jsou ty ostatní deníky?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~Štěkající Divous zvedl ruce... zdá se, že si nepamatuje, co právě řekl.~ */
  IF ~~ THEN REPLY #13896 /* ~"Říkal jsi, že jeden je v sarkofágu pod městem? Kde?~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"Kde jsou ty ostatní deníky, které jsi zmínil?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"Tak na to zapomeň. Zkusím jej najít sám."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"Tak na to zapomeň. Zkusím jej najít sám."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~Štěkající Divous na chvíli vypadá vystrašeně, pak s optimistickým výrazem ukáže vzhůru . "Uh... tam?" Zalapá po dechu. Z nějakého důvodu mu věříš, ačkoli nevypadá na to, že by to věděl.~ */
  IF ~~ THEN REPLY #13901 /* ~"Říkal jsi, že jeden je v Síni Vnímavých? Kde to je?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"Kde jsou ty ostatní deníky, které jsi zmínil?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"Tak na to zapomeň. Zkusím jej najít sám."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"Tak na to zapomeň. Zkusím jej najít sám."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~Štěkající Divous pokrčí rameny a ostražitě tě pozoruje. "Možná jinde?" Zalapá po dechu.~ */
  IF ~~ THEN REPLY #13906 /* ~"Říkal jsi, že jeden je v Síni Vnímavých? Kde to je?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"Říkal jsi, že jeden je v sarkofágu pod městem? Kde?~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"Tak na to zapomeň. Zkusím je najít sám."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"Tak na to zapomeň. Zkusím je najít sám."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~Štěkající Divous pokrčí rameny a odpoví monotónním hlasem: "Divné dost? Ne dost, ne divné, ztraceno ne, pomoc ne..." Vrčí si pro sebe, jakoby si chtěl odkašlat. "Možná ho nejdřív ztrácíš, pak se ptáš mě, pak to bude dost divné?" ~ */
  IF ~~ THEN REPLY #13911 /* ~"Nejdřív bych jej musel najít, abych jej ztratil. Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"Tak na to zapomeň. Zkusím ho najít sám."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"Tak na to zapomeň. Zkusím ho najít sám."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"Ká-oši!" To slovo vykoktal, jakoby to pro něj byl nějaký problematický jazykolam. "Někdo říká Xaositect, já říkám T-ect-I-soax. CHAOS-lidé. Lid ne. Dil ne, lid ano, tři nosy tvoří ano.." Skácel se na kolena, začal se kymácet dozadu a dopředu a zpívá dětským sopránem: "Chaotiku, Chaotiku, skoč na dům, společenství je to, a přece jsi jak v plotě kůl."~ */
  IF ~~ THEN REPLY #13914 /* ~"Takže jsi jeden z Chaotiků. Dobrá. Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~Jako odpověď začal z plných plic štěkat. Vidíš jak mu z úst v obloucích vylétávají sliny a trochu jsi ustoupil ve snaze vyhnout se sprše. Po chvíli přestal a dlouze zavyl.~ */
  IF ~~ THEN REPLY #13917 /* ~"Předpokládám, že by to mohlo být ano. Dobrá. Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~Divá se na tebe nedůvěřivě, pokrčí rameny a pak se nahne dopředu, aby si tě očichal. "Squat... hlad, chlad... chlap, chlup..." Odfrkl si a zavrčel. "Hňup!"~ */
  IF ~~ THEN REPLY #13920 /* ~"Předpokládám, že by to mohlo být ne. Dobrá. Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"Hmmm. Přidat se k můžu já k Chaotikům?"~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"Uh... tak teda sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"Uh... tak teda sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~To je asi první věc, která Štěkajícího Divouse zmátla, když jsi ji řekl. Na chvíli se zamyslel, zavrčel a pak na tebe ukázal prstem. "Jsi muž chaosu už ty! Už jsi jsi-jsi-jsi!"~ */
  IF ~~ THEN REPLY #13924 /* ~Usměj se, přimhuř oči a řekni: "Přes-ně."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"Och, zapomněl jsem. Měl bych ještě jiné otázky..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"Za pokus to stálo. Tak sbohem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"Za pokus to stálo. Tak sbohem."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~Jakoby někdo zažehnul v Divousově lebce pochodeň, soudě podle jeho vytřeštěných očí a širokého úsměvu. Úsměv se změnil v řehot a poté v posměch. Začíná před tebou skotačit a tančit. "Pes! Lež! Věž!" Poplácal tě oběma rukama po ramenou a pak zavyl k obloze. "Znovu jsi Chaotik! Dva! Tři! Vši!"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"Vši-jsem-já, Xaositect-jsem-já!"~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"Vši-jsem-já, Xaositect-jsem-já!"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~Divous zklidnil tanec tak, aby tě mohl propíchnout pohledem. "Brzy se s takovou myslí staneš vůdcem, to je cena, kterou tvá mysl platí za takové myšlenky!" Pochichtává se a zvedne ruce do vzduchu. "Šílený král přichází a Sféry padnou!"~ */
  IF ~~ THEN REPLY #13930 /* ~"Snad, snad. Ale pro tebe mám další otázky..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~Divousova ústa vytvořila 'O' v údivu. "Stal ses vůdcem, to je cena, kterou tvá mysl platí za takové myšlenky!" Ukázal na tebe prstem jako nějakým žezlem. "Pokloň se, vůdče! Králi Chaotiků! Prohlašuji tě mužem masa a ženou chaosu! Nyní smíš políbit neřestu!"~ */
  IF ~~ THEN REPLY #13931 /* ~"Uh... vůdce?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"Vůdce-jsem-já! Neřesty pro všechny!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~Jak tě uslyšel, Divous vzhlédl a jeho ústa údivem vytvořila 'O'. Seskočil na nohy a ukázal na tebe prstem jako nějakým žezlem. "Pokloň se, vůdče! Králi Chaotiků! Prohlašuji tě mužem masa a ženou chaosu! Nyní smíš políbit neřestu!"~ */
  IF ~~ THEN REPLY #13933 /* ~"Uh... vůdce?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"Vůdce-jsem-já! Neřesty pro všechny!"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"Poslouchej ne moje PTANÍ-ZANECHÁNÍ, Divousi, PTANÍ-ZANECHÁNÍ mám já..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~Divous zkřížil své ruce. "Jsi Král Chaosu, vůdce je jen jméno, co na sebe navlékáš jako špinavou košili."~ */
  IF ~~ THEN REPLY #13935 /* ~"Nechci být vůdcem."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"Vůdce-jsem-já! Špinavá košile navždy žádná!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~Divous pokrčil rameny a pak se šibalsky zazubil. "Jako život, žádná volba. Smůlu nejsmůlovatější a nadbytek prokletí na tebe!" Přimhouřil oči. "Chceš změnit titul, změnit svou mysl. Jedno jednodušší než druhé, ledaže bys byl tupec!"~ */
  IF ~~ THEN REPLY #13937 /* ~"No, nezdá se mi to fér, abych se stal vůdcem aniž by se mě na to kdokoliv ptal. Mělo by se to řídit nějakým pravidlem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"Vůdce-jsem-já! Hlavy tupé všude okolo!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~Divous se hluboce uklonil a stiskl své prsty do tvaru trojúhelníka. "Čáry máry! Teď už žádným vůdcem nejsi! Spravedlnost a pravidla a práva a podobné tvrdohlavé myšlenky nemohou být v mysli vůdce..." Chvíli nad tím hloubal. "Okovy jsou pryč!" Opět se zamračil a pak pokrčil rameny. "A okovy jsou zpět! Ale už žádný vůdce." ~ */
  IF ~~ THEN REPLY #13939 /* ~"Teď, když máme sesazení z trůnu za sebou, tak bych měl na tebe pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"Jen jsem to chtěl urovnat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~Ty a Divous jste několik minut šíleně poskakovali a vyli na oblohu. Několik kolemjdoucích se na vás zvláštně dívalo a někdo na vás z povzdálí zařval, abyste byli oba zticha. Divous nakonec zakopl a tanec přestal, jakmile se dostal zase na nohy.~ */
  IF ~~ THEN REPLY #13941 /* ~"Mám otázky!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"Nemám otázek! Měj-ty-se! Se-ty-měj!~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~Jak jsi ta slova vyslovil, do mužových očí jakoby se vedrala jiskra lidství. Chvíli se díval na oblohu, pak zvedl levou nohu a podíval se pod ni. Asi tam nic nenašel, tak rozpažil ruce a každou sledoval jedním okem, což je přinutilo vytočit se v opačném směru. Pak zatřásl hlavou (přičemž opět seřídil oči) a šilhá ti do tváře.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"Už jsem členem Božích Lidí, ale..."~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"Už jsem členem Spalovačů, ale..."~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"Už jsem členem Anarchistů, ale..."~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"Už jsem členem Vnímavých, ale..."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"Už jsem členem Božích Lidí. Rozmyslel jsem si to... nepodrazím je."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~"Už jsem členem Spalovačů. Rozmyslel jsem si to... nepodrazím je."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~"Už jsem členem Anarchistů. Rozmyslel jsem si to... nepodrazím je."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~"Už jsem členem Vnímavých. Rozmyslel jsem si to... nepodrazím je."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"Tak... jaký je další krok?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"Víš co, pusť to z hlavy. Místo toho bych se na něco zeptal..."~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"Vlastně, zapomeň na to. Nechci se stát Chaotikem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~Divous pokrčí rameny. Nezdá se, že by ho to nějak zvlášť zajímalo. "Ne-kej, Kej-Ou, hej?"~ */
  IF ~~ THEN REPLY #13954 /* ~"No ale měl bych ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"Uh... tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"Zpátky jít ne..." Divous huhňá a stále šilhá. "Staré společenstvo odpustit ne..."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"Přidat se připraven k Xaositectům jsem já. Věrnost žádné společenství já mám Boží Lidé."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"Přidat se připraven k Xaositectům jsem já. Věrnost žádné společenství já mám Spalovači."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"Přidat se připraven k Xaositectům jsem já. Věrnost žádné společenství já mám Anarchisté."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"Přidat se připraven k Xaositectům jsem já. Věrnost žádné společenství já mám Vnímaví."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~Lži, abys Chaotiky infiltroval pro Anarchisty: ""Přidat se připraven k Xaositectům jsem já. Věrnost žádné společenství já mám."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"Zapomeň na to. Měl bych ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"Nemyslím, že bych na to byl připraven. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~Mumlal si pro sebe a pak zakřičel, "Záleží ne!" Než jsi stačil zareagovat, mávl ve vzduchu rukou až se ozval vysoký svist a dal ti facku. "Vítán buď! Po třikráte vtipné KO jsi!" Chichotá se, zatím co palčivá bolest ve tvé tváři ustupuje. Máš takový divný dojem, že jsi byl právě zasvěcen... a že se to Divousovi moc líbilo.~ */
  IF ~~ THEN REPLY #13963 /* ~Napadni jej za to, že tě uhodil.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"Pak pro tebe jiné otázky mám já..."~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"Uh... tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~Muž zavrčel, pak se usmál a přiložil si k hlavě dva prsty jako růžky. "Nic!" Zašklebil se, sundal své žertovné rohy a zamával rukama jako křídly. "Všechno!" Vydal přidušený vzlyk a protřel si oči. "Hledání vede k nalezení, nalezení vede k hledání..." Zatleskal. "Co na tom záležet? Hledej žádnou před-nost, před-nost, a ona bude hledat tebe..."~ */
  IF ~~ THEN REPLY #13966 /* ~"Tak teda bych se ještě na něco zeptal..."~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"Uh... tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~Divous najednou vypadá zaujat. "Co máš pro mě, hmmmm?!"~ */
  IF ~~ THEN REPLY #13968 /* ~"Ne, ne, ptal jsem se, co máš ty pro mě."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~Ukaž mu, co máš.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~Ukaž mu, co máš.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~Ukaž mu, co máš.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~Dívá se na tvoje věci s nezájmem. "Nic! Hromada různých hloupostí! Bezcenné tretky!"~ */
  IF ~~ THEN REPLY #13973 /* ~"Tak teda bych se ještě na něco zeptal..."~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~Nechej Divouse být.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~Odkašlal si a zkřížil ruce. Vypadá, jako by se za svými vlasy schovával. "Nic nemít!"~ */
  IF ~~ THEN REPLY #13975 /* ~Kopni jej do holeně. Tvrdě.~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"Tak teda bych se ještě na něco zeptal..."~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~Nechej Divouse být.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~Vyštěknul... "Všechno! Mám všechno! A všechno je nic, takže raději přestat brát HNED!" Brečí jako dítě a drží si holeň. "Ubohá holeni, ubohá holeni, nechtít vidět tě bolet..."~ */
  IF ~~ THEN REPLY #13978 /* ~"Tak teda bych se ještě na něco zeptal..."~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~Nechej Divouse být.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~Divousovy oči jsou pojednou zaměstnány jedním z tvých krysích ocásků. Vyrval ocásek z tvého sevření a drží jej mezi prsty, jako by to byl kroutící se červ. S rychlostí blesku jej spletl to podivného tvaru a hodil ti ho nazpět. "Kouzlo by, ahem jiiiisté..." Ta slova spolkl a zamlaskal.~ */
  IF ~~ THEN REPLY #13980 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"Díky, Divousi. Sbohem."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~Vidíš Štěkajícího Divouse. Je stále skrčený pod svými dlouhými špinavými loknami... vypadá zcela zaujat vrčením sám k sobě.~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"Ptaní ZANECH, Divousi! Zavři oči a poslouchej mě!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"Ptaní ZANECH, Divousi! Zavři oči a poslouchej mě!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"Ptaní ZANECH, Divousi! Zavři oči a poslouchej mě!"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"Poslouchej ne moje PTANÍ-ZANECHÁNÍ, Divousi, PTANÍ-ZANECHÁNÍ mám já..."~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~Nechej Divouse být.~ */ EXIT
END
