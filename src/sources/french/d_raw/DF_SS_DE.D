// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_DE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_DE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51731 /* ~La base de cette pierre bleue turquoise a été taillée de manière à laisser croire qu'elle a été moulée dans le socle sur lequel elle repose. Des larmes d'azur de forme parfaite gouttent sur les côtés, encadrant l'inscription située sous le socle : 'Désir ardent'.~ */
  IF ~~ THEN REPLY #51732 /* ~Laisse les sensations affluer.~ */ GOTO 1
  IF ~~ THEN REPLY #52857 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52858 /* ~Lorsque tu places tes mains sur la pierre, sa surface ondule sous tes doigts. Un frisson parcourt tes bras, comme si tu plongeais tes mains dans une source de montagne.~ */
  IF ~~ THEN REPLY #52859 /* ~Ferme les yeux, immerge-toi dans l'expérience…~ */ GOTO 2
  IF ~~ THEN REPLY #52860 /* ~Repousse l'expérience, lâche la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #52861 /* ~Tu fermes les yeux, tu les clignes et tu les rouvres - ils débordent de larmes, et tu es submergé par une sensation de *noyade*. Tandis que cette sensation t'envahit, quelque chose te tiraille la poitrine, une *faim*, aussi empoisonnée qu'un serpent, te MORDANT le cœur, jusqu'à ce que tu aies l'impression que ta poitrine va *exploser*. Tu cherches désespérément à te calmer, mais tes yeux s'emplissent de larmes…~ */
  IF ~~ THEN REPLY #52862 /* ~Essuie tes larmes…~ */ GOTO 3
  IF ~~ THEN REPLY #52863 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #52864 /* ~Tu lèves la main pour essuyer les larmes - tes mains sont douces, de délicates mains de femme et elles balaient les larmes de tes joues pour les recueillir en coupe dans tes mains, chaque larme tel un joyau brillant dans la lumière…~ */
  IF ~~ THEN REPLY #52865 /* ~Tourne-toi pour examiner les lumières…~ */ GOTO 4
  IF ~~ THEN REPLY #52866 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #52867 /* ~Des chandeliers en forme de globes illuminent ton sanctuaire. Tu es venu pour faire le point, pour réfléchir au passé en gardant un œil sur le futur, pour faire le vide avant ton prochain voyage. Et pourtant… tu ne peux pas te *concentrer* ! Tes pensées te ramènent au présent, dans lequel tu es prisonnier de cette terrible sensation qui te tiraille la poitrine. Qu'a-t-il voulu DIRE… ?!~ */
  IF ~~ THEN REPLY #52868 /* ~Ferme les yeux, soupire…~ */ GOTO 5
  IF ~~ THEN REPLY #52869 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #52870 /* ~Tu fermes les yeux, mais ses paroles résonnent en toi, une centaine, un MILLIER de fois. Reviendra-t-il JAMAIS ?! Le bruit est un murmure, un écho : "Toi seule. Toi SEULE." Pourtant, tu as HÉSITÉ aux portes du temps et tu dois avoir pensé que tu avais PEUR de partir, mais ce n'était pas le cas, tu avais PEUR de rester et la peur… le serpent se tord à nouveau dans ta poitrine, ses crocs mordent ton cœur et le remplissent de *poison*, à tel point qu'il est prêt à éclater. Les larmes remontent, courant sur tes joues comme des ruisseaux, et ses paroles résonnent…~ */
  IF ~~ THEN REPLY #52871 /* ~Écho : "Toi seule. Toi SEULE."~ */ DO ~SetGlobal("Sensory_Deionarra","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #52872 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #52873 /* ~Tes yeux s'ouvrent brusquement - c'est SA voix ! Tu as la tête qui tourne, tu reprends ton souffle. Il se dresse, puissant, dans l'ombre ; il marche à grands pas vers la lumière et tu sens le serpent se tordre et MOURIR… Il est revenu ! Son visage est sévère, mais tu crois discerner le plaisir de te revoir sur ses traits. Après tout, il est revenu pour t-~ */
  IF ~~ THEN REPLY #52874 /* ~Écho : "Toi seule peut m'aider, Deionarra. Mais je n'aurais pas dû demander ton aide…"~ */ GOTO 7
  IF ~~ THEN REPLY #52875 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52876 /* ~Tu parles… Deionarra… et pourtant toi, c'est TOI, la peau grisâtre comme celle d'une statue, marchant dans la lumière - es-tu si *balafré* que ça ? Ton corps semble avoir été baigné dans des lames de couteaux, avec ses blessures, ses tatouages horribles - pourtant, tu vois à travers les YEUX DE DEIONARRA et elle voit… comment peut-elle te voir dans un tel état, elle met un MANTEAU sur tes traits, elle te voit sous un tel *angle*, sous un tel *angle* rempli d'envie… car elle… comment… peut-elle SENTIR une telle… ?~ */
  IF ~~ THEN REPLY #52877 /* ~Essaie de te concentrer, cramponne-toi, raccroche-toi à l'expérience…~ */ GOTO 8
  IF ~~ THEN REPLY #52878 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #52879 /* ~Tu sens ta vision se déchirer, se diviser, jusqu'à ce que tu sois cet homme qui marche dans la lumière, c'est TOI, mais ce n'est PAS toi… tu te sens DÉCHIRÉ. C'est l'expérience de Deionarra, mais c'est en même temps la *tienne*, et tu… que…~ */
  IF ~~ THEN REPLY #52880 /* ~Écho : "Il était inconsidéré de ma part de te demander de m'accompagner, Deionarra. Je n'ai pas le droit de te mettre en danger pour moi…"~ */ GOTO 9
  IF ~~ THEN REPLY #52881 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #52882 /* ~Ce sont tes paroles, mais ce sont les paroles d'un chirurgien, choisies avec une froide habileté, sans une TRACE d'émotion. À chaque mot, tu RICANES secrètement, car tu sais que ce que les yeux (teintés d'envie) de la fille (paniquée) verront, et qui elle verra - et es-tu CETTE personne, cet homme qui la FROISSE par ses paroles, ne SACHANT pas combien elles sont puissantes, comme des boulets d'une catapulte, qui lui percent la poitrine, le… pourtant elle n'ÉPROUVE que du SOULAGEMENT à ton retour. Comment… comment peut-elle RESSENTIR… et ne pas savoir que tu veux… ?~ */
  IF ~~ THEN REPLY #52883 /* ~Écho : "Je suis venu te demander pardon, Deionarra. Je reviendrai dès que je le pourrai -"~ */ GOTO 10
  IF ~~ THEN REPLY #52884 /* ~Reprends tes esprits.~ */ GOTO 35
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #52885 /* ~Ta vision se déchire à nouveau, se divise et saigne, jusqu'à ce que tu te retrouves face à toi-même et que tu essaies désespérément de parler, d'AVERTIR Deionarra que ce n'est pas un homme, mais une créature qui tue selon ses besoins, il ne se SOUCIE pas de toi, Deionarra, tu es un OUTIL pour lui, un OUTIL dont il a besoin pour - mais Deionarra parle et tu ne peux pas l'ARRÊTER….~ */
  IF ~~ THEN REPLY #52886 /* ~Écho : "Je ferais face à *mille* dangers, me vouerais à l'éternité pour toi, mon amour ! Je n'ai *pas* peur ! Écoute-moi - je t'accompagnerai, même si les plans eux-mêmes devaient nous barr-"~ */ GOTO 11
  IF ~~ THEN REPLY #52887 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52888 /* ~"… même si les plans eux-mêmes devaient nous barrer la route…" Tu te sens bouleversé, de soulagement et de satisfaction - la SATISFACTION provoquée par ses paroles, SACHANT qu'elle les dirait, SACHANT toujours et la confession de son amour est comme une herse sur ton cœur. Prise au piège. Elle est à toi, mais il faut que tu en sois *certain*, alors tu continues.~ */
  IF ~~ THEN REPLY #52889 /* ~Écho : "Cette voie est dangereuse. Il te faudra être forte… *beaucoup* plus forte que tu ne l'es actuellement."~ */ GOTO 12
  IF ~~ THEN REPLY #52890 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52891 /* ~La vague de soulagement parcourt son esprit, la fin du désir, mais le DÉSIR envers lui plus qu'envers ses paroles, sans remarquer ses manipulations… il faut que tu sois forte pour que son chemin et le tien n'en fassent qu'un ! Tes pensées sont comme des brasiers… car tu peux être forte, plus forte qu'il ne le devine, tu ne connais pas la peur, tu MOURRAIS pour lui… !~ */
  IF ~~ THEN REPLY #52892 /* ~Écho : "Je peux être forte, mon Amour. Je peux -"~ */ GOTO 13
  IF ~~ THEN REPLY #52893 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #52894 /* ~Ses paroles glissent sur lui comme de l'eau. Le serpent dans sa poitrine, celui qui lui perce le cœur de son poison a été remplacé par ce serpent dans sa chair. Elle ne se doute de rien, et ce qu'il dit est planifié avec attention, beaucoup d'attention…~ */
  IF ~~ THEN REPLY #52895 /* ~Écho : "Je ne peux pas dire avec certitude que nous réussirons, Deionarra, mais je ferai de mon mieux pour te protéger. Et je n'en attendrai pas moins de toi. Tu…"~ */ GOTO 14
  IF ~~ THEN REPLY #52896 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #52897 /* ~"… tu seras peut-être amené à faire quelques *sacrifices*." Au son de ce dernier mot, tu te sens DÉCHIRÉE. Il lui veut du mal… Il TE veut du mal, car tu es ELLE, et il veut lui faire du MAL, et pourtant tu as BESOIN qu'elle soit blessée et - tu veux CRIER, LUI CRIER QU'ELLE EST EN DANGER, COURS, COURS, DEIONARRA, CAR SES YEUX DÉFONT TOUTE CHOSE ET -~ */
  IF ~~ THEN REPLY #52898 /* ~Écho : "Bien sûr, mon Amour. La vie est un sacrifice. J'ai appris cette leçon."~ */ GOTO 15
  IF ~~ THEN REPLY #52899 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #52909 /* ~Toi… elle… elle… tu prononces ces mots, et tu te sens mourir à l'intérieur. Tu es un spectateur, et tu as regardé une femme mourir, car les mots sont une sentence de mort. Et pourtant, elle continue, continue à parler, obstinée, têtue…~ */
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52910 /* ~Écho : "J'ai… laissé un testament dans le coffre de mon père, mon Amour. Le six, le trois, le K et le S te permettront de l'ouvrir. Il est écrit que je te lègue tout. Ce n'est pas beaucoup, mais j'ai aussi laissé…"~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52913 /* ~J'ai assisté aux derniers jours de Deionarra dans l'une des pierres sensorielles du sensorium privé de la Salle des Fêtes. Elle m'y dit - ou du moins, elle dit à celui qui se trouve dans la scène avec elle - qu'elle m'a légué quelque chose. Cela me sera peut-être utile.~ */ GOTO 16
  IF ~  GlobalGT("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52911 /* ~Écho : "J'ai… laissé un testament dans le coffre de mon père, mon Amour. Le six, le trois, le K et le S te permettront de l'ouvrir. Il est écrit que je te lègue tout. Ce n'est pas beaucoup, mais j'ai aussi laissé…"~ */ GOTO 16
  IF ~~ THEN REPLY #52912 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #52914 /* ~Tu… il… une vague *d'irritation* déferle sur toi. Tu serres les dents pour empêcher l'irritation de s'emparer de tes traits. Doit-elle *toujours* continuer à babiller, même lorsque tu ne l'y *invites* pas ?! Doit-elle - mais non - non, garde ton irritation pour toi, seule une trace s'échappe…~ */
  IF ~~ THEN REPLY #52915 /* ~Écho : "Maintenant, viens, je ne peux pas MOURIR, Deionarra. Ces idioties ne sont pas NÉCESSAIRES…"~ */ GOTO 17
  IF ~~ THEN REPLY #52916 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #52917 /* ~Elle… tu … elle est submergée de PEUR, une peur qui te dégoûte, et la peur monte en elle… toi, toi tandis que tu te regardes froncer les sourcils, et tu te hâtes de le corriger ! Il doit connaître les raisons et connaître la sagesse qui se cache derrière, et il est impressionné par tes plans ! Parle ! Parle, avant qu'il ne se retourne…~ */
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52918 /* ~Écho : "Je sais que j'agis souvent stupidement, mon Amour… mais tu dis toi-même qu'on PEUT oublier des choses lorsqu'on est gravement blessé. Il y a des choses dans le testament qui t'aideront à te souvenir de toi, si d'aventure tu t'oubliais."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52922 /* ~Quand, dans cette scène préservée par la pierre sensorielle, Deionarra m'a suggéré de laisser un legs derrière moi, cela m'a rappelé ma dernière incarnation. Il n'est pas impossible que l'homme que j'étais se soit légué quelque chose à lui-même, par précaution. Si je parviens à retrouver le numéro de dépôt, je pourrai peut-être le récupérer.~ */ GOTO 18
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
GlobalGT("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52919 /* ~Écho : "Je sais que j'agis souvent stupidement, mon Amour… mais tu dis toi-même qu'on PEUT oublier des choses lorsqu'on est gravement blessé. Il y a des choses dans le testament qui t'aideront à te souvenir de toi, si d'aventure tu t'oubliais."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52923 /* ~Quand, dans cette scène préservée par la pierre sensorielle, Deionarra m'a suggéré de laisser un legs derrière moi, cela m'a rappelé ma dernière incarnation. C'est cette sensation qui a incité l'homme que j'étais à se léguer quelque chose à lui-même, par précaution.~ */ GOTO 18
  IF ~  GlobalGT("Memory_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52920 /* ~Écho : "Je sais que j'agis souvent stupidement, mon Amour… mais tu dis toi-même qu'on PEUT oublier des choses lorsqu'on est gravement blessé. Il y a des choses dans le testament qui t'aideront à te souvenir de toi, si d'aventure tu t'oubliais."~ */ GOTO 18
  IF ~~ THEN REPLY #52921 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1 17.2
  SAY #52924 /* ~Elle… tu la regardes froidement. Ton regard parcourt son front ridé, strié par le souci, le désespoir. Elle a agi comme tu t'y *attendais*… et pourtant il y a quelque chose dans ce qu'elle dit…~ */
  IF ~~ THEN REPLY #52925 /* ~Écho : "Peut-être… j'espère pourtant que ce testament ne contient rien de *valeur*… Je ne voudrais pas laisser quelque chose dans ce coffre qui puisse nous être d'une certaine utilité dans notre voyage."~ */ GOTO 19
  IF ~~ THEN REPLY #52926 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #52927 /* ~Son illusion est détruite l'espace d'un instant - tu observes, silencieux, tandis que l'émotion s'abat sur le sol, et se brise en éclats, comme du verre argenté. "… d'une certaine utilité…" une déclaration si ordinaire, et pourtant Deionarra VOIT, et tu espères, l'espace d'un instant, tu ESPÈRES qu'elle le VOIT tel qu'il est… le serpent, le SERPENT…~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #52928 /* ~… et ton espoir meurt, alors que dans les yeux de Deionnara, l'émotion revient, les éclats répandus au sol se rassemblent, l'illusion se reforme, mais le léger morceau de douleur reste. Il pense que tu as fait quelque chose de complètement stupide ! Pourtant, tu l'as fait pour LUI ! Tu dois… tu dois te faire pardonner, mais comment ?! Tu dois le convaincre que l'héritage n'a aucune importance, mais ce n'est PAS le cas, ce n'est PAS le cas. Il représente TOUT…~ */
  IF ~~ THEN REPLY #52929 /* ~Écho : "Le testament, mon Amour, il… il contient juste quelques petites choses pour t'aider à te souven-"~ */ GOTO 21
  IF ~~ THEN REPLY #52930 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #52931 /* ~Le mensonge tombe sur Deionarra, si rapide, si acéré, que tu n'arrives pas à suivre sa trajectoire déviée.~ */
  IF ~~ THEN REPLY #52932 /* ~Écho : "Un testament ? Les choses que tu fais, Deionarra… ces… gestes *romantiques*. Sans importance…"~ */ GOTO 22
  IF ~~ THEN REPLY #52933 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #52934 /* ~Non ! Elle… tu… Deionarra… tu l'as écarté, comme la nuit précédente ! Tu sens le serpent remuer à nouveau, renaitre et s'enrouler autour de ton cœur. Le plus doux des sifflements se fait entendre, et pourtant il n'entend pas…~ */
  IF ~~ THEN REPLY #52935 /* ~Écho : "Veux-tu… veux-tu laisser un testament, mon Amour ? Pour toi ou pour qui que ce soit. Il pourrait t'aider à te souvenir, au cas où tu aurais laissé quelque chose pour toi-même… ou pour ceux que tu as aimés…"~ */ GOTO 23
  IF ~~ THEN REPLY #52936 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #52937 /* ~Le mensonge s'abat à nouveau, rapide et terrible. Pourtant cette fois, l'illusion tient et le serpent reste caché. Le serpent est rusé et il ne révèle pas sa présence avant de frapper.~ */
  IF ~~ THEN REPLY #52938 /* ~Écho : "Un testament pour moi-même ? Peu probable… les choses que je voudrais laisser pour moi-même ne seraient pas en sécurité dans les bureaux d'un avocat, Deionarra. Mais suffit… je dois partir."~ */ GOTO 24
  IF ~~ THEN REPLY #52939 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #52940 /* ~Il s'en va ! Tu dois le faire rester… et l'expérience TOURBILLONNE autour de toi, terrible, tournant vers la scène finale… la QUESTION que tu… qu'elle… veut poser, ne la pose pas, Deionarra ! Ne la POSE PAS RESTE SILENCIEUSE RESTE SILENCIEUSE~ */
  IF ~~ THEN REPLY #52941 /* ~Écho : "Mon Amour, avant que tu partes…"~ */ GOTO 25
  IF ~~ THEN REPLY #52942 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52943 /* ~SA COLÈRE SON IRRITATION QUOI *MAINTENANT* FILLE QUOI *MAINTENANT* ESPÈCE DE SORCIÈRE MIAULANTE.~ */
  IF ~~ THEN REPLY #52944 /* ~Écho : "'Avant que je parte' ? Je crois qu'il n'y a pas de danger que ça arrive. Viens, Deionarra, ces questions ne peuvent pas attendre jusqu'au matin ? Il y a beaucoup -"~ */ GOTO 26
  IF ~~ THEN REPLY #52945 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #52946 /* ~ELLE… TU… ELLE EST DÉSESPÉRÉE SE NOYER DIS-LE DIS-LE ET ELLE… TU… LE DIS.~ */
  IF ~~ THEN REPLY #52947 /* ~Écho : "*Veux-tu* que je vienne avec toi, mon Amour ?" ~ */ GOTO 27
  IF ~~ THEN REPLY #52948 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #52949 /* ~Le torrent d'émotions disparaît dans ton esprit. C'est la fin. Les mots qu'il… tu… t'apprêtes à prononcer sont vrais, mais la vérité n'est pas celle qu'elle voit. Il n'y a pas de mensonges, que de froids calculs. *Bien sûr* qu'il veut que tu viennes avec lui, Deionarra. Tu le comprends bien, trop bien : il a trop investi dans la pauvre fille pour la laisser partir.~ */
  IF ~~ THEN REPLY #52950 /* ~Écho : "Bien sûr, Deionarra. Je ne t'aurais pas demandé de venir avec moi si je ne souhaitais pas ta compagnie. Tu *connais* mes sentiments à ton égard…"~ */ GOTO 28
  IF ~~ THEN REPLY #52951 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #52952 /* ~Un froid silence s'installe dans son esprit, puis le sifflement d'une pensée, une réponse mortelle et acérée, telle la lame d'une dague. Le mensonge vient doucement, libéré par l'émotion.~ */
  IF ~~ THEN REPLY #52953 /* ~Écho : "Je t'aime, Deionarra."~ */ GOTO 29
  IF ~~ THEN REPLY #52954 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #52955 /* ~Et tu veux CRIER tandis que tu sens le mensonge se déverser sur elle en IRRADIANT, mais c'est L'OMBRE DE LA VÉRITÉ, UN BAISER DE SERPENT, ET IL TE VEUT DU MAL ET ELLE NE PEUT PAS *VOIR* TU VEUX APPELER MAIS ELLE PLEURE DE JOIE MÊME LORSQUE - MÊME LORSQUE -~ */
  IF ~~ THEN REPLY #52956 /* ~Pleure de joie… de frustration… de joie… de désespoir…~ */ GOTO 30
  IF ~~ THEN REPLY #52957 /* ~Arrache-toi à l'expérience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #52958 /* ~L'émotion t'envahit et tu te noies, tu te NOIES et tu as besoin de parler, tu VEUX parler, mais tu ne peux pas… et…~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #52959 /* ~Arrache-toi à l'expérience.~ */ GOTO 32
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52960 /* ~Arrache-toi à l'expérience.~ */ GOTO 31
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52961 /* ~Arrache-toi à l'expérience.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #52962 /* ~… et tu cries, tu cries tandis que tu arraches tes mains de la pierre, des larmes de sang ruisselant de tes yeux, s'écoulant en torrents le long de tes bras, tes mains, pour couvrir la pierre. Du sang ! Son sang ! Et… tu ne peux pas l'AVERTIR… et tu ne peux pas t'empêcher de PLEURER…~ */
  IF ~~ THEN EXTERN ~DANNAH~ 260
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52963 /* ~… et tu cries, tu cries tandis que tu arraches tes mains de la pierre, des larmes de sang ruisselant de tes yeux, s'écoulant en torrents le long de tes bras, tes mains, pour couvrir la pierre. Du sang ! Son sang ! Et… tu ne peux pas l'AVERTIR… et tu ne peux pas t'empêcher de PLEURER…~ */
  IF ~~ THEN EXTERN ~DGRACE~ 165
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #52964 /* ~… et tu cries, tu cries tandis que tu arraches tes mains de la pierre, des larmes de sang ruisselant de tes yeux, s'écoulant en torrents le long de tes bras, tes mains, pour couvrir la pierre. Du sang ! Son sang ! Et… tu ne peux pas l'AVERTIR… et tu ne peux pas t'empêcher de PLEURER…~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52965 /* ~Essaie de retrouver tes esprits…~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52966 /* ~Essaie de retrouver tes esprits…~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #52967 /* ~Bien que tu veuilles te débarrasser du souvenir de l'expérience, tu le retiens, car tu sais qu'il est important de se souvenir. C'était *toi* qui étais dans cette expérience… C'était l'expérience de Deionarra, parce que c'était toi, les souvenirs t'ont assailli, et tu as pu RESSENTIR les sentiments des deux. Qui ÉTAIS-tu ? Qui était cette… cette *ombre* de toi ?~ */
  IF ~~ THEN REPLY #52968 /* ~Détourne-toi de la pierre, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.2 16.1 17.3 18.1 20.1 21.1 22.1 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #52969 /* ~Tu t'arraches à l'expérience, mais tu le fais avec effort - tu te sens comme si tu nageais dans un océan, que tu luttais, *combattais* pour atteindre la surface. Tu inspires profondément, ton esprit s'éclaircit, et une fois de plus, tu te retrouves face à la pierre bleu azur à la surface froide et immobile.~ */
  IF ~~ THEN REPLY #52970 /* ~Détourne-toi de la pierre, pars.~ */ EXIT
END
