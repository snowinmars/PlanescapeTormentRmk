// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM732~

IF ~  !HasItem("TomeBA","ZM732")
~ THEN BEGIN 0 // from: 4.0
  SAY #6529 /* ~Vetchá mrtvola má sešité oči i ústa a v jejím obočí je vyřezáno číslo "732". Způsob šití, které udržuje její oční dutiny zapečetěné, vypadá neobyčejně staře... rozvažuješ se, zda oči byly sešity před, nebo až po smrti tohoto muže.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"Omlouvám se, že ti beru tuto knihu... vypadá příliš zajímavě na to, abych se jí zřekl."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"Omlouvám se, že ti beru tuto knihu...  vypadá příliš zajímavě na to, abych se jí zřekl."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~Použij svou schopnost  Kosti-vyprávějte na tělo.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6538 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.~ */
  IF ~~ THEN REPLY #6539 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~  HasItem("TomeBA","ZM732")
~ THEN BEGIN 3 // from:
  SAY #64270 /* ~Této rozpadající se mrtvole byly zašity oči i ústa a do obočí je vyřezáno číslo "732". Nitě, držící jeho oči zapečetěné, vypadají extrémně staře... zajímalo by tě, jestli neměl oči sešité dříve než zemřel. Vidíš, že v rukách svírá tlustý svazek, drží ho jako by ho někomu vzal. ~ */
  IF ~~ THEN REPLY #64271 /* ~Vzít svazek z jeho rukou... opatrně.~ */ DO ~GiveItem("TomeBA",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #64272 /* ~Nechat mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64273 /* ~Opatrně bereš svazek z rukou mrtvoly -- nezdá se, že by mu to vadilo. Svazek vypadá jako kniha kouzel a ochrany -- je plná nákresů a diagramů popisujících různé aspekty nekromantického umění. Kniha je šíleně těžká; jak moc byla zombie neopatrná, tak moc musela být silná. 

POZNÁMKA: Pro "přečtení" poznámek, knih nebo svitků je vlož do svého inventáře, a pak na ně klikni pravým tlačítkem myši, vyvolá se informační panel.~ */
  IF ~~ THEN REPLY #64274 /* ~Prozkoumej mrtvolu znovu.~ */ GOTO 0
  IF ~~ THEN REPLY #64275 /* ~Zanech mrtvolu v míru.~ */ EXIT
END
