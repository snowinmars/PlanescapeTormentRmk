// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM257.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM257~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6507 /* ~Oči této mrtvoly jsou těsně u sebe a samotné oční bulvy jsou lehce nakřivo; jedna je obrácená nalevo a druhá napravo. Na jejím rozbitém čele stěží rozpoznáváš číslo '257' - vypadá to, že mrtvola obdržela několik úderů do hlavy, a proto je číslo tak špatně čitelné. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6510 /* ~"Nemáš závrať, když tohle děláš se svýma očima?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6511 /* ~"Nemáš závrať, když tohle děláš se svýma očima?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6512 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6513 /* ~Použij svoji schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6514 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6515 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6508 /* ~V očích mrtvoly se neobjevil ani záblesk pochopení; jen tiše strnule zírá doleva a doprava. ~ */
  IF ~~ THEN REPLY #6516 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6509 /* ~Duch se vrátil do mrtvoly s takovou zuřivostí, až se jí stáhly svaly a přepadla dozadu! Tělo je okamžitě zase zpět na nohou, tancuje a šíleně sebou trhá, vlní rukama a napíná si stehy. Uvolněné maso plácá, jak skáče sem a tam, oči se koulí a kymácí v hlavě, zatímco se šíleně hihňá...~ */
  IF ~~ THEN REPLY #6517 /* ~"Ee... Mám na tebe otázku, duchu..."~ */ GOTO 3
  IF ~~ THEN REPLY #9558 /* ~Nechej ducha o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9553 /* ~Mrtvola zazpívala, jak vyskočila, a rozhlédla se kolem. Hlasitost a výška jejího hlasu stoupá a zase klesá v náhodných intervalech. "TY jsi DUCH JÁ, ŽIJÍCÍ, zodpovědět mé otázky TY SMÍŠ!" Tvůj zmatený výraz ducha očividně potěšil; strčil si své kostěné prsty do pusy a roztáhl ji do příšerného úšklebku. Nato se začal hlasitě smát a v puse se mu při tom kmital bílý, těstovitý jazyk.~ */
  IF ~~ THEN REPLY #9559 /* ~"Tak fajn... jen se zeptej."~ */ GOTO 4
  IF ~~ THEN REPLY #9560 /* ~"Tak to teda ne. Ty mi odpovíš na *mé* otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #9561 /* ~Opusť chaotickou duši.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 4.0 5.0
  SAY #9554 /* ~Na chviličku duch umlkl, ale náhle začal hlasitě, nesnesitelně a nesmylně žvatlat. Taková nelibozvučnost je téměř k zbláznění; chvílemi máš pocit, že to nevydržíš a zhroutíš se. Najednou, jak rychle to začalo... tak to i skončilo. Mrtvola stojí před tebou a v tichosti se dloube v nose.~ */
  IF ~~ THEN REPLY #9562 /* ~"To jsem zrovna nějak nepostřehnul. Mohl bys mi to zopakovat?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zom257_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #9563 /* ~"Nerozumím ti. Ale měl bych otázečku..."~ */ GOTO 5
  IF ~~ THEN REPLY #9564 /* ~"Nerozumím ti. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 5.1
  SAY #9555 /* ~A opět začal duch zpívat: "Otázky ŽIJÍCÍHO smí zodpovědět MRTVÝ; TAK to bylo, je TO tak, mělo by tak TO BÝT. Ty ZODPOVÍŠ mé otázky!" Tvůj zmatený pohled ho opět potěšil; začal tak divoce vyvádět, až se divíš, že to jeho mrtvé tělo vydrží. Téměř slyšíš, jak jeho kosti vržou a lámou se, jak jeho šlachy praskají, když se tak točí a hází sebou.~ */
  IF ~~ THEN REPLY #9565 /* ~"Tak fajn... jen se ptej."~ */ GOTO 4
  IF ~~ THEN REPLY #9566 /* ~"Nerozumíš. Mám otázku pro *tebe*..."~ */ GOTO 5
  IF ~~ THEN REPLY #9567 /* ~Vzdej to a odejdi od žvatlajícího ducha.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.2
  SAY #9556 /* ~Jak duch s bláznivými nápady opouští své mrtvé tělo, zkroutí se ústa mrtvoly do významného úsměvu. Její nespoutaně blýskající oči se do tebe zavrtávají s pronikavou září divokosti a pak zašeptá osamocené, pečlivě formulované slovo "Limbo..." ~ */
  IF ~~ THEN REPLY #9568 /* ~"Co?"~ */ GOTO 7
  IF ~~ THEN REPLY #9569 /* ~Ignoruj to, otoč se pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9557 /* ~...a s těmi slovy opustila duše tento svět a zanechala tě tu o nic bohatšího s pocitem mírného znepokojení. Zombie se tiše vrátila ke své práci.~ */
  IF ~~ THEN EXIT
END
