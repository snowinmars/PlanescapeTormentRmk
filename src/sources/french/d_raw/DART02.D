// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~Une grosse corne en plomb, entourée de chaînes en laiton. Elle est terriblement abîmée, comme si une force fantastique l'avait écrabouillée. Elle est hérissée de lames sur toute sa longueur… À croire qu'elle sert non seulement de corne de guerre, mais aussi de gourdin à une créature gigantesque ! Sous la corne, une pancarte annonce : 'Corne de purification de l'Achéron'.~ */
  IF ~~ THEN REPLY #34189 /* ~Mets la tête contre le mur, puis essaie de souffler dans la corne.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Pars.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~Tu fais de ton mieux, mais tu ne parviens à sortir aucun son de l'énorme corne. Tes lèvres se retirent du bec au goût de sang, de fumée et de métal.~ */
  IF ~~ THEN REPLY #42671 /* ~Pars.~ */ EXIT
END
