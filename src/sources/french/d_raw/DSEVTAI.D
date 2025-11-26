// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~Le visage de cette femme semble brisé et elle est couverte de cicatrices - on dirait des marques de morsures et de griffures d'ongles. Elle tortille des lambeaux de chiffons dans ses mains et regarde sur le mur du monument les noms inscrits.~ */
  IF ~~ THEN REPLY #25996 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~Laisse la femme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"Oust ! Recule !" La femme retrousse ses lèvres, dévoilant une rangée de canines noires. "Qu'est-ce que tu lui veux, à Sev'Tai ?!"~ */
  IF ~~ THEN REPLY #26494 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"Ce qui ne va pas ?! Ces Cos… Ca-ows… CHAO-teux ont détruit ma charrette et tué trois de mes sœurs qui tentaient de les arrêter ! Plus de sœurs - ce ne sont plus que des noms sur le mur de ce mémorial !"~ */
  IF ~~ THEN REPLY #26497 /* ~"Des Chaoteux ?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"Toutes mes condoléances. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"Les Chaoteux, une faction qu'ils disent. Ce qu'ils SONT, c'est une bande d'enfumés qui parcourt sauvagement la Ruche et fait ce qui lui plaît ! Nous ne leur avons jamais fait de mal ! Ils bondissent comme des chiens et déchirent tout ce qui passe à leur portée."~ */
  IF ~~ THEN REPLY #26500 /* ~"Qui sont ces Chaoteux qui vous ont attaquées ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"Toutes mes condoléances. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"C'est un gang de rucheux, une bande de bougres enfumés qui se prénomment les… les… 'Chiens Affamés Aboyants' ou une idiotie de la sorte !"~ */
  IF ~~ THEN REPLY #26503 /* ~"Tu sais, je ne verrais pas d'inconvénients à inscrire quelques types dans le livre des morts en échange de quelques pièces. Si tu as le cuivre, on peut parler affaires."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"Leurs actions étaient injustes. Si tu veux, je ferai en sorte que les torts soient réparés. S'ils sont responsables de trois morts, alors ces 'Chiens Affamés' auront trois morts dans leurs rangs."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~" J'ouvrirai les yeux… Toutes mes condoléances. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"Ta bourse sera plus grosse d'une boucle d'oreille en cuivre si tu inscris trois d'ces bougres meurtriers dans l'livre des morts, d'ac' ?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"Très bien, mais cette mission est déjà accomplie. Il n'y a pas si longtemps, j'ai en tué trois dans la Ruche. Ils font peut-être partie de ceux qui ont tué tes sœurs."~ */ JOURNAL #26101 /* ~J'ai rencontré une femme étrange, Sev'Tai, près du Mémorial Homme-Poussière à l'extérieur de la Morgue. Elle était en deuil à la suite de la mort de ses trois sœurs, qui avaient été attaquées par un groupe de 'Chaoteux' du nom de Chiens Affamés Aboyants. Elle m'a demandé d'en tuer trois, et j'ai accepté… En fait, j'avais rencontré ces Ruchers avant qu'elle m'en parle et j'avais répondu à sa demande avant même qu'elle la formule.~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"Je veillerai à ce qu'ils soient inscrits au livre des morts. Est-ce que tu sais où on peut les trouver ?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"Je ne pense pas pouvoir t'aider, Sev'Tai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"Que les Puissances voient clair dans leur jugement aujourd'hui !" La femme plonge la main dans ses cheveux fins et en sort une boucle d'oreille en cuivre. "Voilà. Ça devrait rapporter une coquette somme. Elle vaut au moins trente-trois pièces de cuivre, j'en suis sûre. Elle appartenait à l'une de mes sœurs… mais elle va plus en avoir besoin."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"Très bien. Adieu, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"Très bien. Adieu, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~Je suis retourné voir Sev'Tai et lui ai dit que j'avais tué les Chiens Affamés. La jeune femme à crocs était si folle de douleur et désireuse de les savoir morts qu'elle m'a cru. La pauvre… au moins, elle m'a permis de gagner un peu de cuivre.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"Rends-toi à la porte sud, en direction du mont en partant d'ici… en te baladant dans le quartier tu arriveras à un endroit où des hommes tournent en rond, en courant et en hurlant au ciel de Sig. Ce sont les Chiens Affamés, sûr."~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"Ouais, je suis allé par-là. C'est au sud d'ici, là où il y a tous les ivrognes et les catins. Je vais y aller et je reviendrai très vite."~ */ JOURNAL #26099 /* ~J'ai rencontré une femme étrange, Sev'Tai, près du Mémorial Homme-Poussière à l'extérieur de la Morgue. Elle était en deuil suite à la mort de ses trois sœurs, qui avaient été attaquées par un groupe de 'Chaoteux' du nom de Chiens Affamés Aboyant. Elle m'a demandé d'en tuer trois, et j'ai accepté. Elle m'a dit que je pourrais les trouver dans la Ruche, dans le quartier situé au sud du Mémorial, celui des catins et des ivrognes.~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"Bon, je vais essayer de les trouver."~ */ JOURNAL #26098 /* ~J'ai rencontré une femme étrange, Sev'Tai, près du Mémorial Homme-Poussière à l'extérieur de la Morgue. Elle était en deuil suite à la mort de ses trois sœurs, qui ont été attaquées par un groupe de 'Chaoteux' du nom de Chiens Affamés Aboyant. Elle m'a demandé d'en tuer trois, et j'ai accepté. Elle m'a dit que je pourrais les trouver dans la Ruche, dans le quartier situé au sud du Mémorial, après la porte sud.~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"Encore toi…" La femme se tourne vers toi et ses lèvres se retroussent dans un grondement. "T'as des nouvelles pour Sev'Tai ?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"J'ai trouvé les Chiens Affamés Aboyants et j'ai inscrit trois d'entre eux dans le livre des morts."~ */ JOURNAL #26520 /* ~Je suis retourné voir Sev'Tai après avoir tué trois des Chiens Affamés. En échange de mes services, elle m'a donné une boucle d'oreille en cuivre et m'a remercié d'avoir vengé ses sœurs.~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~Mensonge : "J'ai trouvé trois des Chiens Affamés Aboyants et je les ai inscrits dans le livre des morts."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"Aucune bonne nouvelle pour le moment. Je suis toujours à la recherche de ces Chaoteux."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~La femme aux crocs te fait un signe en t'apercevant. "Sev'Tai et ses sœurs te remercient de ta justice."~ */
  IF ~~ THEN REPLY #26522 /* ~"Très bien, Sev'Tai. Au revoir."~ */ EXIT
END
