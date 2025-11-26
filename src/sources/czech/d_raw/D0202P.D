// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~Na oblouku před tebou je něco... známého, ale strašidelného. Mezi dvěma černými pilíři je vzduch mrazivý, bodá do morku kostí, jako by oblouk ústil do nějakého jiného, mrazivého prostoru. Z nějakého důvodu VÍŠ, že je to portál do Pevnosti Lítosti... teď už jenom potřebuješ najít způsob, jak jej otevřít.~ */
  IF ~~ THEN REPLY #36383 /* ~Zatni zuby a stáhni kus kůže ze svého levého předloktí...~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Nechej portál být... prozatím.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~Zatnul jsi zuby a zaryl si nehty do levého předloktí. Se suchým, trhavým zvukem (zní to jako trhání plátna), jsi urval kousek kůže. Chlad mezi pilíři ještě zesílil, chlad tě začíná pohlcovat, jakoby se portál pootevřel...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Prozkoumej kůži...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Nechej portál být... prozatím.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~Opět stojíš před průchodem. Chlad, jdoucí až do morku kostí, pokrývá vzduch mezi dvěma černými pilíři jako závoj, jakoby samotný průchod stál na okraji nějakého jiného, studenějšího místa. Tohle je portál do Pevnosti lítosti... teď už stačí jenom napsat lítost na útržek kůže, který sis serval z ruky.~ */
  IF ~~ THEN REPLY #53641 /* ~Píchni se do levého ukazováčku a napiš na útržek kůže lítost svou vlastní krví...~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Nechej portál být... prozatím.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~Tenhle útržek kůže pochází z tvého levého předloktí. Jeho zjizvený našedlý povrch ti připomíná kus pokožky zombie. Vypadá spíš jako kus vyčiněné kožešiny, než útržek tvé vlastní kůže.~ */
  IF ~~ THEN REPLY #53644 /* ~Píchni se do levého ukazováčku a napiš na útržek kůže lítost svou vlastní krví...~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~Píchl ses do špičky prstu, než se rána stačila zahojit, vymáčkl jsi z ní několik kapek krve. Jak se chystáš napsat svou lítost, proletělo ti před očima několik obrazů.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~Lituj: "Lituju toho, co se stalo mým společníkům..."~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~Lituj: "Lituju svých činů..."~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~Lituj: "Lituju své minulosti..."~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~Lituj: "Lituju událostí, které mě přivedly až sem..."~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Nechej ránu zahojit bez toho, že bys něco napsal, odlož kůži do batohu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"...že všichni mí společníci museli trpět, abych se sem dostal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"...že jsem zkoušel prodat Morteho Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"...že jsem zkoušel prodat Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"...že jsem zkoušel prodat Dak'kona Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"...že jsem zkoušel prodat Fall-From-Grace Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"...že jsem zkoušel prodat Nordoma Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"... že jsem neprodal Morte Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"... že jsem neprodal Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"... že jsem neprodal Dak'kona Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"... že jsem neprodal Nordoma Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"... že jsem prodal Morteho Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"... že jsem prodal Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"... že jsem prodal Dak'kona Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"... že jsem prodal Nordoma Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"...zotročil Dak'kona na celé ty dlouhé roky."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"...že jsem naučil Ignuse moc, která mu umožnila ubližovat ostatním."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"...že jsem zradil Morteho a nechal ho v Pilíři lebek."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"...že Dak'kon zemřel."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"...že Annah zemřela."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"...že Morte zemřel."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"...že Fall-From-Grace zemřela."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"...že Ignus zemřel."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"...že Nordom zemřel."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"...že Vhailor zemřel."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Vymysli jinou lítost...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Nechej ránu zahojit bez toho, že bys něco napsal, odlož kůži do batohu.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"...že jsem se nedostal k tomu, abych zabil víc lidí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"...že jsem neuvolnil Coaxmetala z dobývací věže."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"...že jsem neuvolnil Coaxmetala z dobývací věže."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"...že jsem uvolnil Coaxmetala z dobývací věže."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"...že jsem musel zabít Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"...že jsem musel prolézt celý sféry, když byl ten blbej portál hned tady vedle, kde jsem se probudil POPRVÉ."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Vymysli jinou lítost...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Nechej ránu zahojit bez toho, že bys něco napsal, odlož kůži do batohu.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~~ THEN REPLY #53908 /* ~"...že jsem kdy chtěl být nesmrtelný."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"...že jsem zavraždil Fina Andlye. Kdybych se nestal nesmrtelným, ta má paranoidní inkarnace by ho nikdy nezabila..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"...škod, které způsobily mé předchozí inkarnace, sobě i ostatním."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"...smrti, které jsem způsobil po celém mnohovesmíru."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"...že jsem lhal Deionaře, abych jí donutil cestovat se mnou."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"...že jsem zavraždil Deionarru v Pevnosti Lítosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"...utrpení, které jsem způsobil Iannisovi tím, že jsem zavinil smrt jeho dcery."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Vymysli jinou lítost...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Nechej ránu zahojit bez toho, že bys něco napsal, odlož kůži do batohu.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~~ THEN REPLY #53918 /* ~"...že mi to trvalo *tak* dlouho, zjistit, kde je má smrtelnost."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"...že to stálo tolik smrti, dostat se sem."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"...že tady není se mnou nikdo."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"...že nemám žádnou lítost, kterou bych napsal na ten kus kůže."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Vymysli jinou lítost...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Nechej ránu zahojit bez toho, že bys něco napsal, odlož kůži do batohu.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~Napsal jsi lítost na útržek kůže... ale tvé rychloléčící schopnosti tě donutily několikrát přestat, abys mohl znovu otevřít ránu na prstě a vymáčknout více krve. O chvíli později jsi skončil, na útržku kůže je tvá krev... kombinace tvého masa, krve a žalu.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Sleduj, jak krev zasychá...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Sleduj, jak krev zasychá...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~Když krev zaschla, projela tebou vlna chladu. Vzhlédl jsi; černé pilíře na obou stranách začaly lehce zářit, začíná mezi nimi přeskakovat bílé světélko, které mezi pilíři vytváří zářící záclonu. Za záclonou vidíš kamennou chodbu vedoucí do temnoty.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"Všichni připraveni?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"Všichni připraveni?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"Všichni připraveni?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"Všichni připraveni?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"Všichni připraveni?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"Všichni připraveni?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"Všichni připraveni?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"Všichni připraveni?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~"Všichni připraveni?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"Všichni připraveni?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Nechej portál být.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~Když ses přiblížil k místu odkud vede portál do Pevnosti, kůži s lítostí v ruce, ucítil jsi vlnu chladu. Černé pilíře na obou stranách začaly lehce zářit, začíná mezi nimi přeskakovat bílé světélko, které mezi pilíři vytváří zářící záclonu. Za záclonou vidíš kamennou chodbu vedoucí do temnoty.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"Všichni připraveni?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"Všichni připraveni?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"Všichni připraveni?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"Všichni připraveni?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"Všichni připraveni?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"Všichni připraveni?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"Všichni připraveni?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"Všichni připraveni?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"Všichni připraveni?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"Všichni připraveni?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Nechej portál být.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Tvá otázka je zodpovězena jenom tichem. Nikdo s tvých společníků není dost blízko, aby tě slyšel.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Drž útržek kůže se svou lítostí a pak se připrav na průchod závěsem.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Jdi najít své společníky, pak se vrať k portálu.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~Okamžik, který jsi strávil přemýšlením stačil na to, aby se ranka na tvém prstu zahojila. Musel jsi ji znovu otevřít, abys vymačkal trochu krve. Jak se chystáš naškrábat na kůži svou lítost, před očima ti přejelo několik obrazů...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~Lituj: "Lituju toho, co se stalo mým společníkům..."~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~Lituj: "Lituju svých činů..."~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~Lituj: "Lituju své minulosti..."~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~Lituj: "Lituju událostí, které mě přivedly až sem..."~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...ale na kůži nemáš místo, takže spadla na zem.~ */
  IF ~~ THEN REPLY #66926 /* ~Odvrať se od portálu a zvedni kůži.~ */ EXIT
END
