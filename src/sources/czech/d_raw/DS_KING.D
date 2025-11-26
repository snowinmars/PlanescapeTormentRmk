// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~Seschlá mrtvola - navzdory povlaku prachu a pavučin je ve svém přehlídkovém brnění impresivní - je bezpochyby mocný Tichý Král. Pán a Lord Mrtvých Národů je sotva více než seschlé zbytky.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Vezmi jeho lebku.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Vezmi si jeho lebku.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Vezmi si jeho lebku.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Odejdi.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~Zakroutil jsi hlavou Tichého Krále, ale bez úspěchu... nepovolila. Nakonec ses zapřel jednou nohou o trůn a škubnutím jsi lebku utrhnul.~ */
  IF ~~ THEN REPLY #51428 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Utrhnutí hlavy Tichého Krále bezpochyby rozzuří momentální obyvatele trůnní místnosti... nejdříve si to budeš muset vyřídit s nimi.~ */
  IF ~~ THEN REPLY #51430 /* ~Stejně si tu lebku vezmi.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~Zakroutil jsi hlavou Tichého Krále, ale bez úspěchu... nepovolila. Nakonec ses zapřel jednou nohou o trůn a škubnutím jsi lebku utrhnul. Ostré prasknutí upozornilo všechny v okolí na tvou svatokrádež. Když tě uviděli, že jsi znesvětil tělo jejich milovaného vládce, vrhli se do útoku...~ */
  IF ~~ THEN REPLY #51433 /* ~Braň se.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~Lord a pán Mrtvých Národů je sotva něco více než vyschlé tělo - a navíc bezhlavé, když jsi jeho hlavu utrhnul.~ */
  IF ~~ THEN REPLY #51435 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~Pán a vládce mrtvých národů se jeví jako něco víc, než vyschlá škeble. Když jsi vyměnil jeho lebku za jinou, jeho hlava seděla na ramenou trochu křivě.~ */
  IF ~~ THEN REPLY #65525 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Urvání hlavy Tichého Krále nepochybně rozzuří současné okupanty trůnního sálu... nejprve se jdi dohodnout s nimi. Jestliže máš obyčejnou lebku, tvé ruce můžou být dost rychlé na to, aby si ji vyměnil za tu co je v helmě Tichého Krále, bez toho aby tě někdo viděl...~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Vyměň lebku za tu kterou máš.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~Přesto se pokus vzít jeho lebku.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~Pokud budeš působit sebejistě, nikdo té nebude pozorně sledovat, vezmi si helmu Tichého Krále, vlož jeho lebku do svého inventáře a nahraď jeho chybící hlavu lebkou, kterou máš. Když vrátíš helmu nazpět, nikdo se o to nebude zajímat...~ */
  IF ~~ THEN REPLY #65529 /* ~Odejdi.~ */ EXIT
END
