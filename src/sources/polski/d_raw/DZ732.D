// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ732~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6529 /* ~Ten truposz na trzęsących się nogach ma zaszyte oczy i usta, a na czole wyryty numer "732". Szwy na jego oczodołach wyglądają na bardzo stare... zastanawiasz się, czy jego oczy zaszyto przed, czy może po jego śmierci.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"Przepraszam, że zabrałem ci tę książkę... ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"Przepraszam, że zabrałem ci tę książkę... ale wyglądała zbyt interesująco, aby nie zwrócić na nią uwagi."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6538 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #6539 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
