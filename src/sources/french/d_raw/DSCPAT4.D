// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10941 /* ~C'est une femme au regard un peu distant, ni vieille ni jeune. Son air lointain lui vient peut-être de son expression : face au spectacle qu'offre le cadre, elle n'en croit visiblement pas ses yeux. Lorsqu'elle finit par te remarquer, elle parle d'un ton sec, mais sans dureté. "Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #10942 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #10943 /* ~"Je cherche un journal."~ */ GOTO 3
  IF ~~ THEN REPLY #10944 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10945 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10946 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10947 /* ~"Qu'est-ce que ton ami et toi disiez sur Sigil ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10948 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10949 /* ~"Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #10950 /* ~"Les réponses à certaines questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10951 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10952 /* ~"Je suis Kiarus. Kiarus Langue-acérée. Je suis ici avec mon cousin pour la simple raison que mon oncle refuse de me voir visiter la Ruche seule. Il estime que j'ai besoin d'un chaperon. Il a peut-être raison. Je ne connais guère cette cité, ni ce plan. Je ne suis pas d'ici. Je viens du Plan Primaire."~ */
  IF ~~ THEN REPLY #10953 /* ~"Le Plan Primaire ? Qu'est-ce que c'est ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10954 /* ~"Tu viens du Plan Primaire ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10955 /* ~"Et bien, ça ne t'empêche pas de répondre à mes questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10956 /* ~"Alors, tu ne peux probablement pas répondre à mes questions. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10957 /* ~"Navrée. Je débarque, et je peux t'assurer que je n'ai rien vu qui ressemble à un journal - on m'a toutefois expliqué que ce qu'on croit être une personne peut servir de journal à une autre créature. J'essaie de comprendre la philosophie qui prévaut par ici. C'est dur, mais il paraît qu'on s'y habitue à la longue."~ */
  IF ~~ THEN REPLY #10958 /* ~"C'est réconfortant. J'aimerais obtenir des réponses de ta part."~ */ GOTO 7
  IF ~~ THEN REPLY #10959 /* ~"Je l'espère. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10960 /* ~"Ici, si je comprends bien, c'est la Taverne du Cadavre fumant, ainsi nommée à cause du pauvre type à l'entrée. À ce que j'ai vu, c'est un tripot où la vermine et la crème se mélangent pour créer une saveur aussi nouvelle que peu appétissante. Bien sûr, étant donné que je viens du Plan Primaire, j'ai peut-être des a priori."~ */
  IF ~~ THEN REPLY #10961 /* ~"Tu viens du Plan Primaire ? Qu'est-ce que ça veut dire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10962 /* ~"Tu viens du Plan Primaire ? Que fais-tu ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10963 /* ~"C'est possible. Les apparences sont parfois trompeuses ici. Peux-tu répondre à quelques questions pour moi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10964 /* ~"C'est possible. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10965 /* ~"C'est Ignus. Il a tenté de faire brûler une partie de la cité il y a longtemps - des siècles ? - et il a été changé en feu vivant à titre de punition. Un triste sort, mais un châtiment bien mérité pour un pyromane. À ce que j'ai lu, mieux vaut le laisser en paix."~ */
  IF ~~ THEN REPLY #10966 /* ~"Comment se fait-il que tu en connaisses autant sur cet endroit ? N'es-tu pas un primaire ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10967 /* ~"J'aimerais te poser d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10968 /* ~"Merci. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10969 /* ~"C'est mon cousin, pas mon ami. Il me disait que Sigil n'a rien du centre du multivers, même si elle se situe au beau milieu de l'Outreterre et sert de point focal à des portails dans tout le cosmos… On ne connaît pas de lieu où il y en ait plus… Bref, bien que les dieux se le disputent et qu'il concentre un pouvoir aussi formidable que diversifié, cet endroit sans pareil n'aurait rien de spécial ? Quelle idée !"~ */
  IF ~~ THEN REPLY #10970 /* ~"C'est une perspective intéressante. Vous détenez peut-être tous les deux des éléments de vérité ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10971 /* ~"Quoi qu'il en soit, j'aimerais te poser d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10972 /* ~"Intéressant. Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 2.2 3.0 4.2 5.1 6.1 8.0 9.0 10.0 11.0 12.1 13.0
  SAY #10973 /* ~"Demande toujours. Si possible, je répondrai."~ */
  IF ~~ THEN REPLY #10974 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10975 /* ~"Je cherche un journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10976 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10977 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10978 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10979 /* ~"Qu'est-ce que ton ami et toi disiez sur Sigil ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10980 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #10981 /* ~"Peut-être que tu as raison, mais un tel relativisme me dépasse. Soit l'endroit est important, soit il ne l'est pas. Les plans se nourrissent peut-être de paradoxes, mais il doit bien y avoir un sens à tout ça."~ */
  IF ~~ THEN REPLY #10982 /* ~"Pas nécessairement… Mais je n'ai pas le temps d'en discuter pour le moment. J'aimerais plutôt te poser d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10983 /* ~"Je l'espère. Il me faut des réponses. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0 4.0
  SAY #10984 /* ~Intriguée, elle penche la tête. "Le Plan Primaire ? Le lieu d'où est issu le système de croyances qui façonne les Plans Extérieurs ? Le monde ? Les étoiles, les lunes, tout ça ? La croyance et la réalité ? J'espère que tu sais ce qu'est le Plan Matériel Primaire, il joue un rôle primordial dans la connaissance des plans."~ */
  IF ~~ THEN REPLY #10985 /* ~"Je le savais. J'ai d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10986 /* ~"Oh. Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 4.1
  SAY #10987 /* ~"Je visite. Je m'ouvre des horizons. Le Plan Primaire est un bon endroit pour vivre, mais il est un peu trop… réel, disons. Mon oncle offre à tous ses neveux et nièces quelques années dans les plans et nous permet de nous y établir si nous le souhaitons. Je pense me laisser tenter. Je suis à la fois fascinée et écœurée par les plans, mais cela doit venir de leur nature même, non ?"~ */
  IF ~~ THEN REPLY #10988 /* ~"D'après ce que je comprends, oui. En sais-tu suffisamment pour me donner quelques réponses ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10989 /* ~"Oui. Au revoir et bonne chance."~ */ EXIT
  IF ~~ THEN REPLY #10990 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10991 /* ~"Notre oncle, à Cilaen et à moi, est un magicien qui habite ici. Il lui arrive d'amener des parents pour leur montrer les beautés et les horreurs du multivers. Je voulais m'assurer que j'étais prête à effectuer le voyage, je m'y suis donc préparée. Dans les moindres détails. J'en sais sans doute plus sur cette cité que mon cousin qui a pourtant vécu ici toute sa vie." Et elle désigne son voisin d'un geste condescendant.~ */
  IF ~~ THEN REPLY #10992 /* ~"Quel oncle ! Puis-je poser d'autres questions ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10993 /* ~"Quel cadeau ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 7.2
  SAY #10994 /* ~"Un Récupérateur ? Je ne connais pas ce terme." Elle réfléchit. "À moins qu'il ne s'agisse d'un de ceux qui transportent les morts ? Les pauvres gens qui collectent les innombrables victimes de la Ruche pour quelque argent ?"~ */
  IF ~~ THEN REPLY #10995 /* ~"Oui."~ */ GOTO 13
  IF ~~ THEN REPLY #10996 /* ~"Apparemment, tu ne connais pas cet homme, alors réponds à d'autres questions pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10997 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #10998 /* ~"D'après ce que j'ai entendu dire, on les trouve surtout dans les secteurs de la Ruche les plus éloignés de la Morgue, là où il y a plus de vie et plus de violence. Tu ferais sans doute mieux de concentrer tes recherches loin de la maison des morts."~ */
  IF ~~ THEN REPLY #10999 /* ~"Je le ferai peut-être, mais j'aimerais d'abord te poser une autre question."~ */ GOTO 7
  IF ~~ THEN REPLY #11000 /* ~"C'est une bonne suggestion. Merci et au revoir."~ */ EXIT
END
