// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~L'homme est un vrai mastodonte. Un duvet brun inégal couvre son corps de la tête aux pieds. "Ojo comme prisonnier", dit-il tristement.~ */
  IF ~~ THEN REPLY #2830 /* ~"Qu'est-ce qui s'est passé ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"Où ils sont tous allés ?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"Tu es un rat-garou maintenant ?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"Tu parles mieux, Ojo. Qu'est-ce qui s'est passé ?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"Alors, il vaudrait mieux que je te tue."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"C'est dommage. Au revoir."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"Fourrure. Dents. Amis mordre. Certains nourriture. Certains fourrure. Ils laissent Ojo tranquille."~ */
  IF ~~ THEN REPLY #18844 /* ~"Alors, où ils sont tous passés ?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"Les rats ont envahi cet endroit ? Merci, Ojo. Au revoir."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"Des rats et des hommes-fourrure arrivent. Frappent tout le monde. Ils vont à l'endroit des pleurs. Ojo ne suit pas. Ils reviennent. Ils sont velus et méchants."~ */
  IF ~~ THEN REPLY #18847 /* ~"Je vois. Il y a autre chose que je devrais savoir ?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"Je vois. Merci, Ojo. Au revoir."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~En te retournant, tu remarques le gros homme accroupi pour bondir. Ses yeux sont devenus sauvages et une mince trace de bave s'écoule de sa bouche ouverte. Ses dents ont l'air très, très aiguisé.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"Ne fais pas ça, Ojo. Je ne veux pas être obligé de te faire du mal."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"Ne fais pas ça, Ojo. Je ne veux pas être obligé de te faire du mal."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~Il regarde tristement ses mains puis lève son regard vers toi. Une petite lueur se reflète sur ses dents alors qu'il dit, "P'tit rat". Un sourire diabolique commence à se former autour de sa bouche.~ */
  IF ~~ THEN REPLY #18854 /* ~"Il y a autre chose que je devrais savoir ?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"Et bien, c'est dommage. Au revoir, Ojo."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"Alors, il vaudrait mieux que je fasse en sorte que tu n'infectes personne d'autre. Prépare-toi à mourir."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~Il hausse les épaules.~ */
  IF ~~ THEN REPLY #18858 /* ~"Il y a autre chose que je devrais savoir ?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"Pars. Les p'tits rats mordent. Alors je mors toi."~ */
  IF ~~ THEN REPLY #18861 /* ~"Très bien. Bon, eh bien, au revoir."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~Il s'arrête, ses muscles se relâchant lentement. "Laisse ou je te mors".~ */
  IF ~~ THEN REPLY #18863 /* ~Pars.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~Il ignore tes paroles et te bondit dessus !~ */
  IF ~~ THEN REPLY #18866 /* ~"Ojo, attends !"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"Si c'est ce qui doit arriver…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~Le gros homme se tourne vers toi, s'accroupit et bondit !~ */
  IF ~~ THEN REPLY #18869 /* ~"Ojo, attends !"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"Si c'est ce que tu veux…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Ojo se détourne du mur et te regarde tristement.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Ojo se détourne du mur et regarde Morte, le feu couve lentement dans ses yeux.~ */
  IF ~~ THEN REPLY #18873 /* ~"Bon, Morte, ça suffit."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"Ojo, j'ai des questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"Allons-nous-en. Au revoir, Ojo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Ojo te regarde fixement.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"Tu peux me reparler de l'homme du mur ?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"Parle-moi encore de toi."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"Parle-moi des gens de ce village."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"Parle-moi des catacombes."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"Parle-moi du Village Enseveli."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~Il cligne des yeux.~ */
  IF ~~ THEN REPLY #18885 /* ~Désigne-le : "Qui es-tu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~Tu aperçois un homme robuste à la mâchoire détendue. Une brève étincelle d'intelligence flamboie dans ses yeux.~ */
  IF ~~ THEN REPLY #18889 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"Que fais-tu ?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"Parle-moi des gens de ce village."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"Parle-moi des catacombes."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"Parle-moi du Village Enseveli."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~L'homme cligne des yeux vers toi.~ */
  IF ~~ THEN REPLY #18896 /* ~"Parle-moi de toi."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"Parle-moi des gens de ce village."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"Parle-moi des catacombes."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"Parle-moi du Village Enseveli."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"Ojo."~ */
  IF ~~ THEN REPLY #18903 /* ~"OK, Ojo. J'ai des questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"Merci, Ojo. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~Il hausse les épaules.~ */
  IF ~~ THEN REPLY #18906 /* ~"Très bien… Alors, réponds à d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"Ojo parle…" Il s'arrête soudain et commence à se masser la main.~ */
  IF ~~ THEN REPLY #18909 /* ~Observe sa main.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"À qui tu parles ?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"À qui tu parles ?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"Quoi ?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~Il y a une petite croûte enflammée sur sa peau. Comme tu le regardes, il se l'enlève.~ */
  IF ~~ THEN REPLY #18916 /* ~"Qu'est-ce qui est arrivé à ta main ?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"J'ai d'autres questions à te poser, Ojo."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"Mordu."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"Qui t'a mordu, Ojo ?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"Qui t'a mordu, Ojo ?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"Au revoir, Ojo."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"Pas parler étrangers." Il détourne son regard, se frottant la main.~ */
  IF ~~ THEN REPLY #18925 /* ~"Très bien. Parle-moi de toi."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"Ojo parler." Il se détourne de toi.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"À qui tu parles ?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"À qui tu parles ?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~Il regarde le mur et te regarde de nouveau. "Homme dans mur".~ */
  IF ~~ THEN REPLY #18933 /* ~"Il y a un homme dans le mur ?"~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"Euh, OK. J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Ojo regarde vers un des murs, puis te regarde de nouveau, ses yeux se font plus petits et le coin de sa bouche se contracte. "Qui toi ? Tu pars."~ */
  IF ~~ THEN REPLY #18937 /* ~"Je voulais juste te poser d'autres questions, Ojo."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"Non ! Tu pars !" Il devient agité.~ */
  IF ~~ THEN REPLY #18940 /* ~"Encore quelques questions."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~Il va vers le coin en chancelant et s'y enfonce, en se détournant de toi. Aucune cajolerie ne suffira à le convaincre de te regarder ou de te répondre.~ */
  IF ~~ THEN REPLY #18943 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~Il regarde le mur, puis te regarde à nouveau.~ */
  IF ~~ THEN REPLY #18945 /* ~"Et l'homme du mur, qu'est-ce qu'il dit ?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"À quoi il ressemble, l'homme du mur ?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"Il est dans quel mur ?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"Il raconte les Pierres pleureuses. Raconte des histoires. Moi aussi raconte histoires."~ */
  IF ~~ THEN REPLY #18951 /* ~"Des histoires sur quoi ?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"J'ai d'autres questions sur l'homme du mur…"~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~Il regarde le mur et reste silencieux.~ */
  IF ~~ THEN REPLY #18956 /* ~"Bon, très bien. Parle-moi encore de l'homme du mur."~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"Petit. Yeux rouges. Poilu."~ */
  IF ~~ THEN REPLY #18960 /* ~"On dirait un rat."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"Très bien. J'ai d'autres questions sur l'homme du mur…"~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~Il acquiesce.~ */
  IF ~~ THEN REPLY #18965 /* ~"Très bien. J'ai d'autres questions sur l'homme du mur…"~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"Merci, Ojo. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~Il désigne le mur. Tu remarques un petit trou. En t'approchant plus près, tu vois que le trou est déchiqueté, comme s'il avait été rongé par un rat.~ */
  IF ~~ THEN REPLY #18969 /* ~"On dirait qu'il a été rongé par un rat."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"L'homme du mur est un rat ?"~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"Je vois… Ojo, j'ai d'autres questions sur l'homme du mur…"~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"Qui ?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"Annah."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"Annah."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"Marta."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"Pharod."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"Gris."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"Quint."~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"J'ai d'autres questions à la place."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~Il regarde Annah avec crainte.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"Méchante fille."~ */
  IF ~~ THEN REPLY #18985 /* ~"D'accord. Parle-moi des autres."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"Sorcière effrayante."~ */
  IF ~~ THEN REPLY #18989 /* ~"D'accord. Parle-moi des autres."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"Phare-rôde."~ */
  IF ~~ THEN REPLY #18993 /* ~"D'accord. Parle-moi des autres."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~Ses yeux se ferment à moitié. "Mort".~ */
  IF ~~ THEN REPLY #18997 /* ~"Comment tu sais qu'il est mort ?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"D'accord. Parle-moi des autres."~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"Kwint."~ */
  IF ~~ THEN REPLY #19002 /* ~"D'accord. Parle-moi des autres."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"Homme dans le mur m'a dit."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"Qu'est-ce qu'il t'a dit ?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"Parle-moi des autres villageois."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"Gris mort."~ */
  IF ~~ THEN REPLY #19013 /* ~"Où est Gris ?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"Parle-moi des autres villageois."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"Dans endroit des pleurs."~ */
  IF ~~ THEN REPLY #19019 /* ~"Tu veux parler des catacombes de la Pierre Pleureuse ?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"Parle-moi des autres villageois."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~Il acquiesce.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"Parle-moi de l'homme du mur."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"Parle-moi des autres villageois."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"J'ai d'autres questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"Au revoir."~ */ EXIT
END
