// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF891.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF891~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35274 /* ~Ten szczególnie odrażająco wyglądający trup kobiety nie ma uszu, nosa i warg. Ktokolwiek go przygotowywał, musiał bardzo mocno naciągnąć skórę wokół ust, aby zszyć szczęki razem; poprzez otwartą szparę wciąż widać rząd krzywych, pożółkłych zębów. Na czole wygrawerowano jej numer "891".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35275 /* ~"Więc jak... masz jakieś plany na później?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35292 /* ~"Więc jak... masz jakieś plany na później?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35293 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35294 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35299 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXTERN ~DMORTE~ 366
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35300 /* ~Zostaw truposza w spokoju.~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35301 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35302 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35303 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35304 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35276 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35277 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35290 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35291 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35295 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35296 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35297 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35298 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35305 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
