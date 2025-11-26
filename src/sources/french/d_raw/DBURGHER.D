// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~Tu aperçois un githzeraï âgé, coincé sous les roues d'un chariot qui lui est probablement tombé dessus durant le chaos. Il crache un peu de sang et grimace. "Tu ne vas pas m'aider, hein ? C'est ce genre de comportement qui nous a conduits où nous en sommes arrivés…" Il rit faiblement.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"Qui es-tu ?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"Du calme. Je vais te sortir de là."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"Du calme. Je vais te sortir de là."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~Le githzeraï tousse de nouveau. "Tu es revenu te moquer de moi ? Je te donnerai pas cette satisfaction."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"Qui es-tu ?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"Du calme. Je vais te sortir de là."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"Du calme. Je vais te sortir de là."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"Oui, mets ta lame de côté, chien de *zerth*. Je crache sur tes leçons. Porte tes chaînes un peu plus longtemps." Le githzeraï tourne la tête vers toi. "Je suis Tovus Giljaf. J'étais le maire de cette ville… jusqu'à ce que le maudit deva soit libéré."~ */
  IF ~~ THEN REPLY #57032 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"Tu étais le maire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"Je ne peux pas dire que j'ai beaucoup de considération pour ta ville."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"Laisse-moi te sortir de là."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"Dans ce cas, je te laisserai mourir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"Oui, tue-moi, chien de *zerth*. Fais ce que te dit ton maître." Le vieux githzeraï tousse du sang jusqu'à ce que Dak'kon lui tranche la gorge.~ */
  IF ~~ THEN REPLY #57039 /* ~"Joli coup, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"Je suis Tovus Giljaf. J'étais le maire de cette ville… jusqu'à ce que le maudit deva soit libéré."~ */
  IF ~~ THEN REPLY #57041 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"Tu étais le maire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"Je ne peux pas dire que j'ai beaucoup de considération pour ta ville."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"Laisse-moi te sortir de là."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"Dans ce cas, je te laisserai mourir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~Sa fine bouche se comprime davantage. "Alors soulève, bon sang, et fais vite."~ */
  IF ~~ THEN REPLY #57047 /* ~"Au travail."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"Pas grave. Je reviendrai peut-être plus tard."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"Alors je te maudis, balafré, et je te souhaite toutes les pestes et pestilences." Il te crache un peu de sang mais te manque.~ */
  IF ~~ THEN REPLY #57050 /* ~"Salut."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~Tu pousses sur le chariot de toutes tes forces et tu parviens à le soulever juste assez pour qu'il se dégage en rampant.
"Merci… humain. Je vais rejoindre mes gardes sur les murs pour les aider. Ma ville ne doit pas périr." Il te fait un sourire de guingois. "Je ne voudrais pas être à ta place. Ce deva est un redoutable adversaire. Tiens, prends ceci. Ça te sera peut-être utile."~ */
  IF ~~ THEN REPLY #57052 /* ~"Au revoir."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"Nous l'avions emprisonné, il y a de nombreuses années. Je le croyais à l'abri de tous les traîtres et chiens renifleurs. Il est soudainement sorti de terre, fulminant, et ma superbe, superbe ville… a glissé." Il te regarde attentivement. "J'aurai ma revanche. Libère-moi, d'accord ?"~ */
  IF ~~ THEN REPLY #57054 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"Tu étais maire de cette ville ?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"Mes compatriotes… et moi… nous utilisions cette cité comme base pour reprendre le pouvoir… mais c'est une autre histoire. Libère-moi !"~ */
  IF ~~ THEN REPLY #57058 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"Moi non plus… mais elle m'appartient, et l'abandonner à ce deva orgueilleux et suffisant m'est insupportable." Il tousse. "Libère-moi et je t'aiderai à te venger de lui. Mes gardes peuvent retenir les monstres pendant quelques temps."~ */
  IF ~~ THEN REPLY #57062 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~Tu aperçois un githzeraï âgé, coincé sous les roues d'un chariot qui lui est probablement tombé dessus durant le chaos. Il crache un peu de sang et grimace. "Tu ne vas pas m'aider, hein ? C'est ce genre de comportement qui nous a conduits où nous en sommes arrivés…".~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"Qui es-tu ?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"Du calme. Je vais te sortir de là."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"Du calme. Je vais te sortir de là."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~Le githzeraï tousse de nouveau du sang. "Tu es revenu te moquer de moi ? Je ne te donnerai pas ce plaisir."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"Qui es-tu ?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"Qui es-tu ?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"Du calme. Je vais te sortir de là."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"Du calme. Je vais te sortir de là."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"Oui, mets ta lame de côté, chien de *zerth*. Je crache sur tes leçons. Porte tes chaînes un peu plus longtemps." Le githzeraï tourne la tête vers toi. "Je suis Tovus Giljaf. J'étais le maire de cette ville… jusqu'à ce que le maudit deva soit libéré."~ */
  IF ~~ THEN REPLY #57080 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"Tu étais le maire ?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"Je ne peux pas dire que j'ai beaucoup de considération pour ta ville."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"Laisse-moi te sortir de là."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"Dans ce cas, je te laisserai mourir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"Oui, tue-moi, chien de *zerth*. Fais ce que te dit ton maître." Le vieux githzeraï tousse du sang jusqu'à ce que Dak'kon lui tranche la gorge.~ */
  IF ~~ THEN REPLY #57086 /* ~"Joli coup, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"Je suis Tovus Giljaf. J'étais le maire de cette ville… jusqu'à ce que le maudit deva soit libéré."~ */
  IF ~~ THEN REPLY #57088 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"Tu étais le maire ?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"Je ne peux pas dire que j'ai beaucoup de considération pour ta ville."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"Laisse-moi te sortir de là."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"Dans ce cas, je te laisserai mourir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~Sa fine bouche se comprime davantage. "Alors soulève, bon sang, et fais vite."~ */
  IF ~~ THEN REPLY #57094 /* ~"Au travail."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"Pas grave. Je reviendrai peut-être plus tard."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"Alors je te maudis, balafré, et je te souhaite toutes les pestes et pestilences." Il te crache un peu de sang mais te manque.~ */
  IF ~~ THEN REPLY #57097 /* ~"Salut."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~Tu pousses sur le chariot de toutes tes forces et tu parviens à le soulever juste assez pour qu'il se dégage en rampant… et tu entends un cri de douleur coupé par un bruit mou de l'autre côté du chariot. "Merci… humain. Je vais rejoindre mes gardes sur les murs pour les aider. Ma ville ne doit pas périr." Il te fait un sourire de guingois. "Je ne voudrais pas être à ta place. Ce deva est un redoutable adversaire. Tiens, prends ceci. Ça te sera peut-être utile."~ */
  IF ~~ THEN REPLY #57099 /* ~"Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"Nous l'avions emprisonné, il y a de nombreuses années. Je le croyais à l'abri de tous les traîtres et chiens renifleurs. Il est soudainement sorti de terre, fulminant, et ma superbe, superbe ville… a glissé." Il te regarde attentivement. "J'aurai ma revanche. Libère-moi, d'accord ?"~ */
  IF ~~ THEN REPLY #57101 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"Tu étais maire de cette ville ?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"Mes compatriotes… et moi… nous utilisions cette cité comme base pour reprendre le pouvoir… mais c'est une autre histoire. Libère-moi !"~ */
  IF ~~ THEN REPLY #57105 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"Moi non plus… mais elle m'appartient, et l'abandonner à ce deva orgueilleux et suffisant m'est insupportable." Il tousse. "Libère-moi et je t'aiderai à te venger de lui. Mes gardes peuvent retenir les monstres pendant quelques temps."~ */
  IF ~~ THEN REPLY #57109 /* ~"D'accord. Tiens-toi prêt."~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"Que peux-tu me dire à propos du deva ?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"Non, sûrement pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~Lorsque tu te t'apprêtes à lever, tu entends un cri d'agonie de l'autre côté du chariot…~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"Tu m'écrases, idiot ! Tu ne peux pas lever ce chariot sans écraser l'un d'entre nous, et je peux te donner des tas raisons de l'écraser lui, plutôt que moi !"~ */
  IF ~~ THEN REPLY #57114 /* ~"Comment ça ?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"Dans ce cas, je devrais l'aider. On dirait que tu fais partie de ce mal qui retient cette ville clouée aux Carcères."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"Et si je soulevais des deux côtés ? Mes compagnons et moi pouvons le faire si on s'y met tous."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"Dans ce cas-là, je reviendrai plus tard, quand j'aurai pris une décision."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"Je commande toujours la garde de Maudith… je peux redonner espoir à mes hommes, les aider et ralentir les monstres qui se dresseront entre le deva et toi.. libère-moi et je te faciliterai la tâche. Libère-le et tu ne gagneras rien."~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"C'est… le deva. Ce petit voleur n'est rien pour toi, en comparaison du deva. Libère-moi !"~ */
  IF ~~ THEN REPLY #57120 /* ~Soulève le chariot du côté de Berrog : "D'accord."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Prépare-toi à soulever le chariot du côté de Berrog. "Je crois que je vais plutôt le libérer lui."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"Et si je soulevais des deux côtés ? Mes compagnons et moi pouvons le faire si on s'y met tous."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"Je reviendrai plus tard, quand je pourrai régler le problème."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~Tes compagnons et toi vous rassemblez autour du chariot, et en unissant vos efforts, vous réussirez à lever le chariot de manière à ce que les individus coincés en dessous puissent en sortir.~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"Merci… humain. Je vais rejoindre mes gardes sur les murs pour les aider. Ma ville ne doit pas périr." Il te fait un sourire de guingois. "Je ne voudrais pas être à ta place. Ce deva est un redoutable adversaire. Tiens, prends ceci. Ça te sera peut-être utile."~ */
  IF ~~ THEN REPLY #57126 /* ~"Au revoir."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"C'est… le maire, espèce d'idiot." Il reporte son attention vers toi.~ */
  IF ~~ THEN GOTO 24
END
