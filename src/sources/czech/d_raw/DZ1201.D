// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Na čele této mrtvoly stojí napsáno číslo "1021" inkoustem, který jí stekl do očí, na tváře a čelist. Když sleduješ inkoustové skvrny na tváři mrtvoly, všiml sis, že inkoust stekl do sešitých úst a zastavil se na něčem, co vypadá jako růžek papírku, nacpaného v ústech mrtvoly.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~Zkus papírek vytáhnout.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~Použij na mrtvolu Kosti-vyprávějte.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~Papírek je nacpaný v ústech zombie. Pokud by ses pokusil vytáhnout papír skrze mezeru mezi stehy, roztrhal bys jej. Rozsekáním mrtvoly taky nic nevyřešíš, asi bys papírek zničil. Potřebuješ najít nějaký jemný způsob, jak odstranit stehy, než budeš moci papírek vytáhnout.~ */
  IF ~~ THEN REPLY #34956 /* ~Prořezej stehy skalpelem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~Šikovně jsi rozpáral stehy, sešívající ústa mrtvoly, čelist se rozevřela. Opatrně si vytáhl papírek z úst mrtvoly... navzdory špatnému stavu papíru je text ještě čitelný.

Poznámka: "čtení" poznámek, knih a svitků provedeš tak, že si je dáš do inventáře a potom na ně klikneš pravým tlačítkem myši.~ */
  IF ~~ THEN REPLY #34961 /* ~Prozkoumej mrtvolu znovu.~ */ EXIT
END
