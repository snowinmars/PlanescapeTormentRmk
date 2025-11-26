// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~Několik úlomků černého krystalu - nebo ledu- poletují v ledovém větru, který tento zdobený podstavec vydává. Každý úlomek vypadá ostrý jako břitva. Dotek nebo uchopení bude dost riskantní. Cedule na podstavci nese text 'Temní Ptáci Ocanthu'.~ */
  IF ~~ THEN REPLY #31494 /* ~Nechej je být.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~Dotkni se jednoho.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~Chytni jeden.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~Chytni jeden do svého Džbánku ledového piva.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~Když ses natáhl po vířících úlomcích, tvůj prst se dotkl ledového větru, který vyvěrá z podstavce. Okamžitě se kolem tvého prstu vytvořila vrstva námrazy, která tě donutila ruku stáhnout zpět.~ */
  IF ~~ THEN REPLY #31499 /* ~Nechej je být.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~Vrať prst zpět a dotkni se jednoho úlomku.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~Vrať prst zpět a dotkni se jednoho úlomku.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~Chytni jeden.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~Chytni jeden do svého Džbánku ledového piva.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~Vrazil jsi prst do mrazivého větru. I když sis to hned neuvědomil, tvůj prst zmrznul na kámen. A jak jeden z černých úlomků do prstu narazil, špička tvého prstu se s ostrým prasknutím ulomila a spadla na podlahu. Normálně docela triviální zranění v tvé chabé kondici vedlo k smrti.~ */
  IF ~~ THEN REPLY #31505 /* ~Upadni do temnot...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~Vrazil jsi prst do mrazivého větru. I když sis to hned neuvědomil, tvůj prst zmrznul na kámen. A jak jeden z černých úlomků do prstu narazil, špička tvého prstu se s ostrým prasknutím ulomila a spadla na podlahu. Ledoví Temní ptáci dál víří, jakoby čekali, až tvůj prst doroste.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~Chytni jeden do svého Džbánku ledového piva.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~Odejdi a doufej, že to nikdo neviděl.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~Jak se natahuješ po jednom z vířících úlomků, tvé prsty vstoupily do dráhy ledového větru vyvěrajícího z podstavce. Okamžitě se ti na ruce vytváří námraza, která tě přinutila ucuknout.~ */
  IF ~~ THEN REPLY #31510 /* ~Nechej je být.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~Jen se jednoho dotkni.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~Dej ruku zpět a popadni jeden.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~Dej ruku zpět a popadni jeden.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~Chytni jeden do svého Džbánku ledového piva.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~Vrazil jsi ruku do mrazivého větru. I když sis to neuvědomil, celá tvá ruka zmrzla na kámen, jakmile jsi ji obtočil kolem Temného Ptáka. A když do tvé pěsti narazil další úlomek, tvá ruka se s ostrým prasknutím ulomila v zápěstí a spadla na podlahu. Toto zranění tvé slabé kondici nijak nepomohlo, padáš na zem a umíráš.~ */
  IF ~~ THEN REPLY #31516 /* ~Upadni do temnot...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~Vrazil jsi ruku do mrazivého větru. I když sis to neuvědomil, celá tvá ruka zmrzla na kámen, jakmile jsi ji obtočil kolem Temného Ptáka. A když do tvé pěsti narazil další úlomek, tvá ruka se s ostrým prasknutím ulomila v zápěstí a spadla na podlahu.~ */
  IF ~~ THEN REPLY #31518 /* ~Rychle zvedni ruku a přilož ji k pahýlu!~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~Zvedl jsi omrzlou pěst a narazil ji zpět na tvůj krvácející pahýl. Všiml sis, že Temný Pták, kterého jsi chytil - úlomek černého ledu ostrý jako břitva - se už stačil rozpustit. Vypadá to, že ho budeš muset chytit do něčeho, co ho udrží v chladu. Do tvé ruky se pomalu vrací teplo a cit, jak  tvá tkáň rozmrzá a regeneruje se.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~Chytni jeden do svého Džbánku ledového piva.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~Odejdi a doufej, že to nikdo neviděl.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~Vrazil jsi Džbánek do ledového větru a chytil jsi do něj malý úlomek. V džbánku máš Temného Ptáka, což je úlomek černého ledu, ostrý jako břitva. Pouze díky magické síle džbánku se úlomek ještě nerozpustil.~ */
  IF ~~ THEN REPLY #31523 /* ~Odejdi.~ */ EXIT
END
