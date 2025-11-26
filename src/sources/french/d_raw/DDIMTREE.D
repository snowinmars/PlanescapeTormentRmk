// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~Tu vois un homme grand et mince, au regard vitreux. Il semble absorbé par l'histoire que lui raconte le commerçant. De temps en temps, il hoche la tête, mais il ne fait aucun commentaire.~ */
  IF ~~ THEN REPLY #2908 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~L'homme se tourne légèrement alors que tu le salues, juste assez pour te faire remarquer qu'il t'a vu. Tu remarques qu'il a le teint pâle et assez blafard. Il te regarde sans te voir. Le commerçant ne paraît pas remarquer quoi que ce soit et continue son habituel babillage.~ */
  IF ~~ THEN REPLY #35924 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"Est-ce que… ça va ?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~L'homme reporte son attention sur le commerçant et acquiesce à quelque commentaire. Ce signe de tête te semble un peu tardif, mais le commerçant ne semble pas le remarquer. L'homme tourne son attention vers toi et te regarde d'un regard vide.~ */
  IF ~~ THEN REPLY #35928 /* ~"Est-ce que… ça va ?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~L'homme continue à te fixer et fait un lent signe de la tête. Tu attends une réponse, mais il ne dit rien, et regarde fixement. Tu t'apprêtes à t'en aller, frustré, quand tu remarques une étrange odeur de moisi sur l'homme.~ */
  IF ~~ THEN REPLY #35931 /* ~Approche-toi et sens-le.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~Ignore l'homme et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~Tu t'approches et hume dans sa direction, pas vraiment sûr de ce que tu vas trouver. Une odeur de moisi emplit tes sens, une odeur qui te rappelle la Morgue. C'est l'odeur de la chair morte conservée par la magie.~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"Tu es un zombi, hein ?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"Tu es un zombi, hein ?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~L'homme te fait à nouveau un lent signe de tête, puis reporte son attention sur le commerçant. Il ignore tes tentatives de communiquer avec lui.~ */
  IF ~~ THEN REPLY #35937 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~La créature continue à te regarder fixement. Lentement, comme sous un grand effort, il commence à te répondre. Grâce à ta faculté de communication avec les morts, ses propos deviennent intelligibles. "Oui… Je suis… Arbresombre."~ */
  IF ~~ THEN REPLY #35939 /* ~"Qu'est-ce que tu fais là, Arbresombre ?"~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~Arbresombre jette un lent coup d'œil au commerçant et fait un faible geste dans sa direction. Percevant cela comme un signe d'intérêt, le commerçant redouble d'efforts pour raconter ce qu'il essaie de relater à la pauvre créature. Arbresombre te regarde à nouveau. "Hamrys… Il parle… Hamrys s'arrête jamais… Erre dans la ville… ennuie le Maître, ennuie tout le monde… Maître crée Arbresombre… Dit à Arbresombre de parler à Hamrys… Maintenant Hamrys reste dans la boutique… Maître heureux… ville heureuse. Arbresombre triste…"~ */
  IF ~~ THEN REPLY #35943 /* ~"Je peux faire quelque chose pour t'aider, Arbresombre ?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"J'ai quelques questions à te poser…~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"Au revoir, Arbresombre."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~La créature s'interrompt, puis reprend sa lente conversation avec toi. Tu peux presque détecter une nuance de supplication dans sa voix. "Oui… Trouve maître… Sébastion… Demande-lui de me libérer… S'il te plaît…" Il reporte momentanément son attention vers Hamrys. "S'il te plaît…"~ */
  IF ~~ THEN REPLY #35947 /* ~"Et si je mettais fin à tes souffrances ?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"Je ne sais pas… Je vais y réfléchir. J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~Arbresombre secoue la tête dans ta direction de manière presque imperceptible. "Non… Maître ressuscite… Doit demander au maître… Sébastion… s'il te plaît." Il attend ta réponse.~ */
  IF ~~ THEN REPLY #35951 /* ~"Bien sûr, Arbresombre. Je vais voir ce que je peux faire pour toi."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~J'ai accepté d'aider Arbresombre le zombi. Il faut que je retrouve un dénommé Sébastion et que je lui demande de libérer Arbresombre de sa condition actuelle.~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"Excuse-moi, Arbresombre. Ce n'est pas mon boulot, tu sais ?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"Je ne sais pas… Je vais y réfléchir. J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~Tu peux presque sentir une sensation de soulagement émaner du zombi. "Arbresombre… te remercie, ami…"~ */
  IF ~~ THEN REPLY #35957 /* ~"De rien. J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"Au revoir, Arbresombre."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~Tu sens de la déception dans l'air alors qu'Arbresombre se tourne vers toi. Il fait un nouveau signe de tête au commerçant, qui n'a pas une seule fois ralenti son débit durant toute la conversation.~ */
  IF ~~ THEN REPLY #35960 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~La créature hausse presque imperceptiblement les épaules. "Sais… pas… Arbresombre appelé… par maître… Connais obscurité… paix… repos… Puis Hamrys… désolé… t'aider… si pouvais…"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"Tu sais où je pourrais trouver Sébastion ?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"Je vois… Alors, au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~Le grand homme pâle est toujours coincé dans une conversation avec le commerçant. Le commerçant est toutefois le seul à parler.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"Bonjour."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"Je voulais juste dire bonjour… Au revoir."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~Ignore-le.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~Arbresombre se tourne légèrement vers toi alors que tu t'approches. Tu ressens une sensation d'espoir dans l'air autour de lui. "Tu… trouvé maître ? Arbresombre libéré ?"~ */
  IF ~~ THEN REPLY #35970 /* ~"Tu sais où je pourrais trouver Sébastion ?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"Pas encore, Arbresombre. Je continue à chercher. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~La créature s'interrompt. "Sais pas… Souviens voix… donne ordre venir ici… marché… Hamrys… Rien d'autre… désolé."~ */
  IF ~~ THEN REPLY #35973 /* ~"Je vois. Alors, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~Arbresombre se tourne légèrement vers toi alors que tu t'approches. Tu ressens une sensation d'espoir dans l'air autour de lui. "Tu… trouvé maître ? Arbresombre libéré ?"~ */
  IF ~~ THEN REPLY #35975 /* ~"Oui, Arbresombre. Je sais comment te délivrer, maintenant."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"Pas pour le moment, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~Arbresombre se tourne pour te faire face et fais un geste dans ta direction. "S'il te plaît ami…"~ */
  IF ~~ THEN REPLY #35978 /* ~Prononce les mots que Sébastion t'a appris.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~Tu t'arrêtes pour te concentrer sur tes pensées, puis prononces les mots que Sébastion t'a appris. Tu tends ensuite le bras et touches légèrement Arbresombre sur le front.~ */
  IF ~~ THEN REPLY #35981 /* ~"Repose en paix, Arbresombre."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~J'ai jeté sur Arbresombre le sort que m'a appris Sébastion. Désormais en paix, Arbresombre n'a plus besoin d'écouter les élucubrations d'Hamrys.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~Dans un soupir, le zombi s'écroule à tes pieds. Tu crois entendre un *Merci, ami* alors qu'il tombe sur le sol.~ */
  IF ~~ THEN REPLY #35983 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~Arbresombre se tourne pour te faire face. "Tu… aides s'il te plaît ? Tu… trouves Sébastion… libère-moi…"~ */
  IF ~~ THEN REPLY #35985 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~J'ai accepté d'aider Arbresombre le zombi. Il faut que je retrouve un dénommé Sébastion et que je lui demande de libérer Arbresombre de sa condition actuelle.~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"Non, ce n'est pas mon problème."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"Je ne sais pas, je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~Tu peux presque sentir une sensation de soulagement émaner du zombi. "Arbresombre… te remercie, ami…"~ */
  IF ~~ THEN REPLY #35990 /* ~"Où est-ce que je peux trouver Sébastion ?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"De rien. Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~Arbresombre se tourne pour te faire face. "Pourquoi toi ici… Tu refuses aide… Tu changes avis… trouve Sébastion… libère-moi… s'il te plaît ?"~ */
  IF ~~ THEN REPLY #35993 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~J'ai accepté d'aider Arbresombre le zombi. Il faut que je retrouve un dénommé Sébastion et que je lui demande de libérer Arbresombre de sa condition actuelle.~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"Non, ce n'est pas mon problème."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"Je ne sais pas, je vais y réfléchir. Au revoir."~ */ EXIT
END
