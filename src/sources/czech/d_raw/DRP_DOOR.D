// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Toto klenuté podloubí vede jen palce do malé stavby předtím, než ji zablokuje pevná zeď z odpadu. Smetí je nahuštěné tak pevně na sobě, jako by to byly kameny spojené maltou.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Odejdi.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Hadrníkově náměstí jsem našel neprostupný průchod, zavalený odpadky. Vedou do něj stopy, ale žádná ven, takže se tudy dá nějak projít... možná to někdo na náměstí bude vědět.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Odejdi.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Hadrníkově náměstí jsem našel neprostupný průchod, zavalený odpadky. Vedou do něj stopy, ale žádná ven, takže se tudy dá nějak projít... možná to někdo na náměstí bude vědět.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Odejdi.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Hadrníkově náměstí jsem našel neprostupný průchod, zavalený odpadky. Vedou do něj stopy, ale žádná ven, takže se tudy dá nějak projít... možná to někdo na náměstí bude vědět.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Odejdi.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~Průchod vede do malé místnosti, ale po několika palcích je zahrazený sutí, která je namačkaná tak hustě, že by to stejně tak mohla být i kamenná zeď. Když ses ale přiblížil, okraje průchodu začaly poblikávat a třepat se. Všiml sis, že hrstka haraburdí kterou máš u sebe, začala také zářit.~ */
  IF ~~ THEN REPLY #48357 /* ~Hoď do průchodu hrst haraburdí.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Ustup a odejdi.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Ustup a odejdi.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~Tohle je portál, který propojuje Hadrníkovo Náměstí a Smetiště. Bohužel, nemáš u sebe žádné harampádí, které bys mohl použít jako aktivátor.~ */
  IF ~~ THEN REPLY #48360 /* ~Odejdi.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~Tohle je portál, který propojuje Hadrníkovo Náměstí a Smetiště. Díky harampádí, které máš u sebe, už začal poblikávat.~ */
  IF ~~ THEN REPLY #48362 /* ~Hoď do průchodu harampádí.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~Zeď ze suti zablikala, prohnula se a odhrnula se na stranu, odhalila tak volné místo... průchod, nebo portál, který se objevil uvnitř průchodu.~ */
  IF ~~ THEN REPLY #48365 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~Právě když jsi se rozhodl odejít zpozoroval jsi množství špinavých stop, které vedly do výklenku... a neotáčely se. Vypadá to, jako kdyby v tomhle výklenku byl velký provoz, který však patrně nevedl nikam...~ */
  IF ~~ THEN REPLY #64989 /* ~"Hmmm. Možná někdo kolem ví jak se dostat skrz..."~ */ EXIT
END
