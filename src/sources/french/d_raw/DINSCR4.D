// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~Je crains que nous ne continuions à mourir et à renaître jusqu'à ce que nous accédions enfin à une vie *juste*. Mais je ne sais pas ce qu'il faut faire pour y parvenir. De là toute ma frustration.~ */
  IF ~~ THEN REPLY #53714 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~S'agit-il d'une sorte de cycle karmique ? D'après ce que je sais, certaines incarnations ont commis de terribles crimes, mais il y en a d'autres sur lesquelles nous avons travaillé pour qu'elles ne fassent que le bien. Ces incarnations sont-elles destinées à des punitions ? Je ne sais pas. Et c'est là la seule et unique vérité que je peux offrir sur ces gravures : je ne sais pas.~ */
  IF ~~ THEN REPLY #53717 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~Quand le *je* se séparera-t-il du *nous* ? Quand serai-je libéré des chaînes des actions de ces autres incarnations ? Quand pourrai-je être *moi*, sans le fardeau de ces vies passées ?~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~Examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~Le panneau a été parfaitement bien fabriqué et s'inscrit dans le mur avec une grande précision. Il doit être possible de l'enfoncer davantage.~ */
  IF ~~ THEN REPLY #53723 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~Le panneau se glisse sans effort dans le mur. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53726 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
