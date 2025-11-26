// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~Du siehst einen kleinen, ziemlich kahlköpfigen Mann in einer Art Foyer für diese baufällige Spelunke stehen. Seine buschigen Augenbrauen sind vor Konzentration zusammengezogen, während er an etwas pult, was wie Schorf auf seiner großen Knollennase aussieht.~ */
  IF ~~ THEN REPLY #61604 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~Stör den Mann nicht bei seiner Körperpflege. Erkunde den Raum.~ */ JOURNAL #61617 /* ~Dies ist ein Test. Wenn dies ein echter Journaleintrag gewesen wäre... wäre es sicher ein guter gewesen.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~Der Mann macht sich nicht die Mühe aufzublicken. Statt dessen starrt er weiter schielend auf seine eigene Nase. "Ja? Was willst du?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"Kann ich hier übernachten?~ */ EXIT
END
