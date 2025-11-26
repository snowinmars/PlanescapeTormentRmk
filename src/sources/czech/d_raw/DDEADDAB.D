// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~Vidíš mrtvého Dabuse. Zápach rozkladu je neuvěřitelný, tělo už tady leží nějakou dobu, jak je vidět i cítit.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~Použij na mrtvole schopnost Kosti-vyprávějte.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~Zkontroluj mrtvolu a zkus zjistit příčinu smrti.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~Odejdi.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~Použij na mrtvole schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~Zkontroluj mrtvolu a zkus zjistit příčinu smrti.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~Jakmile  ses dotknul mrtvoly, projel tvým tělem náhlý šok, ve vzduchu je podivný pohyb, jakoby se dovnitř budovy dostal vítr a pokouší se uniknout. V hlavě cítíš podivnou pulzující bolest, jako by ti někdo naléhavě bušil do hlavy.~ */
  IF ~~ THEN REPLY #61690 /* ~Zkus se soustředit...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~Setřes to ze sebe a odstup od mrtvoly. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~Když jsi uvolnil svou moc, objevil se ve vzduchu podivný pohyb a dabusovo tělo se na chvíli rozmazalo. Máš podivný pocit, jakoby ti do hlavy někdo bušil kladivem.~ */
  IF ~~ THEN REPLY #61693 /* ~Zkus se soustředit...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~Setřes to ze sebe a odstup od mrtvoly. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~Vidění ti na chvíli zčernalo a pak bolest ustoupila, až to nakonec vypadá, že vychází zevnitř tvé lebky - temnota se pročistila a ty slyšíš, jak do budovy někdo buší kladivem. Celá budova vypadá nějak zamlženě, zmateně, jakoby ses díval přes mlhu.~ */
  IF ~~ THEN REPLY #61696 /* ~Soustřeď se na vizi...~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~Setřes to ze sebe a odstup od mrtvoly. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~Bušení přestalo a najednou vidíš mlhavý přízrak dabuse, který vchází dovnitř. Jakmile vešel, dveře a okna jakoby se změnily na vodu a najednou zapečetily vchod, kterým dabus vešel. Dabus se otočil, zarazil se a pak začal pomalu kroužit dokola místnosti, zkoumá stěny a poklepává na ně kladívkem.~ */
  IF ~~ THEN REPLY #61699 /* ~Soustřeď se na vizi...~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~Setřes to ze sebe a odstup od mrtvoly. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~Dabus dokončil průzkum a pak se zastavil před "dveřmi", kterými vstoupil. Začíná bušit kladivem, ale zeď se po každém úderu sama opraví. Vize začíná černat, ale bušení pokračuje a postupně se zpomaluje...~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~Soustřeď se na vizi...~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~Soustřeď se na vizi...~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~Setřes to ze sebe a odstup od mrtvoly. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~Vidění se ti pročistilo, jakmile bušení skončilo, a ty zase stojíš vedle těla dabuse... vypadá to, jakoby tu pomalu umíral, uzavřený v budově.~ */
  IF ~~ THEN REPLY #61706 /* ~Nechej tělo být.~ */ EXIT
END
