// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRUBIKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRUBIKON~

IF ~  Global("Know_Rubikon","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61026 /* ~Tu vois un homme mécanique construit en forme de robe. Alors que tu t'approches, il te sourit et te salue timidement. "Alors, on se rencontre enfin…" Sa voix n'a pas l'intonation monotone des autres créatures à qui tu as parlé dans le dédale.~ */
  IF ~~ THEN REPLY #61028 /* ~"Bonjour."~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #61029 /* ~Ignore la créature.~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61031 /* ~Il s'incline de nouveau. "Et à toi aussi." Il penche la tête d'un côté et te regarde bizarrement. "Alors, on se bat tout de suite pour le contrôle de Rubikon ou on engage la conversation pour étancher ta curiosité ?" Il attend ta réponse.~ */
  IF ~~ THEN REPLY #61033 /* ~"Finissons-en avec ce combat."~ */ GOTO 2
  IF ~~ THEN REPLY #61035 /* ~"Très bien, je suis curieux. On peut parler ?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 25.0
  SAY #61036 /* ~Il hoche intelligemment la tête. "Ah, un homme d'action, je vois. Je respecte cela." Il adopte une posture défensive. "Que le combat commence !"~ */
  IF ~~ THEN REPLY #61038 /* ~"Oui, finissons-en."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 25.1
  SAY #61040 /* ~Il hoche intelligemment la tête. "Ah, un homme de connaissance, je vois. Je dois avouer que j'aurais été déçu si ça n'avait pas été le cas."~ */
  IF ~~ THEN REPLY #61041 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61043 /* ~"Tout bien réfléchi, je ferais mieux de partir. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.1 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.0 16.2 17.1 19.1 20.0 21.1 22.2 23.1
  SAY #61044 /* ~Il sourit. "Demande toujours."~ */
  IF ~~ THEN REPLY #61045 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #61046 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 7
  IF ~~ THEN REPLY #61047 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 15
  IF ~~ THEN REPLY #61048 /* ~"Qu'est-ce que tu peux me dire sur les modrones ?"~ */ GOTO 16
  IF ~~ THEN REPLY #61049 /* ~"Pourquoi est-ce qu'on doit se battre ? Pourquoi ne pas se séparer et en rester là ?"~ */ GOTO 21
  IF ~~ THEN REPLY #61050 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61051 /* ~Il te salue légèrement. "Je suis Rubikon, le Maître des Magiciens. Je dirige les constructions rouges de ce royaume."~ */
  IF ~~ THEN REPLY #61052 /* ~"Alors, tu es supposé être le Magicien du diable ?"~ */ GOTO 6
  IF ~~ THEN REPLY #61053 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61054 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61056 /* ~Il fronce les sourcils tout en réfléchissant. "Je ne suis pas très à l'aise avec le mot 'diable'. J'avoue que mes opinions ne concordent pas avec celles des autres, mais cela veut-il dire pour autant que je suis maléfique ? Je ne le crois pas."~ */
  IF ~~ THEN REPLY #61057 /* ~"Alors, qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #61058 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61059 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #61060 /* ~Il semble en colère. "Je suis prisonnier. Je ne suis pas ici de mon plein gré, je peux te l'assurer."~ */
  IF ~~ THEN REPLY #61061 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61062 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61063 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0 16.1
  SAY #61065 /* ~"J'ai été créé par les modrones pour jouer dans leurs jeux insensés de donjons. Au fil du temps, j'en ai pris conscience et j'ai demandé ma libération. Leur chef a refusé !"~ */
  IF ~  !InParty("Nordom")
~ THEN REPLY #61066 /* ~"Qu'est-ce que tu as fait ?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",1)
~ GOTO 9
  IF ~  InParty("Nordom")
~ THEN REPLY #61067 /* ~"Qu'est-ce que tu as fait ?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #61069 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61071 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #61074 /* ~Il te lance un regard furibond. "J'ai fait ce que n'importe quelle personne réduite à l'esclavage, aurait fait. Je me suis battu pour ma liberté !" Il marque une pause. "J'ai désagrégé leur chef et j'ai fait passer ça pour un accident. J'ai ensuite essayé d'échapper à cette horrible existence via la sortie la plus proche."~ */
  IF ~~ THEN REPLY #61075 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #61076 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61078 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61079 /* ~Il soupire et fronce les sourcils. "Hélas, il y avait un dispositif de sécurité que je ne connaissais pas. Ma tentative d'évasion a été considérée comme une *erreur*, le donjon s'est effondré et je me suis retrouvé pris au piège…" Il regarde au loin. "Je suis pris au piège depuis des siècles. Et je le serais encore si tu n'avais pas réinitialisé le cube et choisi le niveau de difficulté *difficile*." Il porte son attention sur toi.~ */
  IF ~~ THEN REPLY #61081 /* ~"Alors, qu'est-ce que tu comptes faire, maintenant ?"~ */ GOTO 11
  IF ~~ THEN REPLY #61082 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61084 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61085 /* ~Il hausse les épaules. "J'ai l'intention d'aller dans la salle des machines pour m'occuper de ça. Je plierai ainsi les modrones à ma volonté et disposerai de toutes les ressources du cube à ma convenance. Je serai libre."~ */
  IF ~~ THEN REPLY #61086 /* ~"Admettons que ça marche. Et alors ?"~ */ GOTO 12
  IF ~~ THEN REPLY #61088 /* ~"Et si les modrones refusent de t'aider ?"~ */ GOTO 13
  IF ~~ THEN REPLY #61089 /* ~"Alors, tu as l'intention d'asservir les modrones ?"~ */ GOTO 14
  IF ~~ THEN REPLY #61090 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61092 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.0 14.0
  SAY #61094 /* ~"Je n'ai pas encore décidé. Grâce à la puissance du cube, je pourrais imposer ma force." Il hausse les épaules. "L'avenir le dira."~ */
  IF ~~ THEN REPLY #61096 /* ~"Et si les modrones refusent de t'aider ?"~ */ GOTO 13
  IF ~~ THEN REPLY #61097 /* ~"Alors, tu as l'intention d'asservir les modrones ?"~ */ GOTO 14
  IF ~~ THEN REPLY #61098 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61099 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0 14.1
  SAY #61101 /* ~Il te sourit. "Ne commets pas d'erreur. Ils m'aideront. D'une manière ou d'une autre, ils m'aideront."~ */
  IF ~~ THEN REPLY #61102 /* ~"Admettons que ça marche. Et alors ?"~ */ GOTO 12
  IF ~~ THEN REPLY #61103 /* ~"Alors, tu as l'intention d'asservir les modrones ?"~ */ GOTO 14
  IF ~~ THEN REPLY #61104 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61106 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 14 // from: 11.2 12.1 13.1
  SAY #61107 /* ~Il fronce les sourcils. "Ce sont déjà des esclaves ! Ils sont esclaves de la loi, de la logique et de leurs propres expériences. Sous mon autorité, ils auront enfin un but dans la vie, un but à la hauteur de leurs compétences."~ */
  IF ~~ THEN REPLY #61108 /* ~"Admettons que ça marche. Et alors ?"~ */ GOTO 12
  IF ~~ THEN REPLY #61113 /* ~"Et si les modrones refusent de t'aider ?"~ */ GOTO 13
  IF ~~ THEN REPLY #61114 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61115 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #61116 /* ~Il rit et regarde autour de lui. "Ce mini-enfer ? C'est un exemple de la folie des modrones. Il existe dans le Plan des Limbes, où les pensées peuvent devenir réalité. Ainsi, ils peuvent *matérialiser* ce donjon et le peupler de constructions." Il rit encore. "Quelle merveille !"~ */
  IF ~~ THEN REPLY #61117 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61118 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #61119 /* ~Il secoue la tête. "Il n'y a pas de modrones ici. Seulement des prisonniers et leurs ravisseurs."~ */
  IF ~~ THEN REPLY #61120 /* ~"J'ai vu les modrones."~ */ GOTO 17
  IF ~~ THEN REPLY #61121 /* ~"Quels prisonniers ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61122 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61123 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61124 /* ~Il secoue la tête et te sourit d'un air triste. "Non. Les créatures dont tu as fait la connaissance ne sont rien d'autre que les restes corrompus des modrones. La plupart, sinon toutes, sont en passe de devenir des criminels sans même s'en rendre compte."~ */
  IF ~~ THEN REPLY #61125 /* ~"Des criminels ? Qu'est-ce que ça veut dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #61126 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61127 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61128 /* ~Il soupire. "Ce donjon est constitué de l'essence du chaos. Cette matière peut aisément être transformée en objets par la volonté de nombreuses créatures aux mêmes dispositions. Cela rend la construction de telles structures assez simples. Mais, il y a un prix à payer." Il marque une pause.~ */
  IF ~~ THEN REPLY #61129 /* ~"Continue."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61130 /* ~"Les modrones sont l'essence même de la loi. Mais ici, ils sont exposés à l'essence du chaos. Cette exposition aboutit souvent à une forme de folie. Les modrones commencent à perdre leur sens du *nous* pour s'individualiser. C'est considéré comme un des crimes les plus graves dans leur société. Ils deviennent des *criminels*.~ */
  IF ~~ THEN REPLY #61131 /* ~"Qu'est-ce qui arrive aux criminels ?"~ */ GOTO 20
  IF ~~ THEN REPLY #61132 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61133 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61134 /* ~Il hausse les épaules. "Je ne comprends pas tout, mais les modrones partagent une certaine essence commune. Si un modrone devient criminel, il emporte avec lui un peu de cette essence. Les modrones anéantiront tous les criminels pour que cette essence rejoigne sa source d'origine."~ */
  IF ~~ THEN REPLY #61135 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61136 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY #61137 /* ~Il te sourit. "Tu as été accepté comme leur chef et tu contrôles le cube. Ton élimination est par conséquent impérative. Ça n'a rien de personnel, tu comprends."~ */
  IF ~~ THEN REPLY #61138 /* ~"Et si je dis aux modrones que tu es leur nouveau chef ?"~ */ GOTO 22
  IF ~~ THEN REPLY #61139 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61140 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61141 /* ~Il secoue la tête. "J'ai bien peur que ça ne marche pas. Les modrones n'accepteront pas de me voir devenir leur chef. Pour eux, je ne suis que leur construction." Il réfléchit un moment avant de continuer. "Non, je vais devoir t'éliminer puis les soumettre. Je ne vois pas d'autre solution."~ */
  IF ~~ THEN REPLY #61142 /* ~"Je peux toujours partir et te laisser l'emporter."~ */ GOTO 23
  IF ~~ THEN REPLY #61143 /* ~"Et bien… Je ne vais pas rester là à te laisser comploter ma mort. Je crois que ton heure est venue."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61144 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61145 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #61146 /* ~Il secoue la tête. "Non, ce n'est pas assez bien. Je dois être certain que tu ne reviendras pas pour compromettre mes plans. Et la seule solution consiste à t'enterrer ici et maintenant."~ */
  IF ~~ THEN REPLY #61147 /* ~"Et bien… Je ne vais pas rester là à te laisser comploter ma mort. Je crois que ton heure est venue."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61148 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #61149 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 3.1 4.5 5.2 6.2 7.2 8.3 9.2 10.2 11.4 12.3 13.3 14.3 15.1 16.3 17.2 19.2 20.1 21.2 22.3 23.2
  SAY #61150 /* ~Il hoche la tête. "Eh bien, ce fut une agréable conversation, mais ton heure est venue." Il adopte une posture défensive.~ */
  IF ~~ THEN REPLY #61151 /* ~"Qu'il en soit ainsi."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.1
  SAY #61152 /* ~"Il ne faut pas m'ignorer. Toi et moi avons un destin à accomplir." Il te sourit. "Alors, on se bat tout de suite pour le contrôle de Rubikon ou on engage la conversation pour étancher ta curiosité ?"~ */
  IF ~~ THEN REPLY #61153 /* ~"Finissons-en avec ce combat."~ */ GOTO 2
  IF ~~ THEN REPLY #61154 /* ~"Très bien, je suis curieux. On peut parler ?"~ */ GOTO 3
END

IF ~  Global("Know_Rubikon","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #61155 /* ~Tu vois Rubikon, le magicien du cube. Il te sourit et te salue d'un air guindé. "Alors, on se retrouve. On dirait que nos destinées sont entrelacées. Le moment est venu d'engager un nouveau combat." Il adopte une posture défensive.~ */
  IF ~~ THEN REPLY #61156 /* ~"On dirait qu'on est déjà venus ici."~ */ GOTO 27
  IF ~~ THEN REPLY #61157 /* ~"J'ai des questions…"~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0 28.0
  SAY #61158 /* ~Il hoche la tête mais ne relâche pas sa garde. "Encore, jusqu'à ce que je l'emporte sur toi. Assez parlé, finissons-en."~ */
  IF ~~ THEN REPLY #61159 /* ~"Comme tu veux."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #61160 /* ~Il secoue la tête mais ne relâche pas sa garde. "L'heure n'est plus aux questions. L'heure est à l'action."~ */
  IF ~~ THEN REPLY #61161 /* ~"On dirait qu'on est déjà venus ici."~ */ GOTO 27
END
