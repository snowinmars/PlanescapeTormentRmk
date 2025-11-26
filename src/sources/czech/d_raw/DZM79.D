// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Masitá hlava mrtvoly byla čistě odseknutá a úspěšně přišitá zpět. Několik různých druhů stehů - všechny v různém stádiu rozmotání - ukazují, že hlavu neustále někdo uráží a pak zase přišívá. Do spánku je vyryto číslo "79", obkroužené zubatou kružnicí, která byla do kůže asi vypálená cejchem.~ */
  IF ~~ THEN REPLY #34943 /* ~"Takže... děje se tady poslední dobou něco zajímavého?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~Prozkoumej zubatou kružnici.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~~ THEN REPLY #34945 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
  IF ~~ THEN REPLY #34950 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~Zubatý kruh na nebožtíkově čele vypadá, že byl vypálen před dlouhými roky, pravděpodobně dříve než zemřel. Mohl by to být nějaký druh náboženské ikony, nebo pasáž obřadu. Všimneš si, že jedna z mezer mezi vnitřími 'zuby' má uvnitř malý trojúhelník, jako by měl nějaký zvláštní význam.~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"Hmmm. Zajímavé... jak si k té k značce přišel, umrlče?"~ */ JOURNAL #64536 /* ~Na čele zombie #79 jsem našel zvláštní uzubený kruhový symbol. Nevím proč, ale z nějakého důvodu mě značka přišla důležitá.~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"Hmmm... Zajímalo by mě, jestli ty mezery mezi zuby souhlasí s rýhami na mé náušnici ..."~ */ JOURNAL #64537 /* ~Na čele zombie #79 jsem našel zvláštní uzubený kruhový symbol. Jak jsem se díval na symbol, připomnělo mi to starobylou měděnou náušnici, kterou jsem našel v jihovýchodní Preparovací místnosti -- možná jsou nějak spojeny.~ */ GOTO 2
END
