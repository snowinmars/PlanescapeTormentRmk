// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~Ce petit jouet métallique est une copie de la créature en forme de cube dotée de grands yeux sur l'une de ses faces. Le jouet a deux jambes, deux bras, deux ailes pliantes et au moins dix-huit articulations différentes. C'est peut-être une pièce de collection.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Manipule le jouet et cherche une sorte d'effet.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Bouge les bras et imite le bruit d'épées au combat.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~Le jouet clique et vrombit lorsque tu déplaces ses mécanismes d'articulation. En quelques secondes, le cube a vaincu tous les adversaires imaginaires que tu lui as envoyés et est revenu à sa position normale.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Manipule le jouet et cherche une sorte d'effet.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Il agite ses bras et fait entendre des vivats.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Il agite ses bras et fait entendre des vivats.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Il agite ses bras et fait entendre des vivats.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Il agite ses bras et fait entendre des vivats.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Des hordes de créatures imaginaires applaudissent la victoire du cube. Tu remarques à peine une minuscule larme huileuse au coin de l'un de ses yeux… c'est un héros, le plus valeureux des cubes ayant jamais parcouru les Plans, et tout le monde l'adore.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Manipule le jouet et cherche une sorte d'effet.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Mets le cube de côté pour de futures batailles contre le multivers.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Mets le cube de côté pour de futures batailles contre le multivers.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Des hordes de créatures imaginaires des divers plans applaudissent la victoire du cube. Tu remarques à peine une minuscule larme huileuse au coin de l'un de ses yeux… c'est un héros, le plus valeureux des cubes ayant jamais parcouru les Plans, et tout le monde l'adore. Dans ton esprit, Tombée-en-Disgrâce et Annah le cajolent et le couvrent de baisers.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Manipule le jouet et cherche une sorte d'effet.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Plie le genou gauche de façon à ce que la jambe forme un angle de 15 degrés, déplie les deux ailes en extension maximum, puis fais tourner le bras droit de 180 degrés dans sa cavité.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Soupire, mets le cube de côté pour de futures batailles contre le multivers.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Soupire, mets le cube de côté pour de futures batailles contre le multivers.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~Un vrombissement, puis un clic se produisent et une lumière blanche et aveuglante explose subitement dans tes mains…~ */
  IF ~~ THEN REPLY #22847 /* ~"Qu… !"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~Il y a un vrombissement, puis un *clic*, puis un *clic-clic-clic* puis un petit vrombissement. Rien ne se produit.~ */
  IF ~~ THEN REPLY #22869 /* ~Console-toi en bougeant les bras et en imitant le bruit des épées au combat.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"Bon ça a pas marché. Je vais te mettre de côté et j'essaierai de nouveau ailleurs."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~Tu plies, tords et retournes les différents points d'articulation du jouet, constatant que les membres reviennent souvent brusquement à leur position d'origine. Enfin, alors que tu plies son genou gauche, un étrange *crac !* se fait entendre et le jouet se met à vibrer entre tes mains…~ */
  IF ~~ THEN REPLY #42940 /* ~Tourne le bras gauche.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Tourne le bras droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Déploie l'aile gauche.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Déploie l'aile droite.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Plie le genou droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~Soudain, les membres du jouet reviennent à leurs positions d'origine dans un léger *clic*.~ */
  IF ~~ THEN REPLY #42952 /* ~Tourne le bras gauche.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Tourne le bras droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Déploie l'aile gauche.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Déploie l'aile droite.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Plie le genou gauche.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Plie le genou droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~Après un étrange *crac !*, le jouet se met à vibrer entre tes mains.~ */
  IF ~~ THEN REPLY #42964 /* ~Tourne le bras gauche.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Tourne le bras droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Déploie l'aile gauche.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Déploie l'aile droite.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Plie le genou droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~Le jouet émet un léger *vrombissement*.~ */
  IF ~~ THEN REPLY #42976 /* ~Tourne le bras gauche.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Tourne le bras droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Déploie l'aile droite.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Plie le genou droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~Le jouet vrombisse doucement, en devenant chaud au toucher.~ */
  IF ~~ THEN REPLY #42987 /* ~Tourne le bras gauche.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Tourne le bras droit.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Tourne le bras droit.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Tourne le bras droit.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Plie le genou droit.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Mets le cube de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~Un vrombissement, puis un clic se produisent et une lumière blanche et aveuglante explose subitement dans tes mains…~ */
  IF ~~ THEN REPLY #42999 /* ~"Qu… !"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
