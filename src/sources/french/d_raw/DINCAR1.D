// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR1~

IF ~~ THEN BEGIN 0 // from:
  SAY #52677 /* ~"*Enfin*. J'ai cru que j'allais encore mourir à attendre qu'il se lève."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59897 /* ~"Prends garde au *ton* sur lequel tu me parles, pauvre fou. Il a eu de la chance d'arriver ici malgré tous les pièges que *tu* as disséminés dans les plans. Je te le jure, si j'avais pu franchir l'océan des siècles pour abréger tes *souffrances*, je l'au… "~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #62914 /* ~"Par les enfers, il a perdu la mémoire ! Malédiction ! Il ne nous est plus d'aucune utilité maintenant !"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 2
END

IF ~~ THEN BEGIN 3 // from:
  SAY #62915 /* ~"J'en ai assez de tes lamentations ! Fais silence, ou -"~ */
  IF ~~ THEN EXTERN ~DINCAR3~ 3
END

IF ~~ THEN BEGIN 4 // from:
  SAY #62916 /* ~"Le temps nous est désormais compté. Je refuse de rester là à perdre mon temps pendant que notre ennemi est sans nul doute en train de nous traquer. Nous avons assez attendu qu'il s'éveille - je vais lui parler *maintenant*."~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("1203cut2",FALSE)
~ EXIT
END

IF ~  Global("Practical_Incarnation","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #62917 /* ~L'individu qui se tient devant toi te ressemble mais son apparence évoque plus l'incarnation d'une force qu'un homme. Il te regarde attentivement et, tandis que tu l'examines, tu sens qu'il t'étudie aussi. "Ainsi… voici ce qu'il en est." ~ */
  IF ~~ THEN REPLY #62918 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Practical_Incarnation","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #62919 /* ~"Je ne t'abandonnerai pas mon nom, pas plus qu'à aucun autre homme." Sa voix est rauque, comme la tienne, et elle résonne étrangement à tes oreilles. "Quant à savoir 'qui je suis', c'est toi qui devrais te poser cette question - tu es une de *mes* incarnations. Ce sont mes indices qui t'ont permis de parvenir jusqu'ici. "~ */
  IF ~~ THEN REPLY #62920 /* ~"Nous - nous sommes des incarnations distinctes ? Comment cela est-il possible ?"~ */ DO ~SetAnimState("Incar1",ANIM_MIMESTAND)
~ GOTO 8
END

IF ~  Global("Practical_Incarnation","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #62921 /* ~Tandis que tu approches, l'incarnation te dévisage d'un regard froid. Il semble qu'elle cherche à découvrir tes faiblesses.~ */
  IF ~~ THEN REPLY #62922 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #62923 /* ~"Si tu es une partie de moi, il y a des choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #62924 /* ~Laisse l'incarnation tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #62925 /* ~Pendant un moment, l'incarnation reste silencieuse, puis, l'expression de son visage change pour ne plus exprimer que du mépris. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #62926 /* ~"S'il y a quelque chose en toi que je hais, ce sont tes innombrables questions - ta soif désespérée de réponses." Sa voix est comme un couperet et la colère déforme ses traits. "Le temps des questions est révolu. Tu vas maintenant *m'écouter*. Je fus le premier à pénétrer dans cette Forteresse et ce qui nous y attend a réussi à me vaincre. Mais je ne serai pas défait une seconde fois. "~ */
  IF ~~ THEN REPLY #62927 /* ~"Tu… sembles avoir l'intention d'affronter ce qui se terre ici."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #62928 /* ~L'homme te jette un étrange regard avant de t'étudier. "Naturellement. C'est la seule raison pour laquelle nous avons cet entretien. J'ai besoin de toi pour être l'enveloppe mais ton esprit doit être *mon* esprit. M'as-tu bien compris ?"~ */
  IF ~~ THEN REPLY #62929 /* ~"Tu veux dire que tu as l'intention de me posséder ?"~ */ JOURNAL #68253 /* ~Après avoir touché le cristal, je me suis retrouvé dans une pièce close, entouré d'incarnations de moi-même. L'une d'elles, celle dotée d'un grand sens pratique, m'a dit qu'un seul d'entre nous pourrait quitter la pièce. Elle a ajouté que nous devrions donc tous fusionner, à moins que l'un de nous ne parvienne à tuer les trois autres. Il faut que je réfléchisse à la question. Peut-être ai-je intérêt à discuter avec les autres incarnations.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 20.24
  SAY #62930 /* ~"Oui." Son regard s'égare sur les murs couverts de piques, puis se fixe de nouveau sur toi. "Nous ne pouvons quitter ce lieu tous les deux. Seul l'un d'entre nous le peut."~ */
  IF ~  !Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62931 /* ~"Comment allons-nous ne plus faire qu'un ?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68457 /* ~"De quoi parles-tu ?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Deionarra","GLOBAL",0)
~ THEN REPLY #68504 /* ~"De quoi parles-tu ?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
  IF ~  !Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #68505 /* ~"Comment proposes-tu que nous procédions ?"~ */ DO ~SetGlobal("Know_Merge","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2 11.3 20.23
  SAY #62932 /* ~"Ton esprit doit s'abandonner au mien - tes connaissances et tes talents : le peu que tu as réussi à accumuler au cours de ta vie peut s'avérer utile." Il te jauge encore une fois du regard. "Cela ne sera qu'une fraction de mon pouvoir, mais cela pourra peut-être m'aider."~ */
  IF ~~ THEN REPLY #62933 /* ~"Et si je décide de ne pas t'abandonner ma volonté ?"~ */ GOTO 13
  IF ~~ THEN REPLY #62934 /* ~"Comment puis-je t'abandonner ma volonté ?"~ */ GOTO 16
  IF ~~ THEN REPLY #62935 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62936 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62937 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 18.2
  SAY #62938 /* ~"Tu n'as pas le choix. Tu ignores comment s'échapper d'ici. Je sais. Si tu te refuses à moi, je me refuserai à toi - et aucun d'entre nous ne pourra quitter ce lieu. Seul l'un de nous deux peut partir et ce ne sera *pas* toi."~ */
  IF ~~ THEN REPLY #62939 /* ~"Je pourrais te *tuer*."~ */ GOTO 14
  IF ~~ THEN REPLY #62940 /* ~"Comment puis-je t'abandonner ma volonté ?"~ */ GOTO 16
  IF ~~ THEN REPLY #62941 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62942 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62943 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #62944 /* ~"Tu peux essayer." L'homme semble amusé. "Tu n'as pas le pouvoir de me vaincre, ni la volonté de me forcer à me fondre en toi. Je préfèrerais ne pas avoir à te tuer pour m'enfuir, mais c'est un bien petit prix pour notre liberté. Il serait stupide que l'un de nous meure, alors qu'en fusionnant, je serais plus fort."~ */
  IF ~~ THEN REPLY #62945 /* ~"Pourquoi ne fusionnerais-tu pas avec moi ?"~ */ GOTO 15
  IF ~~ THEN REPLY #62946 /* ~"Comment puis-je t'abandonner ma volonté ?"~ */ GOTO 16
  IF ~~ THEN REPLY #62947 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62948 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62949 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #62950 /* ~"Avec toi ?" Il émet un petit rire, presque semblable à un aboiement. "Parce qu'il n'y a rien à y gagner. Tu as vécu une fraction de la vie que j'ai eue. Je ne confierai pas mon esprit à un néophyte tel que toi."~ */
  IF ~~ THEN REPLY #62951 /* ~"Comment puis-je t'abandonner ma volonté ?"~ */ GOTO 16
  IF ~~ THEN REPLY #62952 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62953 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62954 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 13.1 14.1 15.0
  SAY #62955 /* ~"En termes simples, nous nous regardons droit dans les yeux et tu t'abandonnes. Tu fusionneras avec moi et nous ne formerons plus qu'un être dominé par mon esprit."~ */
  IF ~~ THEN REPLY #62956 /* ~Vérité : "Très bien… Je vais t'abandonner ma volonté."~ */ GOTO 47
  IF ~~ THEN REPLY #62957 /* ~Bluff : "Très bien.. Je vais t'abandonner ma volonté."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62958 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62959 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62960 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 13.2 14.2 15.1 16.2 18.1
  SAY #62961 /* ~L'homme fronce les sourcils. "J'ai été surpris. Et je n'avais pas prévu d'être séparé de mes compagnons dès mon arrivée… ce qui s'est passé après… est assez confus."~ */
  IF ~~ THEN REPLY #62962 /* ~"Ainsi, même si je m'abandonnais à toi, nous pourrions tout de même échouer ?"~ */ GOTO 18
  IF ~~ THEN REPLY #62963 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62964 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #62965 /* ~"Peu probable. Je suis le seul ayant les connaissances pour réussir - cet instant est le fruit de siècles de préparation. Beaucoup ont souffert et sont morts pour que nous soyons ici… leur sacrifice ne doit pas être vain." Cette dernière phrase te trouble - il n'y a aucune émotion dans ces mots comme s'ils faisaient partie d'un discours.~ */
  IF ~~ THEN REPLY #62966 /* ~"Je ne te crois pas et je ne t'abandonnerai pas ma volonté."~ */ GOTO 19
  IF ~~ THEN REPLY #62967 /* ~"Pourtant, tu es déjà venu ici auparavant… et tu as été vaincu."~ */ GOTO 17
  IF ~~ THEN REPLY #62968 /* ~"Et pourquoi devrais-je te laisser me posséder ?"~ */ GOTO 13
  IF ~~ THEN REPLY #62969 /* ~"Si tu es une de mes incarnations, j'ai des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #62970 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #62971 /* ~"Nous voici en plein dilemme. Je ne te dirai pas ce que je sais. Cela implique que tu ne quitteras jamais cette prison et que nous ne pourrons jamais trouver et vaincre celui qui nous a assassinés." La voix de l'homme se fait plus douce. "Cependant, si tu fusionnes avec moi, non seulement nous pourrons fuir mais nous serons dotés de toutes mes connaissances. Nous trouverons cet ennemi que je vaincrai et, enfin, nous connaîtrons la paix."~ */
  IF ~~ THEN REPLY #62972 /* ~Vérité : "Très bien, j'accepte."~ */ GOTO 47
  IF ~~ THEN REPLY #62973 /* ~Bluff : "Très bien, j'accepte."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #62974 /* ~"Je vais y réfléchir. D'abord, il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #62975 /* ~"Laisse-moi d'abord me remettre, après nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.1 12.3 13.3 14.3 15.2 16.3 17.1 18.3 19.2 22.1 23.1 24.0 25.3 26.1 27.1 28.0 29.2 31.2 32.2 33.2 34.0 35.1 36.0 37.0 38.1 39.1 40.0 41.0 42.0 43.0 44.1 45.1 51.1 58.0 59.0 60.0 61.3 62.3 63.2 66.2 69.2 70.4 72.3 73.2 74.3
  SAY #62976 /* ~"Je te le permets - mais uniquement pendant un moment."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62977 /* ~"Tu es celui qui a sauvé Dak'kon à Shra'kt'lor. Celui qui a emprisonné Vhailor. Et celui qui a provoqué la mort de Deionarra."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62978 /* ~"Tu es celui qui a sauvé Dak'kon à Shra'kt'lor. Celui qui a emprisonné Vhailor."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #62982 /* ~"Tu es celui qui a sauvé Dak'kon à Shra'kt'lor. Et celui qui a provoqué la mort de Deionarra."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62983 /* ~"Tu es celui qui a emprisonné Vhailor. Et celui qui a provoqué la mort de Deionarra."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
!Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62984 /* ~"Tu es celui qui a sauvé Dak'kon à Shra'kt'lor."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  !Global("Dakkon_Circle","GLOBAL",1)
!GlobalGT("Deionarra","GLOBAL",0)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62985 /* ~"Tu es celui qui a emprisonné Vhailor sous Maudith."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #62986 /* ~"Tu es celui qui a provoqué la mort de Deionarra."~ */ DO ~SetGlobal("Confront_Practical_Incarnation","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62987 /* ~"Tu as donné à Dak'kon le Cercle Ininterrompu de Zerthimon. Pourquoi ?"~ */ GOTO 22
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62988 /* ~"Pourquoi as-tu sauvé Dak'kon à Shra'kt'lor ?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62989 /* ~"Tu as sauvé Dak'kon à Shra'kt'lor à cause de son épée. Pourquoi ?"~ */ GOTO 24
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62990 /* ~"Pourquoi as-tu emprisonné Vhailor ?"~ */ GOTO 25
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62991 /* ~"Pourquoi Deionarra devait-elle mourir ?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #62992 /* ~"Pourquoi Deionarra devait-elle mourir ?"~ */ GOTO 29
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #62993 /* ~"Parle-moi de Xachariah."~ */ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Dakkon_Old_Companions","GLOBAL",1)
Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #62994 /* ~"Qu'est-il arrivé à l'archer qui s'est rendu dans la Forteresse ?"~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62995 /* ~"Est-ce toi qui a enseigné l'Art à Ignus ?"~ */ GOTO 41
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
~ THEN REPLY #62996 /* ~"Tu as construit cette tombe sous Sigil, n'est-ce pas ? Celle qui est pleine de pièges ?"~ */ GOTO 57
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
~ THEN REPLY #62997 /* ~"Tu as construit cette tombe sous Sigil, n'est-ce pas ? Celle qui est pleine de pièges ?"~ */ GOTO 37
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62998 /* ~"Est-ce toi qui a extrait Morte du Pilier des Crânes ?"~ */ GOTO 38
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #62999 /* ~"Qui sont ces autres personnes ?"~ */ GOTO 42
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63000 /* ~"Quelle est cette autre version de nous ?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
NearbyDialog("Dincar3")
~ THEN REPLY #63001 /* ~"Quelle est cette autre version de nous ?"~ */ GOTO 43
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
!NearbyDialog("Dincar2")
!NearbyDialog("Dincar3")
~ THEN REPLY #63002 /* ~"Qui étaient ces autres versions de nous ?"~ */ GOTO 59
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63003 /* ~"Comment puis-je m'enfuir de ce lieu ?"~ */ GOTO 12
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63004 /* ~"As-tu toujours l'intention d'affronter ce qui se terre ici ?"~ */ GOTO 11
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63005 /* ~Vérité : "J'ai l'intention de fusionner avec toi."~ */ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63006 /* ~Bluff : "J'ai l'intention de fusionner avec toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63007 /* ~"Je ne fusionnerai pas avec toi - c'est toi qui fusionneras avec moi."~ */ GOTO 44
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63008 /* ~"Es-tu à l'origine des tatouages sur mon dos ? Ceux que j'ai découverts en me réveillant à la Morgue."~ */ GOTO 61
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63009 /* ~"Es-tu celui qui a demandé à Pharod de s'emparer de la sphère en bronze dans les catacombes ?"~ */ GOTO 63
  IF ~  Global("Confront_Practical_Incarnation","GLOBAL",1)
~ THEN REPLY #63010 /* ~"Je n'ai plus rien à dire pour l'instant. Nous parlerons encore… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6
  SAY #63029 /* ~Les yeux de l'homme se plissent. "Et alors ? Tout ceci a été accompli pour atteindre un but."~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #63030 /* ~"Tu as donné à Dak'kon le Cercle Ininterrompu de Zerthimon. Pourquoi ?"~ */ GOTO 22
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63031 /* ~"Pourquoi as-tu sauvé Dak'kon à Shra'kt'lor ?"~ */ GOTO 24
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #63032 /* ~"Tu as sauvé Dak'kon à cause de son épée. Pourquoi ?"~ */ GOTO 24
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #63033 /* ~"Pourquoi as-tu emprisonné Vhailor ?"~ */ GOTO 25
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63034 /* ~"Pourquoi Deionarra devait-elle mourir ?"~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)
~ GOTO 29
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63035 /* ~"Pourquoi Deionarra devait-elle mourir ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 20.7 21.0
  SAY #63036 /* ~"Le Cercle Ininterrompu ? Ce ramassis de mensonges ? Oui, il a fallu une bonne semaine pour forger cette chose - il était nécessaire de la fabriquer pour qu'il cesse de douter de lui."~ */
  IF ~~ THEN REPLY #63037 /* ~"Tu l'as *fabriqué* ? Mais tu lui a dit -"~ */ GOTO 23
  IF ~~ THEN REPLY #63038 /* ~"J'aimerais savoir autre chose."~ */ GOTO 20
  IF ~~ THEN REPLY #63039 /* ~"Laisse-moi me remettre et nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #63040 /* ~"Peut-être renferment-ils une part de vérité - je l'ignore. Je sais que ces écrits étaient ennuyeux, mais ils suffisaient à lui donner la foi."~ */
  IF ~~ THEN REPLY #63041 /* ~"Pourquoi ?"~ */ GOTO 24
  IF ~~ THEN REPLY #63042 /* ~"J'aimerais savoir autre chose."~ */ GOTO 20
  IF ~~ THEN REPLY #63043 /* ~"Laisse-moi me remettre et nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.8 20.9 21.1 21.2 23.0
  SAY #63044 /* ~"Ton ignorance m'ébahit." L'homme semble incrédule. "Se peut-il que tu ignores ce qu'il tient dans sa main ? Cette lame est formée par ses *pensées*. Un tel outil, utilisé convenablement, pourrait abattre le multivers…" L'homme semble un instant perdu dans ses pensées puis son visage se déforme de dégoût. "Mais, à l'évidence, j'ai été séparé du gith quand nous sommes arrivés dans la forteresse et je n'ai pu utiliser son arme." Il fronce les sourcils. "Malheureusement."~ */
  IF ~~ THEN REPLY #63045 /* ~"J'aimerais savoir autre chose…"~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #63046 /* ~"Laisse-moi me remettre et nous reparlerons."~ */ DO ~SetGlobal("Know_Dakkon_Blade","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.10 21.3
  SAY #63047 /* ~Il secoue la tête, comme s'il était las. "Vhailor devenait… fatigant." Il affiche un sourire sans joie. "Ces chiens de Rectifieurs vous traquent eux-mêmes à travers les plans pour faire 'justice' - et Vhailor était un limier particulièrement obstiné." La voix de l'incarnation déclina légèrement. "Et il était beaucoup trop épris de justice à mon goût."~ */
  IF ~  !Dead("Incar2")
~ THEN REPLY #63048 /* ~"Pourquoi nous traquait-il ?"~ */ GOTO 26
  IF ~  Dead("Incar2")
~ THEN REPLY #63049 /* ~"Pourquoi nous traquait-il ?"~ */ GOTO 27
  IF ~~ THEN REPLY #63050 /* ~"Était-il une menace ?"~ */ GOTO 28
  IF ~~ THEN REPLY #63051 /* ~"Très bien. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63052 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63053 /* ~"Oh, pour un nombre incalculable de raisons, certaines me concernant - certaines liées à d'autres incarnations." Il lança un regard rapide à l'incarnation qui hurlait quand tu es arrivé. "De nombreuses vies ont été assombries par des incarnations à l'esprit dérangé. Certaines d'entre nous ont engendré des problèmes. Je suis partisan des solutions."~ */
  IF ~~ THEN REPLY #63054 /* ~"Était-il une menace ?"~ */ GOTO 28
  IF ~~ THEN REPLY #63055 /* ~"Très bien. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63056 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63057 /* ~"Oh, pour un nombre incalculable de raisons, certaines me concernant - certaines liées à d'autres incarnations. Comme tu as pu le constater en voyant cette épave dérangée qui était ici avec nous - de nombreuses vies ont été assombries par des incarnations à l'esprit dérangé. Certains d'entre nous ont engendré des problèmes. Je suis partisan des solutions."~ */
  IF ~~ THEN REPLY #63058 /* ~"Vhailor était-il une menace ?"~ */ GOTO 28
  IF ~~ THEN REPLY #63059 /* ~"Très bien. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63060 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.0 27.0
  SAY #63061 /* ~"Oh ! bien entendu - sinon je l'aurais simplement tué." Il hoche la tête. "Il existe une sorte de lien entre lui et la justice elle-même, et cela lui donne un certain pouvoir, même sur des immortels comme nous." L'homme sourit. "Surtout si nos injustices sont grandes… et les nôtres sont les plus noires qui soient."~ */
  IF ~~ THEN REPLY #63062 /* ~"Je vois… il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63063 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 20.11 20.12 21.4 21.5
  SAY #63064 /* ~"Deionarra ? Cette femme n'était pas très attachée aux plans et c'était ce dont j'avais besoin. Tu vois, les Hommes-Poussière le savent bien - quelquefois, quand tu te montres trop passionné, tu t'accroches trop à la vie pour abandonner. Ce qui était le cas de Deionarra - comme je l'espérais."~ */
  IF ~  NearbyDialog("Dincar2")
~ THEN EXTERN ~DINCAR2~ 43
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63065 /* ~"Pourquoi l'as-tu tuée ?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63066 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar2")
~ THEN REPLY #63068 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #63070 /* ~L'incarnation jette à peine un regard à celui qui hurle et elle se contente de ricaner. ~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63071 /* ~"Il est risible que tu me reproches tout." Il se retourne vers toi. "Ce n'était pas sans malice - bien qu'elle devenait ennuyeuse. Le fait est que, quand je suis arrivé dans la forteresse, je n'avais pas l'intention de rester. Je voulais juste entrer, la sacrifier et repartir." ~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 26
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63076 /* ~"Pourquoi l'as-tu tuée ?"~ */ GOTO 32
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63077 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63078 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 31.1
  SAY #63079 /* ~"J'avais besoin de quelqu'un qui soit mes yeux sur le plan d'Énergie Négative, un éclaireur pour découvrir qui m'avait tué. Seuls les morts peuvent survivre ici - Deionarra devait être sacrifiée pour devenir autre chose que ce qu'elle était. C'était délicat, mais cela a marché - elle t'a aidé, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #63081 /* ~"Tu n'avais pas à la tuer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Practical_1","GLOBALGood",1)
~ GOTO 33
  IF ~~ THEN REPLY #63082 /* ~"Oui. C'était peut-être ce qu'il fallait faire."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Practical_1","GLOBALGood",-2)
~ GOTO 60
  IF ~~ THEN REPLY #63083 /* ~"Je ne veux plus en parler. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63084 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63085 /* ~Il te regarde un moment puis redevient méprisant. "Et c'est pour cela que tu seras vaincu si tu affrontes celui qui nous a tués. Parce que tu es FAIBLE. Et que tu ne comprends pas que certaines choses sont NÉCESSAIRES."~ */
  IF ~~ THEN REPLY #63086 /* ~"Ce *n'était* pas nécessaire. Pour toi, ce n'était qu'une solution de facilité. Tu aurais dû envisager d'autres solutions."~ */ GOTO 34
  IF ~~ THEN REPLY #63087 /* ~"Tu *oses* me traiter de *faible* ?! Tu as orchestré toute cette mascarade pour vaincre cet ennemi invisible et tu t'es TOUT DE MÊME fait botter les fesses. Une pauvre fille s'est fait assassiner à cause de ça. Peut-être que si tu avais fait ce que tu devais la première fois que tu t'es retrouvé ici, cela n'aurait jamais été un problème !"~ */ GOTO 34
  IF ~~ THEN REPLY #63088 /* ~"Je ne veux plus en parler. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63089 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #63090 /* ~"Tu OSES me faire la *leçon* ?! Des femmes ont toujours été à nos côtés - que ce soit Deionarra ou Ravel ou toute autre femme, et elles ont souffert, mais elles ont toujours eu le CHOIX. Deionarra serait morte pour moi si je le lui avais demandé. Il n'y a pas eu de CRIME."~ */
  IF ~~ THEN REPLY #63091 /* ~"Je n'en parlerai plus avec toi - il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63092 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 20.13 20.14
  SAY #63093 /* ~"L'archer ? Eh bien, grâce à ses 'yeux', ce vieux sénile de Xachariah pouvait voir des choses qui m'étaient invisibles - il pouvait aussi les frapper de ses flèches."~ */
  IF ~~ THEN REPLY #63094 /* ~"Alors ?"~ */ GOTO 36
  IF ~~ THEN REPLY #63095 /* ~"Très bien. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63096 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63097 /* ~"Eh bien, dans cette forteresse j'étais aveugle, d'une certaine manière - je ne savais pas ce qu'était mon assassin, j'avais donc besoin de quelqu'un qui pouvait voir des choses qui m'étaient invisibles, au cas où l'ennemi échapperait à ma perception." Il ronchonne. "Mais Xachariah est mort trop rapidement et il ne m'a finalement été d'aucune aide."~ */
  IF ~~ THEN REPLY #63098 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63099 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 20.17
  SAY #63100 /* ~"J'avais presque oublié - oui, quel gâchis cela a été." L'incarnation semble contrariée. "Manifestement *cela* n'a pas marché. Et cela a également coûté beaucoup de sang et d'argent." Il fronce les sourcils. "C'est juste après cet échec que j'ai décidé d'aller affronter notre ennemi plutôt que d'attendre qu'il se manifeste de nouveau."~ */
  IF ~~ THEN REPLY #63101 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63102 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 20.18 61.1 62.1
  SAY #63103 /* ~"Morte est-il toujours en *vie* ?" Son regard se fait incrédule, puis il se met à rire. "Ha ! On ne peut faire confiance à ce pingre de crâne - il affirmait avoir des informations alors qu'il n'en avait aucune, je dus *alors* me résoudre à le libérer du Pilier des Crânes et quand il en fut dégagé, il *feignit l'ignorance*." L'incarnation ricane. "Puisqu'il m'avait révélé tout ce que je voulais savoir, je lui ai fait ce plaisir."~ */
  IF ~~ THEN REPLY #63104 /* ~"Une ignorance feinte ?"~ */ DO ~SetGlobal("Know_Morte_Lie","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #63105 /* ~"Hmmm. Il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63106 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #63107 /* ~"Oh ! oui." L'homme rit. "Un menteur sera toujours un menteur. Mais, pour me faire rire, il faut avoir un peu plus d'esprit que ce crâne."~ */
  IF ~~ THEN REPLY #63108 /* ~"À quoi jouait-il ? Que cachaient encore ses mensonges ?"~ */ GOTO 40
  IF ~~ THEN REPLY #63109 /* ~"Hmmm. Il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63110 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #63111 /* ~L'incarnation affiche un petit sourire narquois. "Cela n'a aucune importance. Que le crâne garde ses secrets - ils n'ont aucune valeur pour nous."~ */
  IF ~~ THEN REPLY #63112 /* ~"Très bien. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63113 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 20.15
  SAY #63114 /* ~"Ignus ?" L'homme te dévisage, puis fronce les sourcils. "Est-ce un nom ? Par les enfers, de qui parles-tu ?"~ */
  IF ~~ THEN REPLY #63115 /* ~"Tu as répondu à ma question. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63116 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 20.19
  SAY #63117 /* ~"D'autres incarnations - des reflets de nous-mêmes. Je les ferai fusionner avec moi après m'être occupé de toi." Il jette un regard à l'incarnation qui hurlait quand tu es arrivé. "Ou je les tuerai si elles refusent ; cela n'a aucune importance. Elles ne sont pas nécessaires."~ */
  IF ~~ THEN REPLY #63118 /* ~"Je vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63119 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.20 20.21
  SAY #63120 /* ~"C'est une autre des incarnations - reflets de ma personne. Je la ferai fusionner avec moi après m'être occupé de toi. Ou je la tuerai si elle refuse, cela n'a aucune importance."~ */
  IF ~~ THEN REPLY #63121 /* ~"Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63122 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 20.27
  SAY #63123 /* ~L'homme te regarde puis sourit, incrédule. "Je ne me rends à aucun homme. C'est moi qui t'absorberai."~ */
  IF ~~ THEN REPLY #63124 /* ~"J'en doute."~ */ GOTO 45
  IF ~~ THEN REPLY #63125 /* ~"Je ne combattrai donc pas aujourd'hui. Cependant, il y a d'autres choses que je voudrais savoir."."~ */ GOTO 20
  IF ~~ THEN REPLY #63126 /* ~"Peu importe. Laisse-moi me remettre et nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 70.1 72.1 74.0
  SAY #63127 /* ~"As-tu l'intention de m'affronter ?" Il semble plus amusé qu'autre chose. "Tu ne fais pas le poids. Il est inutile de résister."~ */
  IF ~~ THEN REPLY #63128 /* ~"Essaie."~ */ GOTO 47
  IF ~~ THEN REPLY #63129 /* ~"Je ne combattrai donc pas aujourd'hui. Cependant, il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63130 /* ~"Peu importe. Laisse-moi me remettre et nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 47.0
  SAY #63131 /* ~Ton regard rencontre le sien… ses yeux sont comme de la pierre. Ils t'attirent irrésistiblement…~ */
  IF ~  CheckStatGT(Protagonist,20,WIS)
~ THEN REPLY #63132 /* ~Tu plonges ton regard dans le sien et tu essaies de le forcer à fusionner avec toi.~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,INT)
CheckStatLT(Protagonist,21,WIS)
~ THEN REPLY #63133 /* ~Tu plonges ton regard dans le sien et tu essaies de le forcer à fusionner avec toi.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,21,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #63134 /* ~Tu plonges ton regard dans le sien et tu essaies de le forcer à fusionner avec toi.~ */ GOTO 49
  IF ~~ THEN REPLY #63135 /* ~Abandonne-lui ta volonté et laisse-toi absorber.~ */ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 16.0 16.1 19.0 19.1 20.25 20.26 45.0 70.2 70.3 72.2 74.1 74.2
  SAY #63136 /* ~"Qu'il en soit ainsi." Ses yeux deviennent gris comme de la brume et il se met à sourire, comme s'il se délectait d'avance. "Nous allons voir ce que contient ton esprit…"~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48 // from: 46.3
  SAY #63137 /* ~Sous le regard de l'incarnation, tu sens ton esprit se dissoudre. Tu ne ressens aucune douleur, uniquement la froide étreinte du néant tandis que ta personnalité est mise en lambeaux. Les ténèbres t'envahissent et, soudain, tu n'existes plus. ~ */
  IF ~~ THEN REPLY #63138 /* ~Tout devient noir…~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2
  SAY #63139 /* ~Alors que vos regard se rencontrent tu sens ton esprit se dissoudre. Tu *sais* que sa volonté est plus forte que la tienne. Si tu persistes, il t'absorbera et tu n'existeras plus - ~ */
  IF ~~ THEN REPLY #63140 /* ~Laisse l'incarnation t'absorber.~ */ GOTO 50
  IF ~~ THEN REPLY #63141 /* ~Arrache ton regard au sien et détourne-toi de lui.~ */ GOTO 51
  IF ~~ THEN REPLY #63142 /* ~Arrache ton regard au sien et attaque-le. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #63143 /* ~Alors que ton esprit se désagrège, tu ne ressens aucune douleur, uniquement la froide étreinte du néant tandis que ta personnalité est mise en lambeaux. Les ténèbres t'envahissent et, soudain, tu n'existes plus.~ */
  IF ~~ THEN REPLY #63144 /* ~Tout devient noir…~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY #63145 /* ~Tu arraches ton regard au sien et tu vois son visage se tordre de fureur. "Que *fais-tu* ?! Es-tu si faible que tu ne peux même pas faire face à ton futur ?! Par les enfers, tu es devenu une enveloppe vide !"~ */
  IF ~~ THEN REPLY #63146 /* ~"Peut-être… mais j'ai encore… le pouvoir de te TUER… prépare-toi à MOURIR."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63147 /* ~"Il y a d'autres choses que… je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63148 /* ~"Laisse-moi me remettre… je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 46.0 46.1
  SAY #63149 /* ~Tandis que tu erres dans les couloirs de son esprit, la première émotion que tu ressens en lui est la surprise - ses yeux s'écarquillent. Il ne t'absorbe pas ; ta volonté est la plus forte et elle *le* consume. Tu sens qu'il tente désespérément de faire marche arrière, mais il ne le peut pas - il est trop faible et ta volonté lui coupe la retraite tout en l'entraînant au plus profond de ton subconscient.~ */
  IF ~~ THEN REPLY #63150 /* ~"C'est la dernière fois que nous nous parlerons. Retourne vers celle à qui tu *appartiens*, la mort."~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #63151 /* ~Pendant un moment, il semble déconcerté, puis il se désintègre et tu sens un FLOT de connaissances se déverser en toi… c'en est presque trop à absorber à la fois. Tu te sens désorienté. Tant de connaissances, tant d'expériences, qui -~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,96000)
PermanentStatChange(Protagonist,INT,RAISE,1)
PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #63152 /* ~… et aussi rapidement qu'il s'était déversé, le flot se tarit. Tu reprends le dessus. Les fragments de connaissances tourbillonnent dans ton esprit et, avec du temps, tu les comprendras. Pour l'instant, seule une de ces informations est importante - l'incarnation ne savait pas comment quitter ce lieu. Elle t'a menti pour te pousser à t'abandonner à elle.~ */
  IF ~~ THEN REPLY #63153 /* ~"Bon sang…"~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #63154 /* ~"Tu perds ton temps à lui parler. Il n'y a que manigances et rancune dans son esprit et rien d'autre. Arrête de perdre du temps - nous devons discuter de beaucoup de choses tous les deux."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 4
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63155 /* ~"Ne me *menace* pas, idiot - je t'en avertis. S'il y a un voleur, c'est toi - tu cherches, en sabotant tout mon travail, à compromettre nos chances de régler ce problème !"~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 22
END

IF ~~ THEN BEGIN 57 // from: 20.16
  SAY #63156 /* ~"J'avais presque oublié - oui, quel gâchis cela a été." L'incarnation semble contrariée. "Manifestement *cela* n'a pas marché. Et cela a également coûté beaucoup de sang et d'argent."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 44
END

IF ~~ THEN BEGIN 58 // from:
  SAY #63157 /* ~La première incarnation regarde la seconde en fronçant les sourcils ; il semble qu'elle se retient à peine de l'attaquer. "Encore une chose que tu me paieras…" Elle se retourne vers toi. "Bien que je suppose que cela n'a aucune importance. C'est peu après l'échec du piège de la tombe que j'ai décidé d'aller affronter notre ennemi plutôt que d'attendre qu'il se manifeste de nouveau.~ */
  IF ~~ THEN REPLY #63158 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63159 /* ~"J'en ai assez entendu. Nous reparlerons… plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 20.22
  SAY #63160 /* ~"Il y avait d'autres incarnations - des reflets de nous-mêmes. Je voulais qu'elles fusionnent avec moi, mais cela n'a aucune importance. Elles sont inutiles."~ */
  IF ~~ THEN REPLY #63161 /* ~"Je vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63162 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 32.1
  SAY #63163 /* ~"*Naturellement*, c'était ce qu'il fallait faire. J'ai tout prévu depuis des décennies jusqu'aux plus petits détails." Son regard se perd alors dans le vague. "J'étais pourtant si proche."~ */
  IF ~~ THEN REPLY #63164 /* ~"J'imagine. Il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63165 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 20.28
  SAY #63166 /* ~"Les indications ?" Il hoche la tête affirmativement. "*Bien entendu* que c'est mon œuvre - je savais qu'il y avait un *risque* que j'échoue et que je perde la mémoire. Je voulais que des incarnations futures bénéficient de quelques… pistes. J'ai donc inscrit dans mon dos ces indications, puisque des choses comme les *journaux*…", il se met à ronchonner, comme s'il s'en voulait, "ont tendance à être égarées si *facilement*."~ */
  IF ~~ THEN REPLY #63167 /* ~"Les indications étaient assez vagues, bien que…"~ */ GOTO 62
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63168 /* ~"Pourquoi as-tu inscrit cet avertissement à propos de Morte ?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63169 /* ~"Es-tu celui qui a demandé à Pharod de s'emparer de la sphère en bronze dans les catacombes ?"~ */ GOTO 63
  IF ~~ THEN REPLY #63170 /* ~"Je vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63171 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #63172 /* ~"Es-tu *stupide* ?" L'incarnation semble exaspérée. "Les indications *devaient* être vagues - je ne pouvais pas *expliquer clairement* ce qui nous arrivait, j'ai donc laissé une orientation. Que penses-tu qu'il serait arrivé si un Homme-Poussière avait découvert la vérité ? Ou quelqu'un de plus timbré ? En combien de temps, à ton avis, aurions-nous été enterrés vivants ou incinérés ?"~ */
  IF ~~ THEN REPLY #63173 /* ~"Très bien. Pourquoi serais-je allé débusquer Pharod ? Pourquoi lui ?"~ */ GOTO 63
  IF ~  GlobalGT("Morte_Warning","GLOBAL",0)
~ THEN REPLY #63174 /* ~"Pourquoi as-tu inscrit cet avertissement à propos de Morte ?"~ */ GOTO 38
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63175 /* ~"Es-tu celui qui a demandé à Pharod de s'emparer de la sphère en bronze dans les catacombes ?"~ */ GOTO 63
  IF ~~ THEN REPLY #63176 /* ~"Je vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63177 /* ~"Laisse- moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 20.29 61.2 62.0 62.2
  SAY #63178 /* ~"Pharod ?" L'incarnation réfléchit un moment. "Oh ! oui - le roi de l'immondice avec tous ses 'Affranchis' qui pensaient que j'étais une proie facile…" Elle esquisse un sourire comme si elle se rappelait un souvenir agréable. "Après une petite saignée, j'ai conclu un pacte avec lui - si ses hommes me trouvaient, il devait s'assurer qu'ils me conduiraient sain et sauf à la Morgue - et, naturellement, j'avais besoin des yeux et des mains de ses hommes pour parcourir les catacombes sous Sigil." ~ */
  IF ~~ THEN REPLY #63179 /* ~"Pourquoi faire ?"~ */ GOTO 64
  IF ~  Global("Pharod_Sphere_Truth","GLOBAL",1)
~ THEN REPLY #63180 /* ~"Pour la sphère en bronze ?"~ */ GOTO 65
  IF ~~ THEN REPLY #63181 /* ~"Je vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63182 /* ~"Laisse- moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #63183 /* ~"Une sphère…"~ */
  IF ~~ THEN REPLY #63184 /* ~"…faite de bronze. Laide. Elle a la texture d'un œuf et elle sent le flan pourri. N'est-ce pas ?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 63.1 64.0
  SAY #63185 /* ~"Oui, j'ai dit à Pharod que c'était la seule chose qui pourrait sauver sa misérable vie. Il n'était vraiment qu'un roublard pleurnichard." L'incarnation te sourit. "Tu vois, à sa mort, ce vieux bâtard devait finir sur le Pilier des Crânes et il avait bien l'intention d'échapper à cela. Je lui ai alors dit qu'il y avait sous Sigil un objet qui lui permettrait d'échapper à son destin, s'il le trouvait."~ */
  IF ~~ THEN REPLY #63186 /* ~"Mais ça ne *l'aurait pas* sauvé - tu voulais juste qu'il la trouve."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #63187 /* ~"Bien *évidemment* elle ne lui servait à rien. On ne peut échapper aussi facilement à son destin." L'incarnation te regarde, l'air contrarié. "Cependant, il n'y a rien de plus motivant que de dire à un homme que ce qu'il cherche le sauvera de la damnation éternelle. J'avais l'intention de la lui reprendre dès qu'il l'aurait trouvé. S'il avait fallu que je la cherche, cela aurait pris… trop de temps." Elle sourit encore. "Et pourquoi aurais-je dû le faire alors que quelqu'un pouvait s'en charger pour moi ?"~ */
  IF ~~ THEN REPLY #63188 /* ~"En fait, il m'a embobiné pour que *je* la trouve pour lui. Pourquoi était-elle si importante ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_1","GLOBALLaw",1)
~ GOTO 67
  IF ~~ THEN REPLY #63189 /* ~"Euh ! Ouais… tout à fait. Je suis sûr, euh, qu'un des hommes de Pharod l'a trouvée pour lui. Pourquoi était-elle si importante ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_1","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #63190 /* ~"Je… vois. Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63192 /* ~"Laisse- moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #63195 /* ~"Important ? L'ignores-tu ?" L'incarnation se tait un moment. "L'as-tu sur toi ?"~ */
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63196 /* ~"Non, elle a disparu avec Pharod. Qu'était-elle supposée faire ?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 68
  IF ~  !PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63197 /* ~"Non, elle a disparu avec Pharod. Qu'était-elle supposée faire ?"~ */ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63198 /* ~Mensonge : "Non, elle a disparu avec Pharod. Par curiosité, qu'était-elle censée faire ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
AddexperienceParty(96000)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63199 /* ~Mensonge : "Non, elle a disparu avec Pharod. Par curiosité, qu'était-elle censée faire ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #63200 /* ~"Oui, je l'ai avec moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Practical_2","GLOBALLaw",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0 67.1 67.2 67.3
  SAY #63201 /* ~"C'était une Pierre sensorielle." Le regard de l'incarnation te traverse comme si elle regardait quelque chose au loin. "Sais-tu ce qu'elle contenait ?" Il sourit d'un air désabusé. "Elle contenait les dernières expériences du *premier* d'entre nous. Quand nous n'étions qu'un, et pas des ribambelles d'incarnations." Sa voix s'adoucit. "S'il y avait eu un moyen de l'utiliser, j'aurais pu voir dans son *esprit*…"~ */
  IF ~~ THEN REPLY #63202 /* ~"Pour savoir pourquoi tout cela est arrivé ?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #63203 /* ~"Oui…" Le visage de l'incarnation s'assombrit. "C'est la réponse que j'ai toujours cherchée. Pourquoi tout cela est-il arrivé ? Pourquoi sommes-nous devenus immortels ?" Elle soupire. "Et je crains que nous ne le sachions jamais."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 27
  IF ~  PartyHasItem("Bsphere")
!NearbyDialog("Dincar3")
~ THEN REPLY #63204 /* ~"Tu sais, je l'ai amenée avec moi."~ */ GOTO 70
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63205 /* ~"Il y a d'autres choses que je voudrais savoir."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63206 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.4 69.1 73.0 73.1
  SAY #63207 /* ~"Tu l'as ?!" Le regard de l'incarnation s'embrase. "Ta vie a donc été utile après tout !" Tu vois à ses yeux qu'elle réfléchit, qu'elle calcule. "Quand nous aurons fusionné, j'essaierai de trouver un moyen d'en percer les secrets. Tout n'est peut-être pas perdu. "~ */
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63208 /* ~"Qu'est-ce que cette sphère ? Pourquoi est-elle si importante ?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 71
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63209 /* ~"Je n'ai pas l'intention de fusionner avec *toi*."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63210 /* ~Vérité : "Très bien. Je suis prêt à fusionner avec toi."~ */ GOTO 47
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63211 /* ~Bluff : "Très bien. Je suis prêt à fusionner avec toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63212 /* ~"Nous verrons… mais tout d'abord, il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63213 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63214 /* ~"C'est une Pierre sensorielle. Sais-tu ce qu'elle contient ?" Il sourit d'un air désabusé. "Elle contient les dernières expériences du *premier* d'entre nous. Quand nous n'étions qu'un, et pas des ribambelles d'incarnations." Sa voix s'adoucit. "S'il y a un moyen de l'utiliser, je pourrais voir dans son *esprit*…"~ */
  IF ~~ THEN REPLY #63215 /* ~"Pour savoir pourquoi tout cela est arrivé ?"~ */ DO ~SetGlobal("Know_Bronze_Sphere","GLOBAL",1)
~ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #63216 /* ~"Oui…" Le visage de l'incarnation s'assombrit. "C'est la réponse que j'ai toujours cherchée. Pourquoi tout cela est-il arrivé ? Pourquoi sommes-nous devenus immortels ?" Elle t'examine. "Quand nous aurons fusionné, j'essaierai de trouver un moyen de percer ses secrets. Tout n'est peut-être pas perdu."~ */
  IF ~  NearbyDialog("Dincar3")
~ THEN EXTERN ~DINCAR3~ 28
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63217 /* ~"Je n'ai pas l'intention de fusionner avec *toi*."~ */ GOTO 45
  IF ~  Global("Know_Bronze_Sphere","GLOBAL",1)
!NearbyDialog("Dincar3")
~ THEN REPLY #63218 /* ~Vérité : "Très bien. Je suis prêt à fusionner avec toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63219 /* ~"Nous verrons… mais tout d'abord, il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~  !NearbyDialog("Dincar3")
~ THEN REPLY #63220 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #63221 /* ~"*Je* ne m'égare pas avec des peut-être." La première incarnation ricane. "Je cherche des réponses. C'est ce qui nous a permis d'arriver aussi loin." Elle regarde avec mépris la troisième incarnation. "Si nous nous en étions remis à toi, nous n'aurions pas une fraction de la vérité que nous détenons. C'est dans cette vérité que réside le *pouvoir*." Elle se retourne vers toi. "Tu t'en rendras compte quand nous fusionnerons."~ */
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",0)
~ THEN REPLY #63222 /* ~"Tu sais, j'ai amené la sphère avec moi."~ */ DO ~AddexperienceParty(96000)
~ GOTO 70
  IF ~  PartyHasItem("Bsphere")
Global("Know_Bronze_Sphere","GLOBAL",1)
~ THEN REPLY #63223 /* ~"Tu sais, j'ai amené la sphère avec moi."~ */ GOTO 70
  IF ~~ THEN REPLY #63224 /* ~"Nous verrons… mais tout d'abord, il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63225 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #63226 /* ~"*Je* ne m'égare pas avec des peut-être." La première incarnation ricane. "Je cherche des réponses. C'est ce qui nous a permis d'arriver aussi loin." Elle regarde avec mépris la troisième incarnation. "Si nous nous en étions remis à toi, nous n'aurions pas une fraction de la vérité que nous détenons. C'est dans cette vérité que réside le *pouvoir*." Elle se retourne vers toi. "Tu t'en rendras compte quand nous fusionnerons."~ */
  IF ~~ THEN REPLY #63227 /* ~"Je n'ai pas l'intention de fusionner avec *toi.*"~ */ GOTO 45
  IF ~~ THEN REPLY #63228 /* ~Vérité : "Très bien. Je suis prêt à fusionner avec toi."~ */ GOTO 47
  IF ~~ THEN REPLY #63229 /* ~Bluff : "Très bien. Je suis prêt à fusionner avec toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Practical_3","GLOBALLaw",-1)
~ GOTO 47
  IF ~~ THEN REPLY #63230 /* ~"Nous verrons… mais tout d'abord, il y a d'autres choses que j'aimerais savoir."~ */ GOTO 20
  IF ~~ THEN REPLY #63231 /* ~"Laisse-moi me remettre et nous parlerons encore."~ */ EXIT
END
