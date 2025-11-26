// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~Ce reptile couvert d'écailles noires mesure près de deux mètres et demi. Mais sa grande taille est contrebalancée par sa charpente fine et serpentiforme. Une longue queue préhensile traîne à l'arrière. Ses ailes tannées sont accrochées derrière son dos. Un relent vinaigré émane de cette créature… et une certaine chaleur. Il semble t'ignorer.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"Bonjour."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"Bonjour."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"Bonjour."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~La créature tourne lentement la tête vers toi. Son front écailleux se plisse, puis elle ouvre la bouche et émet un sifflement grave et rauque. Tu remarques que la chaleur qui se dégage de cette créature commence à monter.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"Je voudrais parler avec toi un moment."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"Je voudrais parler avec toi un moment."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"Je voudrais parler avec toi un moment."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~La créature ouvre la bouche et exhibe une rangée de dents noircies. Le feu commence à prendre autour des épaules et des bras de la créature, qui émet un très long sifflement sourd.~ */
  IF ~~ THEN REPLY #7725 /* ~"Calme-toi ! Je veux juste te parler."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Siffle, toi aussi.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~La créature rugit et se jette sur toi !~ */
  IF ~~ THEN REPLY #7730 /* ~Défends-toi…~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~La créature parle d'une voix sifflante et râpeuse ; on dirait deux pierres brutes que l'on frotte. La créature siffle un moment, sa voix rauque montant et descendant.~ */
  IF ~~ THEN REPLY #7732 /* ~"Euh… quoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~La créature grogne. "J'ai RIEN à te dddire." Le fiélon plisse les yeux. "Si tu rrrestes, ton sang recouvrira les pppierres."~ */
  IF ~~ THEN REPLY #7735 /* ~"Je voulais juste te poser des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"Essaie un peu et on verra lequel de nos deux sangs recouvrira les pierres."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Recule et laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~La créature se met soudain à humer l'air, puis s'éloigne de toi en poussant un étrange sifflement. On dirait qu'elle a flairé une odeur désagréable.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"Je disais que j'aimerais parler avec toi."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"Je disais que j'aimerais parler avec toi."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~Les yeux de la créature se portent sur Annah, puis se plissent. La créature ouvre la bouche et exhibe une série de dents noircies, tandis que le feu commence à prendre autour de ses épaules et de ses bras. La chaleur qui s'en dégage commence à monter.~ */
  IF ~~ THEN REPLY #7743 /* ~"Hé ! Je te parle !"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Laisse la créature tranquille, prends Annah et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~Les yeux de la créature se portent sur Tombée-en-Disgrâce, puis se plissent. La créature ouvre la bouche et exhibe une série de dents noircies, tandis que le feu commence à prendre autour de ses épaules et de ses bras. La chaleur qui s'en dégage commence à monter.~ */
  IF ~~ THEN REPLY #7746 /* ~"Hé ! Je te parle !"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Recule, emmène Tombée-en-Disgrâce et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~La créature rugit et se jette sur Annah !~ */
  IF ~~ THEN REPLY #7749 /* ~"Bon sang… !"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~La créature rugit et se jette sur Tombée-en-Disgrâce !~ */
  IF ~~ THEN REPLY #7751 /* ~"Bon sang… !"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~Ce fiélon aux écailles noires mesure près de deux mètres et demi, une taille cependant faussée par sa fine silhouette de serpent. Il a une longue queue préhensile, et des ailes tannées sont fixées dans son dos. Une forte odeur de vinaigre… ainsi qu'une assez forte chaleur, se dégagent de cette créature, qui semble t'ignorer.~ */
  IF ~~ THEN REPLY #7753 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Laisse l'Abishaï tranquille.~ */ EXIT
END
