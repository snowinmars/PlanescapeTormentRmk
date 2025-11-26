// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOSTONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOSTONE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #64887 /* ~Cette pierre noire est couverte de poussière, comme si elle était là depuis des années. Elle ressemble à un morceau arraché à l'une des statues. Elle est couverte d'une série d'inscriptions et de runes bizarres, et semble étrangement familière. ~ */
  IF ~~ THEN REPLY #64888 /* ~Examine la pierre…~ */ GOTO 1
  IF ~~ THEN REPLY #64889 /* ~Mets la pierre de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64890 /* ~Quand tu touches la pierre, une bouche apparaît sur le côté et commence à parler d'une voix identique à la tienne. L'écho est tel qu'on se croirait dans une immense salle.~ */
  IF ~~ THEN REPLY #64914 /* ~Écoute…~ */ GOTO 2
  IF ~~ THEN REPLY #64915 /* ~Lâche la pierre et attends qu'elle se taise.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64891 /* ~"Dak'kon, Morte, Xachariah, Deionarra : c'est moi. J'ai mis en cette pierre un petit enchantement délivrant un message ; écoutez-le jusqu'au bout, puis faites ce que je vous dirai."~ */
  IF ~~ THEN REPLY #64912 /* ~Continue à écouter.~ */ GOTO 3
  IF ~~ THEN REPLY #64913 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64892 /* ~La voix reprend sa respiration ; elle semble irritée : "Je ne sais pas comment nous avons été séparés, mais je pense que le portail qui nous a amenés ici nous a aussi divisés. Ce n'est qu'un contretemps mineur : quand vous trouverez cette pierre, restez près d'elle jusqu'à ce que je vous rejoigne. D'après mes sorts de divination, cette Forteresse est de la taille de plusieurs cités : moins vous vous déplacez, plus il m'est facile de vous retrouver. "~ */
  IF ~~ THEN REPLY #64910 /* ~Continue à écouter.~ */ GOTO 4
  IF ~~ THEN REPLY #64911 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64893 /* ~La voix reprend encore son souffle, puis devient moins présente, comme si elle inspectait quelque chose, le sujet même de son discours : "j'ai passé la première des caves ; cet endroit *regorge* d'ombres ; il y en a bien trop pour les combattre : si vous en rencontrez sur votre passage, prenez la fuite avant qu'elles ne vous encerclent ; ces ombres sont beaucoup plus puissantes que celles que nous avons déjà rencontrées. Je crois que les énergies du Plan les alimentent et les rendent plus fortes."~ */
  IF ~~ THEN REPLY #64908 /* ~Continue à écouter.~ */ GOTO 5
  IF ~~ THEN REPLY #64909 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64894 /* ~La voix reprend de nouveau sa respiration : "Il y avait dans cette cave un ensemble de grandes reliques de guerre qui m'ont fait passer d'un endroit à l'autre ; j'ai réussi à attirer les ombres vers chacune de ces machines pour qu'elles s'y regroupent pendant que je me déplaçais. Cela m'a fait gagner du temps, assez pour m'échapper : après que j'ai mis en marche quatre de ces machines, un portail s'est ouvert." Puis la voix se tait, comme s'il venait de se passer quelque chose.~ */
  IF ~~ THEN REPLY #64906 /* ~Continue à écouter.~ */ DO ~SetGlobal("Freed_Fortress_Shadows","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #64907 /* ~Attends que la pierre se taise.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64895 /* ~"Il me semble maintenant que la cave d'où je viens est peut-être une sorte de loge : on dirait que les reliques condamnent l'accès à l'intérieur comme à l'extérieur de la Forteresse. Celui qui a construit cet endroit aime que les ombres soient bien gardées pour qu'elles ne puissent pas s'échapper ; les ombres n'ayant aucune substance, elles sont incapables d'utiliser les machines pour sortir de la cave. Hmm… À méditer…"~ */
  IF ~~ THEN REPLY #64904 /* ~Continue à écouter.~ */ GOTO 7
  IF ~~ THEN REPLY #64905 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64896 /* ~"Aucune importance, je suis maintenant dans une salle où se trouve un grand cristal. Je vais l'examiner de plus près avant de continuer." La voix fait une pause comme si ton interlocuteur regardait autour de lui. "Il y a cinq statues dans cette salle ; elles me ressemblent et ont l'air anciennes, comme si elles étaient ici depuis quelque temps."~ */
  IF ~~ THEN REPLY #64902 /* ~Continue à écouter.~ */ GOTO 8
  IF ~~ THEN REPLY #64903 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64897 /* ~"Pour ce qui est du cristal, il ne semble pas appartenir à la Forteresse. Par sa taille et sa forme, il me rappelle quelque chose que j'ai lu dans les annales, à propos d'une prison dimensionnelle qui segmente l'âme. D'après moi, ce n'est pas une coïncidence si le portail de la cave principale m'a téléporté ici : je crois que le cristal est un piège, aussi ne le touchez *surtout* pas tant que nous ne sommes pas à nouveau réunis. Je pense *vraiment* ce que je dis, Morte."~ */
  IF ~~ THEN REPLY #64900 /* ~Continue à écouter.~ */ GOTO 9
  IF ~~ THEN REPLY #64901 /* ~Laisse la pierre.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64898 /* ~"Je vais essayer de tous vous retrouver maintenant. Si vous trouvez cette pierre, ne vous éloignez *surtout* pas, sinon il se pourrait que je ne vous retrouve jamais. Je vous ai laissé des provisions dans le socle de l'une des statues. Ne les gaspillez pas : j'ignore le temps qu'il nous faudra pour trouver notre ennemi et sortir, et peut-être aurons-nous besoin de ces provisions plus tard. À bientôt."~ */
  IF ~~ THEN REPLY #64899 /* ~Attends que la pierre se taise.~ */ EXIT
END
