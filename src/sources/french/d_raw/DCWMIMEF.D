// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~Cette jeune femme - assistant à une représentation - semble quelque peu intriguée. Elle se retourne vers toi alors que tu t'approches.~ */
  IF ~~ THEN REPLY #49740 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Laisse la femme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"Je n'ai jamais rien vu de pareil. Je trouve cette prestation agaçante, mais aussi étrangement intéressante."~ */
  IF ~~ THEN REPLY #49743 /* ~"Qu'est-ce qui se passe ?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"C'est pas grave. J'avais des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~Elle continue à regarder l'homme qui semble piégé dans une boîte ou une cage invisible. "Une autre fois. S'il te plaît, laisse-moi tranquille pour le moment."~ */
  IF ~~ THEN REPLY #49747 /* ~"Attends… Dis-moi au moins ce qui se passe ici."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"Juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~La femme te lance un regard agacé. "Malgré ce que *tu* peux penser, ça m'est égal de me faire harceler dans la rue par les questions d'un étranger. Maintenant, laisse-moi tranquille !"~ */
  IF ~~ THEN REPLY #49751 /* ~"Attends… Dis-moi au moins ce qui se passe ici."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"Je ne suis pas certaine de comprendre. Cet homme a fait toutes sortes d'imitations, mais il n'a pas dit un mot. Un peu avant, alors qu'un mage passait, l'artiste a imité sa démarche. De colère, le mage lui a lancé une malédiction… Je crois que cet homme ne peut plus parler et il semble piégé dans la boîte invisible dans laquelle il faisait jusque-là semblant d'être enfermé. Il a un peu paniqué, au départ, mais il semble s'être calmé et il continue sa représentation."~ */
  IF ~~ THEN REPLY #49754 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
