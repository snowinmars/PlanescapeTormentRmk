// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~SCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~C'est un vieux parchemin décoloré et qui semble anodin, attaché par un simple ruban rouge et sentant légèrement la moisissure. Le ruban est tenu par un simple sceau en cire.~ */
  IF ~~ THEN REPLY #66880 /* ~Brise le sceau, ouvre le parchemin et lis-le.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~J'ai ouvert et lu un parchemin piégé par magie, sur lequel était inscrit :

'Ça ne VOUS TUERA pas, mais VOUS RALENTIRA, j'en suis sûr'
'ARRÊTEZ DE ME TRAQUER SALES VOLEURS c'est MON corps c'est le MIEN LE MIEN'
'à présent… MEURS'

Une femme m'a donné le parchemin. Elle le tenait de sa mère, qui lui avait dit de le remettre à un homme me ressemblant.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~Range le parchemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~Le parchemin contient quelques lignes de calligraphie chancelante et une étrange rune. La calligraphie est la suivante :

"Ça ne VOUS TUERA pas, mais VOUS RALENTIRA, j'en suis sûr"
"ARRETEZ DE ME TRAQUER SALES VOLEURS c'est MON corps c'est le MIEN LE MIEN"
"à présent… MEURS"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"Qu'est-ce qu'… ?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"Qu'est-ce qu'… ?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~La rune se met soudain à luire et le parchemin se dissout pour ne plus laisser qu'une substance noire et puante. Ce fluide pénètre aussitôt dans tes mains. En l'espace de quelques secondes, ton sang a été contaminé et transformé en bile noire. Tu meurs dans d'atroces souffrances.~ */
  IF ~~ THEN REPLY #66886 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~La rune se met soudain à luire et le parchemin se dissout pour ne plus laisser qu'une substance noire et puante. Ce fluide pénètre aussitôt dans tes mains. En l'espace de quelques secondes, ton sang a été contaminé et transformé en bile noire. Tu pousses un hurlement terrible en te tenant le ventre à deux mains, puis la douleur retombe lentement. Tu as survécu au terrible enchantement du parchemin.~ */
  IF ~~ THEN REPLY #66888 /* ~Terminé.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END
