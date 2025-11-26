// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~Tu vois un homme d'âge mûr à la mine fatiguée. Voyant que tu l'observes, il te salue d'un petit hochement de tête.~ */
  IF ~~ THEN REPLY #9999 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~Plutôt que de croiser ton regard, il fixe le sol à tes pieds. "Bien le bonjour, m'sieur. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #10002 /* ~"Tu pourrais me regarder quand je te parle."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"J'ai des questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~Il lève les yeux, puis baisse de nouveau la tête. "En tant que domestique, je n'ai pas le droit de croiser ton regard, m'sieur."~ */
  IF ~~ THEN REPLY #10006 /* ~"Bien. Tu connais ta place et il vaut mieux que tu y restes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"Et bien, tu n'es pas mon domestique, alors j'aimerais que tu me considères comme ton égal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"Peu importe. J'ai des questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~Il hoche la tête, mais garde les yeux baissés. "Oui, m'sieur."~ */
  IF ~~ THEN REPLY #10011 /* ~"Je cherche un deva. On m'a dit qu'il était à Maudith. Tu l'as vu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"Parle-moi de Maudith."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"Quelles sont les dernières nouvelles ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"Qui est le responsable ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"Un deva, m'sieur ? Je vois mal l'un d'eux approcher d'ici, sans parler d'y entrer." Il réfléchit. "Tu pourrais aller au bureau administratif sur la grand-place. S'il y a un visiteur de cette sorte à Maudith, ils sont au courant."~ */
  IF ~~ THEN REPLY #10017 /* ~"Merci. Mais j'ai d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"Tu as été très serviable. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"Il y a peu à dire, m'sieur. Maudith est une ville-portail à la périphérie de l'Outreterre. Elle renferme le portail des Carcères, qui se situe sur la grand-place." Il plisse le front sous l'effet de la réflexion. "Mais je doute qu'il soit encore ouvert. On l'a fermé pour éviter la propagation de la peste, je crois… "~ */
  IF ~~ THEN REPLY #10020 /* ~"La peste ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~Le ton de ta voix le pousse à t'apporter des précisions sur-le-champ. "Oui, m'sieur, mais ne t'inquiète pas. On a fermé les quartiers infestés, et la situation est maîtrisée."~ */
  IF ~~ THEN REPLY #10022 /* ~"Euh… Bien. Alors, permets-moi de te demander autre chose."~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"Tu as été très serviable. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"Et bien… j'ai entendu dire qu'il devait bientôt y avoir une exécution… À part ça, je ne vois rien, m'sieur."~ */
  IF ~~ THEN REPLY #10025 /* ~"Qui va être exécuté et pour quelle raison ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"Très bien. Il faut que je te demande autre chose."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~Il hausse les épaules. "M'sieur, je l'ignore. Ni toi ni moi… alors, peu importe… non ?"~ */
  IF ~~ THEN REPLY #10029 /* ~"Non… C'est vrai. Permets-moi de te demander autre chose."~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"Je vois. Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"Le bourgmestre, Tovus Giljaf. Tu le trouveras au bureau administratif, sur la grand-place."~ */
  IF ~~ THEN REPLY #10032 /* ~"Je vois. Que peux-tu me dire sur Tovus ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"Merci beaucoup. Il faut que je te demande autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~Pour la première fois, il lève la tête et croise ton regard. "Rien, m'sieur. Rien du tout. Si tu as des questions concernant Sa Seigneurie, c'est à lui qu'il faut t'adresser." Il baisse les yeux.~ */
  IF ~~ THEN REPLY #10035 /* ~"Très bien, c'est peut-être ce que je vais faire. Permets-moi de te poser une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"Je vois. Et bien, je dois partir, maintenant. Au revoir."~ */ EXIT
END
