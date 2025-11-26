// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~La jeune femme, dont les cheveux sont emmêlés et les vêtements chiffonnés, essaie de te sourire en sanglotant. "Merci ! Merci *beaucoup* ! Mon nom est Jasilya. Écoute… Je dois partir maintenant, étranger, mais : merci encore !"~ */
  IF ~~ THEN REPLY #57141 /* ~"C'est rien."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~Cette femme ne peut que te regarder fixement. "Tu m'as encore sauvée… merci *beaucoup* ! Je serais morte deux fois, sans toi…" Jasilya écarte les bras et s'avance pour te serrer contre son cœur.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Rapproche-la de toi et embrasse-la.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Rapproche-la de toi et embrasse-la.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Laisse-la mettre ses bras autour de toi.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Recule.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~Elle te serre fort, sa joue mouillée de larmes collée contre ta poitrine. Après quelques instants, elle recule et te regarde en souriant. "Je dois de nouveau partir… mais une fois de plus, laisse-moi te remercier. Je n'oublierai pas ta bonté. Au revoir, voyageur."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"Au revoir."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~Elle rougit et regarde ses pieds. "Oh… je ne voulais pas… eh bien…" Elle te regarde de nouveau en souriant. "Au revoir, étranger, et merci *beaucoup* ! Je n'oublierai pas ta bonté."~ */
  IF ~~ THEN REPLY #57150 /* ~"D'accord. Au revoir."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Jasilya sourit à ton approche. "Bienvenue à nouveau, mon sombre héros ! Je te remercie encore. Es-tu… ici pour une chambre ?"~ */
  IF ~~ THEN REPLY #57152 /* ~"Oui. Qu'y a-t-il de disponible ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"Pas maintenant. Au revoir, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~Elle te sourit. "Oh… il faut que tu parles à mon père, dans ce cas."~ */
  IF ~~ THEN REPLY #57156 /* ~"Merci. Au revoir, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~Alors qu'elle s'apprête à te serrer dans ses bras, tu la prends dans les tiens et tu l'embrasses sur la bouche.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~Jasilya hésite un instant et se libère doucement de ton étreinte. Elle sourit nerveusement.. "Euh… au revoir, étranger, et merci. Je… Je n'oublierai pas ta bonté."~ */
  IF ~~ THEN REPLY #57159 /* ~"D'accord. Au revoir."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~Alors qu'elle s'apprête à te serrer dans ses bras, tu la prends dans les tiens et tu l'embrasses sur la bouche. Jasilya hésite un instant et se libère délicatement de ton étreinte. Elle sourit nerveusement.. "Euh… au revoir, étranger, et merci. Je… je n'oublierai pas ta bonté."~ */
  IF ~~ THEN REPLY #57161 /* ~"D'accord. Au revoir."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~Couverte de sueur, la femme a le souffle court. "Je t'en prie… sauve-moi de ces hommes…"~ */
  IF ~~ THEN REPLY #67819 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"Aide-moi ! Tue-les avant qu'ils ne me réduisent en esclavage !"~ */
  IF ~~ THEN REPLY #68098 /* ~"Je ferai de mon mieux…"~ */ EXIT
END
