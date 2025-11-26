// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~Tu aperçois une créature immense, de plus de cinq mètres de haut. De son torse massif s'échappent quatre bras… deux portant des pinces et les deux autres, des doigts griffus. Sa tête ressemble à celle d'un chien, avec des crocs acérés et des yeux violets. Elle te regarde avec insistance.~ */
  IF ~~ THEN REPLY #57165 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~Le regard de la créature te suit fixement sans se dérober un seul instant. Tu sens finalement une étrange sensation à la base de ton crâne, et une voix résonne dans ta tête. "Bonjour à toi aussi, humain. Je suis Agril-Shanak. Que fais-tu ici ?"~ */
  IF ~~ THEN REPLY #57168 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"Pas grave. Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"Des questions… ça m'amuse. Je t'écoute."~ */
  IF ~~ THEN REPLY #57171 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"Qu'est-ce que tu peux me dire au sujet de Dona Quisho ?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"Dona Quisho m'a envoyé pour te libérer. Qu'est-ce que je gagnerai à le faire ?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"Comme je l'ai dit, je suis Agril-Shanak. Que veux-tu savoir de plus ?"~ */
  IF ~~ THEN REPLY #57178 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"Pour certains, je suis un fiélon… pour d'autres, un ami. Je suis Agril-Shanak, et je suis un tanar'ri." Il redevient silencieux.~ */
  IF ~~ THEN REPLY #57182 /* ~"Qui te considère comme un 'fiélon' ?"~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"Qui te considère comme un 'ami' ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"Ceux qui désirent le pouvoir se servent souvent de moi pour parvenir à leurs fins. Ce sont eux qui me considèrent comme leur ami."~ */
  IF ~~ THEN REPLY #57187 /* ~"Qui te considère comme un 'fiélon' ?"~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"C'est une réponse plutôt vague…"~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"Les ignorants qui sont incapables de dépasser leurs peurs et leurs préjugés. C'est à cause de leur étroitesse d'esprit qu'ils me considèrent ainsi."~ */
  IF ~~ THEN REPLY #57192 /* ~"Qui te considère comme un 'ami' ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"C'est une réponse plutôt vague…"~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"Ah, mais c'est néanmoins une réponse." Il se penche vers toi. "Et c'est la seule que je te donnerai…"~ */
  IF ~~ THEN REPLY #57197 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"J'attends ma libération. Peut-être es-tu venu me l'accorder ? Tu as le parchemin…" Il pointe un doigt griffu vers le parchemin que Dona Quisho t'a donné.~ */
  IF ~~ THEN REPLY #57200 /* ~"Comment t'es-tu retrouvé coincé ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"Je ne sais pas…" Il s'interrompt un long moment avant de poursuivre. "J'ai été convoqué et j'ai répondu à l'appel. Une force plus puissante m'a intercepté et je suis arrivé ici. Depuis, je suis prisonnier."~ */
  IF ~~ THEN REPLY #57204 /* ~"Qui t'a invoqué ?~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"Qui t'a intercepté ?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"Tu connais la réponse. Tu tiens le parchemin dans ta main. C'était Dona Quisho."~ */
  IF ~~ THEN REPLY #57209 /* ~"Qui t'a intercepté ?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"Je ne sais pas… mon geôlier a choisi de rester caché."~ */
  IF ~~ THEN REPLY #57213 /* ~"Qui t'a appelé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~Tu entends un rire dans ta tête. "Je ne suis pas né à Maudith et je suis mal placé pour en parler. Pour moi, c'est une prison, rien de plus."~ */
  IF ~~ THEN REPLY #57217 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"J'ignore tout d'elle, hormis le fait que c'est elle qui m'a appelé… mais tu sais déjà cela, puisque tu as le parchemin…" Il pointe un doigt griffu vers le parchemin que Dona Quisho t'a donné.~ */
  IF ~~ THEN REPLY #57220 /* ~"Pourquoi est-ce qu'elle t'a invoqué ?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"Je ne sais pas. J'ai été intercepté avant d'arriver. Nous n'avons jamais parlé…" Il redevient silencieux.~ */
  IF ~~ THEN REPLY #57224 /* ~"Qui t'a intercepté ?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"Ma gratitude ne connaîtra pas de limites. Je mettrai les plans eux-mêmes à tes pieds… libère-moi !"~ */
  IF ~~ THEN REPLY #57228 /* ~"J'ai besoin de quelque chose de plus concret que des mots… si tu n'as rien d'autre à m'offrir, je m'en vais."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"Très bien…" Tu sens ses yeux te scruter pendant qu'il réfléchit. "Je vais te donner une arme magique, très puissante, qui mettra tes ennemis à genoux… je vais te donner le Broyeur de cœur !"~ */
  IF ~~ THEN REPLY #57230 /* ~"Le Broyeur de cœur ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"Oui… une arme qui m'est chère, mais que je sacrifierai contre ma liberté. Qu'en dis-tu ? Me libéreras-tu en échange du Broyeur de cœur ?"~ */
  IF ~~ THEN REPLY #57232 /* ~"Oui, dis-moi comment."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"Non, sûrement pas."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"Je vais y réfléchir. Au revoir."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~Il pointe un doigt griffu vers le bord du pentacle. "Détruis le symbole en en effaçant une petite portion…" Il te regarde anxieusement.~ */
  IF ~~ THEN REPLY #57236 /* ~Brise le pentagramme.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"Non, sûrement pas."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Je vais y réfléchir. Au revoir."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~Tu t'agenouilles, tu touches le pentacle, et une poussée d'énergie repousse ton bras. Tu effaces une partie du symbole d'un geste rapide. L'énergie se dissipe rapidement et tu entends un cri de triomphe dans ton esprit. "Enfin libre !"~ */
  IF ~~ THEN REPLY #57240 /* ~"Je prends le Broyeur de cœur."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"Oui… je tiendrai mes engagements. À toi l'arme et à moi la liberté. Un marché honnête…" Il te fixe un instant, puis une hache rouillée apparaît dans sa main. Il te la tend. "Elle n'a l'air de rien, mais est très puissante."~ */
  IF ~~ THEN REPLY #57242 /* ~Prends la hache.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"Tu m'as rendu un grand service. Pour te montrer ma gratitude, je ne te tuerai pas et je ne reprendrai pas ce qui me revient de droit." Il pointe un doigt griffu dans ta direction. "Toutefois, sache ceci : si jamais nous nous revoyons, tu le regretteras. Au revoir."~ */
  IF ~~ THEN REPLY #57261 /* ~"Au revoir."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"Tu joues avec moi… si tu ne veux pas m'accorder la liberté, alors va-t'en !"~ */
  IF ~~ THEN REPLY #57246 /* ~Pars."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~Tu aperçois Agril-Shanak, le glabrezu. "Tu es revenu, humain. Pourquoi ?"~ */
  IF ~~ THEN REPLY #57248 /* ~"J'ai quelques questions…~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"J'ai pensé te libérer."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"Le feras-tu ?" Il te regarde anxieusement.~ */
  IF ~~ THEN REPLY #57252 /* ~"Oui, dis-moi comment."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"Non, sûrement pas."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"Je vais y réfléchir. Au revoir."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~Tu aperçois une créature immense, de plus de cinq mètres de haut. De son torse massif s'échappent quatre bras… deux s'achevant par des pinces, les deux autres par des doigts griffus. Sa tête ressemble à celle d'un chien. Elle se jette sur toi dès qu'elle te voit.~ */
  IF ~~ THEN REPLY #57256 /* ~Défends-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~Tu aperçois Agril-Shanak, le glabrezu. "Je t'ai averti que si l'on se revoyait, tu le regretterais…" Il se jette sur toi.~ */
  IF ~~ THEN REPLY #57259 /* ~Défends-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~Il pointe un doigt griffu vers le bord du pentacle. "Détruis le symbole en en effaçant une petite portion…" Il te regarde anxieusement.~ */
  IF ~~ THEN REPLY #57236 /* ~Brise le pentagramme.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"Non, sûrement pas."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Je vais y réfléchir. Au revoir."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~Tu t'agenouilles, tu touches le pentacle, et une poussée d'énergie repousse ton bras. Tu effaces une partie du symbole d'un geste rapide. L'énergie se dissipe rapidement et tu entends un cri de triomphe dans ton esprit. "Enfin libre !"~ */
  IF ~~ THEN GOTO 21
END
