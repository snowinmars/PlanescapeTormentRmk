// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~Als du durch das Tor gehst, fühlst du eine tiefe Kälte. Du beginnst zu zittern, als du einen Ton wie von einer flüsternden Stimme hörst, obwohl du nicht erkennen kannst, was sie sagt. Dann ist sie ebenso schnell verschwunden, und alles ist still. Du stellst fest, daß du hier schon einmal gewesen bist, und du hast das starke Gefühl, daß deine Begleiter dir hier hinein nicht folgen dürfen.~ */
  IF ~~ THEN REPLY #38951 /* ~"Ich gehe allein rein. Warte hier draußen auf mich."~ */ EXIT
END
