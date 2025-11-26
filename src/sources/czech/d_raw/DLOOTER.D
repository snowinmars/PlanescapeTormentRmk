// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~Tenhle člověk doslova poskakuje nadšením, v očích mu hoří touha, radost. Otočil se k tobě. "Co?"~ */
  IF ~~ THEN REPLY #53203 /* ~"Co se to tady děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"Jestli si chceš užít akce, promluv si Jujogem. A teď táhni!"~ */
  IF ~~ THEN REPLY #53206 /* ~"Počkej... kdo je Jujog?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~Naštvaně se na tebe podíval a mávl rukou. "Támdle ten hlídač, ten v brnění."~ */
  IF ~~ THEN REPLY #53209 /* ~Odejdi.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~Je zpanikařený, křičí, není zjevně schopný přemýšlení. "Jujog je kaput! Co budeme dělat?! Musíme se odtud dostat!"~ */
  IF ~~ THEN REPLY #53211 /* ~Odejdi.~ */ EXIT
END
