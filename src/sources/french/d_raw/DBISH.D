// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~Alors que tu entres dans la pièce, un grand type costaud se lève et s'approche de toi. "'lut ! M'appelle Bish. Et qui t'es, toi ?"~ */
  IF ~~ THEN REPLY #34123 /* ~"Je n'ai pas de nom."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Mensonge : "Je m'appelle 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"Ça ne te regarde pas."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Ignore l'homme et continue.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"Qu'est-ce que tu racontes que t'as pas d'nom ? Tu reviens du Styx à la nage, espèce de bougre de béjaune ?!" Tu remarques que Bish déplace lentement sa main en direction de son arme. "Ou tu veux juste ne pas m'le dire ? J'crois que tu m'caches quelque chose."~ */
  IF ~~ THEN REPLY #34127 /* ~"Écoute, c'est la vérité. Je ne connais pas mon nom."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"Je n'ai rien à cacher et je ne tiens pas à causer d'ennuis. Je veux juste passer."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Mensonge : "OK, OK… Je m'appelle 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"Je veux juste passer."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"Si tu ne me laisses pas passer, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"Si tu ne me laisses pas passer, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"Je cherche un certain Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"Je cherche un journal."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"On m'a dit que je pourrais trouver Pharod dans le coin."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"Ça ne te regarde pas."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Attaque Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Ignore Bish et poursuis ta route.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"Adh-quoi ?" Bish te fixe d'un regard vide, puis secoue violemment la tête. "Je t'ai jamais vu auparavant, et personne m'a parlé d'un 'Adhan' dans les environs." Tu remarques que sa main se déplace lentement en direction de son arme. "Tu f'rais mieux d'me dire c'que tu fais ici, bige." ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"Peut-être Pharod ne te fait-il pas autant confiance que tu le penses."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"Je cherche un certain Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"Je cherche un journal."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~"Ça ne te regarde pas."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"Je n'ai rien à cacher et je ne tiens pas à causer d'ennuis. Je veux juste passer."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"Je veux juste passer."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"Si tu ne me laisses pas passer, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"Si tu ne me laisses pas passer, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Attaque Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Ignore Bish et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Bish sort subitement son arme. "Très bien. Tu veux pas être réglo avec moi, alors j'vais juste te donner une leçon."~ */
  IF ~~ THEN REPLY #34147 /* ~"Essaie un peu…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~Alors que tu te retournes pour t'en aller, Bish te barre le passage. "J'te demande une fois de plus, bige ! Quel est ton nom ? !"~ */
  IF ~~ THEN REPLY #34148 /* ~"Je ne sais pas comment je m'appelle."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Mensonge : "Je m'appelle 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"Ça ne te regarde pas !"~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Attaque Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Continue à ignorer Bish et essaie de le contourner.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"Si Pharod voulait t'voir, j'le saurais." Bish sort subitement son arme. "J'suis fatigué d'jouer aux devinettes avec toi, bige. J'vais juste piller ton cadavre pour trouver les réponses."~ */
  IF ~~ THEN REPLY #34153 /* ~"Je ne crois pas…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"Est-ce que tu veux dire qu't'es déjà venu ici ? Journal ou pas, j't'ai jamais vu d'ma vie. Ça m'dit juste qu't'es venu fureter sous mon nez, ouais." Bish sort subitement son arme. "J'espère que ça valait bien ta vie, bige."~ */
  IF ~~ THEN REPLY #34154 /* ~"Peu importe…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Bish lève les bras au ciel en signe de frustration. "Oublie ça, bige ! C'est plus important maintenant, d'toute manière." Il secoue la tête d'avant en arrière. "L'plus important, c'est d'savoir c'que tu fais ici ?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"On m'a dit que je trouverais Pharod dans le coin."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"Je cherche un certain Pharod."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"Je cherche un journal."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"Ça ne te regarde pas."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"Je ne veux pas d'ennuis. Je veux juste passer."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"Je veux juste passer."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"Si tu ne me laisses pas passer tout de suite, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"Si tu ne me laisses pas passer tout de suite, ça va barder."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Attaque Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Ignore Bish et continue.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Bish fronce les sourcils. "D'accord. Continue." Alors que tu t'apprêtes à dépasser Bish, celui-ci se penche vers toi et t'avertit calmement. "Mais écoute-moi bien, bige. Si tu causes des problèmes ici, j't'écrase le crâne la prochaine fois que j'te croise."~ */
  IF ~~ THEN REPLY #34164 /* ~Au revoir.~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"Je fais ce que je veux…"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Bish secoue la tête. "On veut tous un tas d'choses, bige." Il beugle de rire. "J'te connais pas, j't'aime pas, alors j'vais t'faire un marché. Le jonc ou la vie."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"Mon argent, alors."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"Mon argent, alors."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"Ni l'une, ni l'autre !"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"T'es plus béjaune que j'croyais, matois !" Bish hausse les épaules. "D'accord, espèce de cadavre, t'auras c'que tu mérites !"~ */
  IF ~~ THEN REPLY #34169 /* ~"Tu vas voir si je suis béjaune…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Bish grogne. "T'as l'air d'un vrai lascar, ouais." Il te fait un signe de tête avant de sortir son arme. "Mais tu t'en tireras pas comme ça, cette fois-ci."~ */
  IF ~~ THEN REPLY #34170 /* ~"Permets-moi d'être d'un autre avis…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Bish effectue une fouille approfondie de tes affaires. "J'vais quand même prendre ta tête, puisque c'est tout c'qui semble être valable ! Maintenant, vas-y. J'te préviens, si tu causes le moindre problème ici, j'te poursuivrai et m'occuperai d'ce qui reste de toi !"~ */
  IF ~~ THEN REPLY #34171 /* ~"Je m'en vais."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"Salaud…"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~Tu aperçois Bish occupé à son poste. Alors que tu t'approches, il regarde dans ta direction et te fait un signe de tête. "Salut. Passe ton chemin, et vite."~ */
  IF ~~ THEN REPLY #34173 /* ~"D'accord."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Bish fouille dans tes affaires, à la recherches de pièces… mais ne trouve rien. "Est-ce que tu veux m'faire perdre mon temps, ou tu croyais qu'tes guenilles valaient quelque chose ?" Bish brandit son arme. "On dirait que j'vais plutôt vendre ton corps à la place !"~ */
  IF ~~ THEN REPLY #34174 /* ~"Chiche…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Bish se retourne en brandissant une arme pour répondre à ton salut ! "Qu'est-ce que j't'ai dit, bige ? T'es allé cogner là-bas et maintenant je vais te cogner sur le crâne !"~ */
  IF ~~ THEN REPLY #34175 /* ~"Peu importe…"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Bish renifle de mépris. "Dis-lui qu'il se goure s'il croit que mes hommes et moi on va surveiller ce trou puant." Il rengaine son arme et t'indique une trappe dans le plancher. "C'est par là."~ */
  IF ~~ THEN REPLY #66910 /* ~Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Bish te lance un regard soupçonneux. "Pharod me tient généralement au courant des visites, et je me souviens pas qu'il ait parlé de toi." Il t'observe de pied en cap et hausse mollement les épaules. "Bof ! Malingre comme t'es, les gardes pourront s'occuper de toi, de toute façon. Allez, vas-y."~ */
  IF ~~ THEN REPLY #66909 /* ~Au revoir.~ */ EXIT
END
