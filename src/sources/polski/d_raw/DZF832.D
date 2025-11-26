// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF832.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF832~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35146 /* ~Pomimo suchej, workowatej skóry, jest jasne, że to trup kobiety w średnim wieku, która niegdyś była bardzo ładna. Ktokolwiek przygotowywał to ciało chyba ulitował się nad nią, gdyż zszył jej wygięte w łuk usta małymi, eleganckimi nićmi, a numer "832" wytatuował na jej czole elegancką czcionką.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35147 /* ~"Więc jak... masz jakieś plany na później?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35164 /* ~"Więc jak... masz jakieś plany na później?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35165 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35166 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35171 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXTERN ~DMORTE~ 350
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35172 /* ~Zostaw truposza w spokoju.~ */ EXTERN ~DMORTE~ 350
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35173 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35174 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35175 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35176 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35148 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35149 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 350
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35162 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35163 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35167 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35168 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 350
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35169 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35170 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35177 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
