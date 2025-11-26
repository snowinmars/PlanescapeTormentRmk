// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"Merci de ton aide. Tu me reverras peut-être plus tard… ou tu verras mes amis. Nous sommes partout."~ */
  IF ~~ THEN REPLY #43056 /* ~"J'avais des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"Il nous reste encore du chemin à parcourir avant d'arriver à l'entrepôt. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #43059 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"Rien."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~L'ingénieur te regarde d'un air méprisant. "Va-t'en ! Je n'ai pas de temps à perdre avec quelqu'un comme toi !"~ */
  IF ~~ THEN REPLY #43062 /* ~Attaque-la.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~Elle te jette un coup d'œil, le regard vide et sans rien dire, attendant l'arrivée des gardes.~ */
  IF ~~ THEN REPLY #43065 /* ~"J'avais des questions à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~Elle continue à te fixer. "Je n'ai rien à te dire pour le moment. Peut-être quand tu reviendras."~ */
  IF ~~ THEN REPLY #43068 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"Alors, tu as trouvé un moyen de me faire sortir d'ici ? S'ils me reconnaissent, ils ne me laisseront pas partir. Il faut que je me déguise."~ */
  IF ~~ THEN REPLY #43070 /* ~"Tu sais en quoi te déguiser ?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"J'ai récupéré un déguisement de forgeron. Enfile-le."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"Non, pas encore. J'ai d'autres questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"Non, pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"Ils n'empêchent pas les forgerons de partir. Tu pourrais peut-être me trouver une panoplie complète de forgeron et quelques chiffons - pas seulement les outils, mais aussi les vêtements… mais je ne sais pas du tout où tu peux trouver ça. En tout cas, arrête de tuer, d'accord ? J'ai déjà assez de problèmes comme ça - on n'a pas besoin de ça pour se rendre dans le reste de la cité. Autrement dit, ne tue aucun forgeron pour récupérer ses vêtements - je ne pense pas que ça m'irait de toute façon."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"J'ai récupéré un déguisement de forgeron. Enfile-le."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"Bien. Je vais voir ce que je peux faire. En attendant, réponds à quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"Très bien. Je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"Je le mettrai dès qu'on sera prêts à partir. Et maintenant ? Tu vas devoir me guider."~ */
  IF ~~ THEN REPLY #43079 /* ~"Très bien, allons-y."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"On passera par la porte d'entrée, et ensuite on se dirigera vers un entrepôt que je connais, où nous attendent des amis à moi. Tu es prêt ? "~ */
  IF ~~ THEN REPLY #43083 /* ~"Allons-y."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #43085 /* ~"Parle-moi de la Ligue Révolutionnaire."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"Parle-moi des Hommes-Dieux."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"Pourquoi tant de destruction ?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"Parle-moi de toi."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"Qu'est-ce que tu peux me dire sur Saros ?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~Elle te jette un coup d'œil, comme pour te sonder, et dit : "Nous pensons que par nature, le pouvoir est source de perversion. Notre objectif est d'éliminer le pouvoir là où il apparaît. Les factions de Sigil sont donc notre principale cible ; elles monopolisent la Cité des Portes, une cité qui devrait être ouverte à tous ceux qui la traversent. Au lieu de cela, ils écrasent tous ceux qui essaient de s'exprimer librement et réduisent au silence ceux qui tentent de leur résister. La structure même du pouvoir de Sigil doit être détruite !"~ */
  IF ~~ THEN REPLY #43092 /* ~"Quelle est la structure de la Ligue Révolutionnaire ?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"Mais pourquoi tu as rejoint ces gens ?"~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"Pourquoi ne pas travailler au sein du système pour le changer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"Mon père, qui faisait partie de la Ligue libre, a été tué lors d'un différend avec un membre de la Garde Fatale. L'assassin n'a jamais été arrêté. Ma mère a tenté de lui faire justice, mais elle a été arrêtée par les Têtes-de-Bois. Un juge corrompu l'a condamnée pour troubles de l'ordre et incitation à l'anarchie, ce qui lui a valu d'être exécutée par les Rectifieurs. Bien sûr, il fallait que je parte à la recherche des Anarchistes - ce sont les seuls à pouvoir répondre aux questions que je me pose depuis longtemps."~ */
  IF ~~ THEN REPLY #43100 /* ~"Pourquoi ne pas travailler au sein du système pour le changer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"Au sein de ce système ? Tu serais corrompu avant d'avoir pu apporter le moindre changement. Ça n'intéresse pas ce système de travailler avec quelqu'un susceptible d'affaiblir son pouvoir. C'est sur la nature des gens qu'ils veulent exercer leur pouvoir et le consolider, peu importe les dégâts qu'ils font au passage. La moindre critique sur les factions et tu te retrouves mort sans avoir eu le temps de dire 'ouf !'. Mieux vaut tout détruire pour tout reconstruire."~ */
  IF ~~ THEN REPLY #43105 /* ~"Beaucoup d'innocents seront touchés."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"Pourquoi tu as rejoint les Anarchistes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~Elle semble indécise. "Comment on y entre ? Hmmm. Tu en as assez fait pour te compromettre si jamais tu décidais de te joindre à nous ; dans tous les cas, tu nous as fait plus de bien que de mal." Elle s'interrompt pour réfléchir. "Très bien. Va parler à Loimoqueuse Penn, au magasin d'imprimerie. Dis-lui 'la cité doit brûler'. Il comprendra."~ */
  IF ~~ THEN REPLY #43111 /* ~"'La cité doit brûler'. Très bien. J'ai d'autres questions."~ */ JOURNAL #68106 /* ~Bedai-Lihn m'a demandé d'aller trouver Penn Loimoqueuse à l'imprimerie et de lui dire ceci : "la cité doit brûler".~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'La cité doit brûler'. Très bien. Au revoir."~ */ JOURNAL #68106 /* ~Bedai-Lihn m'a demandé d'aller trouver Penn Loimoqueuse à l'imprimerie et de lui dire ceci : "la cité doit brûler".~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~Elle se moque. "Si tu t'intéressais au sort des innocents, tu ne m'aurais jamais aidée. Et que fais-tu de tous ces ouvriers que TU as tués en détruisant l'arme de la Grande Fonderie ? Dans toutes les guerres, des innocents souffrent - mais en tout cas, quand tu es avec nous, ils ont une chance de s'en sortir. Avec les factions, ils n'ont aucune chance."~ */
  IF ~~ THEN REPLY #43114 /* ~"Pourquoi tu as rejoint les Anarchistes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"Nous sommes répartis en cellules, chacune portant un numéro indéterminé. Les membres des différentes cellules ne se connaissent pas, ce qui nous évite de trahir qui que ce soit. Bien sûr, nous pouvons parfois avoir des divergences, mais nous décourageons suffisamment les factions étouffeuses d'âmes pour que ça en vaille la peine."~ */
  IF ~~ THEN REPLY #43119 /* ~"Tu ne crois pas que les actions de ton groupe risquent de renforcer le militantisme et la corruption des factions ?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"Pourquoi tu as rejoint les Anarchistes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"Pourquoi ne pas travailler au sein du système pour le changer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"Non. Mais leur hypocrisie apparaît clairement quand ils essaient de détruire les gens qu'ils ont juré de protéger. Ceux qui prétendent soutenir la structure de Sigil sont les premiers à la piétiner quand ils se sentent menacés. Nous dénonçons l'usure de leurs idées de gouvernement. Nous n'en sommes qu'un catalyseur et non la cause."~ */
  IF ~~ THEN REPLY #43126 /* ~"Pourquoi tu as rejoint les Anarchistes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"Pourquoi ne pas travailler au sein du système pour le changer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"Comment entre-t-on dans la Ligue Révolutionnaire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"Les Hommes-Dieux ? Ha ! La majorité des autres factions font au moins semblant d'avoir une réponse. Les Hommes-Dieux sont encore pires que les autres - ils s'opposent à quiconque essaie de découvrir le grand secret, mais ils n'ont pas la moindre idée de ce que c'est. Ce sont tous des chiens dans des mangeoires. Pire, ils polluent le Bas Quartier en répandant ce brouillard mortel qui tue les plus âgés et les plus faibles. Ils se disent serviables, mais en vérité, ce sont des meurtriers."~ */
  IF ~~ THEN REPLY #43132 /* ~"Très bien. J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"Parce que l'ordre ancien doit disparaître. En détruisant une partie des quartiers généraux d'une faction, j'aide les gens à se détourner des Hommes-Dieux. En détruisant cette arme terrible, je les aide à se méfier des Hommes-Dieux. En tuant un régisseur, je leur montre que les grossiums sont des cibles et que personne ne doit chercher l'élévation sociale dans un système corrompu, pas quand ils peuvent en être les prochaines victimes. Chacune de ces actions sert aussi la cause symbolique. On ne détruit jamais dans le seul but de détruire. On ne serait alors pas meilleurs que ceux de la Garde Fatale."~ */
  IF ~~ THEN REPLY #43135 /* ~"Des quoi ?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"La Garde Fatale. Des gens qui pensent que parce que tout se désintègre, leur devoir est de s'assurer que le centre ne puisse pas tenir. Nous sommes nominalement alliés à la Garde Fatale, mais la vérité, c'est qu'eux aussi ils se désintégreront. En fin de compte, ils se désintégreront tous."~ */
  IF ~~ THEN REPLY #43139 /* ~"Très bien. J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"De moi ? Il n'y a pas grand-chose à dire. J'ai juré de voir les factions disparaître et je fais des études d'ingénierie magique qui me valent l'intérêt d'un grand nombre d'entre elles. Il y en a eu d'autres avant les Hommes-Dieux, tu sais - beaucoup d'autres. J'ai endossé plus de visages que ne peut en retenir ma mémoire et porté plus de noms que le livre des morts possède d'entrées. Je ne peux même pas te citer les noms de tous ceux que j'ai trahis."~ */
  IF ~~ THEN REPLY #43142 /* ~"Quelle vie ! Et ça te rend heureuse ?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"Je vois. J'avais d'autres questions."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"Ça doit être amusant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~Elle laisse échapper un petit rire sec et répond amèrement, "Heureuse ? Depuis quand le fait d'être heureux a-t-il quelque chose à voir avec ça ?"~ */
  IF ~~ THEN REPLY #43146 /* ~"Si tu n'es pas heureuse, pourquoi est-ce que tu continues ?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"Jamais. Le bonheur est un faux idéal créé pour oppresser les faibles et les crédules. Le vrai bonheur n'existe pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"Tu as raison. Laisse tomber. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"C'est vrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"Pourquoi ? Et ma vengeance, alors ? C'est ma raison de vivre, une partie de moi-même. Ce serait comme de te demander de continuer à vivre après t'être coupé un bras." Elle regarde tes cicatrices. "Mais, tu en serais sans doute capable."~ */
  IF ~~ THEN REPLY #43151 /* ~"Alors, tu laisserais ton amertume et ta haine te guider ?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"Sans doute. J'ai d'autres questions."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"Sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"Ça fait partie de moi. Sans ça, je ne suis rien."~ */
  IF ~~ THEN REPLY #43155 /* ~"Choisis autre chose, alors, et apprends à être plus en accord avec toi-même."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"Alors, entretiens ton amertume et laisse-la prendre le dessus sur toi. Sème davantage de souffrances. Ça m'est égal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"Bien. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"Je… je ne vois pas comment."~ */
  IF ~~ THEN REPLY #43167 /* ~"Fais un essai, juste pour voir."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"Alors, autant te suicider, parce que ça ne vaut pas la peine de vivre si tu ne peux pas changer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"Alors, n'essaie pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"Je suis d'accord. On nous dit que le bonheur est le but ultime de notre lutte, mais rares sont ceux qui semblent l'atteindre… Et les plus heureux semblent être les imbéciles et les arrogants qui ne savent pas ouvrir les yeux sur les horreurs du monde qui les entoure. Je trouve qu'il vaut encore mieux souffrir que de payer *le* prix du bonheur."~ */
  IF ~~ THEN REPLY #43172 /* ~"C'est tellement vrai. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"Non. C'est justement contre cette indifférence que nous nous battons. Bonne journée."~ */
  IF ~~ THEN REPLY #43175 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"Je vais y penser. Je ne te garantis rien. Au revoir, voyageur. Tu m'as donné matière à réfléchir."~ */
  IF ~~ THEN REPLY #43177 /* ~"J'espère bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"J'y ai réfléchi, et je me suis rendu compte que je fais une différence, et je crois en cette différence. Ça me suffit. Au revoir."~ */
  IF ~~ THEN REPLY #43179 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~Elle te regarde d'un air méprisant et ricane. "Alors, tu reviens avec un autre état d'esprit ou quoi ?"~ */
  IF ~~ THEN REPLY #43181 /* ~"J'ai changé d'avis. Je vais le tuer."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"J'avais d'autres questions…"~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"Rien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"Tu as déjà eu ta chance. Tu crois que je pourrais te faire confiance, maintenant ? Moi, je ne crois pas. Va-t'en."~ */
  IF ~~ THEN REPLY #43185 /* ~"Alors, réponds à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"Si tu ne m'aides pas à poursuivre ma quête, pourquoi devrais-je t'aider à poursuivre la tienne ? Bonne journée."~ */
  IF ~~ THEN REPLY #43188 /* ~"Bonne journée."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"As-tu inscrit le nom de Sandoz dans le livre des morts ?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"Oui. Il est mort."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"Non, pas encore. J'avais d'abord d'autres questions."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"Tu as pris ta décision ? Tu acceptes ce travail, oui ou non ?"~ */
  IF ~~ THEN REPLY #43194 /* ~"Oui, je le ferai."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"Non."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"Non, pas encore. J'ai d'autres questions."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"Non, pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"Je te demande d'effectuer une dernière tâche, et on laissera ces Hommes-Dieux à leurs tourments. J'ai besoin que tu me fasses sortir de cet endroit en catimini - les gardes vont chercher un bouc émissaire, et je préférerais éviter qu'ils te choisissent, toi - quand j'aurai disparu, ils comprendront que j'étais le responsable et tu n'auras plus rien à craindre. Qu'est-ce que tu en dis ?"~ */
  IF ~~ THEN REPLY #43199 /* ~"Laisse-moi le temps d'y réfléchir."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"Oui. C'est d'accord. Qu'est-ce que je dois faire ?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"Non. Je crois que tu essaies de te servir de moi."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"Je dois quitter la Fonderie. Tu veux m'aider ? Il me faut une réponse TOUT DE SUITE."~ */
  IF ~~ THEN REPLY #43203 /* ~"Bon sang… D'accord."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"Non. Je crois que tu essaies de te servir de moi."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"J'ai dit que j'allais y réfléchir. Au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"A moins que tu puisses m'aider à sortir d'ici, je n'ai plus rien à te dire."~ */
  IF ~~ THEN REPLY #43207 /* ~"Bon, d'accord. Je vais t'aider."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"Non. Je ne t'aiderai pas."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"Alors, je n'ai plus rien à te dire."~ */
  IF ~~ THEN REPLY #43211 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"D'autres questions ? Tu n'as rien à faire ?"~ */
  IF ~~ THEN REPLY #43213 /* ~"Parle-moi de toi."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"Pourquoi est-ce que je le ferais ?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"Pourquoi est-ce que je le ferais ?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"Mais qu'est-ce que tu as contre les Hommes-Dieux ?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"Je m'appelle Bedai-Lihn. Je suis ingénieur en magie (attention, je ne suis pas mage, mais théoricienne) et je vais faire en sorte que les Hommes-Dieux n'aient plus aucune chance d'utiliser cette arme ou de s'en procurer d'autres pour combattre à des fins guerrières."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"Pourquoi le tuer ?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"Pourquoi détruire la machine ?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"Très bien. Réponds à d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"Parce que les contrats que les Hommes-Dieux font signer à leurs clients sont démoniaques. Les Hommes-Dieux s'octroient le luxe de faire croire que leurs actions n'ont pas de répercussions. Eh bien, c'est faux, et je vais le leur prouver - en veillant à ce que la personne responsable du contrat ne survive pas pour recommencer."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"D'accord. Je vais le faire."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"Je n'ai pas envie de le faire."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"Pourquoi ? Parce que cette arme est un outil diabolique… au sens littéral du terme. Les fiélons vont l'utiliser à des fins dévastatrices et destructrices, et peu importe combien d'applications 'pacifiques' peuvent découler de ce dispositif infernal, rien ne compensera la souffrance qu'il causera."~ */
  IF ~~ THEN REPLY #43229 /* ~"Et les ouvriers ?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"Très bien. J'avais d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"Ce que j'ai contre eux, c'est qu'ils sont aussi aveugles que toutes les autres factions. Contrairement aux apparences, ils contrôlent la cité d'une main de fer. Leur philosophie d'affirmation de la vie est une imposture. Il est temps de leur administrer une dose de leur propre remède."~ */
  IF ~~ THEN REPLY #43233 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"J'ai entendu l'explosion d'ici. Bien joué. Est-ce qu'un autre travail t'intéresserait ?"~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"Quoi ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"Pourquoi est-ce que tu n'as pas été tuée dans l'explosion avec les autres personnes qui travaillaient sur le projet ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"Quoi ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"Le factol, Sandoz… Je suis sûre que tu le connais ? C'est lui qui est à l'origine du développement de ce dispositif diabolique. C'est lui qui a trouvé le contrat et qui a promis que cette arme redoutable serait créée. C'est lui qui est responsable de la mort des autres ingénieurs. Il doit mourir."~ */
  IF ~~ THEN REPLY #43239 /* ~"Je m'en charge."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"Pas question. Il y a déjà eu suffisamment de morts comme ça."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"Tu ne veux pas le faire ? C'est dommage, parce que tu es déjà mouillé jusqu'au cou dans cette histoire. Tu penses vraiment qu'un cadavre de plus fera une différence ? Pense à ce que tu as déjà fait et pense à ce que ça coûtera si tu arrêtes maintenant. Si tu ne vas pas jusqu'au bout, rien ne changera, et tu auras tué pour rien. Tu veux vraiment stopper la tuerie parrainée par les factions ou est-ce que tu parlais en l'air ?"~ */
  IF ~~ THEN REPLY #43242 /* ~"Je le tuerai."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"Non. Je ne veux pas le tuer."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"Bien. Il s'appelle Sandoz. Je crois que tu l'as déjà rencontré. Il ne soupçonnera rien. Pas la peine d'essayer d'être silencieux, Sandoz en fait tellement que les gardes ne remarqueront pas un peu de bruit en plus. Reviens me voir quand tu auras fini et je te confierai une autre mission - et ensuite, ce sera fini. Maintenant, vas-y !"~ */
  IF ~~ THEN REPLY #43245 /* ~"J'ai changé d'avis. Je ne veux pas le tuer."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~Son regard devient rapidement méprisant. "Tu es encore plus nul que je ne le pensais… Et c'est peu dire. Bon, au revoir. Ne m'adresse plus la parole." Elle te tourne le dos.~ */
  IF ~~ THEN REPLY #43248 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"As-tu détruit le dispositif infernal ?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"Non. J'ai besoin d'un jeton pour passer les portes."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"Non. J'ai perdu le jeton qui permet de passer les portes."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"Et les ouvriers ?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"Pas encore. Mais, ça ne va pas tarder. Est-ce que tu peux me parler de ses points faibles ?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"Tu as besoin d'un jeton ? Alors, adresse-toi à la directrice de la fonderie… Je crois qu'elle s'appelle Alissa Tield. Ou sinon, essaie Saros. Je crois qu'il a des talents qui pourraient t'être utiles…"~ */
  IF ~~ THEN REPLY #43255 /* ~"Très bien. Quels sont les points faibles de la machine ?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"J'avais d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"Très bien, je vais le faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"Alors, il faut que tu le retrouves ou que tu t'en procures un autre auprès de Saros ou d'Alissa Tield, la directrice de la fonderie. Si aucun des deux ne peut t'aider, il faudra que tu te battes pour atteindre la machine. Mais, je ne te le conseille pas."~ */
  IF ~~ THEN REPLY #43259 /* ~"Très bien. Quels sont les points faibles de la machine ?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"J'avais d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"Concentre ton énergie sur le dispositif de tir. Je te conseille d'y insérer quelque chose de métallique. Le métal de l'objet créera un court-circuit qui détruira la résonance du champ magique de l'arme, provoquant son autodestruction. Dès que tu auras inséré l'objet dans le dispositif, va-t'en. Tu auras environ une demi-heure avant l'explosion."~ */
  IF ~~ THEN REPLY #43263 /* ~"Et les ouvriers ?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"J'avais d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"Les ouvriers ? Ce sont les esclaves de leur faction et elle ne les pleurera pas. Mais pourquoi tu t'inquiètes pour eux ?"~ */
  IF ~~ THEN REPLY #43267 /* ~"Parce qu'ils sont innocents."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"J'avais d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"Tu as raison. Je reviendrai quand la machine sera détruite."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"Innocents ? Ha ! Dans une organisation aussi corrompue, tu trouves que ceux qui travaillent sur ces machines mortelles sont 'innocents' ? Très amusant !" Elle marque une pause, comme pour avaler sa salive. "Tu vas détruire la machine ou pas ?"~ */
  IF ~~ THEN REPLY #43271 /* ~"Non. Ils ne méritent pas de mourir."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"Oui. Je reviendrai quand ce sera fait."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"Tu as déjà eu ta chance. Tu crois que je pourrais te faire confiance, maintenant ? Moi, je ne crois pas. Va-t'en."~ */
  IF ~~ THEN REPLY #43274 /* ~"Alors, réponds à quelques questions."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"Alors, on n'a plus rien à se dire. Tiens ta langue et je ne parlerai de ta trahison à personne. Au revoir. Ne m'adresse plus la parole."~ */
  IF ~~ THEN REPLY #43277 /* ~"Attends ! J'ai changé d'avis !"~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"Tu es un Homme-Dieu maintenant. Ça te convient toujours ?"~ */
  IF ~~ THEN REPLY #43280 /* ~"Oui."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"Non, pas vraiment."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"J'ai quelques questions à te poser."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"Bon. Je suis contente que tes choix te conviennent. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #43285 /* ~"J'avais des questions à te poser…"~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"Pourquoi pas ?"~ */
  IF ~~ THEN REPLY #43288 /* ~"Ce n'est pas ce que je croyais."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"Parce que je commence à me rendre compte qu'il n'y a rien derrière ce titre."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"Je suis mécontent, c'est tout."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"En fait, je crois que ça me convient assez bien."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"Quelles sont tes questions ?"~ */
  IF ~~ THEN REPLY #43293 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"Dis-moi ce que tu sais sur le meurtre."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"Parle-moi du projet sur lequel tu travailles."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"Parle-moi des gens d'ici."~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"Qui es-tu ?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"On a rarement ce qu'on veut et on est tous insatisfaits. Devenir membre d'une faction est une récompense intangible. Réfléchis-y et reviens plus tard, d'accord ?"~ */
  IF ~~ THEN REPLY #43302 /* ~"D'accord. Mais j'ai quelques questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"Alors, tu dirais que tu es dévoué aux Hommes-Dieux ?"~ */
  IF ~~ THEN REPLY #43305 /* ~Vérité : "Oui."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~"À moins que tu puisses m'aider à sortir d'ici, je n'ai plus rien à te dire."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~Vérité : "Non."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~Mensonge : "Non."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"Je ne vois pas en quoi ça te regarde."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~Elle se retient de bâiller. "Tu peux demander à n'importe qui ici de te parler de la Grande Fonderie et tu obtiendras la même réponse. Qu'est-ce qui te fait croire que je te donnerai une réponse différente ? Pose-moi une autre question."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"Dis-moi ce que tu sais sur le meurtre."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"Parle-moi du projet sur lequel tu travailles."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"Parle-moi des gens d'ici."~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"Voyons… J'ai demandé aux gardes de partir pour la nuit parce que je travaillais sur un aspect délicat du projet dans la pièce d'à côté, et je ne voulais pas que leurs émanations psychiques viennent perturber ce travail décisif. C'est avec consternation que j'ai découvert le corps quand je suis sortie de la pièce. Et comme je n'ai pas d'autre alibi, je me rends compte que je suis un suspect - et je te soupçonne d'avoir déjà découvert que je refuse de me soumettre au sort pour répondre. La raison en est que je ne peux revenir sur ma parole, car j'ai juré de ne pas révéler le secret de ce projet afin de le protéger."~ */
  IF ~~ THEN REPLY #43317 /* ~"Je vois. J'avais d'autres questions."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"Je crois que je vais aller vérifier ça auprès de Keldor."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~Elle se moque. "Une Anarchiste ? C'est ça. C'est absurde. Si tu n'as rien de plus intéressant à me demander, je peux me remettre au travail ?"~ */
  IF ~~ THEN REPLY #43321 /* ~"J'avais d'autres questions."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"Retourne travailler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"Que je te parle du projet auquel nous avons voué nos vies ? Hum. Non. Pas question. Pas encore, en tout cas. Disons juste qu'il est très important et qu'il vaut bien tous les efforts que nous lui avons consentis."~ */
  IF ~~ THEN REPLY #43324 /* ~"Bien. Alors, réponds à d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"Des gens d'ici ? Eh bien, il y a Nihl Xander, brillant mais excentrique, Kel'lera, la paria githzeraï, Thildon le Gris, dont le cœur est bien moins ambigu que le nom, Keldor le régisseur, Sandoz le régisseur, les deux enfants de Sandoz, les directeurs, les forgerons et une foule d'autres personnes. Je les côtoie tous de loin, et pour être franche, je n'ai jamais vraiment fait l'effort d'apprendre à les connaître. Certains travaillent pour moi, d'autres pas, et je crains que ce soit à peu près tout ce qui m'intéresse. Je préfère me consacrer à mon travail."~ */
  IF ~~ THEN REPLY #43327 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"Je m'appelle Bedai-Lihn. Je suis ingénieur en magie (attention, je ne suis pas mage, mais théoricienne) et je vais faire en sorte que les Hommes-Dieux n'aient plus aucune chance d'utiliser cette arme ou de s'en procurer d'autres pour combattre à des fins guerrières."~ */
  IF ~~ THEN REPLY #43330 /* ~"Très bien. Réponds à d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~Elle sourit de satisfaction. "Bien. Attaque-toi à un point faible de la machine et reviens m'en informer."~ */
  IF ~~ THEN REPLY #43333 /* ~"Quels sont ses points faibles ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"Je te préviendrai quand j'aurai fini. En attendant, j'ai d'autres questions…"~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"Pourquoi est-ce que tu veux faire ça ?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"J'ai changé d'avis. Je laisse tomber."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"Irais-tu jusqu'à dire que ton manque de dévouement est suffisamment fort pour t'en prendre aux Hommes-Dieux si tu en avais l'occasion ?"~ */
  IF ~~ THEN REPLY #43339 /* ~"Oui."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"Bien sûr que non !"~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"Non, ça ne me regarde pas." Elle se détourne de toi. "Au revoir."~ */
  IF ~~ THEN REPLY #43342 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"Tu ne devines pas ? J'ai prêté serment sous un faux nom et une fausse identité. Ce n'est pas moi qui ai prêté serment, c'est pour ça que je n'ai pas été touchée. Bon, tu acceptes ce nouveau travail ou pas ?"~ */
  IF ~~ THEN REPLY #43344 /* ~"Quoi ?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"Vas-y. Il te confirmera ce que je t'ai dit - c'est lui qui m'a fait prêter serment, alors il connaît son pouvoir."~ */
  IF ~~ THEN REPLY #43346 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~Une lueur de colère traverse ses yeux - mais un regard méprisant le remplace si vite que tu n'es pas sûr d'avoir bien vu. "Une Anarchiste ? C'est ça. C'est absurde. Si tu n'as rien de plus intéressant à me demander, je peux me remettre au travail ?"~ */
  IF ~~ THEN REPLY #43349 /* ~"C'était quoi, cette lueur de colère ?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"J'avais d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"Tu peux te remettre au travail. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"Alors, tu as frappé à la bonne porte." Elle sourit et une nouvelle lueur apparaît dans ses yeux. "Ça te plairait de t'attaquer à la fois à la machine de guerre baatezu et aux Hommes-Dieux ?"~ */
  IF ~~ THEN REPLY #43353 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"Pas vraiment."~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"C'était un pion utile, mais le fait est qu'il avait trop d'attaches personnelles pour comprendre la nécessité de leur destruction. S'il meurt, ce ne sera pas une grande perte. Et s'il reste en vie, ça n'a pas grande importance non plus. Je garderai le souvenir tendre d'un garçon qui a fait sa part, mais qui manquait de potentiel."~ */
  IF ~~ THEN REPLY #43356 /* ~"Très bien. Réponds à d'autres questions pour moi."~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"C'est gentil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"Bon, bon. C'est agréable de savoir que cette faction n'engendre pas de traîtres. Est-ce que je peux faire autre chose pour toi ?"~ */
  IF ~~ THEN REPLY #43359 /* ~"J'avais d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~Elle esquisse un timide sourire. "Tu remarques tout, hein ? Laisse-moi te présenter les choses sous cet angle : que ressentirais-tu si tu étais injustement accusé ? C'est pour ça que je suis en colère, c'est tout." Cette réponse te *semble* honnête…~ */
  IF ~~ THEN REPLY #43362 /* ~"Je ne te crois pas."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"Il faudra pourtant que tu me croies, parce que je ne te donnerai pas d'autre réponse." Elle se détourne de toi froidement. "Au revoir."~ */
  IF ~~ THEN REPLY #43366 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"Ce que je veux dire, c'est qu'une arme d'une puissance incroyable est en train d'être mise au point ici, à la Grande Fonderie, et qu'elle est financée par les baatezus - par le démon, si tu préfères. En la détruisant, non seulement tu porteras un coup à la faction que tu dis rejeter, mais tu jetteras l'opprobre sur toute cette race de fiélons. Qu'est-ce que tu en dis ?"~ */
  IF ~~ THEN REPLY #43368 /* ~"Je m'en charge."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"Non. Je ne ferai pas ça."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"Alors, tu ne m'es d'aucune utilité. Tu tiens ta langue et je tiens la mienne. Au revoir."~ */
  IF ~~ THEN REPLY #43371 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #43373 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"Dis-moi ce que tu sais sur le meurtre."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"Thildon dit que tu es une Anarchiste et que tu essaies de l'accuser du crime."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"Parle-moi du projet sur lequel tu travailles."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"Parle-moi des gens d'ici."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"Qui es-tu ?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~Tu vois une femme sévère aux cheveux rouge feu tirés en arrière, ce qui lui allonge le visage en lui donnant un air nerveux. Elle semble perdue dans ses pensées. À ton approche, elle te jette un coup d'œil et dit : "Je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #43382 /* ~"Oui, j'ai quelques questions."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"Non, désolé. Au revoir."~ */ EXIT
END
