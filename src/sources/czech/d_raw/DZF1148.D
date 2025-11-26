// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF1148.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF1148~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35242 /* ~Kůže tohoto ženského těla je hustě potetovaná složitými vzory. Kůže u jejího obočí je stáhnutá, takže do kosti někdo mohl vyrýt číslo "1148". Její pusa je pevně sešita hrubými, neumělými stehy.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35243 /* ~"Takže... cos dělala poslední dobou?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35260 /* ~"Takže... cos dělal poslední dobou?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35261 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35262 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35267 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXTERN ~DMORTE~ 362
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35268 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35269 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35270 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35271 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35272 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35244 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35245 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35258 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35259 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35263 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35264 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35265 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35266 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35273 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
END
