// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~Cette pierre vert pâle est solidement fixée au socle sur lequel elle repose. En dessous, on peut lire l'inscription suivante : 'Le Messager'.~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Laisse les sensations affluer.~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~Tu touches la pierre, mais rien ne se passe dans ton esprit… C'est comme si la pierre était inerte… morte.~ */
  IF ~~ THEN REPLY #53015 /* ~Laisse la pierre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~Tandis que tu touches la pierre, sa surface verte s'éclaire et sa luminosité s'accroît tellement que tu es obligé de fermer les yeux…~ */
  IF ~~ THEN REPLY #53017 /* ~Ferme les yeux, immerge-toi dans l'expérience…~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Repousse l'expérience, lâche la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Ta vision s'éclaircit, jusqu'à ce que tu te trouves une fois de plus devant cette hideuse pierre verte… Elle paraît maintenant différente, plus… en quelque sorte plus horrible.~ */
  IF ~~ THEN REPLY #53020 /* ~Essaie de repousser l'expérience, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~Tandis que tu fermes les yeux, tu sens la peau le long de tes bras devenir insensible, comme si toute sensation s'écoulait en saignant. Fatigué… si fatigué. Tu essaies de cligner des yeux, mais l'obscurité est toujours là, tes paupières semblent douces et lentes, sans réaction. Tu es assis sur ce qui semble être un sol jonché d'ordures, et tu sens autour de toi une odeur de sang cuivré et… d'herbes ? Pourquoi es-tu ici ? Tu es venu ici pour - quoi ? Ta mémoire t'échappe, et un sentiment de panique monte en toi…~ */
  IF ~~ THEN REPLY #53022 /* ~Essaie de reprendre tes esprits…~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~"Ah… réveillé ? Questionnaire terminé ?" C'est la voix d'une vieille femme, épaisse et racleuse, comme si elle essayait de se frayer un chemin à travers une épaisse couche de poussière. Tu essaies d'ouvrir les yeux et de voir la femme, mais tu ne peux pas ; la peur te fait frissonner. Quelque chose ne va pas, pas du tout. Tu essaies de répondre, mais tu arrives tout juste à *croasser* quelque chose. Tu ne sens plus ta langue… et tes yeux ? Qu'est-ce qui ne va pas avec tes yeux ?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~"Ravel ? Ravel, c'est moi !"~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~"Ravel ? Je suis revenu."~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Écoute…~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~"Eh bien, tu as pu voir et tu as pu parler *pauvrement*, alors le prix tu as dû payer, hmnnn ?" La vieille guenaude paraît amusée, puis son ton baisse brusquement. "Plus de questions ; maintenant tu vas ÉCOUTER et tu te souviendras de mes paroles, car en te souvenant de moi, tu *vivras*." Elle siffle. "Fais un signe si tu m'entends ou un AUTRE morceau je prendrai."~ */
  IF ~~ THEN REPLY #53030 /* ~Signe de tête.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~"Rappelle-toi de moi, voyageur. Rappelle-toi de moi comme une pierre, un des jolis bijoux de votre Salle des Fêtes - utilise-la comme une coupe, verse ce que tu *ressens* à l'intérieur, et sache ceci : rappelle mon existence à cet homme qui porte une peau de tatouages et de cicatrices, qui cherche ses souvenirs mais qui les a égarés. S'il est intelligent, il ME reconnaîtra. Dis-lui de me chercher - ou si je ne peux pas être trouvée, dis-lui de venir à la pierre luisante et nous parlerons, mon précieux homme et moi." La femme s'interrompt, puis siffle à nouveau. "Fais un SIGNE si tu m'entends, loque !"~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Signe de tête.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Signe de tête.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~"Ah… joli, poli d'écouter si longtemps… quand il viendra à la pierre luisante, dis à l'homme de prononcer mon *nom* et ta douleur n'aura pas été vaine…" La vieille ratatinée baisse la voix, comme si elle était distraite. Tu essaies de parler à nouveau, mais tu produis uniquement un bruit de gargouillis maladif. Que s'est-il passé ? Qui est cette personne ? Pourquoi es-tu… et tu te sens sombrer dans l'inconscience…~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~"Ravel ! Ravel, c'est moi !"~ */ JOURNAL #53038 /* ~J'ai vu une pierre horrible dans le sensorium privé de la Salle des Fêtes. Elle était verte et renfermait les sensations de quelqu'un qui avait été torturé par Ravel et qui devait ramener son expérience à la Salle des Fêtes… et, au bout du compte, à moi. Dans le message, Ravel me dit que je dois prononcer son nom si je trouve la pierre. Je l'ai donc fait…~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Reprends tes esprits.~ */ JOURNAL #53039 /* ~J'ai vu une pierre horrible dans le sensorium privé de la Salle des Fêtes. Elle était verte et renfermait les sensations de quelqu'un qui avait été torturé et qui devait ramener son expérience à la Salle des Fêtes… et, au bout du compte, à moi. L'horrible sorcière du message m'a dit que je devais prononcer son nom si je trouvais la pierre. Mais le plus terrible, c'est que j'ignore de qui il s'agit. Je retournerai là-bas si je découvre son nom.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~Tout n'est que silence.~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~"Ravel ?"~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~"Ravel… ? C'est encore moi."~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~"Ahhh… mon précieux homme." Il y a un bruissement de pas, et tu *ressens* une douleur fulgurante dans ton œil gauche ; tu as le souffle coupé et soudain, tu VOIS - avec ton unique œil. Tu es couché dans une cabane grise, sur un sol sale, où le sang, ton sang rouge vif a coulé dans la poussière. Tes bras ne sont plus là, tes jambes ont été coupées au genou. Pourtant… tu te sens engourdi, mais il n'y a aucune douleur… seulement de la peur. Il y a quelqu'un au-dessus de toi, quelqu'un qui te regarde…~ */
  IF ~~ THEN REPLY #53045 /* ~Lève la tête.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Reprends tes esprits.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~Lorsque tu lèves la tête, tu aperçois à travers ta vision ensanglantée une horrible tête bleuâtre, grisâtre aux chicots jaunes. "Ravel est *contente* - j'étais curieuse de savoir si le messager survivrait, car il était *faible* quand ses morceaux ont été placés sur mon plateau…" Elle brandit une griffe devant toi, et tu vois ton œil empalé dessus - le droit. "Et pourtant à la Salle des Fêtes il est retourné, et notre temps il a partagé. Et tu es maintenant là… succès !"~ */
  IF ~~ THEN REPLY #53048 /* ~"Ravel… j'ai beaucoup de questions pour toi."~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~La vieille ratatinée secoue la tête et ta vision troublée te fait voir trois images à la fois. Sa chevelure grise est comme des ronces et descend sur ses épaules. "Non, Ravel n'a de temps que pour les réponses, et elle n'a pas de temps à perdre avec tes questions. Sache ceci, et que la connaissance te renforce : tu dois me TROUVER, mon précieux homme."~ */
  IF ~~ THEN REPLY #53051 /* ~"Mais comment ? Je ne sais pas -"~ */ JOURNAL #53053 /* ~La pierre sensorielle du sensorium privé de la Salle des Fêtes recelait une expérience liée à Ravel, ce qui m'a permis, même si j'ignore comment, de parler avec cette dernière. Elle m'a dit qu'il me fallait parvenir jusqu'à elle et que, pour ce faire, je devais 'trouver la porte, connaître la clé et la libérer'. Je ne sais pas vraiment ce qu'elle a voulu dire par là, mais je suis à peu près sûr que je pourrai retourner à la pierre si j'ai besoin de nouveaux indices.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~"Je ne peux pas rester, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~"Tsss ! Je suis au-delà du savoir, à l'endroit de la Dame. Maintenant silence et écoute, car il y a tant à faire - pour me trouver, trois choses tu feras : trouve la porte, découvre la clé, et *libère* la clé."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~"La porte ?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~"La porte ?"~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~"La clé ?"~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~"Libérer la clé ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~"La porte n'est pas une chose finie… du moins, elle ne l'était pas la dernière fois que je l'ai vue, hmnnn ? Mais avec le temps passé, peut-être est-elle entièrement forgée. Va aux forges et à l'acier, et peut-être là-bas trouveras-tu la porte qui mène à moi…"~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~"Ravel, je sais que cette clé est un morceau de toi, mais je ne sais pas comment la trouver -"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~"Quelle est la clé dont tu parles ?"~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~"Libérer la clé ? Que veux-tu dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~"La porte est une chose finie et tu la portes sur toi… très bien, très *astucieux*, mon précieux homme… une partie de Ravel tu as trouvée…"~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~"Ravel, je sais que cette clé est un morceau de toi, mais je ne sais pas comment la trouver… "~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~"Quelle est la clé dont tu parles ?"~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~"Libérer la clé ? Que veux-tu dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~"Pour CONNAÎTRE la clé, parle à l'un de ceux qui savent - ils sont nombreux dans la Salle des Fêtes, *nombreux* - et pourtant UN seul d'entre eux sait ce qu'est la clé dont tu as besoin. Délie sa langue et les secrets se déverseront…"~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~"Ravel, je sais que cette clé est un morceau de toi, mais je ne sais pas comment la trouver -"~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~"De quelle porte parles-tu ?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~"De quelle porte parles-tu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~"Quand tu parles de libérer la clé, que veux-tu dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~"La clé fait partie DE moi, n'est-ce pas…? Eh…" La guenaude siffle, comme pour essayer de se concentrer, et ta vision se trouble à nouveau. "Pas une image, pas une histoire, pas une pierre, mais la clé fait partie de MOI, le produit de ma chair et de mon sang. Cherche-la ! Elle *vit*…"~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~"De quelle porte parles-tu ?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~"De quelle porte parles-tu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~"Quand tu parles de libérer la clé, que veux-tu dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~"La connaissance de la clé ne suffit pas, ainsi pense Ravel. La connaître et la libérer, deux tâches qui doivent être jointes… car parfois, une chose ne connaît pas sa nature… mais cela ne t'est pas étranger…" Ravel pousse un long cri qui emplit tes oreilles de douleur…~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~"De quelle porte parles-tu ?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~"De quelle porte parles-tu ?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~"Ravel, je sais que cette clé est un morceau de toi, mais je ne sais pas comment la trouver -"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~"Quelle est la clé dont tu parles ?"~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~"Ravel… comment se fait-il que je te parle, s'il s'agit de l'expérience de quelqu'un d'autre ?"~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~"Reviens - je te donnerai toute l'aide possible…" Ravel sourit une dernière fois, une horrible grimace aux chicots jaunes. Une langue noirâtre sort de sa bouche et s'égare sur ses lèvres. "Mais finalement, seule une question subsiste…"~ */
  IF ~~ THEN REPLY #53094 /* ~"Que veux-tu dire, Ravel ?"~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Laisse l'expérience se dissiper…~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~"Une seule question, que je pose…" Les yeux de Ravel brûlent comme des brasiers, la lumière donnant un aspect rouge sanglant à son visage. "Qu'est-ce qui peut changer la nature d'un homme ?"~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~Tandis qu'elle pose la question, tu sens un tremblement te parcourir, comme le tonnerre et tu te sens *brûler*…~ */
  IF ~~ THEN REPLY #53099 /* ~Laisse l'expérience se dissiper…~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~"Des pierres et expériences Ravel parlera, mais pas de la manière dont elle te parle maintenant." Elle parle d'une voix apaisante. "Les tours et détours de Ravel sont nombreux, et beaucoup sont ses *secrets*. J'ai besoin de toi et j'ai besoin que tu le saches."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~"De quelle porte parles-tu ?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~"De quelle porte parles-tu ?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~"Ravel, je sais que cette clé est un morceau de toi, mais je ne sais pas comment la trouver -"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~"Quelle est la clé dont tu parles ?"~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~"Quand tu parles de libérer la clé, que veux-tu dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~"Au revoir, Ravel…"~ */ GOTO 19
END
