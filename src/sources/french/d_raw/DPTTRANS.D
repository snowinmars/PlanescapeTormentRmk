// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~En franchissant la porte, tu sens un froid pénétrant. Tu te mets à trembler en entendant un bruit, comme une voix qui chuchote… Mais tu ne comprends rien à ce qu'elle dit. Puis, immédiatement, tout se tait et redevient silencieux. Tu te rends compte que tu connais ce lieu et tu sens qu'il ne faut surtout pas que tes compagnons entrent avec toi.~ */
  IF ~~ THEN REPLY #38951 /* ~"J'y vais seul. Attendez-moi ici."~ */ EXIT
END
