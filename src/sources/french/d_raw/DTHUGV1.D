// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~À ton approche, l'homme recule d'un pas. "Laisse-moi, je ne t'ai rien fait."~ */
  IF ~~ THEN REPLY #1957 /* ~"Arrête de me suivre si tu ne veux pas que ma lame se mette en travers de ton chemin."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"Pourquoi est-ce que tu me suis ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"Je ne te suis pas…" Il postillonne en parlant. "… c'est plutôt toi qui devrais faire attention si tu es près de moi."~ */
  IF ~~ THEN REPLY #1961 /* ~"Je n'autorise *personne* de me parler sur ce ton ou de me menacer. Retire ce que tu viens de dire ou tu seras mort avant d'avoir eu une deuxième chance."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"Ouais, ouais. Arrête de me suivre ou tu risques de le regretter, bige."~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~Il te regarde, l'air maussade.~ */
  IF ~~ THEN REPLY #1966 /* ~"Tu me *comprends* ? Retire ce que tu viens de dire ou je t'étripe."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~Il te regarde, l'air maussade.~ */
  IF ~~ THEN REPLY #1968 /* ~"Tu me *comprends* ? Arrête de me suivre ou je t'étripe."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~Sa voix tremble. "Je… je retire ce que j'ai dit. Je ne voulais pas t'offenser."~ */
  IF ~~ THEN REPLY #1974 /* ~"Bon, très bien. Hors de ma vue."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"Hors de ma vue."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Attaque-le quand même.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"Nos chemins ne se croiseront plus. Je ne voulais pas t'offenser en prenant la même route que toi."~ */
  IF ~~ THEN REPLY #1978 /* ~"Bon, très bien. Maintenant, hors de ma vue."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"Hors de ma vue."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Attaque-le quand même.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
