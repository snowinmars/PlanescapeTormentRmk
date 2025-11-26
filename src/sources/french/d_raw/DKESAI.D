// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESAI~

IF ~  Global("Kesai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2939 /* ~Cette femme délicieusement voluptueuse a une lourde crinière de boucles noires, une peau bleutée et des yeux chatoyants de couleur rouge, tels deux rubis animés d'un feu intérieur. Bien qu'elle ne soit pas belle au sens habituel du terme, ses traits sont exotiques et loin d'être déplaisants.~ */
  IF ~~ THEN REPLY #2940 /* ~"Bonjour…"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #40857 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40858 /* ~La voix de la femme est grave et sensuelle : "Bonjour à toi, monsieur." Ses yeux ardents roulent sur toi. "Je m'appelle Kesai-Serris. Alors dis-moi : qu'est-ce que je peux faire pour toi, hein ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 432
  IF ~  !NearbyDialog("DMorte")
Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40859 /* ~"Kesai ? La fille de Ravel ?"~ */ GOTO 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40860 /* ~"Ben… qu'est-ce que tu fais normalement avec les clients ?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40861 /* ~"J'avais quelques questions…"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40862 /* ~"Rien, merci. Au revoir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #40863 /* ~Kesai rit à gorge déployée, découvrant des canines suffisamment longues pour être considérées comme des crocs. Elle secoue la tête et sourit à Morte. "Non, vraiment, j't'en prie… qu'est-ce que je peux faire pour toi ?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40864 /* ~"Kesai ? La fille de Ravel ?"~ */ GOTO 41
  IF ~~ THEN REPLY #40865 /* ~"Ben… qu'est-ce que tu fais normalement avec les clients ?"~ */ GOTO 4
  IF ~~ THEN REPLY #40866 /* ~"J'avais quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40867 /* ~"Rien, merci. Au revoir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.3 66.3 67.3 68.4
  SAY #40868 /* ~Elle soulève les sourcils : "C'est une blague, hein ? Hmph !" Kesai te sourit en plissant ses yeux rouge flamboyant. "Reviens quand tu auras envie de parler, d'accord ?"~ */
  IF ~~ THEN REPLY #40869 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 66.1 67.1 68.2
  SAY #40870 /* ~"Parler, évidemment ! En général, on parle de rêves, souvent de nature érotique… mais pas toujours !" Kesai te fait un clin d'œil en souriant. "Alors ! Est-ce que ça te dirait, de me raconter les tiens ? Sois pas timide ; j'en ai entendu de toutes les couleurs, tu sais. Rien ne peut me choquer ou m'étonner, et j'adore écouter les rêves des gens. On peut les échanger si tu veux - mais tu dois commencer."~ */
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40871 /* ~"Mes rêves ont été récemment révisés quand je t'ai vue…"~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40872 /* ~"Mes rêves ont récemment été révisés quand je t'ai vue, ma belle…"~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 7
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40873 /* ~"Je ne rêve pas beaucoup, vraiment. Ça fait longtemps que j'ai pas fait le moindre songe."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40874 /* ~"Je… je ne rêve pas, en fait."~ */ GOTO 21
  IF ~~ THEN REPLY #40875 /* ~"Non… je préfère pas."~ */ GOTO 5
  IF ~~ THEN REPLY #40876 /* ~"J'aimerais bien, mais j'ai pas assez de temps."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.4 4.5 6.2 6.3 13.1 14.1 15.2 15.3 16.2 17.2 17.3 19.2 19.3 23.1
  SAY #40877 /* ~Kesai fait la moue un instant, puis hausse les épaules. "Comme tu voudras ! Je serai là si tu changes d'avis…"~ */
  IF ~~ THEN REPLY #40878 /* ~"Attends… J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40879 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #40880 /* ~"Tiens donc ?" Kesai sourit et secoue la tête. "Allez, allez… raconte-moi tout ! De quoi est-ce que tu rêves, hein ?"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40881 /* ~"Je ne rêve pas beaucoup, vraiment. Ça fait longtemps que j'ai pas fait le moindre songe."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40882 /* ~"Je… je ne rêve pas, en fait."~ */ GOTO 21
  IF ~~ THEN REPLY #40883 /* ~"Je préfère ne pas en parler."~ */ GOTO 5
  IF ~~ THEN REPLY #40884 /* ~"J'aimerais bien te le dire, mais je n'ai pas assez de temps."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #40885 /* ~"*Tiens donc* ?" Kesai sourit et ses yeux rouge flamboyant t'observent de nouveau. "Tu as l'air très sauvage, tu sais ? Dis-moi : tu es brutal avec tes maîtresses ? Pendant *l'acte,* je veux dire… très physique ?"~ */
  IF ~~ THEN REPLY #40886 /* ~"Tu veux dire 'outrageant' ?"~ */ GOTO 8
  IF ~~ THEN REPLY #40887 /* ~"Pourquoi tu me poses une question pareille ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40888 /* ~"Non, je suis plutôt tendre, au contraire."~ */ GOTO 10
  IF ~~ THEN REPLY #40889 /* ~"Oui, je suppose."~ */ GOTO 10
  IF ~~ THEN REPLY #40890 /* ~"Seulement si ça leur fait plaisir."~ */ GOTO 10
  IF ~~ THEN REPLY #40891 /* ~"Ça dépend vraiment de mon humeur."~ */ GOTO 10
  IF ~~ THEN REPLY #40892 /* ~"Je… je ne sais pas, je t'assure."~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40893 /* ~"Par les nombreux paradis, non !" Kesai soupire d'un air exaspéré. "Il y a des gens qui ont une façon *lente* et *sensuelle* de faire les choses… alors que d'autres sont plus directs, brutaux et fougueux, tu comprends ? Je me demandais juste dans quelle catégorie *tu* te situais, c'est tout."~ */
  IF ~~ THEN REPLY #40894 /* ~"Pourquoi tu me poses une question pareille ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40895 /* ~"Je suis plutôt tendre, au contraire."~ */ GOTO 10
  IF ~~ THEN REPLY #40896 /* ~"Je suppose que je suis un peu fougueux, dans ce cas."~ */ GOTO 10
  IF ~~ THEN REPLY #40899 /* ~"Je ne suis fougueux que si ça leur plaît."~ */ GOTO 10
  IF ~~ THEN REPLY #40900 /* ~"Ça dépend vraiment de mon humeur."~ */ GOTO 10
  IF ~~ THEN REPLY #40901 /* ~"Je… je ne sais pas, je t'assure."~ */ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #40902 /* ~Kesai hausse les épaules. "Simple curiosité… et j'aime bien parler de l'acte d'amour. Beaucoup de gens sont mal à l'aise quand ils l'évoquent, mais c'est important de pouvoir en parler, surtout avec son partenaire - c'est bon pour les deux ! Ce que j'espère, c'est que mes clients trouvent le courage de parler de ces choses avec leurs propres partenaires, si c'est pas déjà le cas. Alors : tu ne m'as pas répondu…"~ */
  IF ~~ THEN REPLY #40903 /* ~"Je suis plutôt tendre, au contraire."~ */ GOTO 10
  IF ~~ THEN REPLY #40904 /* ~"Je suppose que je suis un peu fougueux."~ */ GOTO 10
  IF ~~ THEN REPLY #40905 /* ~"Je ne suis fougueux que si ça leur plaît."~ */ GOTO 10
  IF ~~ THEN REPLY #40906 /* ~"Ça dépend vraiment de mon humeur."~ */ GOTO 10
  IF ~~ THEN REPLY #40907 /* ~"Je… je ne sais pas, je t'assure."~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 7.4 7.5 8.1 8.2 8.3 8.4 9.0 9.1 9.2 9.3
  SAY #40908 /* ~Kesai acquiesce en souriant. "Je pensais que c'est ce que tu dirais. Je suis plutôt fougueuse… j'aime bien être secouée et j'adore mordre ! Mais j'ai des dents aiguisées, alors je dois faire attention. Des fois, je me laisse aller et je fais saigner un peu, tu sais ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 433
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40909 /* ~"Tu as les dents aiguisées ?"~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40910 /* ~"Ça ne me dérangerait pas…"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40911 /* ~"Ça ne passerait *pas* avec moi…"~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40912 /* ~"Oui… Eh bien, j'ai des questions…"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40913 /* ~"Je vois. Il vaut mieux que je parte, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #40914 /* ~"En train de bourlinguer dans l'Outreterre, sûrement. Mais c'était une question rhétorique, je suppose ?" Elle fait un clin d'œil à Morte, puis se retourne vers toi.~ */
  IF ~~ THEN REPLY #40915 /* ~"Tu as les dents aiguisées ?"~ */ GOTO 12
  IF ~~ THEN REPLY #40916 /* ~"Je crois que les morsures ne me dérangeraient pas…"~ */ GOTO 13
  IF ~~ THEN REPLY #40917 /* ~"Les morsures ne passeraient *pas* bien avec moi…"~ */ GOTO 16
  IF ~~ THEN REPLY #40918 /* ~"J'ai quelques questions, Kesai…"~ */ GOTO 26
  IF ~~ THEN REPLY #40919 /* ~"Il vaut mieux que je parte maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #40920 /* ~Kesai acquiesce. "Mmm-hmm, c'est le moins qu'on puisse dire. Tu veux voir ? Regarde…" Elle entrouvre la bouche et passe sa langue violette sur ses dents du bas ; ses canines sont juste assez longues pour être considérées comme des crocs.~ */
  IF ~~ THEN REPLY #40921 /* ~"Je crois que les morsures ne me dérangeraient pas…"~ */ GOTO 13
  IF ~~ THEN REPLY #40922 /* ~"Avec des dents pareilles, pas de risque que j'apprécie les morsures…"~ */ GOTO 16
  IF ~~ THEN REPLY #40923 /* ~"Je vois. J'ai quelques questions, Kesai…"~ */ GOTO 26
  IF ~~ THEN REPLY #40924 /* ~"Il vaut mieux que je parte maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.0
  SAY #40925 /* ~Kesai rit. "De toute façon, ça m'étonnerait que je puisse percer ta couenne. Tu ressens encore des sensations tactiles ?"~ */
  IF ~~ THEN REPLY #40926 /* ~"Non, malheureusement, pas beaucoup. Les cicatrices sont très profondes."~ */ GOTO 14
  IF ~~ THEN REPLY #40927 /* ~"J'ai pas envie d'en parler."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40928 /* ~"Oh, c'est dommage. Tu as *vraiment* beaucoup de cicatrices…" Kesai regarde ton visage de plus près. "Même tes lèvres, tes paupières… dis-moi : tu as des cicatrices partout ? Tu sais… *vraiment* partout ?"~ */
  IF ~~ THEN REPLY #40929 /* ~"Non, pas vraiment. Certaines parties de mon corps ont réussi à échapper aux blessures."~ */ GOTO 15
  IF ~~ THEN REPLY #40930 /* ~"J'ai pas envie d'en parler."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40931 /* ~"Tant mieux !" Kesai rit gaiement, puis prend un air faussement sérieux et se plante les mains sur les hanches. "Tu ne m'as *toujours pas* parlé de tes rêves, tu sais. Allez, raconte !"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40932 /* ~"Je ne rêve pas beaucoup, vraiment. Ça fait longtemps que j'ai pas fait le moindre songe."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40933 /* ~"Je… je ne rêve pas, en fait."~ */ GOTO 21
  IF ~~ THEN REPLY #40934 /* ~"Je préfère ne pas en parler."~ */ GOTO 5
  IF ~~ THEN REPLY #40935 /* ~"J'aimerais bien te le dire, mais je n'ai pas assez de temps."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 10.3 11.2 12.1
  SAY #40936 /* ~"Oh, tu vois ? C'est pour ça que c'est si important de parler de ces choses-là, surtout avec son partenaire. La première fois pourrait être bien meilleure si les deux partenaires discutaient de l'acte avant… en plus, c'est tellement sympa d'en parler, hein ?" Kesai te dédie un grand sourire et ses yeux brillent comme deux joyaux écarlates.~ */
  IF ~~ THEN REPLY #40937 /* ~"Oui, c'est vrai."~ */ GOTO 17
  IF ~~ THEN REPLY #40938 /* ~"Non, je trouve que c'est un sujet personnel, qu'on ne doit pas trop prendre à la légère."~ */ GOTO 17
  IF ~~ THEN REPLY #40939 /* ~"Je préfèrerais vraiment ne pas en parler."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40940 /* ~Kesai acquiesce et semble un instant perdue dans ses pensées. "Au fait… tu ne m'as *toujours pas* parlé de tes rêves, tu sais. Allez, raconte !"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40941 /* ~"Je ne rêve pas beaucoup, vraiment. Ça fait longtemps que j'ai pas fait le moindre songe."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40942 /* ~"Je… je ne rêve pas, en fait."~ */ GOTO 21
  IF ~~ THEN REPLY #40943 /* ~"Je préfère ne pas en parler."~ */ GOTO 5
  IF ~~ THEN REPLY #40944 /* ~"J'aimerais bien te le dire, mais je n'ai pas assez de temps."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 7.6 8.5 9.4
  SAY #40945 /* ~Kesai fait la moue un instant, puis hausse les épaules. "Si ça te met mal à l'aise d'en parler, c'est pas grave. Je dois quand même te conseiller de ne pas être aussi réservé avec tes maîtresses. C'est important de parler de ces choses-là, surtout avant de passer à l'acte, tu sais ? C'est préférable pour les deux partenaires."~ */
  IF ~~ THEN REPLY #40946 /* ~"Je m'en souviendrai."~ */ GOTO 19
  IF ~~ THEN REPLY #40947 /* ~"Je crois qu'il vaut mieux que tu t'occupes de tes affaires."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #40948 /* ~Elle te répond par un sourire. "Au fait… tu ne m'as *toujours pas* parlé de tes rêves, tu sais. Allez, raconte !"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40949 /* ~"Je ne rêve pas beaucoup, vraiment. Ça fait longtemps que j'ai pas fait le moindre songe."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40950 /* ~"Je… je ne rêve pas, en fait."~ */ GOTO 21
  IF ~~ THEN REPLY #40951 /* ~"Je préfère ne pas en parler."~ */ GOTO 5
  IF ~~ THEN REPLY #40952 /* ~"J'aimerais bien te le dire, mais je n'ai pas assez de temps."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #40953 /* ~Kesai te sourit d'un air narquois en levant au ciel ses yeux rouges qui flamboient de colère. "C'est *toi* qui es venu vers *moi*, tu sais. Si ces choses-là te choquent, tu es libre de me laisser et d'aller parler avec les autres femmes."~ */
  IF ~~ THEN REPLY #40954 /* ~"Non, pas encore ; j'ai quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40955 /* ~"C'est ce que je vais faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.3 6.1 15.1 17.1 19.1
  SAY #40956 /* ~Kesai lève les sourcils en signe de surprise. "Vraiment ? Comme c'est triste ! Même les fiélons et les devas rêvent, tu sais. Tu es *certain* de ne pas rêver ?"~ */
  IF ~~ THEN REPLY #40957 /* ~"Absolument certain. Aucun rêve, jamais."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #40958 /* ~"Hum. Trop bizarre ! J'sais pas quoi te dire…"~ */
  IF ~~ THEN REPLY #40959 /* ~"Ben, j'avais quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40960 /* ~"C'est rien. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.2 6.0 15.0 17.0 19.0
  SAY #40961 /* ~"Aucun, vraiment ? Trop bizarre ! Même les fiélons et les devas rêvent, tu sais. Et de quoi parlent ces quelques songes, hein ?" Kesai se penche vers toi, impatiente d'entendre ta réponse.~ */
  IF ~~ THEN REPLY #40962 /* ~"C'est plus des cauchemars que des rêves. Des visions d'un dédale de noirépine… et d'une guenaude noire du nom de Ravel…"~ */ GOTO 24
  IF ~~ THEN REPLY #40963 /* ~"En fait, je préfère ne pas en parler."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #40964 /* ~Kesai reste silencieuse un instant. "Oh ? Oh… des cauchemars. Je vois… C'est vraiment dommage, vraiment…"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #40965 /* ~"Ça va ? Tu as l'air toute troublée, tout d'un coup…"~ */ GOTO 25
  IF ~~ THEN REPLY #40966 /* ~"Oui, peut-être. J'ai quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40967 /* ~"C'est rien. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #40968 /* ~"Ça va, ça va. Merci quand même." Kesai te sourit.~ */
  IF ~~ THEN REPLY #40969 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #40970 /* ~"Alors je m'en vais. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3 2.2 5.0 10.4 11.3 12.2 20.0 22.0 24.1 25.0 27.2 28.2 29.1 30.1 31.0 32.1 33.2 34.0 36.1 37.0 38.1 39.0 40.0 42.1 66.2 67.2 68.3 69.0
  SAY #40971 /* ~Kesai cligne des yeux. Elle attend ta question.~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40972 /* ~"Kesai, j'ai parlé à Kimasxi. Elle m'a dit qu'elle était ta demi-sœur et que Ravel était ta mère."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",3)
~ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40973 /* ~"Tu ne serais pas la fille de Ravel, par hasard ?"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40974 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,12,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40975 /* ~"Si tu ne m'en veux pas de te demander ça, tu es quoi ?"~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,13,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40976 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40977 /* ~"Si tu ne m'en veux pas de te demander ça, tu es quoi ?"~ */ GOTO 28
  IF ~~ THEN REPLY #40978 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 29
  IF ~~ THEN REPLY #40979 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 32
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40980 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 69
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67844 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 69
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40981 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ JOURNAL #66727 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du parfum personnel de Viviane. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 33
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40982 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ JOURNAL #66728 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du Voile Pourpre de Marissa. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 36
  IF ~  GlobalLT("Kesai","GLOBAL",3)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40983 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 38
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40984 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 40
  IF ~~ THEN REPLY #40985 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.3
  SAY #40986 /* ~Kesai secoue la tête. "Ça ne se voit pas ?" Elle se dresse de toute sa taille et avance sa large poitrine vers toi. "Une femme !" Elle soulève un sourcil. "Je vois que ma réponse ne te satisfait pas… je suis aplanie, en fait. C'est tout ce que tu as besoin de savoir."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40987 /* ~"Kesai, j'ai parlé à Kimasxi. Elle m'a dit qu'elle était ta demi-sœur et que Ravel était ta mère."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40988 /* ~"Tu es la fille de Ravel ?"~ */ GOTO 41
  IF ~~ THEN REPLY #40989 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #40990 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 26.5
  SAY #40991 /* ~Kesai secoue la tête. "D'après toi ?" Elle se dresse de toute sa taille et avance sa large poitrine vers toi. "Une femme !" Elle soulève un sourcil. "Je vois que ma réponse ne te satisfait pas… je suis aplanie, en fait, comme ton amie, là." Kesai indique Annah. "C'est tout ce que tu as besoin de savoir."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40992 /* ~"Kesai, j'ai parlé à Kimasxi. Elle m'a dit qu'elle était ta demi-sœur et que Ravel était ta mère."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40993 /* ~"Tu es la fille de Ravel ?"~ */ GOTO 41
  IF ~~ THEN REPLY #40994 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #40995 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.6
  SAY #40996 /* ~"Je réponds à tes questions, on dirait." Elle te fait un clin d'œil. "Mais, sérieusement, je suis une étudiante de Maîtresse Grâce. Toutes les prostituées de la Maison de tolérance le sont."~ */
  IF ~~ THEN REPLY #40997 /* ~"Étudiante ?"~ */ GOTO 30
  IF ~~ THEN REPLY #40998 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #40999 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41000 /* ~"C'est exact. La Maison de tolérance est en fait une école pour femmes qui ont envie de devenir Sensates. Maîtresse Grâce nous enseigne les voies du langage de façon à ce que nous puissions mieux nous connaître et mieux connaître ceux qui nous entourent. Ça nous donne une expérience des plans plus complète, tu comprends ?"~ */
  IF ~~ THEN REPLY #41001 /* ~"Parle-moi des Sensats."~ */ GOTO 31
  IF ~~ THEN REPLY #41002 /* ~"J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41003 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #41004 /* ~"La Société des Sensations pense que le multivers ne peut être compris qu'en en faisant l'expérience… plus tu as d'expérience, mieux tu comprends les mystères du multivers. Fascinant, non ? Je crois que je suis née pour ça ; tout ce que je veux, c'est *connaître* les choses."~ */
  IF ~~ THEN REPLY #41005 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41006 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.7
  SAY #41007 /* ~"Bien sûr : la Maison de tolérance des Plaisirs Intellectuels est en fait une école pour femmes qui ont envie de devenir Sensates. Maîtresse Grâce nous enseigne les voies du langage de façon à ce que nous puissions mieux nous connaître et mieux connaître ceux qui nous entourent. Ça nous donne une expérience des plans plus complète, tu comprends ?"~ */
  IF ~~ THEN REPLY #41008 /* ~"Parle-moi des Sensats."~ */ GOTO 31
  IF ~~ THEN REPLY #41009 /* ~"J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41010 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.10
  SAY #41011 /* ~"Non." Kesai grimace. "La plupart des autres la diront collet monté, mais elle a toujours été aimable envers moi… elle me faisait des compliments sur mes yeux… et elle sent si bon ! J'espère qu'elle retrouvera son parfum. Demande à Nenny, elle va partout, ici, elle aura pu voir quelque chose."~ */
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #41012 /* ~"C'est vrai que tu as de très beaux yeux, tu sais."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #41013 /* ~"C'est vrai que tu as de très beaux yeux, tu sais."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ EXTERN ~DANNAH~ 206
  IF ~~ THEN REPLY #41014 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41015 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #41016 /* ~"Ouah, merci ! On les voit briller dans le noir, tu sais… bizarre, non ?" Elle s'interrompt pour te regarder. "Toi aussi, tu as de beaux yeux… si sombres et mystérieux ! Si pleins de caractère."~ */
  IF ~~ THEN REPLY #41017 /* ~"Merci, Kesai. J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41018 /* ~"Merci. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #41019 /* ~Kesai-Serris hausse les épaules et te regarde.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 26.11
  SAY #41020 /* ~"Hmm. Non, pas depuis la dernière fois qu'elle l'a mis… mais Nenny a pu voir quelque chose, pose-lui la question. Je t'avoue que je ne me plains pas… Marissa ne quitte pas sa chambre sans son voile, aussi échappe-t-on à sa langue acérée… ce qui ne nous laisse que Kimasxi à supporter." Kesai sourit, moqueuse. "C'est la pire de ces deux-là, toutefois."~ */
  IF ~~ THEN REPLY #41021 /* ~"Comment ça ?"~ */ GOTO 37
  IF ~~ THEN REPLY #41022 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41023 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #41024 /* ~"Marissa est arrogante et méchante, mais Kimasxi… elle est envieuse, malveillante, c'est un monstre de femme, avec sa langue de vipère et son attitude de balor. Je ne comprends pas *comment* on peut avoir envie de lui parler. Ça m'étonnerait franchement que son physique rattrape le venin qu'elle ne cesse de cracher, mais elle a quand même des clients."~ */
  IF ~~ THEN REPLY #41025 /* ~"J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41026 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.12
  SAY #41027 /* ~"Non. Rien."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #41028 /* ~"Tu en es sûre ? Tu as l'air toute contrariée d'un seul coup…"~ */ GOTO 39
  IF ~~ THEN REPLY #41029 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41030 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #41031 /* ~Elle plisse les yeux. "Évidemment que j'en suis sûre ! Arrête de me poser des questions sur elle."~ */
  IF ~~ THEN REPLY #41032 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41033 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 26.13
  SAY #41034 /* ~"La dixième ?" Kesai se pince les lèvres, tapant son pied par terre tout en réfléchissant. "Non… nous ne sommes que neuf. Il y a toujours neuf prostituées, à moins que Maîtresse Grâce n'ait effectué de récents changements dont je ne serais pas au courant."~ */
  IF ~~ THEN REPLY #41035 /* ~"J'avais une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41036 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.1 2.0 26.1 27.1 28.1 66.0 67.0
  SAY #41037 /* ~Kesai découvre soudain ses dents et plisse les paupières ; ses yeux ne sont plus que deux fentes d'un rouge incandescent. "Quoi ? Où est-ce que tu as entendu ça ?"~ */
  IF ~~ THEN REPLY #41038 /* ~"Ecco me l'a dit."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~J'ai demandé à Kesai-Serris si elle était la fille de Ravel, et cela l'a mise dans une rage folle. Elle refuse de le croire. Si cela est vrai, il va me falloir trouver le moyen de lui en apporter la preuve.~ */ GOTO 42
  IF ~~ THEN REPLY #41039 /* ~"C'est juste une rumeur, c'est tout."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~J'ai demandé à Kesai-Serris si elle était la fille de Ravel, et cela l'a mise dans une rage folle. Elle refuse de le croire. Si cela est vrai, il va me falloir trouver le moyen de lui en apporter la preuve.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #41040 /* ~"Ridicule ! Je crois que je le *saurais* si cette horrible sorcière était ma mère ! Et maintenant, arrête de m'ennuyer avec ça."~ */
  IF ~~ THEN REPLY #41041 /* ~"Alors, qui est ta mère ?"~ */ GOTO 43
  IF ~~ THEN REPLY #41042 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41043 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #41044 /* ~"J'en sais rien, d'accord ? C'est mon père qui m'a élevée ; je l'ai jamais connue. Mais est-ce que je *ressemble* à une guenaude noire, d'après toi ?"~ */
  IF ~~ THEN REPLY #41045 /* ~"Ben… y a la peau… et les yeux… et peut-être aussi les dents…"~ */ GOTO 44
  IF ~~ THEN REPLY #41046 /* ~"Non, non… bien sûr que non."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #41047 /* ~Kesai-Serris t'observe, les yeux rougeoyant de colère. "On parlera peut-être *plus tard* mais, pour l'instant, je ne suis plus d'humeur. Au revoir."~ */
  IF ~~ THEN REPLY #41048 /* ~"Au revoir."~ */ DO ~SetGlobal("Kesai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 26.0 27.0 28.0
  SAY #41049 /* ~Kesai gronde, les yeux luisant de méchanceté. "Cette… cette… par les Enfers, que je hais cette femme ! Comment tu peux *croire* ces foutaises ?"~ */
  IF ~~ THEN REPLY #41050 /* ~"Elle dit que tu le nies et qu'en fait, tu ne le sais peut-être même pas, mais que c'est vrai. Elle a dit que tu pouvais demander à ton père… qu'il te le dirait."~ */ DO ~SetGlobal("Kesai","GLOBAL",3)
SetGlobal("Kesai_Quest","GLOBAL",2)
~ JOURNAL #39518 /* ~Kesai-Serris a enfin compris qu'elle était la fille de Ravel. Elle a appris la vérité en allant trouver son père, comme Kimasxi le lui avait suggéré.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #41051 /* ~Kesai t'observe un instant en silence. "Laisse-moi une minute." Elle se retourne et commence à chantonner doucement… l'air semble se mouvoir légèrement autour d'elle et s'emplir d'une odeur de cuivre, comme du sang chaud…~ */
  IF ~~ THEN REPLY #41052 /* ~Attends patiemment.~ */ GOTO 51
  IF ~~ THEN REPLY #41053 /* ~Tends l'oreille, essaie d'entendre ce qu'elle dit.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #41054 /* ~Tu te penches sur Kesai pour entendre ce qu'elle marmonne.

"Haughazanenel, Prince banni d'Ithag, Marquis de l'Ombre Sanglante, mon père, entends-moi, car je t'appelle…"~ */
  IF ~~ THEN REPLY #41055 /* ~Continue à écouter.~ */ GOTO 48
  IF ~~ THEN REPLY #41056 /* ~Arrête d'écouter.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #41057 /* ~"Oui, père bien-aimé, c'est moi, Kesai-Serris. Je te demande de répondre à une question, une question que je t'ai déjà posée…"~ */
  IF ~~ THEN REPLY #41058 /* ~Continue à écouter.~ */ GOTO 49
  IF ~~ THEN REPLY #41059 /* ~Arrête d'écouter.~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41060 /* ~" Oui, père bien-aimé. Je ne supporte pas qu'un autre me le demande et que je ne le sache pas moi-même. Tu *dois* me le dire… c'est tout ce que je te demande. Dis-le-moi, je t'en supplie…"~ */
  IF ~~ THEN REPLY #41061 /* ~Continue à écouter.~ */ GOTO 50
  IF ~~ THEN REPLY #41062 /* ~Arrête d'écouter.~ */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #41063 /* ~"Ou-oui… oui, père bien-aimé, je comprends. Je te remercie… adieu…"~ */
  IF ~~ THEN REPLY #41064 /* ~"Alors ? Qu'est-ce qu'il a dit ?"~ */ GOTO 51
  IF ~~ THEN REPLY #41065 /* ~Penche-toi en arrière, fais comme si tu n'avais rien entendu.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 46.0 47.1 48.1 49.1 50.0 50.1
  SAY #41066 /* ~Kesai reste un instant immobile avant de se retourner vers toi. "Je ne voulais pas croire que cette horrible sorcière pouvait être ma mère. Je vis depuis longtemps, je ne semble pas vieillir, et il m'arrive d'avoir… des rêves troublants." Elle frémit. "Mais, quand même… je ne veux pas être l'héritière du malheur qu'elle a provoqué et je ne veux pas attirer le regard de la Dame sur moi comme l'a fait ma mère. Elle a fait tellement de mal !"~ */
  IF ~~ THEN REPLY #41067 /* ~"Dis-moi ce que tu sais sur elle, veux-tu ?"~ */ GOTO 52
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41068 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41069 /* ~"Je ne m'inquièterais pas pour ça, à ta place, Kesai ; tu n'as rien de commun avec Ravel Puits-de-Rébus."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #41070 /* ~"J'ai entendu dire qu'elle posait aux gens des devinettes impossibles, auxquelles elle seule pouvait répondre. Elle les dévorait s'ils ne répondaient pas correctement ou les pendait dans ses atroces jardins pour qu'ils servent d'exemples. Elle tourmentait les quelques bienheureux qui avaient réussi à lui échapper dans leurs rêves, les chevauchant comme des montures, brisant leur volonté et jetant leur âme dans l'oubli terne de la Gaste Grise…"~ */
  IF ~~ THEN REPLY #41071 /* ~"Continue…"~ */ GOTO 53
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41072 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41073 /* ~"C'est pas grave… tu n'as pas besoin de m'en dire plus. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41074 /* ~"On disait que sa magie était plus puissante que tout ; l'imagination à l'état brut, issue de la substance des plus terribles cauchemars. La pierre et les formes solides obéissaient à sa volonté comme de la terre glaise malléable ; les lois des plans s'agenouillaient à ses pieds et elle pouvait créer des illusions à partir d'un rien… et à partir de ces dernières, elle était capable de tisser des réalités horrifiques et déconcertantes."~ */
  IF ~~ THEN REPLY #41075 /* ~"Continue…"~ */ GOTO 54
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41076 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41077 /* ~"C'est pas grave… tu n'as pas besoin de m'en dire plus. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #41078 /* ~"C'était la maîtresse des Arts des Ténèbres, maîtresse et maître de tous. Elle s'est servie des ombres pour traquer un greffier qui avait osé mentionner une loi de Sigil ; elles l'ont dévoré en entier, hormis la langue, les doigts et la peau de son visage. Elle a complètement retourné les Rectifieurs et détruit les demeures de ceux qui lui déplaisaient. Elle commandait à des forces terrifiantes… vraiment terrifiantes…"~ */
  IF ~~ THEN REPLY #41079 /* ~"Continue…"~ */ GOTO 55
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41080 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41081 /* ~"C'est pas grave… tu n'as pas besoin de m'en dire plus. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #41082 /* ~"Elle changeait de forme comme l'eau et utilisait ce pouvoir pour se divertir en détruisant certaines personnes et en dérobant le savoir des autres. C'était un monstre, comme tout ce qui est issu de la Gaste Grise."~ */
  IF ~~ THEN REPLY #41083 /* ~"Continue…"~ */ GOTO 56
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41084 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41085 /* ~"C'est pas grave… tu n'as pas besoin de m'en dire plus. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #41086 /* ~"Elle a fini par menacer d'ouvrir la Cage et de laisser le courroux des plans déferler, comme une vague. Heureusement, elle a échoué. Elle n'existait que pour faire le mal…"~ */
  IF ~~ THEN REPLY #41087 /* ~"Continue…"~ */ GOTO 57
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41088 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41089 /* ~"C'est pas grave… tu n'as pas besoin de m'en dire plus. Au revoir, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41090 /* ~"J'ignore si elle est morte… mais maintenant, je sais que c'est ma mère." Les épaules de Kesai s'effondrent et sa tête tombe. "Oh, si j'étais capable de verser des larmes, j'en pleurerais de chagrin !"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #41091 /* ~Essaie de la consoler.~ */ GOTO 59
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #41092 /* ~Essaie de la consoler.~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #41093 /* ~Essaie de la consoler.~ */ GOTO 61
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41094 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41095 /* ~"Je ne m'inquièterais pas pour ça, à ta place, Kesai ; tu n'as rien de commun avec Ravel Puits-de-Rébus."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 51.1 52.1 53.1 54.1 55.1 56.1 57.3 59.0 60.0 61.0 68.0
  SAY #41096 /* ~Elle a l'air inquiète. "Pardon ?"~ */
  IF ~~ THEN REPLY #41097 /* ~"La clé du portail qui donne sur le labyrinthe de Ravel est une partie d'elle-même, et tu es de son sang. Ça s'en rapproche assez."~ */ GOTO 62
  IF ~~ THEN REPLY #41098 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #41099 /* ~"Laisse… laisse-moi. Ça va aller. J'ai besoin de temps pour réfléchir, c'est tout."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41100 /* ~"D'accord, mais… j'ai besoin que tu me donnes un peu de toi."~ */ GOTO 58
  IF ~~ THEN REPLY #41101 /* ~"Je ne m'inquièterais pas pour ça, à ta place, Kesai ; tu n'as rien de commun avec Ravel Puits-de-Rébus."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY #41102 /* ~"Merci… merci pour tes efforts… mais ça va aller. J'ai besoin de temps pour réfléchir, c'est tout."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41103 /* ~"Ça m'ennuie vraiment de te demander ça maintenant… mais j'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41104 /* ~"Je ne m'inquièterais pas pour ça, à ta place, Kesai ; tu n'as rien de commun avec Ravel Puits-de-Rébus."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY #41105 /* ~Elle tombe soudain dans tes bras, tremblant comme si elle était secouée de sanglots. Pendant un moment, Kesai se tient là, cramponnée à toi… puis elle recule. "Merci, mais… ça va aller. J'ai besoin de temps pour réfléchir, c'est tout."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41106 /* ~"Ça m'ennuie vraiment de te demander ça maintenant… mais j'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41107 /* ~"Je ne m'inquièterais pas pour ça, à ta place, Kesai ; tu n'as rien de commun avec Ravel Puits-de-Rébus."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #41108 /* ~Kesai suffoque. "Tu as l'intention de la retrouver ?" Sa surprise se transforme vite en inquiétude. "Qu'est-ce… qu'est-ce que tu attends de moi ?"~ */
  IF ~~ THEN REPLY #41109 /* ~"Ton sang, je pense. Juste une goutte ou deux, ça devrait suffire."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #41110 /* ~Elle acquiesce. "Mais… tu as un moyen de le transporter ? Un bout de tissu, comme un mouchoir ou quelque chose comme ça, tu sais ?"~ */
  IF ~  PartyHasItem("Hanky")
~ THEN REPLY #41111 /* ~"Oui… tiens…"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~J'ai quelques gouttes de sang de Kesai-Serris sur un mouchoir. Vu que c'est la fille de Ravel, cela devrait suffire pour le portail menant au dédale, qui me demandait un 'morceau de Ravel' pour me laisser passer.~ */ GOTO 64
  IF ~  !PartyHasItem("Hanky")
~ THEN REPLY #41112 /* ~"Non, je ne vois pas."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.0 68.1
  SAY #41113 /* ~Kesai prend le mouchoir et se pique précautionneusement le bout du doigt à l'aide de l'un de ses crocs. Quand le mouchoir est imprégné de plusieurs gouttes de sang, elle te le rend. "Tu mets ta vie en grand danger, tu sais. Même si les histoires qu'on raconte sur ma mère sont grandement exagérées, elle est terriblement puissante et totalement diabolique. Bonne chance."~ */
  IF ~~ THEN REPLY #41114 /* ~"Oui, il paraît. Merci, et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #41115 /* ~Kesai soupire en regardant autour d'elle. "Je suis sûre qu'il y en a un quelque part dans la Maison de tolérance. Rapporte-le ici quand tu l'auras trouvé, d'accord ? Ensuite, je te donnerai le sang dont tu as besoin."~ */
  IF ~~ THEN REPLY #41116 /* ~"Je reviens avec un mouchoir. Au revoir."~ */ JOURNAL #50721 /* ~Quelques gouttes du sang de Kesai suffiront à ouvrir le portail menant au dédale de Ravel. Il suffit que je lui amène un mouchoir pour recueillir ce dont j'ai besoin.~ */ EXIT
END

IF ~  Global("Kesai","GLOBAL",1)
~ THEN BEGIN 66 // from:
  SAY #41117 /* ~Tandis que tu t'approches d'elle, Kesai-Serris te sourit chaleureusement tout en repoussant une boucle de cheveux tombée devant ses yeux rouge vif. "Eh bien, rebonjour… je peux faire quelque chose pour toi, hmmm ?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41118 /* ~"Kesai ? La fille de Ravel ?"~ */ GOTO 41
  IF ~~ THEN REPLY #41119 /* ~"Ça dépend… qu'est-ce que tu fais comme genre de choses ?"~ */ GOTO 4
  IF ~~ THEN REPLY #41120 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #41121 /* ~"Rien du tout, merci. Au revoir."~ */ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",2)
~ THEN BEGIN 67 // from:
  SAY #41122 /* ~Tandis que tu t'approches d'elle, Kesai-Serris te sourit chaleureusement tout en repoussant une boucle de cheveux tombée devant ses yeux rouge vif. "Ne t'inquiète pas, je ne reste jamais fâchée longtemps. Je peux faire quelque chose pour toi, hmmm ?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41123 /* ~"Kesai ? La fille de Ravel ?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #41124 /* ~"Ça dépend… qu'est-ce que tu fais comme genre de choses ?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41125 /* ~"J'ai des questions…"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #41126 /* ~"Rien du tout, merci. Au revoir."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",3)
~ THEN BEGIN 68 // from:
  SAY #41127 /* ~Tandis que tu t'approches d'elle, Kesai-Serris te sourit chaleureusement tout en repoussant une boucle de cheveux tombée devant ses yeux rouge vif. "Eh bien, rebonjour… je peux faire quelque chose pour toi, hmmm ?"~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #52907 /* ~"J'ai besoin que tu me donnes un peu de toi, Kesai."~ */ GOTO 58
  IF ~  Global("Know_Ravel_Key","GLOBAL",2)
PartyHasItem("Hanky")
~ THEN REPLY #41128 /* ~"Oui… j'ai le mouchoir…"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~J'ai quelques gouttes de sang de Kesai-Serris sur un mouchoir. Vu que c'est la fille de Ravel, cela devrait suffire pour le portail menant au dédale, qui me demandait un 'morceau de Ravel' pour me laisser passer.~ */ GOTO 64
  IF ~~ THEN REPLY #41129 /* ~"Ça dépend… qu'est-ce que tu fais comme genre de choses ?"~ */ GOTO 4
  IF ~~ THEN REPLY #41130 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #41131 /* ~"Rien du tout, merci. Au revoir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 69 // from: 26.8 26.9
  SAY #41132 /* ~"Oui, c'est Ecco. Elle est très douce, mais trop discrète. Je crois qu'elle a jadis dit quelque chose qui a causé une immense tragédie… et qu'elle a juré depuis lors de ne plus parler." Kesai hausse les épaules en souriant. "Une histoire intéressante, dont j'ignore si elle est vraie. Demande à Dolora… Je l'ai vue parler à un amant d'Ecco, du temps où celle-ci parlait encore."~ */
  IF ~~ THEN REPLY #41133 /* ~"J'ai une autre question…"~ */ GOTO 26
  IF ~~ THEN REPLY #41134 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
