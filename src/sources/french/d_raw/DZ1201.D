// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Le numéro '1201' est inscrit à l'encre sur le front du cadavre. L'encre a coulé sur les yeux, les joues et la mâchoire. En suivant la trace laissée par ces 'larmes' sur le visage, tu remarques que l'encre a coulé dans la couture qui ferme les lèvres, prenant la forme de ce qui ressemble à une note coincée dans la bouche du cadavre.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~Essaie de sortir la note.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~La note s'est mélangée à l'encre dans la bouche du zombi. Si tu essayais de tirer sur le papier à travers les coutures, tu risquerais de le déchirer. Tailler le cadavre en pièces risque aussi de détruire la note… Il va falloir trouver un moyen d'enlever délicatement les points de couture avant de tirer sur la note.~ */
  IF ~~ THEN REPLY #34956 /* ~Sers-toi du scalpel pour couper les coutures.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~Tu découpes habilement les coutures qui ferment la bouche du cadavre, et la mâchoire s'ouvre béante. Délicatement, tu retires la note de la bouche… Malgré le mauvais état du papier, l'écriture semble lisible.

^NREMARQUE : <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Réexamine le cadavre.~ */ EXIT
END
