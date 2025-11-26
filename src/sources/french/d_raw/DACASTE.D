// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~Cette goule à l'aspect usé dégage une odeur de moisi nauséabonde, même de loin. Sa peau vert-de-gris est rongée par la pourriture de la mort et infestée de plaies suppurantes. Ses doigts, qui s'achèvent par de longues griffes recourbées, sont couverts de crasse et de sang séché. Sa chevelure, pleine d'insectes et de vers, tombe jusqu'à ses genoux. Elle cache tout son visage, sauf son rictus sauvage, ses longs crocs et sa langue grise et pendante.~ */
  IF ~~ THEN REPLY #2876 /* ~"Bonjour…"~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~Laisse la femme-goule.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"Hssst. Qu'est-ce que je vois ? Un beau morceau de viande, hein, un petit peu nerveux ? J'aiguiserais bien mes dents sur tes os et j'm'engraisserais bien sur ta moelle, hmmm ? Hssst."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"Tu dois être Acaste."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"Je n'ai pas *besoin* d'être quoi que ce soit pour toi, viande et os. Parle-moi sur un autre ton, ou personne te retrouvera en un seul morceau."~ */
  IF ~~ THEN REPLY #20859 /* ~"Je te parlerai sur le ton qu'il me plaira, goule"~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~Elle commence à rire avant que tu n'aies fini de parler. Un terrible son, strident et moqueur. "Viande stupide ! Tu ne sais pas, n'est-ce pas ! Je suis Acaste, la reine-goule ! Mes précieuses Calamités feront un festin de toi, te dévorant jusqu'au dernier morceau, même ta moelle remplira leurs panses ! Comment oses-tu me parler sur ce ton ?"~ */
  IF ~~ THEN REPLY #20863 /* ~"Ta horde de charognards miteux ne m'effraie pas."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~Elle te rit au nez. "Chanceux, tu as de la chance, viande, chanceux ! Chanceux, au nom du Roi Silencieux ! Autrement tu serais de la viande pour nos panses, humide et délicieuse !" Elle crache à tes pieds. "Fini, fini de parler avec la viande ! Hssst !"~ */
  IF ~~ THEN REPLY #20867 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"Qui es-tu pour t'avancer devant moi comme un festin ? Réponds à Acaste."~ */
  IF ~~ THEN REPLY #20869 /* ~"Je n'ai pas de nom."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"Réponds d'abord à mes questions…"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"Alors Acaste n'en a pas non plus pour toi. Je t'appellerai le sanglant. Prie pour que tu aies un nom et une volonté avant que je ne te déchiquette."~ */
  IF ~~ THEN REPLY #20873 /* ~"Le sanglant ?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"Mes questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"Aaaadahn…" Elle sort sa longue et grise langue de ses lèvres, une bave jaunâtre s'écoulant des coins de sa bouche. "Oui…"~ */
  IF ~~ THEN REPLY #20877 /* ~"Mes questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"Non. Réponds-moi maintenant, avant que je n'arrache la viande de tes os et la dévore ! Tu feras un festin de choix pour mes Calamités, oui…"~ */
  IF ~~ THEN REPLY #20880 /* ~"Fais attention à ta langue, goule, ou tu ne vas pas la garder longtemps."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"Je n'ai pas de nom."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"Va ! Importune Acaste tant que tu es vivant, viande ! Parle !"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"Où suis-je ?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~Acaste grimace. "Hssst ! Parce que nous ne t'avons pas attrapé dans les halles sombres, où tu aurais fait un festin de choix pour nous !" Elle secoue la tête, grognant. "Maudit soit le Roi Silencieux, maudit soient ses vieux os ! La viande attrapée ici, par les autres, reste ici jusqu'à ce qu'elle *rejoigne* les autres."~ */
  IF ~~ THEN REPLY #20893 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"Les autres ? Qui d'autre habite ici ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"Les Nations Mortes, terres du Roi Silencieux… pleines d'os moelleux et de hordes de chair morte…" Elle se lèche les lèvres avidement, se grattant le ventre.~ */
  IF ~~ THEN REPLY #20898 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"Nous combattons, vainquons et dévorons. Les sanglants comme toi deviennent notre nourriture. Notre appétit est vorace, il brûle nos estomacs, jamais pleins. Nous sommes toujours affamées… et te voilà… dépêche-toi, meurs et ne bouge plus !"~ */
  IF ~~ THEN REPLY #20902 /* ~"Les sanglants ?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"Comment es-tu arrivée ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"J'erre dans les catacombes, chasse et tue, force les cryptes et les cercueils, *mange* les os et la chair morte. J'arrive ici…" Acaste cligne des yeux. "Ici… endroit bizarre… Acaste reste avec les faibles, les os à moelle et les hordes de chair morte… peut faire du bruit, leur parler et ils répondent."~ */
  IF ~~ THEN REPLY #20907 /* ~"Alors pourquoi tu n'as pas tué et mangé ces morts-vivants ?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"Viande à manger…" Ses yeux jaunes te fixent avec insistance à travers sa chevelure blanche et broussailleuse. "… toi."~ */
  IF ~~ THEN REPLY #20911 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~Acaste fronce les sourcils. "Proie pas facile. Ils ne sont pas immobiles comme le sont les autres os et chair morte… Ils combattent en bandes et sont nombreux. Difficiles à battre ensemble, plus faibles séparément, forts ensemble, presque aussi forts qu'Acaste. Alors nous attendons."~ */
  IF ~~ THEN REPLY #20914 /* ~"Qu'est-ce que vous attendez ?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"Qu'est-ce que tu fais en attendant, alors ?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"On dit qu'on se bat pour eux, on tue les sanglants quand ils viennent nous voler, on chasse ces maudits rats, on les tue, on les mange, on laisse des morceaux de corps qu'on mange pas pour les avertir de ne pas venir sinon on les mange. Ils nous font seulement garder cet endroit. Hargrimm et Salie Marie veulent pas qu'on aille tuer les sanglants."~ */
  IF ~~ THEN REPLY #20919 /* ~"Qui…"~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"J'avais…"~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"C'est tout ce que je…"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~Acaste ne semble plus faire attention à vous. Elle siffle, montrant ses dents sanglantes et aiguisées. "Maudits soient-ils ! Veux dévorer les sanglants ! Affamés, nous sommes… tuer tous les sanglants, déchirer chair avec les dents et faire craquer les os, leur sucer le moelle !"~ */
  IF ~~ THEN REPLY #20923 /* ~"Qu'est-ce que vous attendez ?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"Qui est Hargrimm ?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"Qui est Salie Marie ?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"Les sanglants ?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"Les rats sanglants ?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"Font *couic-couic*, courent dans l'ombre quand on les chasse, difficiles à attraper. Nourriture, difficile à prendre. Chair tendre, facile à croquer. Beaucoup ailleurs, on les tuera et on les mangera tous. Faim disparaît quand beaucoup dans la panse. Toujours à nous observer, avec yeux rouges et juteux bons à manger."~ */
  IF ~~ THEN REPLY #20931 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"On attend qu'ils soient faibles, oui… on attend de voir comme le Roi Silencieux est fort, s'il est plus fort qu'Acaste. On attend que la horde des chairs mortes s'arrête de suivre les os moelleux…"~ */
  IF ~~ THEN REPLY #20934 /* ~"Qu'est-ce que tu feras, alors ?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~Acaste, meneuse d'un groupe de goules, est très désireuse de voir les Nations Mortes devenir son garde-manger. Son groupe et elle attendent la première occasion pour envahir les catacombes, tuer et dévorer tout ce qu'elles croiseront dans leur course.~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"Les *manger* tous. Faim. Tuer toutes les petites choses poilues, *manger* toutes les créatures sanglantes du village, manger. Les catacombes sont pleines de gibier. On a faim ! *Chasser* et *manger* !" Elle devient de plus en plus agitée alors qu'elle parle, grinçant des dents et crachant…~ */
  IF ~~ THEN REPLY #20939 /* ~Laisse-la fulminer.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~Pars, laisse-la seule avec ses hurlements.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"HSSSSST ! TOUS les tuer, veut Acaste ! Fendre et déchirer, réduire en morceaux la horde de chair morte ! Faible et lent, mais fort quand il faut dévorer, fendre et déchirer ! Mordre et craquer les faibles os ! Sucer la moelle de leurs fragiles os ! TOUS les TUER et les DÉVORER !"~ */
  IF ~~ THEN REPLY #20942 /* ~Laisse-la continuer à fulminer.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~Pars, laisse-la seule avec ses hurlements.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"Acaste les veut tranquilles, immobiles, morts-morts pas parler et marcher ! MORTS et IMMOBILES pour qu'ils soient faciles à dévorer, coincés entre les dents, faire craquer leurs crânes et leur sucer la cervelle, puis ouvrir leurs torses et dévorer leur tendre chair sous la peau !" Acaste frappe le sol d'un violent coup de poing, fracassant les carreaux dans un élan de rage.~ */
  IF ~~ THEN REPLY #20945 /* ~Laisse-la continuer à fulminer.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~Pars, laisse-la seule avec ses hurlements.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"Les HAIT. Disent à Acaste, NON, pas chasser les hommes sanglants qui fouillent et rampent dans les tombes ! Pas tuer les rats sanglants ! Les laisser, pas chasser, pas MANGER ! TOUS LES TUER et les rendre SILENCIEUX !" Elle devient subitement silencieuse, sa rage épuisée, l'écho de ses cris se perdant dans l'obscurité.~ */
  IF ~~ THEN REPLY #20948 /* ~"Donne-moi des choses de valeur et je t'aiderai."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"Hssssst ?" Acaste plisse des yeux. "Que tu dis à propos du Roi, chose sanglante ?"~ */
  IF ~~ THEN REPLY #20953 /* ~"Le Roi Silencieux est une chose morte. Il n'est pas vivant."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"Rien. J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"Toi être sûr ? Il est silencieux, immobile et nourriture ?"~ */
  IF ~~ THEN REPLY #20957 /* ~"J'en suis sûr. Ce n'est qu'un cadavre."~ */ JOURNAL #20959 /* ~J'ai dit à Acaste que le Roi Silencieux était mort. Son groupe de goules et elle ont alors commencé à terroriser les habitants des catacombes des Nations Mortes.~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"En fait… peut-être pas. J'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"Eh bien… je pourrais me tromper. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~Acaste hurle. *" TUEZ-LES TOUS MAINTENANT ! MANGER !"*~ */
  IF ~~ THEN REPLY #20962 /* ~Réponds à son attaque.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~Fuis.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~Acaste ricane. "Tu… rends le Silencieux silencieux, rends-le immobile… Hssssst." Acaste te regarde avec méfiance, tournant légèrement autour de toi. "Fort… fort… sanglant. Acaste va maintenant te laisser partir…"~ */
  IF ~~ THEN REPLY #20965 /* ~"Non, pas pour l'instant."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~Acaste plisse à nouveau des yeux. "Pars. Pars *maintenant*."~ */
  IF ~~ THEN REPLY #20968 /* ~"Je partirai quand je voudrais, goule."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"Très bien. Au revoir."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"Beaucoup errent dans ces salles, oui… les os à moelle, des hordes de chair morte, nous, les Calamités. Tous dirigés par le Roi Silencieux…" Elle crache de dégoût. "… qui nous dit que faire ou ne pas faire. Et les petites douceurs, rats sanglants…" Acaste frotte ses mains griffues avec avidité.~ */
  IF ~~ THEN REPLY #20971 /* ~"Parle-moi des tiens."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"Parle-moi des os."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"Parle-moi du troupeau de chair morte."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"Les rats sanglants ?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"Les os, les squelettes. Faibles. Fatigués, trop de siècles, trop *fragiles*." Elle saisit un os au sol et le brise pour souligner ses propos. "*Faibles*. Les morts ont pas peur, mais les os, *si*. *Peur* de mourir et d'être dévorés par Acaste et les Calamités. Peur de *mourir* ? *On est DÉJÀ morts*. Y a que les sanguins qui puent la *peur* ! *PAS LES MORTS*."~ */
  IF ~~ THEN REPLY #20979 /* ~"Les Calamités ?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"Hssst. Font du bruit comme les troupeaux sanglants et puent la pourriture et le doux jus rance." Acaste se lèche les lèvres, suçant le crachat entre ses dents. Elle fronce les sourcils, puis lève les bras et commence à errer. "Va, *unnnnnh unnnnh* erre et travaille. *Stupide* nourriture ! *Stupide* être de viande à demi-cervelle !"~ */
  IF ~~ THEN REPLY #20984 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"Roi *Invisible*, pas Silencieux. Il ordonne - on exécute. Les os à moelle et les hordes de chair morte lui obéissent sans poser de questions. Acaste voit pas, Acaste *entend* seulement. Un jour, je le rencontrerai… je lui rentrerai dedans. Ouiii. Acaste est forte, et le Silencieux est faible. On verra qui est le maître, ouiiii."~ */
  IF ~~ THEN REPLY #20988 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"Je voudrais t'interroger sur quelqu'un d'autre en particulier …"~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"Nous sommes les Calamités, oui, Acaste et ses chères goules, ses enfants, toujours affamés…"~ */
  IF ~~ THEN REPLY #20993 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~Acaste plisse des yeux et dresse la tête. "De qui veux-tu parler, viande ?"~ */
  IF ~~ THEN REPLY #20998 /* ~"Toi, toi-même."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"Le Roi Silencieux."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"Hargrimm."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"Salie Marie."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"Soego."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"Moelle." Acaste lèche ses lèvres craquelées et grimace sauvagement. "Vieille moelle… mais moelle quand même." Acaste ricane, les yeux brûlants. "Tue-le, tue tous les os, les faibles os *et* la horde de chair morte."~ */
  IF ~~ THEN REPLY #21006 /* ~"Les os ?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"Une horde de chair morte ?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"*Nourriture* de chair. Pas forte, comme Acaste. Faible femme à chair morte."~ */
  IF ~~ THEN REPLY #21012 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"Je suis Acaste ! Mère des goules et reine des Calamités, oui ! Fortes, rapides, nous chassons et *dévorons* dans ces salles…"~ */
  IF ~~ THEN REPLY #21016 /* ~"Les Calamités ?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~Acaste secoue la tête, les poux tombant de sa longue chevelure blanche et ondulante. "Acaste a ouvert de nombreux cercueils, de nombreuses tombes, mais jamais vu une pareille chose."~ */
  IF ~~ THEN REPLY #21021 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"Hssst ! La chose de viande revient encore, pour importuner Acaste, toujours !"~ */
  IF ~~ THEN REPLY #21024 /* ~"J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"Au revoir, Acaste."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"Pâle sanglant qui dort dans la poussière et sent comme les rats sanglants ? Celui-là je mangerai en premier."~ */
  IF ~~ THEN REPLY #21027 /* ~"Il sent le rat sanglant ?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~"Hsssst. Mais bon à manger en tout cas. Pue la poussière, mais sang frais et chair sous la pale peau. Bon à manger."~ */
  IF ~~ THEN REPLY #21032 /* ~"Qu'est-ce qu'un rat sanglant ?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"Je voudrais t'interroger sur quelqu'un d'autre…"~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"Acaste n'a rien à t'offrir, à part ne pas te dévorer."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"Sais-tu que le Roi Silencieux n'est qu'un squelette ?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
