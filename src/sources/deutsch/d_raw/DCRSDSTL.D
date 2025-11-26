// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~Dieses Tor ist mit massiven Schlössern und Haken gesichert. Es scheint unmöglich, es mit den Mitteln zu öffnen, die dir momentan zur Verfügung stehen.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Sprich die Silben, die Trias dir gegeben hat.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Laß die Tür in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~Als du die erste Silbe aussprichst, ächzt und stöhnt das Portal. Bei der zweiten Silbe verdrehen und ziehen sich die Metallhaken, und bei der dritten springt das Portal auf.~ */
  IF ~~ THEN REPLY #68143 /* ~"Das wär's dann."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
