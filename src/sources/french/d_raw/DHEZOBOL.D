// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~Tu vois un homme svelte vêtu d'une longue robe. Son visage est assombri par la colère, et il hurle sur ses subordonnés qui s'affairent pourtant avec détermination. "Dépêchez-vous, bande de bons à rien ! On n'a pas de temps à perdre !" Il ne semble pas te remarquer.~ */
  IF ~~ THEN REPLY #50918 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"Je suis là pour t'arrêter."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~Pars discrètement.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~Il se retourne vers toi, l'air irrité. "Je mise sur le chaos, bige. C'est le meilleur moment pour prendre des esclaves, pendant que tout le monde essaie de rétablir l'ordre dans la cité. Si tu veux bien m'excuser, j'ai du travail." Il se retourne vers ses hommes.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"Je crois que tu découvriras que le désordre qui règne en ville est dû aux gens qui essaient de miser sur ce désastre. Renonces-y, et tu pourras peut-être aider la cité à se redresser - et alors, tu pourras reprendre tes affaires."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"Le problème de la ville, c'est qu'il y a trop de gens qui ajoutent au chaos ambiant en continuant à se faire du mal. Si tes hommes pouvaient participer à la défense de la cité, tu pourrais peut-être rétablir l'équilibre."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"Tu ne vois donc pas que c'est précisément ce genre de comportement qui a mis la cité dans ce pétrin ? Aide-moi à combattre cet état d'esprit et on pourra tous quitter cet endroit."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"Je suis là pour t'arrêter."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~Attaque-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~Il te dédie un rictus méprisant. "Tu comptes m'arrêter ? Je voudrais bien voir ça. Messieurs ! Laissez tomber les esclaves et tuez l'intrus !"~ */
  IF ~~ THEN REPLY #50928 /* ~Bats-toi.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~Il appelle ses hommes. "Arrêtez tout !" Il te regarde d'un air pensif. "Alors, tu dis qu'on n'aura pas besoin d'offrir un sacrifice aux gehreleths ?"~ */
  IF ~~ THEN REPLY #50931 /* ~"Non. La ville tout entière sera sacrifiée si les autres citoyens et toi ne travaillez pas main dans la main."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~J'ai convaincu le chef des esclavagistes de cesser son commerce et de prendre les armes contre les gehreleths qui harcèlent la ville.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~Il jure. "C'est bien ma veine. Après tant d'efforts. OK, les gars, libérez-les ! On a une cité à sauver !" Il te lance un regard insondable et emmène son groupe. "Merci du tuyau, étranger."~ */
  IF ~~ THEN REPLY #50934 /* ~"Pas de problème. Bonne chance."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~Le chef des esclaves semble mener son opération sans la moindre difficulté, même s'il reste aux aguets pour se prémunir d'une éventuelle attaque des gehreleths. "Qu'est-ce que tu veux, bige ?"~ */
  IF ~~ THEN REPLY #50936 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"Je suis là pour t'arrêter."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~Pars discrètement.~ */ EXIT
END
