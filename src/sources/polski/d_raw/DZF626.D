// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF626.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF626~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35050 /* ~Lewa strona twarzy tej martwej kobiety wygląda tak, jakby zapadła się po uderzeniu pałką. Jej skóra, nad rozwaloną czaszką, jest posiniaczona i nabrzmiała. Na prawym policzku, zaraz pod okiem, ma wyszyty numer "626".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35051 /* ~"Uch... co za szkaradna rana."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35068 /* ~"Uch... co za szkaradna rana."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35069 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35070 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35075 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXTERN ~DMORTE~ 338
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35076 /* ~Zostaw truposza w spokoju.~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35077 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35078 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35079 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35080 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35052 /* ~Trup wciąż patrzy na ciebie swoim jedynym całym okiem.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35053 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35066 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35067 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35071 /* ~Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35072 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35073 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35074 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35081 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
