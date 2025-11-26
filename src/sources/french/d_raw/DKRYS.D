// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~Tu aperçois une femme calme et posée. Son visage reflète une expression de dureté. Sa voix est grave et ferme. "Je suis Krystall, leader des Anges Rasoirs. Tu es sur notre territoire. Que me veux-tu ?"~ */
  IF ~~ THEN REPLY #3818 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"Parle-moi des Anges Rasoirs."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"Parle-moi de l'Allée."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"Je cherche Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"Je cherche un journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"Rosenoire veut te voir morte. Je suis là pour te tuer."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"William le Véreux veut te voir morte. Je suis là pour te tuer."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"Rien."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~Elle hausse les épaules. "Je suis le leader des Anges Rasoirs. C'est tout ce que tu as besoin de savoir. Je les ai créés, ils obéissent à mes ordres. Bien. Que me veux-tu ?"~ */
  IF ~~ THEN REPLY #3826 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"Parle-moi des Anges Rasoirs."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"Parle-moi de l'Allée."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"Je cherche Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"Je cherche un journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"Rosenoire veut te voir morte. Je suis là pour te tuer."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"Rien."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"Nous sommes venus ici quand des gangs plus importants se sont emparés des Dédales d'ordures près du Square du Chiffonnier. Nous sommes arrivés ici à peu près à la même époque que les Shivs de Sombrallée, qui ont posé leur guitoune de l'autre côté de l'allée. Rien qu'un tas de sicaires meurtriers." Elle s'interrompt. "Nous sommes des sicaires, mais nous ne tuons pas si nous pouvons l'éviter. On essaie juste de gagner notre vie, et vu notre situation, utiliser un droit de péage semble être la meilleure manière de le faire."~ */
  IF ~~ THEN REPLY #3833 /* ~"Ça a l'air intéressant."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~"L'endroit a pris feu quand un jeteur de sorts azimuté s'est mis dans la tête que ça serait plus joli une fois en cendres. Depuis, c'est une plaque tournante pour les criminels et les gangsters."~ */
  IF ~~ THEN REPLY #3835 /* ~"Et tu en fais partie ?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"Je vois. Et bien, je dois m'en aller, maintenant. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~Elle crache. "Poil-d'asticot ? Tu l'trouveras sous l'Square du Chiffonnier. Renseigne-toi dans les environs. T'es sûr d'attirer l'attention."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"Tu n'as pas vu un journal quelque part ?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"Merci. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"Un journal ? Un livre ? Ici ? Dans l'Allée ? Ha ! Désolée - tout ce qui peut brûler sert à alimenter les fourneaux, ici."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"Très bien. Est-ce que tu sais où je pourrais trouver un certain Pharod ?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"Alors, merci. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"Avant que tu ne partes, j'ai une faveur à te demander. Cette portion de l'Allée n'est pas assez grande pour nous et les Shivs de Sombrallé. Nous avons du cœur. Ils ont de la haine. Tue leur chef, William le Véreux, et nous t'assurerons un libre passage dans l'Allée jusqu'à la fin de ta vie. Tu viens ici assez régulièrement pour que cela en vaille la peine, tu économiseras pas mal de jonc."~ */
  IF ~~ THEN REPLY #3844 /* ~"Parle-moi de ton gang."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystall, chef des Anges Rasoirs de l'Allée des Angles dangereux, m'a demandé d'éliminer son principal rival, un homme du nom de William le Véreux. En échange de ce service, je recevrai un passe qui me permettra de traverser gratuitement l'Allée.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"Ça a l'air intéressant. C'est d'accord."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~Krystall, chef des Anges Rasoirs de l'Allée des Angles dangereux, m'a demandé d'éliminer son principal rival, un homme du nom de William le Véreux. En échange de ce service, je recevrai un passe qui me permettra de traverser gratuitement l'Allée.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"Je ne suis pas un tueur."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystall, chef des Anges Rasoirs de l'Allée des Angles dangereux, m'a demandé d'éliminer son principal rival, un homme du nom de William le Véreux. En échange de ce service, je recevrai un passe qui me permettra de traverser gratuitement l'Allée.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"Il est déjà mort."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"Non. Nous n'avons tout simplement rien de mieux. Nous sommes des habitants de la Ruche. Même le peu d'instruction que j'ai reçue ne me sortira pas d'ici. Personne ne veut des habitants de la Ruche, alors on fait en sorte que personne ne nous oublie."~ */
  IF ~~ THEN REPLY #3847 /* ~"Peu importe. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"Ouais. Mais je pense que si on peut rester dans l'Allée et se débarrasser des Shivs, on restera ici pour quelque temps."~ */
  IF ~~ THEN REPLY #3848 /* ~"Ça peut se faire. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"Je suis impatiente d'apprendre que tu as réussi. Reviens me voir quand tu l'auras fait, d'accord ? Bonne chance."~ */
  IF ~~ THEN REPLY #3851 /* ~"Au revoir."~ */ JOURNAL #3853 /* ~J'ai accepté de tuer William le Véreux.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"Peut-être pas. C'est juste une question de choisir entre tuer un chien fou et les siens ou payer chaque fois que tu passes dans l'Allée. Le choix t'appartient."~ */
  IF ~~ THEN REPLY #3854 /* ~"Laisse tomber. Je ne le ferai pas."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"Bon, je m'en charge."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"Nous sommes nomades. Nous avons été forcés de nous déplacer plusieurs fois. Nous nous sommes installés ici en même temps que William le Véreux et ses Shivs de Sombrallée, et maintenant nous nous battons pour nos vies. On ne réclame qu'un droit de passage. Ils prennent des vies. Nous sommes à la base de bonnes personnes. Ils sont malfaisants, et menés par un homme malfaisant."~ */
  IF ~~ THEN REPLY #3856 /* ~"Je le tuerai."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"À mon avis, il est davantage mon genre. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"Je ne ferai pas ça."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"Ça ne m'empêchera pas de te le demander chaque fois que tu me parleras. Il faut que ce soit fait."~ */
  IF ~~ THEN REPLY #3859 /* ~"Alors, je suppose qu'il vaut mieux que je le fasse."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"Je n'ai toujours pas l'intention de le faire. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"As-tu fait des progrès concernant l'inscription de William le Véreux dans le livre des morts ?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"Je t'ai dit que je ne le ferais pas !"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"Pas encore."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"Oui. Il est mort. Tu n'as plus à t'inquiéter de lui ou de son gang."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"Je t'ai dit que je continuerais à te le demander jusqu'à ce que tu acceptes de le faire."~ */
  IF ~~ THEN REPLY #34416 /* ~"Je le ferai, à condition que tu me lâches les bottes."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"Je ne veux toujours pas le faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"Alors pourquoi me parles-tu ? C'est un boulot qui doit être fait !" Elle se détourne.~ */
  IF ~~ THEN REPLY #34418 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"C'est fait ? Plus de William le Véreux ? Reçois mes remerciements, voyageur ; tu n'auras désormais plus besoin de payer de droit de passage dans l'Allée des Angles dangereux. Je n'ai qu'un autre service à te demander."~ */
  IF ~~ THEN REPLY #34419 /* ~"Laisse tomber."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"Qu'est-ce qu'il y a ?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"Qu'est-ce que tu m'offres ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"Il y a un dangereux meurtrier, un loup solitaire du nom de Rosenoire. Il a jeté son dévolu sur mes gens. Je te demande de l'arrêter."~ */
  IF ~~ THEN REPLY #34422 /* ~"Je m'en charge."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"Qu'est-ce que tu m'offres ?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"Il est mort, lui aussi."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"Du jonc. Des pièces. Une bourse pleine de pièces. Intéressé ?"~ */
  IF ~~ THEN REPLY #34425 /* ~"Oui."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"Non."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"Alors cherche cet azimuté de Rosenoire et inscris-le au livre des morts. Une fois qu'il sera mort, reviens me voir et je te récompenserai."~ */
  IF ~~ THEN REPLY #34427 /* ~"D'accord. Au revoir."~ */ JOURNAL #34428 /* ~Existe-t-il un être, un seul, que Krystall ne veuille pas voir mort ? Maintenant je dois retrouver un vigile du nom de Rosenoire et l'éliminer. Elle m'a promis du cuivre et son amitié pour ce travail.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~Elle sourit. "Tu te rends bien sûr compte que je continuerai à te le demander comme si tu avais accepté. En attendant ton retour, au revoir."~ */
  IF ~~ THEN REPLY #34429 /* ~"Génial. Au revoir."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"As-tu trouvé et tué Rosenoire ?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"Pas encore."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"Oui. Tu n'as plus à t'inquiéter de lui."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~Elle te tend une énorme bourse rapiécée. "Reçois mes remerciements, et ceux des Anges Rasoirs. Nous nous séparons en amis, et je me souviendrai de toi."~ */
  IF ~~ THEN REPLY #34432 /* ~"Bien sûr. Au revoir."~ */ JOURNAL #34433 /* ~J'ai reçu une bourse de pièces en contrepartie de l'exécution de Rosenoire. Une somme assez coquette, d'ailleurs.~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"Salut, l'ami. Reçois mes remerciements. Considère l'Allée - toute humble qu'elle soit - comme ton domaine. Au revoir."~ */
  IF ~~ THEN REPLY #34434 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"Essaie, s'il te plaît. Il est en train de décimer mon peuple."~ */
  IF ~~ THEN REPLY #34435 /* ~"Je continue à chercher. Au revoir."~ */ EXIT
END
