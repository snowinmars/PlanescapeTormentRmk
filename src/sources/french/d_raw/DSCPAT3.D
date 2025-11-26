// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10900 /* ~C'est un type dégarni au visage cynique. Il parle d'une voix saccadée, lançant chaque mot de façon très distincte et claire. "Qu'est-ce que tu veux, matois ?"~ */
  IF ~~ THEN REPLY #10901 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10902 /* ~"Je cherche un journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10903 /* ~"Je cherche un certain Pharod. C'est un Récupérateur. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10904 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10905 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10906 /* ~"Qu'est-ce que ton amie et toi disiez sur Sigil ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10907 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #10908 /* ~"Au moment même où la dame et moi allions engager une autre de nos brillantes conversations ? dit-il d'un ton sarcastique. Bah, que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #10909 /* ~"Je voulais te poser d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10910 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10911 /* ~"Cilaen Orteils-d'Acier. Si je porte ce nom, c'est parce que mon imbécile de frère a laissé tomber une pierre de vingt kilos sur mes pieds. Maintenant j'ai des orteils en acier. Vu ?"~ */
  IF ~~ THEN REPLY #10912 /* ~"D'accord. Je suppose. Peux-tu répondre à d'autres questions ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10913 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10914 /* ~"Je n'en ai pas vu. Du moins je ne m'en souviens pas. S'il n'a pas de valeur intrinsèque, essaie de visiter les décharges à l'autre bout de la Ruche. Je comprends ce que tu ressens. Un journal, c'est l'essence même d'une identité. Ça rappelle le passé et permet de mieux prévoir le futur. J'en tiens un moi-même, et je trouve que ça m'a été très bénéfique." Il a dit cela d'un air satisfait.~ */
  IF ~~ THEN REPLY #10915 /* ~"Tu ne plaisantes pas. Réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10916 /* ~"Les Dédales d'Ordures ? Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10917 /* ~"Ici, c'est le Cadavre fumant. J'y ai amené ma béjaune de cousine du Plan Matériel Primaire pour qu'elle voie la beauté de Sigil dans tout l'éclat de sa splendeur. Pour le moment, elle ne s'est pas laissée impressionner."~ */
  IF ~~ THEN REPLY #10918 /* ~"Je comprends pourquoi. Peux-tu me parler d'autre chose ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10919 /* ~"Vraiment ? Étrange. Bonne journée, monsieur."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10920 /* ~"La chanson dit que ce pauvre gars s'appelle Ignus. Il a brûlé une partie de la Ruche avant que les gens d'ici se regroupent pour lui régler son compte. Ils en ont fait un conduit vers le Plan Élémentaire du Feu et, depuis lors, il se tortille ici pour épater le chaland. Pour ma part, je ne trouve pas ça très distrayant, mais c'est sûrement intéressant."~ */
  IF ~~ THEN REPLY #10921 /* ~"Certainement. Peux-tu me parler d'autre chose ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10922 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10923 /* ~"Ah. Ma *cousine*…" Il met l'accent sur ce mot comme pour souligner qu'il n'a pas le choix de la relation. "… a débarqué il y a peu. Elle vient d'un monde reculé du Plan Matériel Primaire. Mon oncle, un mage de renom, l'a amenée ici pour lui ouvrir l'horizon. Elle se nourrit de l'illusion que c'est *ici* le centre du multivers et elle estime que ça importe. Moi qui y ai vécu toute ma vie, je sais qu'elle se trompe - c'est un endroit que les puissances et les planaires négligent, comme les humains négligent les écureuils de leurs jardins publics, et qui n'a aucune importance en soi. Plus vite les humains verront qu'ils n'en ont pas davantage, mieux ils se porteront."~ */
  IF ~~ THEN REPLY #10924 /* ~"Vraiment ? Hm. Il va falloir qu'elle se justifie. En attendant, peux-tu répondre à d'autres questions pour moi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10925 /* ~"Fascinant. Merci et bonne journée."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from: 1.0 2.0 3.0 4.0 5.0 6.0 8.1 9.0
  SAY #10926 /* ~"Qu'est-ce que tu aimerais savoir ?"~ */
  IF ~~ THEN REPLY #10927 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10928 /* ~"Je cherche un journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10929 /* ~"Je cherche un Récupérateur appelé Pharod. L'as-tu vu ou as-tu entendu parler de lui ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10930 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10931 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10932 /* ~"Qu'est-ce que ton amie et toi disiez sur Sigil ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10933 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 7.2
  SAY #10934 /* ~"Un Récupérateur ? Un de ceux qui emportent les morts ? Je ne fréquente pas cette engeance. Ce n'est pas mon Quartier, ici, je ne connais donc pas cet homme."~ */
  IF ~~ THEN REPLY #10935 /* ~"Quel EST ton quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10936 /* ~"Ça ne m'aide pas beaucoup. Tu peux peut-être répondre à quelques questions pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10937 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10938 /* ~"J'habite le Quartier de La Dame avec mon oncle. Les gens qu'on y rencontre sont d'un tout autre acabit, si je puis me permettre. Il n'y a pas la racaille que l'on croise partout ici. Fréquenter la Ruche revient à s'encanailler, aucun doute là-dessus. Ce n'est pas tant que ça me plaise, mais il paraît qu'on doit vivre sa vie dans tout ce qu'elle peut offrir comme expériences. Et celle-ci touche à sa fin."~ */
  IF ~~ THEN REPLY #10939 /* ~"Le Quartier de La Dame, hein ? Très bien. Réponds à quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10940 /* ~"Très bien. Au revoir."~ */ EXIT
END
