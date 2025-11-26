// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Jest oczywiste, że mięsista głowa truposza została w którymś miejscu odrąbana i pośpiesznie przyszyta z powrotem. Różne rodzaje szwów - każdy w jakiś sposób postrzępiony - wydają się wskazywać na to, że głowa wciąż za bardzo odchyla się do tyłu i z powrotem jest przytwierdzana w trakcie pracy truposza. Na skroni ktoś wyciął numer "79". Jest otaczony kręgiem kłów. Takie same znaki znajdują się na jego czole.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34943 /* ~"Więc jak... widziałeś, aby działo się tu coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34946 /* ~Przyjrzyj się dobrze kręgowi kłów.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34944 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #34945 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34949 /* ~Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #34950 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
