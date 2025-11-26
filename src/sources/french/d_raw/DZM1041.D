// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1041.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1041~

IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6573 /* ~Le numéro '1041' est gravé sur le front de ce cadavre mâle réanimé. Malgré sa chair tendue et desséchée, l'ensemble devait autrefois avoir quelque aspect 'exotique'. Les lèvres de ce zombi sont cousues, probablement pour empêcher tout gémissement, et l'ensemble dégage une forte odeur de formol.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6576 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6577 /* ~"Alors… t'as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6578 /* ~"Je sais que tu n'es pas un zombi. Tu ne trompes personne."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",0)
~ THEN REPLY #6579 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Bei","GLOBAL",1)
~ THEN REPLY #6580 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 37
  IF ~~ THEN REPLY #6581 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #9095 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6574 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #6582 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6575 /* ~Le cadavre chancelle quelque peu tandis que l'esprit regagne son ancienne demeure. Ses yeux en forme d'amandes s'assombrissent de nouveau, une légère ombre couleur bronze recouvrant la chair pâle. Le corps se redresse et époussette ses vêtements.

Remarquant enfin son interlocuteur, le fantôme te regarde pendant un moment d'un air intrigué, puis s'incline légèrement.~ */
  IF ~~ THEN REPLY #6583 /* ~Réponds à son salut.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #9096 /* ~"J'ai quelques questions…"~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #9097 /* ~Laisse l'esprit.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9060 /* ~L'esprit sourit l'espace d'un instant, visiblement satisfait. Puis il prend la pose, une main derrière lui, et prend la parole d'une voix douce et chantante.

"Suiang jianne shyr nan bye yih nan ;
Dong feng wu lih bay hua tsarn ;
Chuen tsarn daw syy sy fang jinn ;
Lah Jiuh cherng huei ley shyy gan."

Cela dit, il reste là, immobile, à attendre ta réponse d'un air patient.~ */
  IF ~~ THEN REPLY #9098 /* ~"Je… euh…"~ */ GOTO 5
  IF ~~ THEN REPLY #9099 /* ~"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9100 /* ~"Je ne te comprends pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #9061 /* ~Tu ouvres la bouche pour lui poser une question, mais l'esprit te coupe la parole d'une voix douce et chantante :

"Suiang jianne shyr nan bye yih nan ;
Dong feng wu lih bay hua tsarn ;
Chuen tsarn daw syy sy fang jinn ;
Lah Jiuh cherng huei ley shyy gan."

Cela dit, il reste là, immobile, à attendre ta réponse d'un air patient.~ */
  IF ~~ THEN REPLY #9101 /* ~"Je… euh…"~ */ GOTO 5
  IF ~~ THEN REPLY #9102 /* ~"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9103 /* ~"Je ne te comprends pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #9062 /* ~L'esprit s'interrompt, comme pour réfléchir, puis il reprend la parole d'une voix dont l'accent très marqué ne dissimule pas le raffinement. "Je vous en prie, cher monsieur, pardonnez-moi. Voici bien longtemps que je n'ai pas dû parler votre langue. Sans doute mon esprit s'est-il retrouvé convoqué ici pour répondre à vos questions. Qu'aimeriez-vous donc savoir ?"~ */
  IF ~~ THEN REPLY #9104 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9105 /* ~"D'où viens-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9106 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9107 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 11
  IF ~~ THEN REPLY #9108 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9109 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9110 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 14.0
  SAY #9063 /* ~"C'est une question difficile… il m'est plus aisé de vous dire qui *j'étais*. En l'espèce, Zhuang Bei, tuteur et garde du corps de Liu Xixi, fille du Censeur Chi'an."~ */
  IF ~~ THEN REPLY #9111 /* ~"Tuteur *et* garde du corps ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9112 /* ~"Hmm. Impressionnant."~ */ GOTO 13
  IF ~~ THEN REPLY #9113 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9114 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 14.1
  SAY #9064 /* ~"Je vivais en un lieu appelé Shou Lung… que je considérais jadis comme le centre de l'univers." L'idée paraît l'amuser. "Il y a tant de lieux, tant de mondes… Je me considérais alors comme un fin lettré, et pourtant j'en savais si peu à ma mort…"~ */
  IF ~~ THEN REPLY #9115 /* ~"Comment es-tu arrivé ici depuis ce 'Shou Lung' ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9116 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9117 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2 14.2
  SAY #9065 /* ~"J'ai été assassiné par l'un des hommes que j'ai accompagné par hasard ici. Je l'ai cherché dans cette cité des semaines durant - apprenant ainsi votre langue - et c'est lui qui m'a trouvé. Assassin patenté, il a déjoué mes précautions et m'a tué durant mon sommeil."~ */
  IF ~~ THEN REPLY #9118 /* ~"Accompagné par hasard ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9119 /* ~"Assassiné ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9120 /* ~"Je vois, mais sais-tu ce que ton cadavre fait ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #9121 /* ~"Tu t'exprimes bien pour quelqu'un qui a eu si peu de temps pour apprendre une langue."~ */ GOTO 18
  IF ~~ THEN REPLY #9122 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9123 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4 14.4
  SAY #9066 /* ~"Ce bâtiment ? Oh, j'en avais entendu parler, je savais que mon cadavre devait y travailler, voilà tout."
"Je n'en sais pas plus sur cette vaste cité, 'Sigil'. J'ai passé des semaines à chercher ceux avec lesquels je me suis trouvé ici et à apprendre la langue ; cela me désolait, mais je n'ai eu de temps pour rien d'autre. Les merveilles innombrables de ce lieu auraient pu m'en apprendre tellement…"~ */
  IF ~~ THEN REPLY #9124 /* ~"Ton cadavre devait servir ici ? Comment est-ce arrivé ?"~ */ GOTO 17
  IF ~~ THEN REPLY #9125 /* ~"Accompagné par hasard ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9126 /* ~"Tu t'exprimes bien pour quelqu'un qui a eu si peu de temps pour apprendre une langue."~ */ GOTO 18
  IF ~~ THEN REPLY #9127 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9128 /* ~"Très bien. Nous aurons peut-être l'occasion de rediscuter une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.5 14.5
  SAY #9067 /* ~"Non, ce nom ne me dit rien, je regrette."~ */
  IF ~~ THEN REPLY #9129 /* ~"Je comprends. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9130 /* ~"Très bien. Nous aurons peut-être l'occasion de rediscuter une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 14.3
  SAY #9068 /* ~L'esprit prend un air chagrin.
"Je… Mon esprit réside dans le royaume de l'Illustre Magistrat Yen-Wang-Yeh, le Palais du Jugement."~ */
  IF ~~ THEN REPLY #9131 /* ~"Quelque chose ne va pas ? Cet endroit est-il si terrible ?"~ */ GOTO 15
  IF ~~ THEN REPLY #9132 /* ~"Je comprends. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9133 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 16.1
  SAY #9069 /* ~"Oui ; ce n'est pas rare, là d'où je viens. Ma tâche consistait à escorter mademoiselle Liu en toutes circonstances, pour la protéger, et aussi pour l'éduquer. J'avais une certaine réputation, et comme soldat, et comme érudit, voyez-vous. Un meilleur soldat lui aurait peut-être davantage servi, cependant…"~ */
  IF ~~ THEN REPLY #9134 /* ~"Davantage servi ? As-tu échoué ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9135 /* ~"Peut-être. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9136 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #9070 /* ~"Oui. Trop, peut-être. J'ai… manqué à mon devoir envers mademoiselle Liu et le Censeur.~ */
  IF ~~ THEN REPLY #9137 /* ~"Comment cela ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9138 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9139 /* ~"Je vois. Nous aurons peut-être l'occasion de rediscuter une autre fois."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
  SAY #9071 /* ~L'esprit hoche la tête avec une grâce étonnante pour un cadavre décati. "N'hésitez pas, posez-moi les questions que vous voulez."~ */
  IF ~~ THEN REPLY #9140 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9141 /* ~"D'où viens-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9142 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9143 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 11
  IF ~~ THEN REPLY #9144 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9145 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9146 /* ~"Que disais-tu lorsque tu es apparu la première fois ?"~ */ GOTO 26
  IF ~~ THEN REPLY #9147 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #9072 /* ~"Voyez-vous…" L'esprit se frotte les mains - des mains desséchées -, perdu dans ses réflexions. "À mon arrivée, je devais rejoindre ma *véritable* destination finale dans de brefs délais. Mais il s'est produit un incident alors qu'on m'escortait à travers le Palais, et on m'a laissé seul dans une petite pièce en promettant de s'occuper de moi sous peu."~ */
  IF ~~ THEN REPLY #9148 /* ~"Et alors… ?"~ */ GOTO 19
  IF ~~ THEN REPLY #9149 /* ~"Ta destination finale ? Où devait-on t'envoyer ?"~ */ GOTO 20
  IF ~~ THEN REPLY #9150 /* ~"Attends… Avant de te laisser continuer, J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #9151 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0 8.0 8.1 9.1 12.0 13.0
  SAY #9073 /* ~"Voilà toute l'histoire. En tant que tuteur et garde du corps de Liu Xixi, je suis bien sûr chargé et de son éducation et de sa protection. Un soir où le ciel était dégagé, nous nous tenions sur un balcon dominant la Cour intérieure. Je lui apprenais les diverses constellations.~ */
  IF ~~ THEN REPLY #9152 /* ~"S'il te plaît, continue."~ */ GOTO 21
  IF ~~ THEN REPLY #9153 /* ~"Tuteur *et* garde du corps ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9154 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.2 9.0
  SAY #9074 /* ~"Ah, ça. Un soir, une jeune femme a pris contact avec moi dans la rue ; elle faisait partie des Hommes-Poussière, l'organisation qui gère ces installations."
"Elle m'a proposé un marché : en échange d'une petite somme d'argent, mon cadavre pourrait être… utilisé… ici après mon trépas."~ */
  IF ~~ THEN REPLY #9155 /* ~"Et ça ne t'a pas paru un peu étrange ?"~ */ GOTO 22
  IF ~~ THEN REPLY #9156 /* ~"Je vois. Encore une question, si tu permets…"~ */ GOTO 14
  IF ~~ THEN REPLY #9157 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.3 9.2
  SAY #9075 /* ~"La linguistique est un de mes principaux centres d'intérêt. Une fois lettré, j'ai constaté que j'apprenais de nouvelles langues sans aucun problème."~ */
  IF ~~ THEN REPLY #9158 /* ~"Ceci expliquerait cela. Une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9159 /* ~"Je comprends. Merci de m'avoir parlé avec moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 20.0
  SAY #9076 /* ~"Et bien… nul n'est jamais revenu me chercher. J'ai attendu durant des jours entiers, en vain. J'ai fini par explorer le Palais, dans l'espoir de rencontrer quelqu'un qui m'indiquerait le chemin…" Il pousse un soupir chargé de fragrance de lotion d'embaumement. "Il y a 9001 pièces, ici ; de chacune de celles que j'ai visitées, on m'a renvoyé vers une autre. À ce qu'il semble, je suis égaré, et tout le monde m'a oublié."~ */
  IF ~~ THEN REPLY #9160 /* ~"Je vois. Mais j'ai une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9161 /* ~"Puis-je t'aider d'une manière ou d'une autre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #9162 /* ~"Pauvre imbécile… Je me demande combien de temps ils vont te laisser errer !"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9163 /* ~"Je te souhaite bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #9077 /* ~"Je ne saurais dire. Tout cela est si frustrant !" Il s'interrompt, le temps de retrouver son calme ; les articulations et les tendons du cadavre crissent doucement tout en se relâchant.~ */
  IF ~~ THEN REPLY #9164 /* ~"Je t'en prie, continue ton histoire."~ */ GOTO 19
  IF ~~ THEN REPLY #9165 /* ~"J'imagine… J'ai une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9166 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.0
  SAY #9078 /* ~"Certes. Nous observions donc le ciel quand deux assassins se sont laissés tomber du toit sur le balcon, sans doute pour tuer ou enlever mademoiselle Liu. Tout en criant à la garde, j'ai pris ma lame et je me suis jeté devant elle pour la protéger. Au cours du combat, la balustrade a cédé et nous sommes tombés tous les quatre dans le Portail de Jade."~ */
  IF ~~ THEN REPLY #9167 /* ~"Le quoi ? Le Portail de Jade ?"~ */ GOTO 23
  IF ~~ THEN REPLY #9168 /* ~"Attends… Avant de te laisser continuer, J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #9169 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.0
  SAY #9079 /* ~"Au début, peut-être… l'idée est assez macabre, somme toute. Mais après avoir parlé avec elle un moment, il m'est apparu que les Hommes-Poussière ont une vision de la mort semblable à la mienne. Mon corps ? Un simple véhicule. Selon moi, la 'Vraie Mort' dont ils parlent est l'état supérieur que je veux atteindre… détaché du monde matériel. Si mon corps, une fois sa fonction de réceptacle mortel achevée, peut servir à quoi que ce soit ici, tant mieux." L'esprit te dédie un sourire cordial.~ */
  IF ~~ THEN REPLY #9170 /* ~"Je vois ce que tu veux dire. Une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9171 /* ~"Intéressant. Il vaut mieux que je m'en aille maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #9080 /* ~"Oh ! Pardonnez-moi. J'avais présumé que vous saviez… Le Portail de Jade est un bassin dallé de carreaux de stéatite verts et blancs situé dans la Cour Intérieure. On l'appelle le Portail car, à ce qui se dit, des images fugitives d'un autre lieu apparaissent parfois dans ses eaux scintillantes."~ */
  IF ~~ THEN REPLY #9172 /* ~"Je vois. Je t'en prie, continue ton histoire."~ */ GOTO 27
  IF ~~ THEN REPLY #9173 /* ~"Avant de te laisser continuer, j'aurais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9174 /* ~"C'est tout ce que je voulais savoir pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY #9081 /* ~"Trop aimable. Je crains hélas que vous n'y puissiez rien… Je gage que, le moment venu, on me mettra sur le bon chemin. Je ne saurais trop vous remercier, toutefois."~ */
  IF ~~ THEN REPLY #9175 /* ~"Bien sûr. Dis-moi, j'ai une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9176 /* ~"Pas d'inquiétudes. Je ferais mieux de m'en aller. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.2 33.1 35.1
  SAY #9082 /* ~L'esprit te dévisage froidement, et ses yeux s'illuminent d'une lueur spectrale ; il semble que tu l'aies froissé.~ */
  IF ~~ THEN REPLY #9177 /* ~"Toutes mes excuses. Puis-je te demander autre chose ?"~ */ GOTO 14
  IF ~~ THEN REPLY #9178 /* ~Pars, laisse l'esprit flotter là.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.6
  SAY #9083 /* ~"Oh, ça… ah… c'était un poème. Difficile à traduire. Vous avez peut-être d'autres questions ?" Il te sourit d'un air gêné.~ */
  IF ~~ THEN REPLY #9179 /* ~"Oui… Oui."~ */ GOTO 14
  IF ~~ THEN REPLY #9180 /* ~"Non… Mais j'aimerais en savoir plus sur ce poème."~ */ GOTO 28
  IF ~~ THEN REPLY #9181 /* ~"Non. En fait, je crois que je vais partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #9084 /* ~"Comme je le disais, nous sommes tombés dans le Portail de Jade. Je n'avais jamais cru qu'il s'agissait d'un *véritable* portail, mais c'était le cas ! Je me suis retrouvé allongé dans une ruelle inconnue, la jambe brisée. Le temps que je reprenne mes esprits, les assassins s'enfuyaient, l'un d'eux portant Liu Xixi sur son épaule."~ */
  IF ~~ THEN REPLY #9182 /* ~"Étrange. Continue, je t'en prie."~ */ GOTO 31
  IF ~~ THEN REPLY #9183 /* ~"Oh. Avant de te laisser continuer, j'aurais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9184 /* ~"Je vois. Merci, mais il vaut mieux que je m'en aille maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #9085 /* ~"Très bien." Il réfléchit, en se tapotant le bout des doigts - de longs doigts osseux. Lorsqu'il reprend la parole ensuite, c'est sur un ton mesuré et cadencé :

"Il est aussi difficile de se rencontrer que de se séparer.
Le vent du nord faiblit ; des centaines de fleurs se fanent.
Meurent les vers printaniers, et la soie ne revient plus.
La cire des bougies devient cendres, et les larmes cessent."

Il t'adresse un petit sourire poli.~ */
  IF ~~ THEN REPLY #9185 /* ~"Ah… j'ai une autre question."~ */ GOTO 14
  IF ~~ THEN REPLY #9186 /* ~"Intéressant. Qu'est-ce que ça veut dire ?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #9187 /* ~"Alors, tu dis que j'aurais dû laisser ton esprit tranquille ? Je t'ai offensé en t'appelant ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #9188 /* ~"Oh. Je te remercie pour ces explications. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #9086 /* ~"Et bien, j'ai honte d'admettre que je tentais subtilement de dire… que tu ferais mieux de laisser les esprits des morts en paix. Je n'ai plus aucun désir de prendre part à ce…" D'un grand geste de la main, l'esprit indique tout ce qui l'entoure. "… monde."~ */
  IF ~~ THEN REPLY #9189 /* ~"Hmm. Je vois. J'avais autre chose à te demander."~ */ GOTO 14
  IF ~~ THEN REPLY #9190 /* ~"Je comprends. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #9087 /* ~"Euh… et bien… non. J'espérais me montrer moins direct ; éviter la confrontation, voyez-vous. Il se trouve que je n'ai plus aucun désir de prendre part à ce…" D'un grand geste de la main, l'esprit indique tout ce qui l'entoure. "… monde."~ */
  IF ~~ THEN REPLY #9191 /* ~"Hmm. Je vois. J'avais autre chose à te demander…"~ */ GOTO 14
  IF ~~ THEN REPLY #9192 /* ~"Je comprends. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #9088 /* ~"Oh, c'est tout. J'ai arpenté la ville en boitant bas jusqu'à ce que je trouve quelqu'un pour soigner ma jambe ; le peu d'argent que j'avais y est passé. J'ai appris la langue locale au contact de ce guérisseur et d'autres personnes, tout en cherchant partout les deux assassins et ma pupille."~ */
  IF ~~ THEN REPLY #9193 /* ~"Et tu ne les as jamais retrouvés ?"~ */ GOTO 32
  IF ~~ THEN REPLY #9194 /* ~"Hmm. Tu sais, je trouve cela étrange que tu aies appris la langue si vite…"~ */ GOTO 38
  IF ~~ THEN REPLY #9195 /* ~"Oh. Avant de te laisser continuer, j'aurais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9196 /* ~"J'écouterai la suite une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #9089 /* ~"J'en ai retrouvé un, mais il a refusé de parler. Je l'ai exécuté et j'ai gardé sa tête dans un sac de soie, afin de la rapporter au Censeur quand je lui ramènerais sa fille." Il fronce les sourcils. "Quant à l'autre, il m'a échappé, et, surtout… il m'a assassiné avant que je puisse le tuer et secourir ma pupille. C'est triste, mais tout cela appartient au passé, désormais."~ */
  IF ~~ THEN REPLY #9197 /* ~"Aurais-tu su comment retourner dans ton pays, si tu avais sauvé… 'Xixi' ?"~ */ GOTO 33
  IF ~~ THEN REPLY #9198 /* ~"C'est une histoire intéressante. Mais J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #9199 /* ~"Fascinant. Il vaut mieux que je te laisse maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #9090 /* ~"Non, mais je pense que j'aurais trouvé un moyen. Peu importe, à présent."~ */
  IF ~~ THEN REPLY #9200 /* ~"Je me demande s'ils sont toujours dans la cité. Je pourrais peut-être les trouver et aider cette fille."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_2","GLOBALGood",1)
~ GOTO 34
  IF ~~ THEN REPLY #9201 /* ~"Ça a l'air facile pour toi de ne pas te préoccuper de tes devoirs sous prétexte que tu es mort. Je ne sais pas si je pourrais laisser passer une chose pareille."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Bei_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9202 /* ~"Intéressant. Permets-moi de te demander autre chose…"~ */ GOTO 14
  IF ~~ THEN REPLY #9203 /* ~"Hmm. Je vais te quitter maintenant. Bonne chance."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #9091 /* ~"Ton offre te marque comme un esprit noble, mais… il s'est écoulé plus de soixante-quinze ans depuis mon assassinat. Mon meurtrier doit être mort depuis longtemps, et Xixi aussi, sans doute."~ */
  IF ~~ THEN REPLY #9205 /* ~"Hmm. Peu importe. J'ai une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9206 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #9092 /* ~"L'assassin a des traits comparables aux miens, et un lotus tatoué sur le front." Voyant ta perplexité, il ajoute : "C'est une sorte de fleur, à sept pétales. Liu Xixi est une jeune fille ; elle n'a que quatorze ans. Elle saurait peut-être où trouver le portail, et comment l'activer. Il se peut que l'assassin le sache également."~ */
  IF ~~ THEN REPLY #9207 /* ~"Si je la vois, je ferai mon possible pour l'aider en souvenir de toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_3","GLOBALGood",1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #9208 /* ~"Peu importe. Je n'ai pas le temps."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Bei_2","GLOBALLaw",-1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #9209 /* ~"Très bien. J'ai une autre question…"~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #9210 /* ~"C'est tout ce qu'il me faut. Au revoir."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #9093 /* ~"Vous êtes généreux, et vous avez le sens de l'honneur. Ne le faites pas pour moi, cependant… c'est la jeune fille et son père que vous aidez."~ */
  IF ~~ THEN REPLY #9211 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9212 /* ~"Je comprends. Au revoir, esprit."~ */ EXIT
END

IF ~  Global("Bei","GLOBAL",1)
~ THEN BEGIN 37 // from: 0.4
  SAY #9094 /* ~"Je ne m'attendais certes pas à vous revoir." L'esprit s'incline poliment, mais son visage reste fermé. "Que voulez-vous de moi ?"~ */
  IF ~~ THEN REPLY #9213 /* ~"Une question…"~ */ GOTO 14
  IF ~~ THEN REPLY #9214 /* ~"Rien. Je vais te laisser."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY #9718 /* ~"La linguistique est un de mes principaux centres d'intérêt. Une fois lettré, j'ai constaté que j'apprenais de nouvelles langues sans aucun problème."~ */
  IF ~~ THEN REPLY #9719 /* ~"Ceci expliquerait cela. Alors, tu n'as jamais trouvé les assassins ?"~ */ GOTO 32
  IF ~~ THEN REPLY #9720 /* ~"Je vois. Permets-moi de te demander autre chose, maintenant…"~ */ GOTO 14
  IF ~~ THEN REPLY #9721 /* ~"Je comprends. Merci de m'avoir parlé avec moi. Au revoir."~ */ EXIT
END
