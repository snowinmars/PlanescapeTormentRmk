// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~Tu aperçois un homme entre deux âges, aux vêtements de mauvaise qualité. Il fronce les sourcils à ton approche et regarde alentour d'un air méfiant.~ */
  IF ~~ THEN REPLY #57957 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~Il fronce davantage les sourcils en t'examinant. "Euh… salut. Que veux-tu ?"~ */
  IF ~~ THEN REPLY #57963 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"Peu importe. Je dois partir, au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"Comme quoi ?"~ */
  IF ~~ THEN REPLY #57967 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"Je cherche un deva. J'ai entendu dire qu'il était à Maudith."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"Je dois y aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~Il hésite avant de répondre. "Mon nom est Voorsha," dit-il sans rien ajouter.~ */
  IF ~~ THEN REPLY #57972 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~Il te lance un regard vide puis hausse les épaules. "Je suis… commerçant. Voici mon entrepôt."~ */
  IF ~~ THEN REPLY #57975 /* ~"Qu'est-ce que tu stockes ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~Il fronce les sourcils. "Je vois pas en quoi ça te concerne."~ */
  IF ~~ THEN REPLY #57978 /* ~"Je suis juste curieux…"~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~Il hausse les épaules. "Eh bien…" Il fait un geste qui ne veut pas dire grand-chose. "De la bière, de l'hydromel et… d'autres marchandises." Il est nerveux.~ */
  IF ~~ THEN REPLY #57982 /* ~"Qu'est-ce qui te rend si nerveux ?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~Il commence à s'agiter. "Rien…" Il te regarde d'un air chargé de défi. "On parle d'autre chose ?"~ */
  IF ~~ THEN REPLY #57986 /* ~"Non, je crois que tu prépares quelque chose, et je veux savoir quoi."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~Il te regarde d'un air furieux puis hausse les épaules. "Je… ramène les marchandises par des… voies secondaires. Les gardes ne sont pas au courant…"~ */
  IF ~~ THEN REPLY #57990 /* ~"Tu es contrebandier."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~Il fronce les sourcils. "Je suis contrebandier, ça sonne mieux que pirate, tu crois pas ?" Il te regarde d'un air rusé. "Dis voir… est-ce que ça te dirait de m'aider… en échange d'une partie des bénéfices ?"~ */
  IF ~~ THEN REPLY #57995 /* ~"Quel genre d'aide ?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~Il réfléchit pendant un instant. "Y'a un gehreleth près d'ici qui a essayé de me tuer et qui m'empêche de sortir mes affaires. J'ai besoin que quelqu'un s'en charge."~ */
  IF ~~ THEN REPLY #58002 /* ~"Qu'est-ce qu'un gehreleth ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"Pourquoi ne t'occupes-tu pas de ça toi-même ?"~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"Qu'est-ce que je gagne à faire ça pour toi ?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~Il hausse les épaules. "C'est juste une créature stupide qui essaie de dévorer tout ce qu'elle voit…" Il te regarde anxieusement..~ */
  IF ~~ THEN REPLY #58011 /* ~"Pourquoi ne t'occupes-tu pas de ça toi-même ?"~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"Qu'est-ce que je gagne à faire ça pour toi ?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"Je suis pas guerrier, il me tuerait du premier coup." Il regarde tes cicatrices. "Si tu as survécu à ça, tu devrais pouvoir t'en charger."~ */
  IF ~~ THEN REPLY #58023 /* ~"Qu'est-ce qu'un gehreleth ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"Qu'est-ce que je gagne à faire ça pour toi ?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~Il sourit. "J'ai de la place pour un partenaire. Les affaires vont bien et je peux pas tout distribuer moi-même. On partagerait les profits moitié-moitié. Qu'est-ce que t'en dis ?"~ */
  IF ~~ THEN REPLY #58039 /* ~"Bien sûr, pourquoi pas."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"Sûrement pas."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"J'y réfléchirai. J'ai d'autres questions…"~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"J'ai déjà tué le gehreleth. Alors, sommes-nous associés, désormais ?"~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"Il faut que j'y aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~Son sourire s'élargit. "Génial. Charge-toi du gehreleth et reviens me voir."~ */
  IF ~~ THEN REPLY #58056 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"Je dois partir, au revoir…"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~Il fronce les sourcils.. "D'accord, mais si tu changes d'avis, mon offre est toujours valable. J'vais devoir mettre la clé sous la porte si j'arrive pas à me débarrasser de ce gehreleth.~ */
  IF ~~ THEN REPLY #58065 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~Il regarde alentour. "Rien à dire, vraiment." Il hausse les épaules. "Vois par toi-même.~ */
  IF ~~ THEN REPLY #58068 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~Il fronce les sourcils. "Un deva… j'ai entendu des rumeurs…" Il s'interrompt.~ */
  IF ~~ THEN REPLY #58071 /* ~"Quelles rumeurs ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~Il hausse les épaules et détourne le regard. "Il y avait une excavation par ici, pour agrandir la prison, vers le bas. On dit qu'ils ont découvert une salle inconnue, par accident…" Il se retourne vers toi. "Et trouvé *quelque chose* ou *quelqu'un* emprisonné à l'intérieur."~ */
  IF ~~ THEN REPLY #58073 /* ~"Continue."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"Selon certains, c'est un deva que l'on a trouvé. Selon d'autres, il s'agissait d'un baatezu, mais d'autres encore parlent plutôt d'un tanar'ri." Il hausse les épaules. "Personnellement, je me fiche de ce que c'est, et j'ai l'intention de rester loin de tout ça."~ */
  IF ~~ THEN REPLY #58075 /* ~"Où se trouve cette salle ?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"Je dois y aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"J'en ai aucune idée. Continue à fouiller alentour, et tu finiras par trouver… mais c'est pas une bonne idée, si tu veux mon avis."~ */
  IF ~~ THEN REPLY #58078 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~Tu aperçois Voorsha, le contrebandier. Il regarde nerveusement aux alentours en te voyant approcher. "Rebonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"Tu as dit que tu avais besoin d'aide. De quoi as-tu besoin, exactement ?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"Tu m'as demandé de m'occuper d'un gehreleth pour toi."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"J'ai tué ce gehreleth pour toi.~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~Il te regarde fixement pendant un instant. "Oui. Tu acceptes ?"~ */
  IF ~~ THEN REPLY #58087 /* ~"Qu'est-ce que je gagne à le faire ?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~Il paraît surpris, mais se reprend rapidement. Il te regarde pour voir si tu l'as remarqué. "Euh… c'est super ! Bon boulot."~ */
  IF ~~ THEN REPLY #58089 /* ~"Tu as dit que tu ferais de moi ton partenaire. Je suis ici pour récupérer ce qui me revient."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~Il acquiesce. "Oui… je l'ai dit, c'est vrai." Il te regarde fixement pendant un instant puis commence à s'agiter.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"Alors, on est partenaires maintenant. Pas vrai ?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"Tu ne pensais pas que je pourrais tuer le gehreleth, hein ?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~Il te regarde un instant puis soupire. "Non… on dirait que tu as dépassé mes espérances… j'espérais que le gehreleth se chargerait de toi et m'éviterait d'avoir à le faire." Il tire brusquement une arme et attaque.~ */
  IF ~~ THEN REPLY #58094 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~Il te regarde un instant puis soupire. "Non… on dirait que tu as dépassé mes espérances… j'espérais que le gehreleth se chargerait de toi et m'éviterait d'avoir à le faire." Il tire brusquement une arme et attaque.~ */
  IF ~~ THEN REPLY #58097 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
