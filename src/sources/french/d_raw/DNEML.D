// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~Cette femme grande et mince, qui sirote du vin dans une petite tasse en céramique, semble chercher quelqu'un. Ses traits ont une élégance exotique et l'on voit que ses oreilles, bien qu'en partie dissimulées par les longs cheveux, se terminent en pointe.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"Bonjour."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"Bonjour."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"Bonjour."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~Laisse la femme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~La femme se tourne vers toi, ses yeux violets étincelant tels de parfaites améthystes. Ses paroles résonnent comme une musique ; alors qu'elle parle, tu perçois une sorte de tintement musical semblable à celui d'une centaine de minuscules clochettes de cristal. Chaque mot s'attarde dans tes oreilles, comme si elles refusaient de renoncer à ce son exquis. "Nemelle se tourna pour faire face à l'austère étranger balafré. Elle demanda ce qu'il attendait d'elle."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"Tu es Nemelle ? On m'a dit que tu connaissais le mot magique de la carafe."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"Nemelle ? Ton amie Aelwyn te cherche."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~J'ai dit à Nemelle que son amie Aelwyn la cherchait. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"Tu cherches quelqu'un ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"J'avais quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~La femme se tourne vers toi, ses yeux violets étincelant tels de parfaites améthystes. Ses paroles résonnent comme une musique ; alors qu'elle parle, tu perçois une sorte de tintement musical semblable à celui d'une centaine de minuscules clochettes de cristal. Chaque mot s'attarde dans tes oreilles, comme si elles refusaient de renoncer à ce son exquis. "Nemelle se tourna pour faire face à l'austère étranger balafré. Elle demanda ce qu'il attendait d'elle."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~La femme se tourne vers toi, ses yeux violets étincelant tels de parfaites améthystes. Ses paroles résonnent comme une musique ; alors qu'elle parle, tu perçois une sorte de tintement musical semblable à celui d'une centaine de minuscules clochettes de cristal. Chaque mot s'attarde dans tes oreilles, comme si elles refusaient de renoncer à ce son exquis. "Nemelle se tourna pour faire face à l'austère étranger balafré. Elle demanda ce qu'il attendait d'elle."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~Le femme ne fait aucun geste pour toucher ou examiner la carafe, mais parle. "Nemelle la prit à l'étranger, puis la retourna entre ses mains. Avait-elle déjà vu quelque chose de semblable auparavant, se demanda-t-elle ? Peut-être… Oui, elle se souvenait à présent. Elle retourna la carafe, tout en lui murmurant quelque chose à l'oreille…"~ */
  IF ~~ THEN REPLY #43936 /* ~"Euh…"~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~Une femme mystérieuse dénommée Nemelle m'a donné le mot de commande de la carafe magique que j'avais découverte : c'est 'Nildennosaj'.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~Tu réalises à présent que tu connais ce mot - 'Nildenosaj' - tout en sachant pourtant que la femme ne te l'a jamais murmuré, mais qu'elle s'est contentée de dire qu'elle l'avait fait. Elle te regarde en clignant des yeux. "L'étranger allait-il maintenant la quitter, satisfait de ce qu'elle lui avait dit ?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"Pas encore. J'ai trouvé Aelwyn."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~J'ai dit à Nemelle que j'avais retrouvé son amie Aelwyn. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"Pas encore. Ton amie Aelwyn te cherche."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~J'ai dit à Nemelle que son amie Aelwyn la cherchait. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"Pas encore. Est-ce que tu cherches quelqu'un ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"Non… J'ai quelques questions."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~Les lèvres de Nemelle esquissent un sourire parfait ; un bonheur communicatif se dégage d'elle, s'accrochant à toi comme une chaleur délicatement parfumée. "En l'entendant parler de son amie, Nemelle fut transportée de joie. Aelwyn était-elle près d'ici ?"~ */
  IF ~~ THEN REPLY #43944 /* ~"Elle est dans un autre café, à l'est d'ici, à l'autre bout du Quartier.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"Nemelle remercia l'homme pour les merveilleuses nouvelles qu'il venait de lui apporter. Elle ne tarderait pas à rendre visite à sa plus vieille amie, Aelwyn. Mais à présent, elle devait récompenser l'étranger…"~ */
  IF ~~ THEN REPLY #43946 /* ~"Non, ça va… Je n'ai pas besoin de récompense."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~Attends qu'elle te récompense.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~Nemelle porte son index à ses lèvres, feignant de demander le silence.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"Elle attira l'étranger vers elle, posa une main sur sa poitrine et déposa un baiser sur sa joue pâle à la peau rugueuse. La vie allait entrer en lui et le fortifier… Telle était sa récompense."~ */
  IF ~~ THEN REPLY #43950 /* ~Attends.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~En attendant, tu ressens un léger picotement sur ta joue et ta poitrine. Cette sensation envahit tout ton corps et tu commences à te sentir plus fort, plus animé.~ */
  IF ~~ THEN REPLY #43952 /* ~"Merci. J'ai quelques questions."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"Merci beaucoup, Nemelle. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"Nemelle écouta les questions de l'étranger, mais ne put répondre à aucune d'entre elles. Il allait devoir trouver des réponses ailleurs."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"Bien, mais… est-ce que tu cherches quelqu'un ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"Mais… Je n'ai encore rien demandé…"~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~Nemelle te sourit en secouant doucement la tête, ton visage se reflétant dans ses yeux étincelants. "Frustré, confus, il finit par abandonner. À l'évidence, cette femme ne pouvait rien lui apprendre de plus - ou si elle le pouvait, il ne parvenait pas à la convaincre de se confier à lui."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"Bien, mais… est-ce que tu cherches quelqu'un ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"Quoi ? Non… Je voudrais juste te demander quelque chose…"~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~Tu ouvres la bouche, mais aucun mot n'en sort. Tu réessaies, mais tu ne peux pas l'interroger. Nemelle secoue tristement la tête.~ */
  IF ~~ THEN REPLY #43961 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'Où peut-elle bien être ?' se demanda Nemelle. Son amie Aelwyn aurait déjà dû la retrouver ici depuis plusieurs jours." La femme soupire d'un air malheureux ; l'atmosphère qui l'entoure se glace de tristesse. "Combien de temps allait-elle devoir fouiller cette vaste cité inconnue avant de retrouver son amie la plus chère ?"~ */
  IF ~~ THEN REPLY #43963 /* ~"Je pourrais t'aider à retrouver ton amie. De quoi est-ce qu'elle a l'air ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"Je pourrais essayer de la trouver, moyennant finances, bien sûr."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"J'espère que tu la retrouveras. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~Nemelle se joint les mains et penche la tête vers toi. "Elle serait si contente d'avoir des nouvelles de son amie ! Elle décrivit Aelwyn au gentil étranger, afin qu'il la reconnaisse si jamais il la rencontrait." Une image se forme dans ton esprit - une femme qui ressemble à Nemelle, mais aux yeux couleur or et à la chevelure rouge feu.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"En fait, j'ai déjà rencontré cette femme."~ */ JOURNAL #39493 /* ~J'ai accepté de rechercher quelqu'un pour une femme étrange dénommée Nemelle. En fait, je savais déjà où se trouvait la personne en question, une femme du nom d'Aelwyn. Nemelle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"Si je la trouve, je reviendrai. Au revoir."~ */ JOURNAL #39491 /* ~J'ai accepté de retrouver une certaine Aelwyn pour une femme étrange du nom de Nemelle. D'après ce que je sais, Aelwyn est une femme grande et belle, aux yeux d'or et aux cheveux rouges.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~Nemelle parle lentement, les yeux emplis de découragement : "Elle savait, comme allait bientôt le découvrir l'étranger, qu'elle n'avait rien à donner. Quel que soit le prix de l'homme, elle ne pourrait pas le payer."~ */
  IF ~~ THEN REPLY #43970 /* ~"Alors, je le ferai gratuitement."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"Alors, laisse tomber. Au revoir."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~La femme te salue en souriant ; sa beauté est tout aussi époustouflante que la première fois que tu l'as vue. "Elle rencontra de nouveau l'étranger. 'Pourquoi', se demanda-t-elle, 'revient-il me voir' ?"~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"Nemelle… On m'a dit que tu connaissais le mot magique de cette carafe."~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"Ton amie Aelwyn te cherche."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~J'ai dit à Nemelle que son amie Aelwyn la cherchait. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"Tu cherches quelqu'un ?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"J'avais quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~La femme te salue en souriant ; sa beauté est tout aussi époustouflante que la première fois que tu l'as vue. "Nemelle retint son souffle alors que l'étranger s'approchait d'elle. 'A-t-il retrouvé Aelwyn ?' se demanda-t-elle."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"On m'a dit que tu connaissais le mot magique de cette carafe."~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"J'ai trouvé Aelwyn. Elle te cherchait, elle aussi."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~J'ai dit à Nemelle que j'avais retrouvé son amie Aelwyn. Elle m'a remercié d'un baiser magique, qui m'a fait gagner trois points de vie supplémentaires.~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"Je ne l'ai pas trouvée. J'ai quelques questions…"~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~Nemelle se joint les mains et penche la tête. Lorsqu'elle relève enfin les yeux en te souriant, un frisson de plaisir te traverse le corps, te donnant presque le vertige. "Nemelle remercia de nouveau l'étranger ; elle espérait juste qu'il savait combien elle était heureuse d'avoir retrouvé Aelwyn."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"Il ne s'agit pas d'un problème. Je… on m'a dit que tu connaissais le mot de commande de cette carafe."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"Je… je crois que oui. Au revoir, Nemelle."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~La femme grogne, ses yeux violets lançant des éclairs de pure haine. Elle parle comme si elle lisait un livre : "'Imbécile', cria-t-elle. 'Comment oses-tu attaquer ainsi une fille d'Asaharm ! Tu n'es qu'un chien…' Elle le regarda en plissant les yeux. '… Et comme un chien, tu mourras' !" Elle te considère alors froidement en buvant une gorgée de vin.~ */
  IF ~~ THEN REPLY #43987 /* ~"Hein… ?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~Ignore-la, prépare-toi à attaquer.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~Tu tombes en hurlant de douleur… Tu as l'impression que tes entrailles sont en ébullition et tu commences à cracher de grosses gouttes de sang noir. Enfin, tu t'effondres dans la rue, en tremblant alors que toute trace de vie disparaît de ton corps…~ */
  IF ~~ THEN REPLY #43990 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
END
