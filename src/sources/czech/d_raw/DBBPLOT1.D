// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT1~

IF ~  Global("BBPlot_Secret_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51454 /* ~Kruhové místo na podlaze bludiště je zvláštní v tom, že všechna vegetace kolem zahynula, s výjimkou tří nezdravých větviček v jeho středu... jakoby větvičky vysály život z vegetace kolem.~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_2","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #51455 /* ~Začni si hvízdat stejnou melodii, kterou Ravel použila k vyvolání síly bludiště.~ */ GOTO 4
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53107 /* ~Prozkoumej větvičky.~ */ GOTO 1
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53108 /* ~Prozkoumej větvičky.~ */ GOTO 2
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53109 /* ~Prozkoumej větvičky.~ */ GOTO 2
  IF ~~ THEN REPLY #53110 /* ~Nechej větvičky být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53111 /* ~Větvičky jsou tenké, nemají na sobě žádné černé trny, které pokrývají všechny ostatní větve v bludišti. Jinak na nich není nic zvláštního.~ */
  IF ~~ THEN REPLY #53112 /* ~Nechej větvičky být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY #53113 /* ~Větvičky jsou tenké, nemají na sobě žádné černé trny, které pokrývají všechny ostatní větve v bludišti. Jinak na nich není nic zvláštního. Když si je ale prohlížíš, cítíš z nich magické vibrace - jsou podobné vibracím, které cítíš z bludiště, ale vytrvalejší, jako naříkání dítěte...~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53114 /* ~Začni pískat stejnou melodii, kterou Ravel použila, když vyvolávala moc bludiště.~ */ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53115 /* ~Pozorně prostuduj větvičky, pokus se odhalit povahu aury.~ */ GOTO 3
  IF ~~ THEN REPLY #53116 /* ~Nechej větvičky být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #53117 /* ~Pozorně jsi prozkoumal větvičky, z nějakého důvodu máš pocit, že jsou větvičky vypěstovány za nějakým účelem. Mají v sobě magický potenciál, ale nenapadá tě, jak ho využít.~ */
  IF ~~ THEN REPLY #53118 /* ~Nechej větvičky být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 2.0
  SAY #53119 /* ~Když jsi začal hvízdat, větvičky se kolem sebe začaly kroutit, jakoby se po něčem natahovaly... a ty instinktivně víš, že hledají semeno s černými ostny.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53120 /* ~Pískej dál a hoď mezi větvičky jedno semínko.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_1","GLOBAL",1)
~ GOTO 5
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53121 /* ~"Doufám, že ještě najdu nějaká semínka... ale mám pocit, že mi Ravel dala všechna, co tu zbyla."~ */ EXIT
  IF ~~ THEN REPLY #53122 /* ~Nechej větvičky na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53123 /* ~Nepřestávaje pískat, vytáhl jsi semínko a hodil ho mezi větvičky, které se kolem něj okamžitě omotaly a s ostrým prasknutím ho roztříštily. Větvičky přestaly se svým tancem a začínají pomalu růst, stávají se z nich větve. Obtočily se kolem sebe a pak se ozvalo prásk - větve se ulomily u kořene, spadly na zem. Nehýbají se.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53124 /* ~Vezmi si tři zkroucené větvičky.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 6
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53125 /* ~Vezmi si tři zkroucené větvičky.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 7
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53126 /* ~Vezmi si tři zkroucené větvičky.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 7
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53127 /* ~Vezmi si tři zkroucené větvičky.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53128 /* ~Zvedl jsi tři zkroucené větve. Cítíš, jak v nich něco lehoučce vibruje. Je jasné, že je větev magická... ale ty nemáš ponětí, jakou moc v sobě má.~ */
  IF ~~ THEN REPLY #53129 /* ~"Tak si to vezmu... mohlo by se to hodit."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #53130 /* ~Zvedl jsi tři zkroucené větve. Cítíš, jak v nich něco lehoučce vibruje. Je jasné, že je větev magická... a velice mocná.~ */
  IF ~~ THEN REPLY #53131 /* ~"Tak si to vezmu... mohlo by se to hodit."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #53132 /* ~Zvedl jsi tři zkroucené větve. Cítíš, jak ti v rukou silně vibruje, připomíná ti to tep srdce. Je jasné, že je větev magická. A velice mocná. *Cítíš*, jak větev odpovídá na tvé pískání, tak moc, že jsi schopný povzbudit růst větve. Je tam obrovské množství energie... zbytek Raveliny moci, možná, ale z větší části ji způsobila tvá vlastní síla vůle. Nemůžeš si pomoct, ale udělal jsi dojem sám na sebe. Jsi na sebe pyšný.~ */
  IF ~~ THEN REPLY #53133 /* ~Vezmi si větvičku...*tvou* větvičku.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_1","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53134 /* ~Před tebou je mrtvý kruh na podlaze bludiště... žádné nové větve nevyrostly, a nejspíš ani nevyrostou teď, kdy Ravel došla na konec své existence.~ */
  IF ~~ THEN REPLY #53135 /* ~Jdi pryč.~ */ EXIT
END
