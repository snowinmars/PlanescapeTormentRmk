// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~Włóczący się zombie wpatruje się w ciebie nic nie widzącymi oczyma. Na czole ma wygrawerowany jakiś numer, a usta zaszyte. Słaba woń formaliny unosi się od ciała.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~"Więc jak... widziałeś tu coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~"Więc jak... widziałeś tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #285 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~Ten zombie nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #1161 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
