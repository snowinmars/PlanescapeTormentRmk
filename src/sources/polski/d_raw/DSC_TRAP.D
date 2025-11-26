// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~Widzisz stary, spłowiały, niewinnie wyglądający zwój pergaminu, przewiązany czerwoną wstążką i nieznacznie zalatujący pleśnią. Wstążkę utrzymuje prosta woskowa pieczęć.~ */
  IF ~~ THEN REPLY #50385 /* ~Złam pieczęć, rozwiń zwój pergaminu i przeczytaj go.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~Na pergaminie widać kilka zdań, nakreślonych czyjaś chwiejną ręką, oraz dziwny znak runiczny. Odczytujesz pismo ręczne:

"może to cię nie ZABIJE, ale z pewnością cię SPOWOLNI"
"PRZESTAŃCIE MNIE PRZEŚLADOWAĆ ZŁODZIEJSKIE BĘKARTY... TO MOJE CIAŁO MOJE MOJE"
"GIŃ!"~ */
  IF ~~ THEN REPLY #50388 /* ~"A cóż to...?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
