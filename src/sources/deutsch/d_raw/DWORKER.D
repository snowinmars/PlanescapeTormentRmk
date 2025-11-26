// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWORKER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWORKER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3160 /* ~Hallo. Ich arbeite in der Lagerhalle in Verdammnis. Wenn du mich höflich fragst, verrat ich dir vielleicht, daß sich die Anarchisten hier treffen, und daß du dir vielleicht mal überlegen solltest, ebenfalls dazuzustoßen.~ */
  IF ~~ THEN REPLY #3161 /* ~Aber klar doch. Und vielleicht schneid ich mir auch mein Ding ab.~ */ EXIT
  IF ~~ THEN EXIT
END
