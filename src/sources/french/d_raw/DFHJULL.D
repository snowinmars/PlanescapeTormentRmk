// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~"Grâce à toi, tout est perdu pour moi. Ils vont revenir, encore et encore… oh, les tortures qu'ils vont t'infliger… oups… pardonne-moi. J'ai parlé trop vite."~ */
  IF ~~ THEN REPLY #2914 /* ~"Tant mieux. J'ai besoin de tes réserves. Qu'est-ce que tu as ?"~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~"J'espère bien. J'ai quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~"Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~"Je hume la puanteur de ta trahison, je sens, j'entends approcher les miens qui s'en viennent me ramener sur Baator… va-t'en, fourbe ! Je t'ai donné tout ce que je pouvais ! Je n'ai rien d'autre à t'offrir !"~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~"T'es sûr qu'il reste plus rien à donner ?"~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~"J'ai juste encore quelques questions à te poser…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~Le fiélon s'immobilise. "Euh… rien de valeur. Quelque charme insignifiant, un colifichet peut-être… si tu en as vraiment besoin, dans ce cas, oui, prends… sinon…"~ */
  IF ~~ THEN REPLY #54890 /* ~"Qu'est-ce tu as, là ?"~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~"Laisse tomber. Réponds juste à quelques questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~"Laisse tomber. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~"Feh ! Sois trois fois damné, mortel ! Tu ferais mieux de prier pour que le deva ait l'éternité dans ses veines, car si ce n'est pas le cas, je veillerai à ce que tu me rembourses, mais ce ne sera pas de la magie que j'attendrais en retour… Urkhhhh… Ugnnnhhh… Non, non, je ne pensais pas à mal… Je me suis mal exprimé… Je ne pensais pas à mal…"~ */
  IF ~~ THEN REPLY #54896 /* ~"Bien. Donne-moi ça. Tout de suite."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~"Si tu n'en as pas besoin, Langue-fourchue, ça peut m'être utile."~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~"Laisse tomber, Langue-fourchue. Réponds plutôt à mes questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~"Maudit grippe-sous… Certainement, tu peux jeter un œil. Qu'est-ce que tu veux voir ?~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~"Argh ! Je peux toujours utiliser ces objets ! Par exemple, contre la horde de fiélons que tu as si intelligemment amenés à ma porte !"~ */
  IF ~~ THEN REPLY #54915 /* ~"Dommage. Donne-les quand même."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~"Dans ce cas, je t'autorise à les garder."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~"Feh ! Ta générosité est celle des devas trois fois maudits des Élysées. Que vas-tu encore demander au pauvre Fhjull ?"~ */
  IF ~~ THEN REPLY #54918 /* ~"Pendant que j'y pense… montre un peu tes marchandises."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~"Réponds juste à quelques questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~"Rien pour l'instant. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~"Rien pour l'instant. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~Il serre les dents. "Que puis-je encore pour toi ?"~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~"Comment je fais pour sortir de ce cratère ?"~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Langue-fourchue m'a dit que le portail qui me permettra de quitter le cratère et de retourner à Maudith se trouve sous l'os de queue de l'énorme squelette. Il s'est esclaffé en me disant que j'allais devoir passer par son cul.~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~"Comment je fais pour repartir ?"~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~"Parle-moi de Trias."~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~"Pourquoi les baatezus te poursuivent-ils ?"~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~"T'as pas quelque chose que t'aimerais… partager avec moi ?"~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~"Pourquoi tu te caches dans ce cratère ?"~ */ JOURNAL #66807 /* ~Langue-fourchue m'a dit qu'il vivait dans le squelette du cratère car les ossements enchantés d'Ul-Goris interdisent la scrutation magique et le protègent de ceux qui lui veulent du mal.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~"Pour l'instant, tu ne peux rien. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~"Pour l'instant, tu ne peux rien. Au revoir."~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~"Pour l'instant, tu ne peux rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~"Ha ! Quels problèmes amènera-tu la prochaine fois ? Les gens comme toi reviennent toujours… feh !"~ */
  IF ~~ THEN REPLY #54934 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~"Feh… Est-ce à dire que tu vas encore une fois me laisser à ma solitude ? Dans ce cas, je clame haut et fort, avec une douce volupté, que le portail se trouve sous les os de cette créature… sous son cul exactement. Il te renverra vers cette misérable ville de Maudith d'où tu viens… Et je vois encore pour toi d'autres moyens plus pratiques de voyager."~ */
  IF ~~ THEN REPLY #54936 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~"Ce pseudo-enfant de lumière ! Ce méprisable… aggh… je ne veux pas dire de mal de lui et de ses manières de traitre, de menteur, irrespectueuses de l'ordre… Feh ! C'est un menteur, mortel, et tu ne devrais lui faire confiance en aucune manière. Je dis ça, bien sûr, avec toute la charité et la…" Langue Fourchue crache par terre. "… bonté due. Sa duplicité m'a coûté une éternité… à moins qu'il ne meure." Sa grimace est étonnamment pleine d'espoir.~ */
  IF ~~ THEN REPLY #54941 /* ~"J'avais d'autres questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~"Feh… Leur seul souci, c'est d'équilibrer les comptes, de redresser les torts, de s'assurer que tout est remis dans le droit chemin. Ma seule existence, hors de leur vue, gâche la perfection qu'ils tentent de dresser à la face du mal."~ */
  IF ~~ THEN REPLY #54946 /* ~"J'avais d'autres questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~"Ceci est le squelette d'Ul-Goris, le père des goristros. Ce sont des tours de siège vivantes aux allures d'ours, mastodontes du chaos, pratiquement impossible à arrêter, très résistants à la magie… Et les os d'Ul-Goris, dans ce cratère où il a trouvé la mort, émettent beaucoup d'énergie qui empêche la magie de m'espionner, gardant ainsi ce pitoyable corps en vie pendant quelques années désespérées de plus. Feh !"~ */
  IF ~~ THEN REPLY #54951 /* ~"J'avais d'autres questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~"Feh… c'est un Cadeau de la Haine, une belle arme pour quelqu'un comme toi." Il rit sous cape. "Je ne crois pas que tu en voudras… il est chargé d'une malédiction. Peut-être veux-tu reconsidérer…"~ */
  IF ~~ THEN REPLY #54956 /* ~"Pas grave, je la prends."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~"Cette vieillerie ? Feh ! Il s'agit du nœud gordien. Tranche-le et tu seras doublement le chef que tu es déjà, heh heh. Et naturellement il a un prix, un que je n'ai heureusement pas le pouvoir de t'éviter de payer."~ */
  IF ~~ THEN REPLY #54968 /* ~"Pas grave, je le prends."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~Il soupire. "Une larme de vipère. Tu la mets dans ta bouche et tes baisers seront ceux d'une vipère, pleins de venin et de haine."~ */
  IF ~~ THEN REPLY #54980 /* ~"Je la prends."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~"C'est un souvenir de ma vie à Baator - un couteau taillé dans de l'acier vert Baatorien, l'un des matériaux les plus solides que je connaisse. Feh ! Vas-y, prends les souvenirs de mon passé et qu'on n'en parle plus !"~ */
  IF ~~ THEN REPLY #54992 /* ~"Je prends… mais je promets pas de disparaître."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~"Cette vieille chose ? Feh ! Ce n'est qu'un poignard d'acier vert Baatorien. Regarde bien, je suis sûr que ce n'est pas le genre de chose qui t'intéresse."~ */
  IF ~~ THEN REPLY #55004 /* ~"Pas grave, je le prends."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~"Ça ? Ce sont des *kassegs*, des parasites qui vont se loger dans ton cerveau et dévorent ton énergie mentale, et sans apporter rien de bon… Feh ! Maudit contrat ! Ils augmentent le pouvoir de ton esprit, quelque chose dont tu pourrais sûrement avoir l'utilité ! Prends-les ! Prends-les !"~ */
  IF ~~ THEN REPLY #55019 /* ~"Oui."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~"Feh ! Bien sûr, prends ! Y a-t-il autre chose que tu exiges de ton *humble* serviteur ?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~"Aucun. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~"Aucun. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~"Bah ! Tu vas me dépouiller de tous mes biens ! Tu veux des sorts ? Feh ! Voilà tout ce que j'ai, espèce de sangsue !" Il débite à toute allure une liste de sorts.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~"T'aurais pas une bonne petite Délivrance de la malédiction ?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~"T'aurais pas une bonne petite Délivrance de la malédiction ?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~"Globe d'invulnérabilité… ça m'a l'air utile. Je prends."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~"Globe d'invulnérabilité… ça m'a l'air utile. Je prends."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~"Tiens… et ce Déluge d'éclairs ?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~"Tiens… et ce Déluge d'éclairs ?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~"Tempête acide… ça m'a l'air dangereux. Donne."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~"Tempête acide. Donne-moi ça."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~"Tempête de lames ? Vrrr ! Quel nom ! Je la veux."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~"Mets-moi une autre Tempête de lames."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~"Tempête de glace stygienne ? Hum… trop dangereux pour rester entre tes mains… Elle sera mieux dans les miennes."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~"Tempête de glace stygienne ? Ça me plairait bien.~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~"Tu parles… elle est vide ta liste."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~"Laisse tomber. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~Sa main disparaît alors qu'il atteint un étrange espace/non-espace. Il en retire un parchemin qui semble avoir la souplesse de la peau humaine et te le tend. "Feh ! Prends-le et sois maudit… prends-le !"~ */
  IF ~~ THEN REPLY #55064 /* ~"Merci… Qu'est-ce que t'as d'autre à offrir comme sorts ?"~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~"Laisse tomber. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~Il grimace de toutes ses dents. "C'est avec une grande et profonde joie que je dois te dire que tu as pillé toutes mes copies de ce sort-là. Feh !"~ */
  IF ~~ THEN REPLY #55073 /* ~"Qu'est-ce t'as d'autre comme sorts ?"~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~"Laisse tomber. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Langue-fourchue grogne en montrant les dents. "Tu as ruiné, détruit, vidé l'une des plus belles bibliothèques de sorts du multivers… Tout cela pour pas grand-chose. Je n'ai plus de sorts à te donner."~ */
  IF ~~ THEN REPLY #55082 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~"Laisse tomber. Réponds plutôt à quelques questions…"~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~"Alors, au revoir."~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~"Feh ! Tu es donc revenu ! Et que t'a dit le Pillier ? A-t-il répondu à tes questions insipides ?"~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~"J'avais juste quelques questions…"~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~"Argh ! Quoi ? QUOI ?"~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~"J'avais juste quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~"Beurk ! La puanteur fétide des tanar'ris ! Je la sens à des lieues ! Un peu de respect pour mon foyer ! Tu ne pourrais pas trouver des fumées ou des vapeurs acides pour masquer ton odeur ? Je n'arriverai pas à débarrasser cet endroit de ces relents. Ils vont attirer tous les baatezus de la création !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~"Oh, et ce n'est pas n'importe quel tanar'ri qui arrive chez moi, mais une traînée ! Ça ne pouvait pas être pire. Entre ! Entre ! Fais comme chez toi !" Il lève les bras au ciel en signe de désespoir. "Pourquoi ne pas inviter toutes tes harpies infernales à venir me tourmenter, pendant qu'on y est ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~"Beurk ! La puanteur fétide des tanar'ris ! Je la sens à des lieues ! Un peu de respect pour mon foyer ! Tu ne pourrais pas trouver des fumées ou des vapeurs acides pour masquer ton odeur ? Je n'arriverai pas à débarrasser cet endroit de ces relents. Ils vont attirer tous les baatezus de la création !"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~"Viens-tu pour me tuer ?!! Me tourmenter ? Dans ce cas, sache qu'il me reste encore beaucoup de pouvoir !"~ */
  IF ~~ THEN REPLY #55100 /* ~"Je ne viens pas pour te tuer."~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~"Je ne viens pas pour te tourmenter."~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~"Je veux juste te poser quelques questions…"~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~"Faut-il donc toujours que tu souilles ma maison avec la puanteur fétide d'un tanar'ri ? Pose tes questions et ouste !"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~"Parle-moi de toi."~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~"Je suis tellement heureux de te revoir. Je le serais tout autant si tu voulais bien tomber raide mort."~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~"Parle-moi de toi."~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~"Qu'est-ce que tu veux de moi, quelles sont tes exigences, cette fois-ci ?"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~"Parle-moi de toi."~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~"Feh ! Qui va là ?! Viens-tu pour me tuer ?! Me tourmenter ? Si c'est le cas, sache qu'il me reste encore beaucoup de pouvoir !"~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~"Es-tu Fhjull Langue-fourchue ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~"Feh ! Bien sûr que c'est moi ! Tu dois le savoir si tu fais irruption dans *ce* squelette en particulier, de tous les squelettes de monstres dispersés dans l'infinité de l'Outreterre… ou alors c'est juste le hasard qui a envoyé un idiot défoncer ma porte d'entrée ?" Une pensée semble lui traverser l'esprit. "Tu dois jurer de ne dire à PERSONNE que tu sais où je suis !"~ */
  IF ~~ THEN REPLY #55554 /* ~Vérité : "Je jure."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~"Pas question."~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Mensonge : "Je le jure."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~Il se détend. "Et comment as-tu découvert cet endroit, hein ?"~ */
  IF ~~ THEN REPLY #55558 /* ~"Le deva Trias a dit que tu pourrais me répondre à quelques questions."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~"Alors sois maudit ! Vois comme je m'en soucis ! Feh ! Comment as-tu découvert cet endroit ?!"~ */
  IF ~~ THEN REPLY #55562 /* ~"Le deva Trias a dit que tu pourrais me répondre à quelques questions."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~Il se raidit. "Trias ? Trias le *Traître* t'envoie ici ?" Il serre et desserre ses griffes. "C'est l'ultime affront ! Ce suffisant ! Tue-le et je te récompenserai avec tout ce que j'ai ! Écorche-le et apporte-moi sa peau… Je m'en ferai un manteau… heurkkk !"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~"Je veux dire… non, non… Ne fais pas de mal au deva. Ce serait pas bien… J'ai eu tort, je le reconnais."~ */
  IF ~~ THEN REPLY #55567 /* ~"Qu'est-ce que Trias t'a fait ?"~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~"Tout cela fut fort distrayant, mais ça ne répond pas à mes questions."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~"Feh ! Des années de service en tant qu'Avocat Infernal ! Le souci du détail et de l'organisation. Je n'ai jamais questionné mes supérieurs. J'ai fait TOUT ce que l'on m'a demandé. J'infligeais à mes subalternes les plus cruelles et les plus recherchées des punitions lorsqu'ils échouaient."~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~"ET HOP… un faux pas, et tout s'effondre ! Tout cela à cause de quoi ?! HASARD, CHAOS, ÉTAT ERRATIQUE. Et les races mineures s'étonnent que les baatezus veuillent de l'ordre dans le multivers." Il s'interrompt, grondant de colère. "Le deva a menti. Il a *menti*. Trias le traître a réussi à me faire signer un contrat… Et moi, aveuglé par la perspective de le capturer, je me suis laissé piéger comme un bleu."~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~"S'il meurt, le contrat expire… Mais je n'ai pas encore réussi à mettre la main dessus, et de toute façon, comment le frapper ?! Que faire ? Ces seules pensées perfides mettent mon esprit au martyr. J'étais *si* sûr d'avoir ce parangon de vertu. Ce désir borné m'a coûté des siècles de machinations glorieuses et m'a englouti dans ce puits de bonne volonté. Amen."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~J'ai trouvé Fhjull Langue-fourchue, le fiélon charitable. Apparemment, il a une dette envers Trias, qu'il affuble du surnom de Traître. Une malédiction l'oblige désormais à aider ceux qui sont dans le besoin, et il déteste ça.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~J'ai trouvé Fhjull Langue-fourchue, le fiélon charitable. Apparemment, il a une dette envers Trias, qu'il affuble du surnom de Traître. Une malédiction l'oblige désormais à aider ceux qui sont dans le besoin, et il déteste ça.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~"Et maintenant je suis condamné à faire le bien, obligé d'aider ceux qui en ont besoin. Feh ! Une éternité de malédictions sur Trias ! Que la variole s'abatte sur son aide bénie ! Que tous les immondices de Maladomini pleuvent sur sa tête !" Il divague encore pendant un moment, et retourne ensuite son attention vers toi et parle en grinçant les dents. "Mon contrat avec le deva m'oblige maintenant à te demander ce que je peux faire pour toi. Es-tu venu me tourmenter ? Me tuer ?"~ */
  IF ~~ THEN REPLY #55590 /* ~"Je viens seulement chercher un savoir."~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~"Je ne viens pas pour te tourmenter."~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~"Je ne viens pas pour te tuer."~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~"Non. En fait, je partais."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~"Oh, MERVEILLEUX."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~"Parle-moi de toi."~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~"Feh ! Nous verrons, nous verrons ! Si tu n'as pas l'intention de me tuer ou de me torturer, je crains que le tourment ne soit d'une nature plus subtile… La pire de toutes les tortures, et de loin."~ */
  IF ~~ THEN REPLY #55615 /* ~"J'aimerais juste que tu répondes à quelques questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~"D'accord, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~"Feh ! Si seulement tu le faisais ! Ainsi tu pourrais mettre fin à cette parodie d'existence !"~ */
  IF ~~ THEN REPLY #55622 /* ~"J'aimerais juste que tu répondes à quelques questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~"Qu'est-ce qu'elle a donc de si terrible cette existence ?"~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~"Comment les IMBÉCILES peuvent-ils parler autant !" Il fait un signe de sa main. "Parle. Parle. Feh !"~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~"Parle-moi de toi."~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~"Feh. Parle. Crache le morceau."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~"Parle-moi de toi."~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~"Comment ça se fait que tes ailes sont dans un état pareil ?"~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~"Où est cet endroit ?"~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~"On m'a dit que tu pourrais me renseigner sur ma mortalité. On me l'a volée."~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~"J'aurais besoin d'aide."~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~"Parle-moi encore de ce Pilier… et comment y aller."~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~"J'ai besoin d'un endroit pour me reposer."~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~Il lève les yeux au ciel. "Si tu avais vu les splendeurs de Baator, marché dans ses sombres palais et visité les villes d'acier hurlantes dissimulées par les fumées toxiques, tu ne poserais pas la question. Feh !"~ */
  IF ~~ THEN REPLY #55672 /* ~"D'accord. Réponds à quelques questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~"Oh, oui. Ne sont-elles pas magnifiques… ? Feh ! Elles furent les premières choses à m'être enlevées avant mon exil. Avant que je ne sois forcé de fuir les salles brûlantes de mon peuple, mes ailes ont été prises comme trophées par les misérables *abishaïs*, pour en faire des bannières dans la Guerre Sanglante. Mes cornes ont été brisées, et l'une d'elles fut creusée comme une corne à boire pour mon seigneur Bel. Que son nom soit maudit à travers les Plans."~ */
  IF ~~ THEN REPLY #55677 /* ~"Pourquoi tout cela est-il arrivé ?"~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~"Que peux-tu me dire de la Guerre Sanglante ?"~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~"Réponds à d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~"Merci… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~"Feh. Un foutu cratère dans l'Outreterre qui reflète le néant de ma vie. Feh. Je vis de peu. La moelle de la créature suffit à me nourrir et les énergies du lieu empêchent les petits malins de me trouver… Bien qu'apparemment, ça n'arrête pas les imbéciles."~ */
  IF ~~ THEN REPLY #55684 /* ~"Qu'est-ce donc que cette créature ?"~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~"Qu'est-ce qui rend ta vie tellement vide ?"~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~"Réponds à d'autres questions…"~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~Pour la première fois, il t'observe attentivement. "Les souvenirs traversent mon esprit tels des canyons, presque-humain. J'en ai rencontré des créatures au cours de ma vie d'immortel… Mais je ne crois pas que tu en faisais partie."~ */
  IF ~~ THEN REPLY #55695 /* ~"Continue."~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~"Réponds à d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~"Je ne faisais rien d'autre que vivre dans une tragique et engourdissante solitude, jusqu'au jour où tu as surgi sans invitation dans ce cratère qu'est ma vie. Le cratère, quelle métaphore pour désigner ma vie, mon existence, l'ombre pâle des demeures que je possédais jadis !"~ */
  IF ~~ THEN REPLY #55701 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~"Réponds à d'autres questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~"Allons bon, des discours égocentriques ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~Il profère une plainte étranglée. "Il me reste quelques… très peu… d'objets que j'ai conservés au fil des années. Ils me sont… précieux… Mais si tu en as besoin…"~ */
  IF ~~ THEN REPLY #55705 /* ~"Bien sûr que oui. Voyons un peu ce que tu possèdes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~"Réponds à d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~"Rien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~"Que veux-tu savoir ? Comment t'y rendre ? Ce que c'est ? Quoi ? Quoi ?!"~ */
  IF ~~ THEN REPLY #55709 /* ~"Dis-moi ce que c'est."~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~"Dis-moi comment y aller."~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~"Et comment je reviens, une fois là-bas ?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~"Comment je reviendrai du Pilier ?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~"Réponds à d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~"Feh ! J'ai dit tout ce que j'avais l'intention de dire au sujet du Traître. C'est lui qui m'a condamné à cette vie, et ce sont ses boyaux que je verrai tendus entre les Portes de l'Aube comme une harpe céleste… non… non… aucun mal au deva. Malédictions !"~ */
  IF ~~ THEN REPLY #55724 /* ~"Alors, réponds encore à quelques questions…"~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~"Je vois… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~"Dire que j'étais jadis Avocat Infernal parmi les plus grands de Baator… Et puis un formidable revers de fortune !… Ce genre de choses me fait d'autant plus détester le hasard et le chaos du multivers."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~"Que t'est-il arrivé ?"~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~"Que t'est-il arrivé ?"~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~"Pourquoi est-ce que tu es parti ?"~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~"Réponds à d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Langue-fourchue hausse les épaules. "Pour moi, vous êtes tous les mêmes… Et je crois que j'aurais reconnu tes chairs balafrées… Elles rappellent les peintures qui tapissent la galerie des peaux, chez Bel à Baator… Grâce en moins et passion en plus !"~ */
  IF ~~ THEN REPLY #55747 /* ~"Laissons de côté les balafres et reparlons de ma mortalité si ça ne te fait rien !"~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~"Continue…"~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~"J'avais d'autres questions…"~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~"La violence est belle, presque acceptable, mais les cicatrices sont faites avec une grossièreté quasi tanar'riesque, sans le moindre égard pour la victime. Un artiste baatezu serait bien plus sensible aux chemins que suit la douleur dans le corps. Pour certaines de ces blessures, c'est du beau travail de mise à mort, mais pour d'autres, on croirait qu'un boucher aveugle a taillé des biftecks humains."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~"Quoi… ?"~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~"Feh. L'art humain me rend malade parfois. Tout ce potentiel gaspillé."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~"Feh. L'art humain me rend malade parfois. Tout ce potentiel gaspillé."~ */
  IF ~~ THEN REPLY #55755 /* ~"Laissons de côté les balafres et reparlons de ma mortalité si ça ne te fait rien !"~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~"J'ai des questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~"Feh ! Dire que les tanar'ris sont grossiers c'est insulter la grossièreté. N'importe quelle espèce inférieure qui se délecte du chaos, qui se laisse volontairement prendre et noyer dans ses marées stagnantes, et appelle ça 'le mal' n'est même pas une espèce. Ce ne sont que des bêtes."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~"Feh et re-feh ! Les bêtes tanar'ri veulent défaire la loi et l'ordre du visage du mal ! Inexcusable ! Intolérable ! Je ne peux pas -"~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~"Feh ! Tu dis ça simplement parce que tu es… ce que tu es." Il remue les sourcils, et fait un geste dédaigneux de la main. "J'ai au moins encore le droit d'être cynique."~ */
  IF ~~ THEN REPLY #55761 /* ~"Parfait. Et si on reparlait de ma mortalité au lieu de mes balafres !…"~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~"J'ai encore quelques questions à poser…"~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~"Parfait, parfait." Il se gratte la tête. "Si mes souvenirs sont exacts - et ils sont loin de l'être, grâce à ce maudit deva ! -, on m'a parlé d'un cas semblable au tien. Cela te rend immortel, non ?"~ */
  IF ~~ THEN REPLY #55765 /* ~"Oui."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~"Dans ce cas, la mort elle-même n'est plus sacrée. Feh. De mon temps, les mortels le restaient et savaient tenir leur place… De nos jours, tout un chacun souffre de la maladie de l'ennui éternel. On devrait organiser une réunion et inviter tous ceux des plans pour leur offrir des contrats immortels… Ça nous épargnerait à tous, pauvres baatezus besogneux, pas mal de travail. Feh."~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~"Si tout le monde était immortel, tout ce système de suppliants serait dans un fameux caca. Feh. L'immortalité n'est pas un jouet à mettre entre les mains de gosses indisciplinés comme toi."~ */
  IF ~~ THEN REPLY #55768 /* ~"Sans doute, sans doute… Mais dis-moi ce que tu sais de ma mortalité."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~"Feh… comme je le disais, je me rappelle avoir entendu parler d'un endroit nommé la Forteresse des Regrets." Il réfléchit. "Oui… oui, c'est ça."~ */
  IF ~~ THEN REPLY #55770 /* ~"Comment je fais pour y aller ?"~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~Large sourire : "J'ai l'immense plaisir de t'annoncer que je ne sais PAS. Absolument pas ! Je ne peux pas t'aider à aller là, et cela me glace délicieusement le cœur. Non. Je. Ne. Peux. Pas. T'aider. Oh, pourquoi ai-je tant attendu pour prononcer ces paroles, si douces…"~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~"Tu connais quelqu'un qui sait ?"~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~"Tu connais quelqu'un qui sait ?"~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~"Hein ? En voilà assez de cet interrogatoire ! Oui, oui, je connais *quelqu'un* qui saurait peut-être… À Baator se trouve un pilier de traîtres, de menteurs… N'empêche, leur savoir est considérable. Peut-être qu'ils sauraient où tu peux trouver cette Forteresse des Regrets."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~"Comment me rendre à Baator ?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Langue-fourchue m'a dit qu'un pilier constitué de sages, de menteurs et de traîtres détient peut-être les réponses aux questions que je me pose au sujet de ma mortalité. Sous le bras gauche du squelette se trouve un portail menant en Baator.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~"Comment me rendre à Baator ?"~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~"Il y a un portail à l'extérieur. Il se trouve dans la main de cette créature géante. Passe sous la voûte formée par le bras gauche de la créature et il te mènera au Pilier des Crânes. Le portail est ouvert pour toi maintenant." ~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~"Et comment je fais pour revenir ?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Le fiélon m'a également dit comment revenir après m'être entretenu avec le Pilier. Il suffit que je trouve quelque chose de commun à l'environnement du plan, et cela devrait me ramener ici.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~"Comment je reviendrai du Pilier ?"~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Le fiélon m'a également dit comment revenir après m'être entretenu avec le Pilier. Il suffit que je trouve quelque chose de commun à l'environnement du plan, et cela devrait me ramener ici.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~"Comment je reviendrai du Pilier ?"~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~"Hein ? Revenir ? Ma foi, je n'y avais pas songé. Pour revenir de Baator, tu devras trouver le portail et te couper la langue avec un éclat d'obsidienne pour l'activer. *Malheureusement*, je ne sais pas où se trouve le portail ; peut-être que le Pilier le sait, lui. Mais il n'y a aucune raison pour que tu reviennes ici. Et nul désir de ma part de te revoir."~ */
  IF ~~ THEN REPLY #55783 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~Il grogne. "Je n'ai pas l'intention de vous étrangler pour laisser vos cadavres aux trélons."~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~"Feh… c'est un Cadeau de la Haine, une belle arme pour quelqu'un comme toi." Il rit sous cape. "Je ne crois pas que tu en voudras… il est chargé d'une malédiction. Peut-être veux-tu reconsidérer…"~ */
  IF ~~ THEN REPLY #55796 /* ~"Pas grave, je le prends."~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~"Cette vieille chose ? Feh ! C'est le nœud Gordien. Tranche-le et tu seras doublement le chef que tu es déjà, heh heh. Et naturellement il a un prix, un que je n'ai heureusement pas le pouvoir de t'éviter de payer."~ */
  IF ~~ THEN REPLY #55806 /* ~"Pas grave, je le prends."~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~Il soupire. "Une larme de vipère. Tu la mets dans ta bouche et tes baisers seront ceux d'une vipère, pleins de venin et de haine."~ */
  IF ~~ THEN REPLY #55816 /* ~"Je la prends."~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~"C'est un souvenir de ma vie à Baator - un couteau taillé dans de l'acier vert Baatorien, l'un des matériaux les plus solides que je connaisse. Feh ! Vas-y, prends les souvenirs de mon passé et qu'on n'en parle plus !"~ */
  IF ~~ THEN REPLY #55826 /* ~"Je prends… mais je promets pas de disparaître."~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~"Cette vieille chose ? Feh ! Ce n'est qu'un poignard d'acier vert Baatorien. Regarde bien, je suis sûr que ce n'est pas le genre de chose qui t'intéresse."~ */
  IF ~~ THEN REPLY #55852 /* ~"Pas grave, je le prends."~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~"Ça ? Ce sont des *kassegs*, des parasites qui vont se loger dans ton cerveau et dévorent ton énergie mentale, sans rien apporter de bon… Feh ! Maudit contrat ! Ils augmentent le pouvoir de ton esprit, quelque chose dont tu pourrais sûrement avoir l'utilité ! Prends-les ! Prends-les !"~ */
  IF ~~ THEN REPLY #55874 /* ~"Oui."~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~"Feh ! Bien sûr, prends ! Y a-t-il autre chose que tu exiges de ton *humble* serviteur ?!"~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Examine l'inquiétante hache : "Qu'est-ce que c'est ?"~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Examine la corde nouée : "Qu'est-ce que c'est ?"~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Examine le losange vert : "Qu'est-ce que c'est ?"~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Examine le couteau en acier vert : "Qu'est-ce que c'est ?"~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Examine la dague verte : "Qu'est-ce que c'est ?"~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Examine les bestioles gesticulantes : "Qu'est-ce que c'est ?"~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~"T'aurais pas des sorts, par hasard ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~"Laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~"Bah ! Tu vas me dépouiller de tous mes biens ! Tu veux des sorts ? Feh ! Voilà tout ce que j'ai, espèce de sangsue !" Il débite à toute allure une liste de sorts.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~"T'aurais pas une bonne petite Délivrance de la malédiction ?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~"T'aurais pas une bonne petite Délivrance de la malédiction ?"~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~"Globe d'invulnérabilité… ça m'a l'air utile. Je prends."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~"Globe d'invulnérabilité… ça m'a l'air utile. Je prends."~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~"Tiens… et ce Déluge d'éclairs ?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~"Tiens… et ce Déluge d'éclairs ?"~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~"Tempête acide… ça m'a l'air dangereux. Donne."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~"Tempête acide. Donne-moi ça."~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~"Tempête de lames ? Vrrr ! Quel nom ! Je la veux."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~"Mets-moi une autre Tempête de lames."~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~"Tempête de glace stygienne ? Hum… trop dangereux pour rester entre tes mains… Elle sera mieux dans les miennes."~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~"Tempête de glace stygienne ? Ça me plairait bien.~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~"Tu parles… elle est vide ta liste."~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~Sa main disparaît alors qu'il atteint un étrange espace/non-espace. Il en retire un parchemin qui semble avoir la souplesse de la peau humaine et te le tend. "Feh ! Prends-le et sois maudit… prends-le !"~ */
  IF ~~ THEN REPLY #55955 /* ~"Merci… Qu'est-ce que t'as d'autre à offrir comme sorts ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~Il grimace de toutes ses dents. "C'est avec une grande et profonde joie que je dois te dire que tu as pillé toutes mes copies de ce sort-là. Feh !"~ */
  IF ~~ THEN REPLY #55960 /* ~"Qu'est-ce t'as d'autre comme sorts ?"~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~"Laisse tomber. J'ai quelques questions à te poser."~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Langue-fourchue grogne en montrant les dents. "Tu as ruiné, détruit, vidé l'une des plus belles bibliothèques de sorts du multivers… Tout cela pour pas grand-chose. Je n'ai plus de sorts à te donner."~ */
  IF ~~ THEN REPLY #55965 /* ~"Jetons encore un œil à ces objets."~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~"Laisse tomber. Réponds plutôt à quelques questions…"~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~"Feh ! As-tu tapé ton crâne contre chaque rocher qui tombe de la montagne de l'ignorance ? La Guerre Sanglante fait rage dans les Plans Inférieurs. Aucun plan n'est épargné par ce conflit. Pense à la guerre la plus affreuse qui soit imaginable, multiplie ça par un milliard de fois en temps et en portée et tu aura un aperçu de la bataille qu'on se livre dans tous les Plans Inférieurs. C'est une guerre d'idéologie, pour définir un des concepts les plus basiques du multivers !"~ */
  IF ~~ THEN REPLY #55970 /* ~"Continue."~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~"Laisse tomber. J'ai encore des questions à poser."~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~"Ceci est le squelette d'Ul-Goris, le père des goristros. Ce sont des tours de siège vivantes aux allures d'ours, des mastodontes du chaos, énormes et pratiquement impossible à arrêter, très résistants à la magie… Et les os d'Ul-Goris, dans ce cratère où il a trouvé la mort, émettent beaucoup d'énergie qui empêche la magie de m'espionner, gardant ainsi ce pitoyable corps en vie pendant quelques années désespérées de plus. Feh !"~ */
  IF ~~ THEN REPLY #55978 /* ~"Compris. J'ai encore quelques questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~"Si tu avais promené ta carcasse dans les rues brûlantes de Dis et senti la douce puanteur de la chair calcinée, respiré les vapeurs délétères des banquises de la Stygie, conduit des armées entre les palais éclairés… tu ne poserais pas cette question, demi-homme."~ */
  IF ~~ THEN REPLY #55983 /* ~"Et que t'est-il arrivé ?"~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~"J'avais d'autres questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~"Ce maudit deva, voilà ce qui m'est arrivé ! J'étais si sûr de moi, si sûr… Feh ! Défait de mon pouvoir comme un nouveau-né. Pas étonnant qu'il y ait les hordes de Baator à mes trousses."~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~"Parle-moi de Trias."~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~"Parle-moi de Trias."~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~"J'ai encore quelques questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~"Feh ! Ne t'ai-je pas dit la nature de ce contrat maudit ! Je suis OBLIGÉ de te donner cette information. Le Pilier… est ton seul espoir."~ */
  IF ~~ THEN REPLY #55997 /* ~"Morte, pourquoi tu veux pas aller là-bas ?"~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~"Très bien. Réponds à d'autres questions pour moi."~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~"Feh… ce que c'est… C'est une pile énorme de têtes, les esprits de ceux morts pour avoir menti et, ainsi, causé d'autres morts. C'est un ramassis de sages et de tricheurs, entassés pêle-mêle avec une somme de savoir immense, parmi les plus considérables des plans."~ */
  IF ~~ THEN REPLY #56003 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~"Feh ! Je dissiperai ton ignorance à ce sujet. Sache qu'il n'y a PAS de place pour un baatezu enveloppé dans les chaînes de la charité là où je VOUDRAIS être. Ici, au moins, je me suis mis à l'abri de la cruauté du contrat qu'on m'a infligé. Ce deva a l'âme d'un démon, je te le dis."~ */
  IF ~~ THEN REPLY #56007 /* ~"Bon, alors réponds encore à quelques questions…"~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~"Cela procure à la recherche un petit coup de pouce… de nouvelles créations horribles sont nées à cause de la Guerre Sanglante. Pourquoi ? Parce que tout n'est que douleur, mort et mal. Les tanar'ris luttent pour le chaos et le mal… par la force brutale et de brusques flambées de haine… par une mentalité grégaire de mal vertigineux. Des hordes qui tuent et pillent."~ */
  IF ~~ THEN REPLY #56010 /* ~"Et de l'autre côté ?"~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~"Les baatezus n'aspirent qu'à un mal strictement réglementé. Ils veulent promouvoir la cause du mal dans la précision et l'ordre. Le tanar'ri assassine. Le baatezu exploite. Chacun est déterminé à exterminer l'autre."~ */
  IF ~~ THEN REPLY #56014 /* ~"Continue."~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~"Laisse tomber. Réponds plutôt à quelques questions."~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~"Ma mission consistait en partie - et j'étais le meilleur, crois-moi - à enrôler de nouvelles recrues, surtout des guerriers planaires et des mages d'autres mondes, pour servir comme chair à canon et troupes de première ligne dans la guerre. C'est ainsi que j'ai attiré l'attention du seigneur Bel en personne. Même lui a vu ma valeur ! Feh ! Maintenant mon humiliation est totale."~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~"Tu me reconnais ?"~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~"Tu me reconnais ?"~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~"D'accord. Bon, réponds encore à quelques questions."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~"Et comment ! Au revoir."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~"Et comment ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~"Nous n'avons pas déjà parlé de ça ? Feh ! Stupides humains !"~ */
  IF ~~ THEN REPLY #56024 /* ~"Bon, réponds encore à quelques questions."~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~"Merci. Au revoir."~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~Tu vois un fiélon aux ailes brisée et couturées de cicatrices. Il parle d'une voix tendue, rageuse et désespérée, en serrant les dents. "Un tanar'ri chez moi ! La pire des indignités ! Pourquoi ne pas inviter tous tes foutus congénères, tant que tu y es ?!"~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~Tu vois un fiélon aux ailes brisée et couturées de cicatrices. Il parle d'une voix tendue, rageuse et désespérée, en serrant les dents. "Un tanar'ri chez moi ! La pire des indignités ! Pourquoi ne pas inviter tous tes foutus congénères, tant que tu y es ?!"~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~"On dirait que je vais devoir M'ENTERRER pour pouvoir rester seul."~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~"Génial. Une puanteur encore pire !"~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~"Feh ! Maudit sois-tu ! Mes menaces et mes avertissements restent lettre morte, il faut que tu amènes les légions de Baator à ma porte ! Fourbe ! Traître ! Je… hmmm… c'est donc ça qu'on ressent…"~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~"Qu'est-ce que tu fais ici ?" Il se détourne et crache par terre.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~"QUOI ? Il faut encore que je te supporte ? Ne cesseras-tu donc jamais de me tourmenter ? Bien, vas-y ! Fais comme chez toi ! Pille mon garde-manger, bouleverse mes expériences… moi, je vais me passer les nerfs dehors !" Il sort, fou de rage.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~"Merci."~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~"Merci…"~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~"Merci…"~ */ EXIT
END
