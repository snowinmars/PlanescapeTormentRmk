// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"Eh là ! Qui va là ? GARDES ! IL EST LÀ !"~ */
  IF ~~ THEN REPLY #12871 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"Tu vas pas me soûler ! Dégage !"~ */
  IF ~~ THEN REPLY #12873 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"Et qu'est-ce que t'a dit Petit Lèche-bottes ? J'suis sûr que c'était que des salades."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"En fait, je ne lui ai pas encore parlé. Je voulais te poser d'autres questions."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"Il me dit que ce n'est pas un coup monté. En fait, il dit qu'il t'a vu tuer ce pauvre bougre."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"Je continue mon enquête du côté des Anarchistes."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"Il dit qu'il a planté la pique dans le corps, mais seulement pour que tu sois accusé de ce meurtre. Il dit que tu es un meurtrier et qu'il voulait être sûr que tu serais arrêté."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"Il dit qu'il a planté la pique dans le corps, mais seulement pour que tu sois accusé de ce meurtre. Il dit que tu es un meurtrier et qu'il voulait être sûr que tu serais arrêté."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"Je sais qui je dois accuser."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"Pour l'instant, ça ne te regarde pas. Il faut que tu répondes à quelques questions."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"Pour l'instant, rien. Au revoir."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"Dommage pour ce pauvre forgeron Avildon, vraiment. Enfin. Il était pas du genre à se fatiguer. Il n'était pas *dévoué*. C'est comme ça que les plans fonctionnent ; écoute bien : chaque lascar doit avoir son dû. Que peut faire pour toi le vieux Thildon ?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"Saros (tu te souviens de lui, hein ?) m'a donné une pique qu'il a trouvée près du corps. Curieusement, ton nom est gravé sur le manche de cette pique. Comment tu expliques ça ?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~Je suis allé voir Thildon avec le poinçon que m'a donné Saros. Thildon prétend qu'il s'agit d'un coup monté.~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"Je voudrais te poser des questions."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"Ne me crois pas sur parole, bige ! T'en as un dangereux entre les mains et tu dois faire en sorte qu'il ne tue personne d'autre. Allez, au travail !"~ */
  IF ~~ THEN REPLY #12888 /* ~"Thildon, je t'ai dit qu'il me fallait les réponses à certaines questions. Alors réponds, maintenant."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"J'enquête. Ne t'inquiète pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"Il QUOI ? Je t'ai dit que ce type était un voleur et un assassin, et tu m'crois pas ? Et si j'te disais que le gars est aussi un Anarchiste, un membre de la Ligue Révolutionnaire ?"~ */
  IF ~~ THEN REPLY #12891 /* ~"Pourquoi est-ce que je te croirais ?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon affirme que Saros est un Anarchiste et qu'il est de mèche avec Bedai-Lihn pour tenter de le discréditer, lui, Thildon.~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~Mensonge : "Si c'était le cas, je ferais tout pour qu'il soit arrêté."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon affirme que Saros est un Anarchiste et qu'il est de mèche avec Bedai-Lihn pour tenter de le discréditer, lui, Thildon.~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~Vérité : "Si c'était le cas, je ferais tout pour qu'il soit arrêté."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Thildon affirme que Saros est un Anarchiste et qu'il est de mèche avec Bedai-Lihn pour tenter de le discréditer, lui, Thildon.~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"Franchement, ça m'est égal. D'après ce que j'ai entendu, je crois que c'est toi le coupable."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~Un regard hypocrite se glisse sur son visage. "Parce que j'te le dis. Parce que j'vais dire quelque chose qui fera de moi un criminel, mais j'le dirai pour que justice soit faite." Il s'interrompt. "Je sais que c'est un Anarchiste parce qu'il a essayé de me recruter. Lui et cet ingénieur, Bedai-Linhn. Je leur ai dit que j'le ferai pour pouvoir les piéger, mais j'ai compris que j'avais pas envie de blesser le pauvre Saros. J'ai refusé et maintenant ils essaient de se couvrir. C'est à cause de ça qu'ils veulent que je parte. Ce sont eux les assassins. Pas moi."~ */
  IF ~~ THEN REPLY #12896 /* ~"Et supposons que je te croie, pourquoi est-ce que je ne te ferais pas emprisonner toi aussi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"Que tu dis ! Je vais vérifier. Réponds d'abord à d'autres questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"Bon. Je vais aller vérifier ça tout de suite. Reste là, Thildon. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"Ouais, c'est vrai ! Je le jure sur les yeux sacrés de ma pauvre mère décédée. Lui et cet ingénieur, Bedai-Lihn, ils voulaient me recruter. Je leur ai dit que je m'enrôlerai parce que je voulais coincer ces renégats. J'accomplis les devoirs de ma faction. Mais j'ai décidé que ce n'était pas bien de faire ça. C'est là qu'ils ont décidé de me pendre à l'arbre mort."~ */
  IF ~~ THEN REPLY #12900 /* ~"Intéressant. Mais ça ne tient pas debout. Ton histoire est trop tirée par les cheveux. Je crois que je vais te faire arrêter."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"Je vois. Je vais vérifier ça. Réponds à d'autres questions pour moi, Thildon."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"Je vais faire ma petite enquête. Merci pour l'indice."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"Quoi ? Tu m'accuses ? Mais je n'ai rien fait ! Bige, t'as le mauvais type ! S'il te plaît ! J'suis innocent !"~ */
  IF ~~ THEN REPLY #12904 /* ~"Je plaisante, Thildon. Calme-toi. Réponds à d'autres questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"Je plaisante, Thildon. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"Toutes les preuves sont contre toi, Thildon. Rendez-vous le jour de ton exécution. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"Encore en train de chercher ? Pas un très grand enquêteur, hein ? J'sais même pas pourquoi je m'ennuie à t'aider alors que tu vérifies pas les informations que j'te donne…"~ */
  IF ~~ THEN REPLY #12908 /* ~"Assez de fausse piété, Thildon. Réponds à quelques questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"J'en sais suffisamment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~Le visage du directeur blêmit. "Il… quoi… il… je… il a admis que c'était un Anarchiste ?"~ */
  IF ~~ THEN REPLY #12911 /* ~"Oui. Il a l'air de croire que tu es dangereux pour ton entourage, qu'il s'agisse d'Anarchistes ou d'Hommes-Dieux, et qu'il faut t'arrêter. Il veut bien avouer ses propres crimes si ça permet de te traduire en justice."~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"Oui. Et toi, tu es un meurtrier. Tes actes te trahissent."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"Il… il a fait ça ? Tu dois l'arrêter ! Tu vois pas que c'est une menace ? Comment peux-tu croire ce gamin voleur et menteur alors qu'il n'a aucune morale ? Arrête-le et finissons-en avec lui !"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"Eh bien, Thildon, voilà comment je vois les choses : il accepte de plonger si tu plonges avec lui. D'après tout ce que j'ai entendu dire sur lui, ce n'est pas un mauvais bougre. Et s'il accepte d'être puni pour que tu sois jugé, c'est que tu dois vraiment le mériter."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"Ça ne colle pas. Pourquoi il ferait ça ?"~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"Ce n'est pas toi qui donnes les ordres ici, Thildon. N'oublie pas ça. Maintenant, réponds à quelques questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"Attention, Thildon. Tu es déjà en terrain miné. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"Pour retarder le calendrier des Anarchistes, bige !" Il baisse la voix et te lance un regard d'une intensité funeste. "Ces anarchistes, tu vois, ce sont tous des fanatiques et ils n'épargnent pas des types comme moi qui essaient de les démasquer. Ils sacrifieront n'importe qui pour faire avancer leurs plans." Il se redresse et proclame : "c'est aux honnêtes gens comme moi de garder ces biges sur le droit chemin."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~"Vraiment, Thildon ? Saros est jeune, et tous les jeunes font des erreurs. Ça m'étonnerait qu'il se sacrifie pour te faire plonger et protéger les gens qui l'ont mis dans le pétrin. La loyauté, c'est très bien, mais il est suffisamment intelligent pour savoir s'il est victime d'un coup monté. Non, Thildon, je crois que c'est toi le coupable."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"Il y a quelque chose qui cloche, mais je ne sais pas quoi."~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"Toi, honnête ? Bon, réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"Comme c'est généreux de ta part ! Au revoir, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"Ce qui ne va pas, c'est que ta cervelle épaisse ne peut pas comprendre les complots tissés par ces biges ! Creuse-toi la cervelle, bougre et enferme ce petit salaud !" Il semble choqué un instant en réalisant ce qu'il vient de dire et à qui, puis il ajoute rapidement : "Eh. Excuse-moi. C'est le stress. C'est pas facile d'être considéré comme un assassin et un Anarchiste par tout le monde."~ */
  IF ~~ THEN REPLY #12924 /* ~"Sûrement. Il va falloir que j'étudie ça sérieusement. Réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"Sûrement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~Son visage sanguin rougit d'apoplexie. "Tu m'accuses ? Mais j'suis pas le meurtrier ! J'essaie juste de démasquer les Anarchistes, bige ! Va te faire voir, tu peux pas m'faire ça ! Tu peux pas faire confiance à ceux qui te disent qu'ils m'ont vu, alors tu ne peux pas m'accuser !"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"Tu dirais la même chose sous serment et sous un charme ? Je parie que Saros le ferait, lui."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"Saros fait un meilleur témoin. Il est plus convaincant, et il n'est pas aussi détesté que toi par ici. Je parie que sa version est la bonne, et c'est ce que je vais dire à Keldor."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"Je vais vous faire arrêter tous les deux. Qu'est-ce que tu dis de ça ? Au revoir, Thildon. On ne se reverra pas."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"Je dis ce que je veux. Au revoir, Thildon."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"Je prendrai le temps d'y réfléchir sérieusement. En attendant, profite de la vie, Thildon. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"Zut. Est-ce que je peux au moins prendre mes affaires et me faire la malle ? Le vieux Thildon fera en sorte que tu ne le regrettes pas."~ */
  IF ~~ THEN REPLY #12933 /* ~"Bien sûr. Va."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"Seulement si tu fiches le camp d'ici avant que je prévienne Keldor. Je ne donne pas cher de ta peau."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"Non. Reste ici ou tu le paieras encore plus cher. Et tu peux être sûr que j'y veillerai personnellement. Au revoir, Thildon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"J'suis parti, parti. T'entendras plus jamais parler de moi."~ */
  IF ~~ THEN REPLY #12937 /* ~"Va-t'en avant que je change d'avis."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"J'ai changé d'avis. Tu ne vas pas tarder à voir le chef. Au revoir, Thildon."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"Tu veux des réponses ? Quoi par exemple ?"~ */
  IF ~~ THEN REPLY #12940 /* ~"Qui es-tu ?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"Parle-moi des Hommes-Dieux."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"Qu'est-ce que tu faisais la nuit du meurtre ?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"J'ai besoin d'utiliser la forge. Peux-tu me donner du minerai de fer ?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"Qui choisirais-tu ?" L'homme semble bizarrement impatient.~ */
  IF ~~ THEN REPLY #12951 /* ~"Je vais accuser Saros du meurtre."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"Je vais vous accuser tous les deux, toi et Saros."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"Je vais dire à Keldor que tu es le meurtrier."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"Personne encore. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"Tu sauras ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"Thildon le Gris, directeur de ce chantier. Je dois m'assurer que mes ouvriers font bien leur boulot - et que des gens comme toi ne les distraient pas. Ils travaillent déjà pas beaucoup, les petits bougres, et ils arrivent à perdre le reste de la journée à flâner comme si j'étais pas là. Je suis dur… mais juste. Demande-leur."~ */
  IF ~~ THEN REPLY #12957 /* ~"Pourquoi est-ce qu'ils t'appellent 'le Gris' ?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"Alors, c'est à toi que je dois m'adresser pour avoir du minerai de fer pour la forge…"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"Je le ferai peut-être. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"Je le ferai peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"Parce que j'suis tout le temps couvert par la suie de ces sacrés fourneaux. C'est un surnom que mes ouvriers m'ont donné… par affection, sans doute."~ */
  IF ~~ THEN REPLY #12968 /* ~Sarcastique : "Sans aucun doute. Ils ont vraiment l'air de respecter ta douce âme."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~Sérieux : "Sans aucun doute."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"Bien sûr. C'est sûrement ça."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"Serais-tu en train de sous-entendre que je ne suis pas totalement juste avec mes ouvriers ? Je le suis ! Je suis comme un père pour eux !"~ */
  IF ~~ THEN REPLY #12974 /* ~"Hélas, la majorité d'entre eux étaient sûrement des enfants battus…"~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"Je dis juste que tu pourrais être un peu TROP juste, si tu vois ce que je veux dire."~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"D'accord, d'accord. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"Je n'en doute pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~Son visage devient violet de rage. Lorsqu'il se reprend, il bafouille : "File ou j'appelle les gardes !"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"Pas tant que j'enquête sur ce meurtre. Maintenant, réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"Réponds juste à quelques questions pour moi…"~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"Très bien, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~Il mugit pour appeler les gardes. "GARDES ! Débarrassez-moi de cette carcasse et que je ne le REVOIE PAS !"~ */
  IF ~~ THEN REPLY #12983 /* ~"Tu vas le regretter. Prépare-toi à mourir, espèce de porc."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"Bon, très bien. Au revoir."~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"Tu le penses vraiment ? Tu me dis que je ferais mieux de penser à la façon dont je les traite ? J'y penserai, mais il y a de fortes chances que je continue comme avant ! File maintenant."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"Ce n'est pas toi qui donnes les ordres pour le moment. Réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"Réponds seulement à quelques-unes de mes questions…"~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"Très bien, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"C'est vrai. Ils me respectent. Ils savent que s'ils ne me respectent pas, leur compte est bon."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"Tu veux dire, comme le forgeron ?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~Il blêmit un instant. "C'était juste une façon de parler. Ça ne voulait rien dire."~ */
  IF ~~ THEN REPLY #12994 /* ~"Bien. Réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"On verra ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"Qu'est-ce que tu veux dire ?"~ */
  IF ~~ THEN REPLY #12997 /* ~"Ça veut dire que je suis d'accord avec toi."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"Ça veut dire que je crois qu'ils se fichent pas mal de toi."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"Ça veut dire : va caguer, bige."~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"Bien, parfait. Le multivers serait un monde meilleur si tout le monde était d'accord avec moi. Bon, je dois me remettre au boulot."~ */
  IF ~~ THEN REPLY #13001 /* ~"J'avais encore quelques questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"Tu crois juste ce que tu veux bien croire, petit. Je connais mes ouvriers. Ils ont besoin d'une main ferme pour les guider. Ils m'en sont reconnaissants. Maintenant, file."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"Ce n'est pas toi qui donnes les ordres pour le moment. Réponds à d'autres questions pour moi."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"Réponds seulement à quelques-unes de mes questions…"~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"Ils m'ont pris et m'ont formé pour être ce que je suis aujourd'hui et je dois les en remercier. D'un talent brut, ils ont fait une compétence. Je te le dis, je suis le favori du factol et il montrera un jour à tous mon importance dans cette organisation. Ils me disent que tout le monde a une part de divinité. C'est vrai pour moi. Je pense que je suis plus enclin que la plupart des types à dire la vérité. Ça me donne le droit d'agir comme un dieu et d'attendre une dévotion totale de mes inférieurs. Avec ma croyance en moi, j'apprends à prendre le pouvoir et à remuer des montagnes. Lorsque je règnerai sur le cosmos, crois-moi, je me souviendrai de tous les biges qui m'ont tenu tête."~ */
  IF ~~ THEN REPLY #13008 /* ~"C'est… intéressant. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"Je suppose que t'as pas assez forgé à ton goût, hein ? Bien, prends-le et finissons-en." Il empoigne rudement une barre de fer et la jette entre tes mains. "Voulais-tu autre chose, ou puis-je me remettre à superviser ces malheureux ?"~ */
  IF ~~ THEN REPLY #13011 /* ~"J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"Retourne travailler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~Il te regarde en louchant. "T'en as pas besoin, si tu veux mon avis. Va te faire pendre ailleurs, bige."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"Pourquoi est-ce que tu ne m'en donnes pas ? Je te laisserais partir sain et sauf."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"Pourquoi est-ce que tu ne m'en donnes pas ? Je te laisserais partir sain et sauf."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"Bien, bien. Alors, j'aurais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"Si c'est ce que tu veux. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~Il t'examine des pieds à la tête, soigneusement : "Tu veux devenir forgeron, hein ? J'sais pas si le feu ferait du bien à ta peau. Tu peux t'en servir, mais ne dérange pas mes ouvriers. Bonne journée."~ */
  IF ~~ THEN REPLY #13019 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"J'ai l'impression qu'ils laissent n'importe qui devenir Homme-Dieu", grommelle-t-il. C'est pas comme avant où tu devais présenter un véritable potentiel pour devenir membre. Tu veux cette barre pour ton test de puissance ! Prends-la et fiche-moi la paix." Il te lance une barre de minerai dans les mains.~ */
  IF ~~ THEN REPLY #13021 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~Il regarde la taille de tes bras, examine ton visage et décide que tu es sérieux. "Ne crois pas que je vais oublier ça, bige", dit-il en te tendant un gros morceau de minerai de fer - mais en te parlant, il évite ton regard.~ */
  IF ~~ THEN REPLY #13024 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~Il regarde la taille de tes bras et ricane. "T'imagines que tu me fais peur ? Dégage, bige." Il s'éloigne de toi.~ */
  IF ~~ THEN REPLY #13027 /* ~Attaque-le.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"Qu'est-ce que je faisais ? Voyons, j'étais… j'étais assis dans ma chambre, avec une bonne tranche de pain et une cruche de vin. Je ne suis même pas sorti cette nuit-là. J'en voyais pas la nécessité."~ */
  IF ~~ THEN REPLY #13030 /* ~"Tu connais quelqu'un qui pourrait le confirmer ?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"Je vois. Au revoir."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"Non. J'ai jamais ressenti le besoin de m'en assurer. Si tu cherches vraiment des tuyaux, tu peux demander à Saros. Ce petit voleur chevalier va partout, avec son grossium de père. Il faisait toujours de nouvelles expériences - ce garçon est comme un Sensat si tu veux mon avis. Il voulait probablement tuer quelqu'un et voir s'il pouvait s'en tirer comme ça."~ */
  IF ~~ THEN REPLY #13034 /* ~"Saros, hein ? Je m'en souviendrai. En attendant, j'aurais d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"Saros, hein ? Je vais aller vérifier ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~Son visage rayonne, exposant plusieurs dents pourries et il se penche en avant pour te serrer la main. "C'est un bon choix que t'as fait, l'ami, un bon choix. Il me tarde de te revoir."~ */
  IF ~~ THEN REPLY #13037 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~Il ne semble plus aussi intéressé, comme s'il avait reçu une claque. "Nous deux ? Qu'est-ce que j'ai fait ?"~ */
  IF ~~ THEN REPLY #13039 /* ~"Ce que je crois, c'est que tu as tué le forgeron et que tu as essayé de faire porter le chapeau à Saros. Je crois aussi que Saros a essayé de te désigner de manière illégale et qu'il est coupable d'autres crimes."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"Je plaisante, Thildon. Calme-toi. Réponds à d'autres questions pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"Je plaisante, Thildon. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"Tu as tué Avildon, le forgeron, et tu as menti pour tenter de te disculper. Au revoir."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"Quoi, encore toi ?"~ */
  IF ~~ THEN REPLY #13045 /* ~"Réponds à quelques questions pour moi, Thildon."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~Tu aperçois un homme au ventre musclé, les bras costauds et la barbe abondante. Cela doit faire bien longtemps qu'il ne s'est pas lavé et son haleine donne la nausée au petit déjeuner. Il donne des ordres à des subordonnés et frappe légèrement l'oreille de l'un d'entre eux. Il se tourne vers toi, en remontant sa ceinture. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #13048 /* ~"J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~L'espace d'un instant, il semble troublé. "Saros est un voleur. Il y a des chances qu'il me l'ait volé. En fait, ça fait un certain temps que je n'ai plus mon poinçon -- je l'ai jamais dit parce que je pensais l'avoir perdu. Je sais maintenant que Saros me l'a volé pour me coincer. Mieux vaut l'attraper avant qu'il te joue un air." Voyant ton expression, il rajoute, "avant qu'il ne s'échappe."~ */
  IF ~~ THEN REPLY #13092 /* ~"Ça m'a l'air un peu trop simple, tout ça. J'irai lui en parler dès que tu auras répondu à d'autres questions pour moi…"~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"Alors, je vais essayer de le trouver tout de suite. Au revoir."~ */ EXIT
END
