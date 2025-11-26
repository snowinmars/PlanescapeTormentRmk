// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~Diese Person starrt aufmerksam auf eine Metallplatte, die an der Wand der Kammer befestigt ist. Nach einem Moment tiefer Konzentration fuchtelt sie mit den Händen und gibt ein paar eindrucksvoll klingende 'geheimnisvolle Silben' von sich... allerdings ohne Wirkung. Dennoch übt die Gestalt gelehrig weiter, viel zu sehr mit ihrer Arbeit beschäftigt, als daß sie mit dir sprechen könnte.~ */
  IF ~~ THEN REPLY #43001 /* ~Geh weg.~ */ EXIT
END
