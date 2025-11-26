// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~Grrr. Ja wielki Kornugon. Ja zadawać ból. Ja zadawać dużo ból.~ */
  IF ~~ THEN REPLY #3332 /* ~Ja też. Miło cię poznać.~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~Czy nie powinieneś być znacznie mądrzejszy? To znaczy JESTEŚ wysoko poziomowym biesem, który gromadził wiedzę przez tysiąclecia, czyż nie?~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~Err, cóż, tak. Ale dużo łatwiej jest po prostu sporo 'grrować'... Robi to na wieśniakach wrażenie, rozumiesz.~ */
  IF ~~ THEN EXIT
END
