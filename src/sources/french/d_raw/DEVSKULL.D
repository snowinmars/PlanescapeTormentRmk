// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEVSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEVSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31692 /* ~"Mauvais ? Bah ! Je suis juste pragmatique."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 5
END

IF ~~ THEN BEGIN 1 // from:
  SAY #31693 /* ~"N'est-ce pas la solution idéale ? Ça a toujours fonctionné pour moi. Le poison et la magie marchent aussi bien l'un que l'autre, à mon avis."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 6
END

IF ~  Global("EvSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31694 /* ~Ce crâne s'exprime d'une voix profonde, sur un ton enjoué. "Es-tu venu apprendre les vérités ? J'en ai à foison."~ */
  IF ~~ THEN REPLY #31695 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31696 /* ~"Comment as-tu atterri ici ?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31697 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 6
  IF ~~ THEN REPLY #31698 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes qui sont là ?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 7
  IF ~~ THEN REPLY #31699 /* ~"Laisse tomber. Excuse-moi de t'avoir fait perdre ton temps. Au revoir."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("EvSkull_Talk","AR0508",1)
~ THEN BEGIN 3 // from:
  SAY #31700 /* ~"Tu es venu en apprendre un peu plus sur les vérités de la vie, hein ? Je suis là pour ça !"~ */
  IF ~~ THEN REPLY #31701 /* ~"Parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31702 /* ~"Comment es-tu arrivé ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31703 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 6
  IF ~~ THEN REPLY #31704 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes qui sont là ?"~ */ GOTO 7
  IF ~~ THEN REPLY #31705 /* ~"Laisse tomber. Excuse-moi de t'avoir fait perdre ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.0 6.1 7.0
  SAY #31706 /* ~"Moi ? Je suis Stricto, grand adepte de la paix intérieure par la redirection des hostilités."~ */
  IF ~~ THEN EXTERN ~DANSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 6.2 7.1 8.0 8.1
  SAY #31707 /* ~"C'est amusant que tu parles de ça. On m'a donné un livre noir pour que je déchiffre ses secrets. J'ai libéré sa puissance à un prix terrible - que je paierais volontiers de nouveau ! - et je me suis brûlé les doigts au passage. Mais je ne me doutais guère que le livre allait me trahir pour un autre - un être à l'aspect de rat qui a lancé sur moi une meute de rongeurs qui m'a dévoré vivant. Le livre est passé de disciple en disciple, chacun trahi par le livre, jusqu'à ce qu'il échoue chez Mantuok l'homme-rat. Si tu trouves ce livre, accepte ses pouvoirs et débarrasse-t-en avant de subir le même sort."~ */
  IF ~~ THEN REPLY #31708 /* ~"Je garderai l'œil ouvert. Parle-moi de toi."~ */ JOURNAL #31712 /* ~Stricto, le crâne d'assassin de la bibliothèque de crânes de Lothar, m'a parlé d'un livre que Mantuok, le rat-garou, porte sur lui. Il m'a mis en garde contre les pouvoirs de ce livre.~ */ GOTO 4
  IF ~~ THEN REPLY #31709 /* ~"Merci. Qu'est-ce que tu peux me dire sur Lothar ?"~ */ JOURNAL #31712 /* ~Stricto, le crâne d'assassin de la bibliothèque de crânes de Lothar, m'a parlé d'un livre que Mantuok, le rat-garou, porte sur lui. Il m'a mis en garde contre les pouvoirs de ce livre.~ */ GOTO 6
  IF ~~ THEN REPLY #31710 /* ~"Bon, et bien… Qu'est-ce que tu peux me dire sur les autres crânes qui sont là ?"~ */ JOURNAL #31712 /* ~Stricto, le crâne d'assassin de la bibliothèque de crânes de Lothar, m'a parlé d'un livre que Mantuok, le rat-garou, porte sur lui. Il m'a mis en garde contre les pouvoirs de ce livre.~ */ GOTO 7
  IF ~~ THEN REPLY #31711 /* ~"Quelle histoire tragique. Au revoir."~ */ JOURNAL #31712 /* ~Stricto, le crâne d'assassin de la bibliothèque de crânes de Lothar, m'a parlé d'un livre que Mantuok, le rat-garou, porte sur lui. Il m'a mis en garde contre les pouvoirs de ce livre.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 5.1 7.2
  SAY #31713 /* ~"Que puis-je te dire à propos de Lothar ? Je ne dirai rien. Même cette existence vide est meilleure que l'oubli qu'il me réserve si je révèle ses secrets."~ */
  IF ~~ THEN REPLY #31714 /* ~"Tu peux m'en parler."~ */ GOTO 9
  IF ~~ THEN REPLY #31715 /* ~"Bon, très bien. Parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31716 /* ~"Très bien. Alors, comment tu as atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31717 /* ~"Alors, qu'est-ce que tu peux me dire sur les autres crânes qui sont là ?"~ */ GOTO 7
  IF ~~ THEN REPLY #31718 /* ~"Bon, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 5.2 6.3
  SAY #31719 /* ~"Des crânes qui vont te parler, je ne peux rien te dire. Je n'ai pas partagé leurs expériences ; d'ailleurs, nous n'avons échangé que peu de mots avant que tu n'arrives. Peut-être," dit-il, d'un ton narquois, "y a t-il quelque chose de particulier dans ta présence même."~ */
  IF ~~ THEN REPLY #31720 /* ~"C'est possible. Parle-moi de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #31721 /* ~"Sûrement. Comment as-tu atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31722 /* ~"C'est vrai. Assez pour que tu me parles de Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31723 /* ~"C'est vrai et tu ne vas pas tarder à en être privé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31724 /* ~"Définis-le comme tu veux, Sinistrescalp." Stricto te prête à nouveau attention. "J'étais le meilleur, on est d'accord."~ */
  IF ~~ THEN REPLY #31725 /* ~"Alors, comment tu as atterri ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31726 /* ~"Qu'est-ce qui t'est arrivé ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #31727 /* ~Tu as la nette impression que le crâne de Stricto ricane à tes dépens. "Et gagner simplement ton amitié ? Bah. Il n'y a rien que tu puisses m'offrir, service ou objet, qui me fera trahir Lothar pour toi. Du vent !"~ */
  IF ~~ THEN REPLY #31728 /* ~"Alors réponds juste à quelques questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #31729 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31730 /* ~"Non." Le crâne se concentre sur lui-même. Tu sens la force de sa personnalité disparaître.~ */
  IF ~~ THEN REPLY #31731 /* ~"Eh bien d'accord."~ */ EXIT
END
