// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~Ich vermute, daß wir so lange sterben und wiedergeboren werden, bis wir unser Leben *richtig* leben. Ich weiß jedoch nicht, wie wir das herbeiführen können. Und genau darin liegt meine Frustration begründet.
~ */
  IF ~~ THEN REPLY #53714 /* ~Weiter.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~Sind wir in einer Art Kreislauf des Schicksals gefangen? Wenn ich das recht verstehe, haben einige Inkarnationen fürchterliche Verbrechen begangen, es gab jedoch auch eine Reihe von Inkarnationen, in denen wir uns ausschließlich für das Gute abgerackert haben. Sind diese Inkarnationen als Strafe gedacht? Ich weiß es nicht. Und dies ist die einzige wirkliche Wahrheit, die ich in diesen Ritzzeichnungen anbieten kann: Ich weiß es nicht.~ */
  IF ~~ THEN REPLY #53717 /* ~Weiter.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~An welchem Punkt trennt sich das *ich* vom *wir?* An welchem Punkt bin ich von den Fesseln der Taten der anderen Inkarnationen befreit? An welchem Punkt darf ich *ich* sein, ohne die Last dieser vergangenen Leben?~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~Untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~Die Tafel ist meisterlich gefertigt und präzise in die Wand eingesetzt. Sie sieht aus, als ließe sie sich in die Wand schieben.~ */
  IF ~~ THEN REPLY #53723 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~Ganz ohne Anstrengung schiebst die Tafel in die Wand. Da hörst du ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53726 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
