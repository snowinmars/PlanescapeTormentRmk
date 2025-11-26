// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~Hnilobný pach, vycházející z prastaré ghúlí ženy, ti způsobuje nevolnost, dokonce i na větší vzdálenost. Její zelenošedá pokožka je poseta hnisajícími boláky, její prsty, každý zakončený dlouhým zakřiveným drápem, jsou pokryty zaschlou krví a špínou. Její vlasy, plné hmyzu a červů, jí visí až ke kolenům a stíní téměř celou její tvář. Stejně ale jasně vidíš zubatý, divoký škleb a slizký šedý jazyk.~ */
  IF ~~ THEN REPLY #2876 /* ~"Zdravím..."~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~Nechej ji být a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"Tststs. Co to tady máme? Pěkný masíčko, co, s chrupavčičkama? Stálo by za to zuby brousit na tvých kostech a pěkně ztloustnout z morku."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"Ty musíš být Acaste."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"Chtěl jsem se na něco zeptat..."~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"Už se rozloučím, sbohem!"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"Pro tebe nejsem jen tak někdo, masokoste. Dávej si bacha, jak to se mnou mluvíš, nebo tě už nikdo neuvidí v jednom kuse."~ */
  IF ~~ THEN REPLY #20859 /* ~"Budu si s tebou mluvit jak chci, ghúle."~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"Měl jsem pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"Už se musím rozloučit, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~Začala se strašlivě smát, šíleným, ostrým a jízlivým smíchem, ještě než jsi domluvil. "Blázne! Asi nevíš, koho před sebou máš! Jsem Acaste, královna ghúlů! Mí drazí poddaní tě rozsápou a sežerou zaživa i s obsahem tvých prašivých vnitřností! Jak se opovažuješ takhle se mnou hovořit?"~ */
  IF ~~ THEN REPLY #20863 /* ~"Jste jen banda shnilotin a mrchožroutů, kterých se nikdy nemůžu zaleknout."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"Pardon. Měl bych pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~Ušklíbne se na tebe. "Štěstí máš, červe, štěstí! Štěstí při meči Tichého Krále! Jinak by ses stal předkrmem pro mé služebníky!" Plivne ti k nohám. "Táhni mi z očí a už se nevracej! Táhni! Hssst!"~ */
  IF ~~ THEN REPLY #20867 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"Kdo jsi, ty, kdož předstupuješ přede mě jako hostina?? Odpověz Acaste."~ */
  IF ~~ THEN REPLY #20869 /* ~"Nemám žádného jména, jsem Bezejmenný."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~Lež: "Jsem... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"Nejdříve mi odpověz na mé otázky..."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"Tak potom nemá ani Acaste. Budu ti říkat Zkrvavený. Děkuj za to, že máš jméno a  vůli dříve, než tě rozsápu na hadry."~ */
  IF ~~ THEN REPLY #20873 /* ~"Zkrvavený?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"Mé otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"Budu se muset rozloučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"Aaaadahn..." Vysunula svůj dlouhý, šedý jazyk přes své rty, z jejichž koutků odkapává nažloutlé svinstvo. "Ano..."~ */
  IF ~~ THEN REPLY #20877 /* ~"Mé otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"Budu se muset rozloučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"Ne. Odpovíš mi teď hned, ještě než ti odpářu kůži z kostí a pozřu na tři doby! Budeš výtečnou hostinou pro mé poddané."~ */
  IF ~~ THEN REPLY #20880 /* ~"Pozor na jazyk, mrtvolo, hodil by se mi do bot."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"Nemám žádného jména, jsem Bezejmenný."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~Lež: "Jsem... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"Do toho! Acaste ti dovoluje vyslovit otázku. Ptej se, červe, dokud jsi naživu!"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"Věděl jsi, že Tichý král není nic jiného než kostra?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"Věděla jsi, že Tichý Král je jen kostlivec?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"Proč jsem byl uvězněn?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"Kde to jsem?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"Co zde děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"Kdo obývá toto místo?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"Chtěl bych se zeptat na konkrétní osobu..."~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"Viděla jsi někde okolo malou bronzovou kouli?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~Acaste se zašklebí. "Hssst! Protože jsme tě nechytili v temných chodbách, kde bys byl pro nás dobré sousto!" Pokývá hlavou a vrčí. "K čertu s Tichým Králem, k čertu s jeho starými kostmi! Kohokoliv oni chytí, ten tu zůstává tak dlouho, dokud se k nim *nepřipojí*."~ */
  IF ~~ THEN REPLY #20893 /* ~"Pověz mi o Tichém Králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"Oni? Kdo další zde přebývá?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"Země Tichého Krále, Mrtvé Národy... země morkových kostí s hordami mrtvého masa..." Hladově si olizuje rty a hladí břicho.~ */
  IF ~~ THEN REPLY #20898 /* ~"Kdo další zde přebývá?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"Bojovali jsme, zvítězili a pojedli. Čerstvý maso - tak jako ty - se stalo nakonec naší potravou. Ukrutní hladovci jsme, prázdné žaludky, nikdy nemáme dost. Hladovíme celou věčnost... a pak si přijdete... rychle! Chcípni a mlč navěky!"~ */
  IF ~~ THEN REPLY #20902 /* ~"Čerstvý maso?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"Jak ses sem dostala?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"Procházejí katakombami, loví a zabíjejí, otevírají krypty a rakve, *vyjídají* kosti a mrtvoly. Přistup..." Acaste mrkne. "Tohle je... podivné místo... Acaste zůstává mezi slabými, morkovými kostmi a hordou mrtvého masa - umrlci..."~ */
  IF ~~ THEN REPLY #20907 /* ~"Tak proč už jste je nezabili a nesnědli, ty umrlé?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"Čerstvý maso - velká dobrota..." Její žluté oči na tebe napjatě hledí skrz rozcuchané bílé vlasy. "...jsi."~ */
  IF ~~ THEN REPLY #20911 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~Acaste odfrkne. "Nesnadná kořist. Nejsou ještě jako jiní mrtví... bojují organizovaně a je jich hodně. Těžko porazit jak osamoceného slabého, tak partu silnou skoro stejně jako je Acaste. Takže vyčkáváme."~ */
  IF ~~ THEN REPLY #20914 /* ~"Vyčkáváte na co?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"Tak co tedy děláte zatímco vyčkáváte?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"Říkáme, že bojujeme pro ně, zabíjíme čerstvé maso, když od nás přijdou brát, lovíme krysy, zabíjíme, žereme a ponecháváme kousky těl jako varování, které říká 'přijďte a sežereme vás'. To nás chrání jen zde. Hargrimm a Ošuntělá Máry říkají, že nesmíme vycházet a zabíjet živé maso."~ */
  IF ~~ THEN REPLY #20919 /* ~"Kdo-"~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"Měl jsem-"~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"To je vše co-"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~Acaste si tě už nevšímá. Hlasitě syčí odhalujíce své ostré a zkrvavené zuby. "Nenávidíme je! Sníst všechno čerstvé maso! Jak hladoví jsme... zabít je všechny, rozpárat, rozdrtit kosti a vysát všechen sladký morek!"~ */
  IF ~~ THEN REPLY #20923 /* ~"Na co čekáte?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"Kdo je Hargrimm?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"Kdo je Ošuntělá Máry?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"Čerstvý maso?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"Krvavý krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"Pískají všude, pobíhají v malých černých dírách, těžko je chytit. Svačinka, těžko dostat. Teplé maso, jen se rozplývá na jazyku. Je jich spousta, zabíjíme je a všechny jíme. Snadno jimi zaženeme hlad."~ */
  IF ~~ THEN REPLY #20931 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"Čekáme na slabost, ano... chceme zjistit jak silný je Tichý král, jestli je silnější než Acaste. Čekáme na hordu mrtváků a pak zastavíme ty příznivce kostí, naplněných morkem..."~ */
  IF ~~ THEN REPLY #20934 /* ~"A co pak?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~Acaste, velitelka tlupy ghúlů, by ráda viděla Mrtvé národy ve svém područí. Čeká jen na nějakou slabost ze strany Tichého krále, než se pustí za svou kořistí skrz katakomby se svými patolízaly, drtit a zabíjet vše živé.~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"Všechny *sníme*.  Zabít všechny malinkaté čerstvé chlupatice, *sníst* všechny bytosti ve vesnici, sníst. Katakomby jsou pohostinné. A my jsme hladoví! *Lovit* a *jíst!"* Jak mluví, začíná se pořádně rozpalovat, cvaká zuby a prská drobné sliny...~ */
  IF ~~ THEN REPLY #20939 /* ~Nechej ji řečnit.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~Nechej ji samotnou s jejím řevem.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"HSSSSST! VŠECHNY je zabít, Acaste tomu chce! Trhej a rvi, párej ten tupý dobytek! Pomalý a slabý, hodící se jen k jídlu, trhat a drtit ten póvl! Lámat a štípat slaboučké kostičky! Vysát morek, sežrat zaživa, SEŽRAT! "~ */
  IF ~~ THEN REPLY #20942 /* ~Nechej ji řečnit.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~Nechej ji samotnou s jejím řevem.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"Acaste chce, aby zmlkli, ztichli, ne chodili a šustili! Chcípni a buď ZTICHA - jen tak je můžeme sníst, chytit mezi zuby, rozlousknout lebku, vysát mozek, vytáhnout žebra a pochutnat si na zbytcích!" Acaste udeří ve zlosti pěstí s drápy do země, drtíc dlaždičky u svých nohou.~ */
  IF ~~ THEN REPLY #20945 /* ~Nechej ji řečnit.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~Nechej ji samotnou s jejím řevem.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"NENÁVIDÍME je. Jen zkus říct Acaste, NE, nelovte čerstvé lidi, kteří probíhají a loupí v hrobkách! Nezabíjejte krvavé krysy! Nechte je být, nelovit, NEJEZTE! Acaste říká ZABÍT A SNÍST!" Náhle ztichne, jen ozvěna řevu odeznívá v temnotách. Vztek je ten tam.~ */
  IF ~~ THEN REPLY #20948 /* ~"Dej mi něco cenného a já ti pomůžu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"Věděl jsi, že Tichý král není nic jiného než kostra?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"Věděla jsi, že Tichý král je jen kostlivec?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"Hssssst?" Její oči se zúží. "Co to říkáš o Tichém králi?"~ */
  IF ~~ THEN REPLY #20953 /* ~"Tichý král je mrtvá záležitost. Mrtvola. Není živý."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"Nic. Měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"Nic, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"Jseš si jist? Tichoučká mrtvolka, potichoučku - jen takový jídlo?"~ */
  IF ~~ THEN REPLY #20957 /* ~"Jsem si jist. Je to prostě jen mrtvola."~ */ JOURNAL #20959 /* ~Řekl jsem Acaste, že Tichý král je mrtev a ona s bandou svých ghúlích nohsledů začala terorizovat katakomby Mrtvých národů.~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"Možná... možná ne. Mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"Nuže... Možná jsem se spletl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~Acaste se příšerně zašklebí, vydechne a přitom strašlivě zasyčí, načež zařve: "*ZABÍT VŠECHNO, HNED! SEŽRAT!*"~ */
  IF ~~ THEN REPLY #20962 /* ~Přijmi souboj.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~Prchni.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~Acaste zavrčí. "Tys... umlčel Tichého, už je zticha... Hssssst." Acaste tě ostražitě sleduje. "Silný... silný... Acaste tě teď nechá opustit toto místo..."~ */
  IF ~~ THEN REPLY #20965 /* ~"Ne, teď ještě ne."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"Dobrá. Sbohem."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~Acaste se opět zúží oči. "Odejdi. Odejdi *hned*."~ */
  IF ~~ THEN REPLY #20968 /* ~"Odejdu, až budu chtít, ghúle."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"Dobrá. Sbohem."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"Mnozí procházejí tyto chodby, ano... morkové kosti, hordy mrtváků, my, Zhoubní. Vše má pod svým područím Tichý král..." Odplivne si zhnuseně. "...který nám nařizuje, co máme a co nemáme dělat. Rovněž ty dobroty, krysy..." Acaste si mne mlsně své pařáty.~ */
  IF ~~ THEN REPLY #20971 /* ~"Pověz mi něco o vás."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"Pověz mi o těch *kostech*."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"Pověz mi o hordě mrtvých."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"Krysy?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"Kosti, kostlivci. Slabí. Unavení, příliš mnoho století, příliš *křehcí*." Chňapne po kosti ležící na zemi a rozlouskne ji, dokreslí svůj popis. "*Slabí.* Mrtví se nebojí, ale kostlivci *ano.* *Bojí se*, že zemřou a budou sežráni. Sežrala by je Acaste a Zhoubní. Bojí se *zemřít?* *Všichni jsme TEĎ mrtví.* *Strach* je něco, čím smrdí živí! *NIKOLIV MRTVÍ.*"~ */
  IF ~~ THEN REPLY #20979 /* ~"Zhoubní?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"Hssst. Dělají hluk jako dobytek a smrdí, smrdí nasládlým zamřelým potem." Acaste si olízne rty a vtáhne slinu skrz zuby. Odfrkne si, pozvedne obě paže a začne se jakoby belhat. "Chodí *unnnnnh unnnnh* většinu času, klátí se a belhají a pracují. *Blbý* žrádlo pro psy! *Blbý* stupidní bez mozku bytosti!"~ */
  IF ~~ THEN REPLY #20984 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"*Nnneviděný* král, nikoliv Tichý. Jak říká - tak činíme. Morkové kosti a horda mrtvých mu slouží. Acaste ho nikdy neviděla, pouze *slyšela.* Jednoho dne se s ním setkám... a rozsekám. Annno. Acaste silná a Tichý... jen tichý a slabý. Uvidíme, kdo je tu pánem, annno."~ */
  IF ~~ THEN REPLY #20988 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"Rád bych se zeptal na něco konkrétnějšího..."~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"My jsme Zhoubní, ano, Acaste a její ghúlové, její dětičky, stále hladové..."~ */
  IF ~~ THEN REPLY #20993 /* ~"Co zde děláte?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~Acaste se zúží oči a pozdvihne hlavu. "O kom chceš slyšet, nicotný?"~ */
  IF ~~ THEN REPLY #20998 /* ~"O tobě."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"O Tichém králi."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"O Hargrimmovi."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"O Ošuntělé Máry."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"O Soegovi."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"No nic. Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"Morek." Acaste si olízne popraskané rty a předvede strašlivou grimasu. "Starý morek, ale přece morek." Acaste zavrčí, oči jí žhnou. "Zabít ho, zabít všechny kostlivé *a* všechno mrtvé maso."~ */
  IF ~~ THEN REPLY #21006 /* ~"Kostlivce?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"Mrtvé maso?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"Ještě se chci zeptat na něco jiného..."~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"Masité *krmení.* Ne tak silné jako Acaste. Slabá a mrtvá žena."~ */
  IF ~~ THEN REPLY #21012 /* ~"Ještě se chci zeptat na něco jiného..."~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"Acaste, to jsem já! Matka ghúlů a královna Zhoubných, ano! Silná, rychlá, lovíme a *živíme se* v těchto chodbách..."~ */
  IF ~~ THEN REPLY #21016 /* ~"Zhoubní?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"Ještě se chci zeptat na něco jiného..."~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~Acaste potřese hlavou, přičemž vysype veš ze svých dlouhých, bílých vlasů. "Acaste už otevřela mnoho sarkofágů, rakví a hrobek, nikdy neviděla nic takového."~ */
  IF ~~ THEN REPLY #21021 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"Hssst! Zase je tady, otravuje Acaste, pořád!"~ */
  IF ~~ THEN REPLY #21024 /* ~"Měl bych pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"Sbohem, Acaste."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"Bledý živý, který spí v prachu a smrdí jak krvavá krysa? První, koho sežeru."~ */
  IF ~~ THEN REPLY #21027 /* ~"Smrdí jako krvavá krysa?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"Ještě se chci zeptat na něco jiného..."~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~


"Hsssst. Ale každopádně je *k sežrání*. Sice smrdí prachem a zatuchlinou, ale zas je dobře odležený. K sežrání." Acaste se brutálně zasměje.~ */
  IF ~~ THEN REPLY #21032 /* ~"Co je krvavá krysa?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"Ještě se chci zeptat na něco jiného..."~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"Acaste nemá nic, co by ti dala,  snad jen tvůj život, který nepromarní."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"Věděl jsi, že Tichý král není nic jiného než kostra?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"Věděla jsi, že Tichý král není nic než kostra?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
