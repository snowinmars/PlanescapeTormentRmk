// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~SKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~Tenhle útržek kůže pochází z tvého levého předloktí. Je zjizvený a šedý, připomíná ti kůži zombie. Je to spíš jako kus vyčiněné kožešiny, než kousek tvé kůže.~ */
  IF ~~ THEN REPLY #52403 /* ~Píchni se do levého ukazováčku a napiš na kousek masa vlastní krví lítost...~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~Píchl ses do špičky prstu, než se rána stačila zahojit, vymáčkl jsi z ní několik kapek krve. Jak se chystáš napsat svou lítost, proletělo ti před očima několik obrazů.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~Lituj: "Lituju toho, co se stalo mým společníkům..."~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~Lituj: "Lituju svých činů..."~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~Lituj: "Lituju své minulosti..."~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~Lituj: "Lituju událostí, které mě přivedly až sem..."~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~"...že všichni mí společníci museli trpět, abych se sem dostal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~"...že jsem zkoušel prodat Morteho Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~"...že jsem zkoušel prodat Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~"...že jsem zkoušel prodat Dak'kona Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~"...že jsem zkoušel prodat Fall-From-Grace Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~"...že jsem zkoušel prodat Nordoma Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~"... že jsem neprodal Morteho Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~"... že jsem neprodal Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~"... že jsem neprodal Dak'kona Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~"... že jsem neprodal Nordoma Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~"... že jsem prodal Morteho Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~"... že jsem prodal Annah Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~"... že jsem prodal Dak'kon Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~"... že jsem prodal Nordom Vrischice."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~"...zotročil Dak'kona na celé ty dlouhé roky."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~"...že jsem naučil Ignuse moc, která mu umožnila ubližovat ostatním."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~"...že jsem zradil Morteho a nechal ho v Pilíři Lebek."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~"...že Dak'kon zemřel."~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~"...že Annah zemřela."~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~"...že Morte zemřel."~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~"...že Fall-From-Grace zemřela."~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~"...že Ignus zemřel."~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~"...že Nordom zemřel."~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~"...že Vhailor zemřel."~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~Vymysli jinou lítost...~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~"...že jsem se nedostal k tomu, abych zabil víc lidí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~"...že jsem neuvolnil Coaxmetala z dobývací věže."~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~"...že jsem neuvolnil Coaxmetala z dobývací věže."~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~"...že jsem uvolnil Coaxmetala z dobývací věže."~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~"...že jsem musel zabít Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~"...že jsem musel prolézt celý sféry, když byl ten blbej portál hned tady vedle, kde jsem se probudil POPRVÉ."~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~Vymysli jinou lítost...~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~~ THEN REPLY #53301 /* ~"...že jsem kdy chtěl být nesmrtelný."~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~"...že jsem zavraždil Fina Andlye. Kdybych se nestal nesmrtelným, ta má paranoidní inkarnace by ho nikdy nezabila..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~"...škod, které způsobily mé předchozí inkarnace, sobě i ostatním."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~"...smrti, které jsem způsobil po celém mnohovesmíru."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~"...že jsem obelhal Deionarru, abych jí donutil cestovat se mnou."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~"...že jsem zavraždil Deionarru v Pevnosti Lítosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~"...utrpení, které jsem způsobil Iannisovi tím, že jsem zavinil smrt jeho dcery."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~Vymysli jinou lítost...~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~Zašeptal jsi ta slova, ale lítost se ti dál ozývá v mysli: 'Lituju...'~ */
  IF ~~ THEN REPLY #53311 /* ~"...že mi to trvalo *tak* dlouho, zjistit, kde je má smrtelnost."~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~"...že to stálo tolik smrti, dostat se sem."~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~"...že tady není se mnou nikdo."~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~"...že nemám žádnou lítost, kterou bych napsal na ten kus kůže."~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~Vymysli jinou lítost...~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~Odlož kůži...~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~Napsal jsi lítost na útržek kůže... ale tvé rychloléčící schopnosti tě donutily několikrát přestat, aby mohl znovu otevřít ránu na prstě a vymáčknout více krve. O chvíli později jsi skončil, na útržku kůže je tvá krev... kombinace tvého masa, krve a žalu.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~"Tak to by mělo stačit..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~"Tak to by mělo stačit..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~Během chvilky, kterou jsi strávil přemýšlením, se tvůj prst stačil zahojit, takže ho musíš znovu propíchnout a vymačkat trochu krve. Před očima ti proletělo několik obrazů...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~Lituj: "Lituju toho, co se stalo mým společníkům..."~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~Lituj: "Lituju svých činů..."~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~Lituj: "Lituju své minulosti..."~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~Lituj: "Lituju událostí, které mě přivedly až sem..."~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~Odlož kůži...~ */ EXIT
END
