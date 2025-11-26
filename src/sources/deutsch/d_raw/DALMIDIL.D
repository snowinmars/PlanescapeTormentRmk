// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"Er sprach wie ein Feind des Volkes. Falls er keiner war, so hat der Stahl des Todes wenigstens seine Unwissenheit besiegt. Die Sammler werden kommen und ihn fleddern. So, für diesmal haben wir genug über diese Githzerai-Hunde rausgekriegt. Binnen acht Tagen geht's ihrer nächste Festung an den Kragen: Die Mauern von Vristigor werden fallen."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~Ich habe gehört, daß die Githyanki wieder einen Angriff auf eine Githzerai-Festung, die Festung von Vristigor, planen.~ */ EXTERN ~DYI'MINN~ 45
END
