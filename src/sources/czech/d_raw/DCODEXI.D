// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~To, co jsi zpočátku pokládal za celkem nezajímavou knihu uzavřenou malým mosazným zámkem, je ve skutečnosti kniha vázaná ve zvláštní kůží a čarokrásně zdobená bronzem. Je nadepsaná jednoduše: 'Kodex neuvěřitelného.'~ */
  IF ~~ THEN REPLY #50400 /* ~Otevři ji... a čti!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Uctivě knihu odlož.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~Odemkl jsi vázání knihy a otevřel ji. Jak jsi pohlédl na obsah knihy, poklesla ti čelist. Stojíš, fascinovaný a listuješ jejími stránkami. Její obsah je, zjednodušeně řečeno, příliš pozoruhodný na to, aby jej bylo možno popsat - obyčejná slova se zdají být bezvýznamná pro vysvětlení divů, které obsahuje.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"To bylo... to... já..."~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"To bylo... to... já..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~Chvíli zamyšleně stojíš dívaje se na Kodex, pak jsi jej zavřel a uctivě odložil.~ */
  IF ~~ THEN REPLY #50407 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~Kodex neuvěřitelného je kniha vázaná ve zvláštní kůží a čarokrásně zdobená bronzem. Její obsah je, zjednodušeně řečeno, příliš pozoruhodný na to, aby jej bylo možno popsat - obyčejná slova se zdají být bezvýznamná pro vysvětlení divů, které obsahuje.~ */
  IF ~~ THEN REPLY #50409 /* ~Uctivě knihu odlož.~ */ EXIT
END
