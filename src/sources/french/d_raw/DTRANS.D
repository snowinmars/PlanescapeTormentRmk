// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~AINSI DONC TU ES VENU.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~TU N'ES PAS LE BIENVENU ICI, PANTIN. ~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"Qu'as-tu fait à mes amis ?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"Qu'as-tu fait à mon ami ?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"Qu'as-tu fait à mes compagnons ?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"Qu'as-tu fait à mon compagnon ?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"Je te connais pour ce que tu es- tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"Je te connais pour ce que tu es- tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"Qui es-tu ?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~ILS SONT MORTS POUR TOI, COMME ILS L'ONT TOUJOURS FAIT. TEL EST LE DESTIN DES MORTELS.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~IL EST MORT POUR TOI COMME ILS L'ONT TOUJOURS FAIT. TEL EST LE DESTIN DES MORTELS.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~ELLE EST MORTE POUR TOI COMME ILS L'ONT TOUJOURS FAIT. TEL EST LE DESTIN DES MORTELS.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~TEL EST LE DESTIN DE TOUS CEUX QUI TE SUIVENT, PANTIN. TU AS BEAUCOUP OUBLIÉ.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"Pourquoi as-tu fait ça ?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"Pourquoi as-tu fait ça ?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"Pourquoi as-tu fait ça ?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"Pourquoi as-tu fait ça ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~ILS M'ONT ATTAQUÉ. *ICI*. JE ME SUIS DÉFENDU. LA MORT LES A AINSI RÉCLAMÉS. ILS ONT EUX-MÊMES SCELLÉ LEUR DESTIN. ~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~IL M'A ATTAQUÉ. *ICI*. JE ME SUIS DÉFENDU. LA MORT L'A AINSI RÉCLAMÉ. IL A LUI-MÊME SCELLÉ SON DESTIN.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~ELLE M'A ATTAQUÉ. *ICI*. JE ME SUIS DÉFENDU. LA MORT L'A AINSI RÉCLAMÉE. ELLE A ELLE-MÊME SCELLÉ SON DESTIN.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~ELLE M'A ATTAQUÉ. *ICI*. JE ME SUIS DÉFENDU. LA MORT L'A AINSI RÉCLAMÉE. ELLE A ELLE-MÊME SCELLÉ SON DESTIN.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~JE LEUR AI DONNÉ LA POSSIBILITÉ DE QUITTER CET ENDROIT MAIS ILS SEMBLAIENT DÉCIDÉS À T'AIDER MALGRÉ CE QUE CELA LEUR A COÛTÉ.~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"Alors tu les as *tués*."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"Alors tu les as *tués*."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"Alors tu les as *tués*."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"Alors tu les as *tués*."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~JE LUI AI DONNÉ LA POSSIBILITÉ DE QUITTER CET ENDROIT MAIS IL SEMBLAIT DÉCIDÉ À T'AIDER MALGRÉ CE QUE CELA LUI A COÛTÉ.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~JE LUI AI DONNÉ LA POSSIBILITÉ DE QUITTER CET ENDROIT MAIS ELLE SEMBLAIT DÉCIDÉE À T'AIDER MALGRÉ CE QUE CELA LUI A COÛTÉ.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~JE LUI AI DONNÉ LA POSSIBILITÉ DE QUITTER CET ENDROIT MAIS ELLE SEMBLAIT DÉCIDÉE À T'AIDER MALGRÉ CE QUE CELA LUI A COÛTÉ.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~ELLE TE DÉFENDAIT DE MANIÈRE PARTICULIÈREMENT ACHARNÉE. SES SENTIMENTS POUR TOI ÉTAIENT PLUS INTENSES QUE LES FEUX DES ÉLYSÉES.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~ELLE ÉTAIT ASSEZ ROBUSTE. SA RÉSISTANCE À LA DOULEUR AURAIT TUÉ TROIS DÉMONS SUPÉRIEURS.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~LEUR MORT NE M'A APPORTÉ AUCUN PLAISIR.~ */
  IF ~~ THEN REPLY #64051 /* ~"Alors pourquoi avoir fait *ça* ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~LA TIEFFELINE TE DÉFENDAIT DE MANIÈRE PARTICULIÈREMENT ACHARNÉE. SES SENTIMENTS POUR TOI ÉTAIENT PLUS INTENSES QUE LES FEUX DES ÉLYSÉES.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~LA TIEFFELINE TE DÉFENDAIT DE MANIÈRE PARTICULIÈREMENT ACHARNÉE. SES SENTIMENTS POUR TOI ÉTAIENT PLUS INTENSES QUE LES FEUX DES ÉLYSÉES.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~ET LA TANAR'RI… ELLE ÉTAIT ASSEZ ROBUSTE. SA RÉSISTANCE À LA DOULEUR AURAIT HUMILIÉ LES BAATEZUS EUX-MÊMES.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~LA TANAR'RI ÉTAIT ASSEZ ROBUSTE. SA RÉSISTANCE À LA DOULEUR AURAIT HUMILIÉ LES BAATEZUS EUX-MÊMES.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~SA MORT NE M'A APPORTÉ AUCUN PLAISIR.~ */
  IF ~~ THEN REPLY #64049 /* ~"Alors pourquoi avoir fait *ça* ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~SA MORT NE M'A APPORTÉ AUCUN PLAISIR.~ */
  IF ~~ THEN REPLY #64050 /* ~"Alors pourquoi avoir fait *ça* ?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~CE N'ÉTAIT PAS MA VOLONTÉ. CE N'EST PAS MOI QUI LES AI CONDUITS ICI.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~CE N'ÉTAIT PAS MA VOLONTÉ. CE N'EST PAS MOI QUI L'AI CONDUIT ICI.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~CE N'ÉTAIT PAS MA VOLONTÉ. CE N'EST PAS MOI QUI L'AI CONDUITE ICI.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~ILS AVAIENT TOUS LE CHOIX ET ILS ONT DÉCIDÉ DE MOURIR POUR TOI.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~IL AVAIT LE CHOIX ET IL A DÉCIDÉ DE MOURIR POUR TOI.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~ELLE AVAIT LE CHOIX ET ELLE A DÉCIDÉ DE MOURIR POUR TOI.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~CELA A TOUJOURS ÉTÉ LE DESTIN DE CEUX QUI TE SUIVENT. CAR CE SONT DES ÂMES TORTURÉES, CHERCHANT LA DÉLIVRANCE. MAIS ILS SAVENT POURQUOI.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~TU AS OUBLIÉ CECI. ET TU L'OUBLIERAS ENCORE.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"Je te connais pour ce que tu es - tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"Je te connais pour ce que tu es - tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"Qui es-tu ?! Pourquoi as-tu fait cela ?!"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~SE PEUT-IL QUE TU AIES FAIT TOUT CE CHEMIN ET QUE TU IGNORES CE QUI SE TROUVE À L'ARRIVÉE ? ~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"Je sais ce que tu es - tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"Je sais ce que tu es - tu es ma mortalité. Ton armure - elle est semblable à des branches noueuses. Cela évoque la magie de Ravel."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~JE SUIS CE QUI ACCOMPAGNE TOUTE VIE. MA VOIX EST LE FRACAS DE LA MORT, UN DERNIER SOUFFLE DE VIE, LE SOUPIR DU MOURANT.~ */
  IF ~~ THEN REPLY #64065 /* ~"Tu… es ma mortalité."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~OUI, JE SUIS CE QUI A ÉTÉ SÉPARÉ DE TOI PAR LE POUVOIR DE LA SORCIÈRE. LIBÉRÉ DE LA PRISON DE TA CHAIR.~ */
  IF ~~ THEN REPLY #64066 /* ~"Libéré de moi ?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~OUI, JE SUIS CE QUI A ÉTÉ SÉPARÉ DE TOI PAR LE POUVOIR DE LA SORCIÈRE.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~JE SUIS CE QUI ACCOMPAGNE TOUTE VIE. MA VOIX EST LE FRACAS DE LA MORT, UN DERNIER SOUFFLE DE VIE, LE SOUPIR DU MOURANT.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~J'AI ÉTÉ LIBÉRÉ DE LA PRISON DE TA CHAIR.~ */
  IF ~~ THEN REPLY #64068 /* ~"Libéré de moi ?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~DÈS L'INSTANT OÙ J'AI ÉTÉ SÉPARÉ DE TON ENVELOPPE NÉCROSÉE, J'AI CONNU LA VIE, LA LIBERTÉ. JE NE TE LES ABANDONNERAI PAS.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"Nous ne devions pas être séparés. Les plans ont souffert de cette scission."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"Tu as été particulièrement gênant pour mes précédentes incarnations et moi-même, esprit. Nous ne devions pas être séparés."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~TU NE SAIS *RIEN*. AVANT QUE TA MÉMOIRE NE MEURE ENCORE UNE FOIS, SACHE QUE NOUS N'AURIONS JAMAIS DÛ ÊTRE *UN ET UN SEUL*.~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~C'EST LA DERNIÈRE FOIS QUE NOUS PARLONS ENSEMBLE, PANTIN.~ */
  IF ~~ THEN REPLY #64074 /* ~"Alors, il y a quelque chose que je voudrais savoir, esprit - j'ai beaucoup voyagé et il y a de nombreuses questions auxquelles tu pourrais répondre."~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"Je ne capitulerai pas devant toi. Prépare-toi, esprit. Nous allons voir si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~JE VAIS FAIRE CE QUE TU ME DEMANDES, MAIS C'EST LA DERNIÈRE FOIS. APRÈS, CETTE FORTERESSE REDEVIENDRA SILENCIEUSE.~ */
  IF ~~ THEN REPLY #65848 /* ~"Dans ce cas, mes questions sont les suivantes…"~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"Je ne capitulerai pas devant toi. Prépare-toi, esprit. Nous allons voir si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(This is a placeholder.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~CROIS-TU QUE JE *CRAINS* DE T'AFFRONTER, PANTIN ? TU TE TROMPES…~ */
  IF ~~ THEN REPLY #65852 /* ~"Est-ce pour cela que tu as envoyé des ombres me tuer plutôt que de m'affronter en personne ? Mais elles n'y sont jamais parvenues, et cela n'est pas près de changer."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"Un golem de fer, forgé à partir des armes de la guerre, m'a un jour dit ceci : ceux qui tuent de loin, sans jamais se montrer, sont des faibles. C'est ainsi que se battent les *lâches*."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"Est-ce pour cela que tu as envoyé des ombres me tuer plutôt que de m'affronter en personne ? Elles n'y sont jamais parvenues, mais ce n'était pas le but de leurs attaques, n'est-ce pas ? Elles devaient juste me "tuer" pour me faire perdre la mémoire."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"Si tu ne me crains pas encore, c'est qu'il te reste des choses à apprendre. Quant à moi, il y en a d'autres que je désire savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~J'ENVOIE CES OMBRES CAR ELLES PEUVENT ALLER PARTOUT. MAIS CE SONT *MES* YEUX QUI LES GUIDENT.~ */
  IF ~~ THEN REPLY #65857 /* ~"Les ombres sont donc capables de se rendre là où tu ne peux aller."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~IL N'EST RIEN QUE JE NE PUISSE ACCOMPLIR.~ */
  IF ~~ THEN REPLY #65860 /* ~"Et pourtant, tu n'as jamais quitté ces murs pour venir m'affronter. Tu t'es contenté de m'envoyer tes ombres. C'est ainsi que se battent les *lâches*."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~C'EST MON ÉNERGIE QUI MAINTIENT CE LIEU EN L'ÉTAT, PANTIN, SANS QUOI JE TE TUERAIS DE MES PROPRES MAINS À CHAQUE FOIS. JE NE PUIS SORTIR LONGTEMPS DE CETTE FORTERESSE.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"Je ne te crois pas. Je pense que tu as *peur* de moi… ou que tu me mens, auquel cas tu resterais pour une autre raison…"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"Je ne te crois pas. Je pense que tu as *peur* de moi… ou que tu me mens, auquel cas tu resterais pour une autre raison…"~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"Je ne te crois pas. Je pense que tu as *peur* de moi… ou que tu me mens, auquel cas tu resterais pour une autre raison…"~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"Et pourtant, alors même que je me trouvais à l'intérieur de la forteresse, c'est Vhailor que tu as envoyé pour me stopper au lieu de t'en charger toi-même."~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"Et pourtant, alors même que je me trouvais à l'intérieur de la forteresse, c'est cette armure vide que tu as envoyée pour me stopper au lieu de t'en charger toi-même."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"Et pourtant, alors même que je me trouvais à l'intérieur de la forteresse, c'est Ignus que tu as envoyé pour me stopper au lieu de t'en charger toi-même."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"Et pourtant, alors même que je me trouvais à l'intérieur de la forteresse, c'est le sorcier fou dévoré par les flammes que tu as envoyé pour me stopper au lieu de t'en charger toi-même."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"Et ce cristal, dans lequel tu as essayé de me segmenter et de m'enfermer… tu ne voulais pas me tuer, mais m'emprisonner."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~L'ESPRIT DU RECTIFIEUR M'A ÉTÉ… UTILE. TU AS COMMIS DE MULTIPLES INJUSTICES, QUI ONT LAISSÉ D'INNOMBRABLES CICATRICES DANS LE MULTIVERS. J'AI DONNÉ L'ARMURE À L'ESPRIT AFIN QU'IL PUISSE RENDRE LA JUSTICE.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"Que lui as-tu dit pour qu'il se retourne contre moi ? C'était mon allié, et il me suivait f…"~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"Puis tu as essayé de me piéger dans ton cristal mais, là encore, tu as échoué."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~JE LUI AI PARLÉ DE TES *CRIMES*, ET DU NOMBRE D'ÊTRES QUI SONT MORTS POUR QUE TU PUISSES VIVRE. ÇA L'A RENDU PLUS FORT.~ */
  IF ~~ THEN REPLY #65875 /* ~"Mais tu es aussi coupable que moi. Tant que nous serons séparés, les autres continueront de mourir à notre place. C 'est donc *toi* que Vhailor aurait dû essayer de tuer."~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"Puis tu as essayé de me piéger dans ton cristal mais, là encore, tu as échoué."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~JE N'AI COMMIS AUCUN CRIME, *MOI*.~ */
  IF ~~ THEN REPLY #65878 /* ~"C'est *toi* qui ne cesses de me tuer, *toi* encore qui sèmes tant de morts sur ton passage que les couloirs de cette forteresse sont emplis d'ombres, et tu OSES dire que tu n'as pas commis le moindre crime ? Tu as de la chance que Vhailor soit mort, sans quoi sa hache t'aurait déjà coupé en deux."~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~NE ME PARLE PAS DE JUGEMENT. BIENTÔT, C'EST *TOI* QUE LES PLANS JUGERONT, ET TOUT SERA ENFIN FINI ENTRE NOUS, PANTIN.~ */
  IF ~~ THEN REPLY #65880 /* ~"Même après que Vhailor a échoué, tu ne m'as pas affronté, même si tu prétends le contraire. Tu as juste mis ce cristal en travers de mon chemin, dans l'espoir qu'il m'emprisonnerait."~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~LE SORCIER M'A ÉTÉ… UTILE. LA HAINE QU'IL ÉPROUVE À TON ÉGARD EST VIOLENTE, ET J'AI TROUVÉ JUSTE QU'IL PUISSE SE VENGER DE TOI. SI LE MULTIVERS EST INCAPABLE DE T'ENSEIGNER LA MISÉRICORDE, PEUT-ÊTRE LA *DOULEUR* Y PARVIENDRA-T-ELLE.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"Il voulait se venger ? Parce que je lui avais enseigné la magie et qu'il avait souffert par ma faute ?"~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"Il voulait se venger ? Pourquoi ?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~OUI. LA DOULEUR LUI A APPRIS, À LUI, ET JE PENSAIS QU'IL EN SERAIT DE MÊME AVEC TOI. MAIS IL ÉTAIT PLUS FAIBLE QUE JE NE LE PENSAIS, ET TE VOILA. BIENTÔT, TOUT SERA ENFIN FINI ENTRE NOUS, PANTIN.~ */
  IF ~~ THEN REPLY #65885 /* ~"Tu as donc chargé Ignus de m'arrêter. Mais même après qu'il eut échoué, tu as refusé de m'affronter. Au lieu de cela, tu as mis ce cristal en travers de mon chemin, dans l'espoir qu'il m'emprisonnerait."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~C'EST SANS IMPORTANCE, CAR TU L'AS *OUBLIÉ*. ET TU L'OUBLIERAS ENCORE…~ */
  IF ~~ THEN REPLY #65887 /* ~"Tu l'as donc chargé de m'arrêter. Mais même après qu'il eut échoué, tu as refusé de m'affronter. Tu as préféré mettre ce cristal en travers de mon chemin, dans l'espoir qu'il m'emprisonnerait."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~OUI, LE CRISTAL EST UNE PRISON, PEUT-ÊTRE L'UNE DES PLUS SÛRES QUI AIENT JAMAIS ÉTÉ CONÇUES.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~JE L'AI UTILISÉ, CAR J'EN AI ASSEZ DE TE TRAQUER DANS TOUT LE MULTIVERS, PANTIN. TU ES… DIFFICILE À TROUVER. JE PRÉFÈRE TE GARDER PRÈS DE MOI, OÙ JE POURRAI TE SURVEILLER. ET LE CRISTAL EST L'ENDROIT IDÉAL POUR CELA.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~JE *VEUX* SAVOIR COMMENT TU AS RÉUSSI À ÉCHAPPER AU CRISTAL.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"Pourquoi suis-je difficile à trouver ?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"J'ai été aidé. C'est Deionarra, la femme que j'ai amenée ici il y a bien longtemps, qui m'a libéré."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"Mes secrets ne regardent que moi. Sache que cette prison ne peut me retenir… pas plus que toi, tu ne peux m'arrêter, désormais."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~C'EST SANS IMPORTANCE.~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"Dans ce cas, pourquoi ne pas me le dire, puisque je vais l'oublier ? Je voudrais l'apprendre une dernière fois."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"Dans ce cas, en quoi cela te gêne-t-il de me le dire ?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~LES NOMS SONT SYNONYMES DE POUVOIR, MAIS IL EN VA DE MÊME LORSQUE L'ON N'A *PAS* DE NOM. LES YEUX DES PLANS NE S'ARRÊTENT JAMAIS SUR UN ÊTRE TEL QUE TOI… OU QUE MOI.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~AH… LE SPECTRE AMOUREUX. IL M'EST ARRIVÉ DE PERCEVOIR SON ÉCHO DANS CETTE FORTERESSE… MAIS ELLE NE TE DÉLIVRERA PAS, CETTE FOIS-CI.~ */
  IF ~~ THEN REPLY #65899 /* ~"Elle n'en a pas *besoin*. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~QUELLE ARROGANCE. NOUS ALLONS BIENTÔT VOIR SI ELLE EST JUSTIFIÉE, PANTIN.~ */
  IF ~~ THEN REPLY #65901 /* ~"Nous verrons bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~TU NE SAIS *RIEN*.~ */
  IF ~~ THEN REPLY #65903 /* ~"Pourquoi le fait de conserver ce lieu en état est-il si important pour toi ? Si tu es si puissant que tu le dis, pourquoi ne pas t'en aller ? Il n'y a RIEN ici."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~C'EST MA FORTERESSE, MA DEMEURE.~ */
  IF ~~ THEN REPLY #65905 /* ~"Et quelle demeure ! Créée à partir de mes regrets et occupée par l'ombre de tous ceux que nous avons tués, des reliques qui disparaissent peu à peu sous la poussière, et l'énergie mortelle du Plan Négatif. Les endroits de ce genre ont un nom ; on les appelle *prisons*."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~CHACUNE DE TES PAROLES TRAHIT TON IGNORANCE, PANTIN. LA FORTERESSE EST *MUETTE*. TOUT CE QUI ARRIVE ICI *MEURT* AVANT D'AVOIR EU LE TEMPS DE ME DÉRANGER. ET LES OMBRES SONT TELLEMENT SILENCIEUSES…~ */
  IF ~~ THEN REPLY #65907 /* ~"Je crois que tu n'as pas d'autre choix que de rester ici, en compagnie des fantômes et des ombres, car tu es devenu comme eux. Ce n'est pas toi qui permet à la forteresse d'exister, c'est tout le *contraire*."~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~JE RESTE ICI PAR *CHOIX*.~ */
  IF ~~ THEN REPLY #65909 /* ~"Vraiment ? Donc, quand tu disais que tu ne pouvais quitter longtemps la forteresse, tu mentais ? Et comment expliques-tu qu'un lieu né de MES regrets ne puisse exister que grâce à TOI ?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~TU SOUFFRIRAS *MILLE* MORTS POUR TON INSOLENCE, PANTIN. TU ES UN INTRUS, ICI, ET JE VEILLERAI À CE QUE TU NE REVIENNES *PLUS JAMAIS*.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"Réfléchis : tu dis que nous sommes liés. Donc, quand je souffre, il doit en être de même pour toi. Tu es peut-être enfermé ici parce que tes souffrances s'expriment différemment des miennes."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"Tes vaines menaces me fatiguent. Prépare-toi au combat, esprit. Voyons si ma mortalité peut être tuée."~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~QUELLE FOLIE ME RACONTES-TU LA ?~ */
  IF ~~ THEN REPLY #65916 /* ~"Serait-il possible qu'à chaque fois que mon esprit meurt, ton corps meure aussi ? Je perds peu à peu mes souvenir, mais toi, c'est ta substance même qui disparaît. C'est pour cette raison qu'il t'est de plus en plus difficile de quitter cette forteresse. Ta prison finira par devenir ta tombe."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~IMPOSSIBLE.~ */
  IF ~~ THEN REPLY #65919 /* ~"Vraiment ? C'est toi-même qui a dit que nous étions liés. Tu as bien dû sentir ton physique s'affaiblir au cours des siècles. Regarde-toi : tu portes en permanence l'ossature végétale que tu tiens de Ravel. Tu la *hais*, et pourtant tu as besoin de son ossature pour ne pas disparaître plus encore."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~MÊME SI TES PAROLES ÉTAIENT UN TANT SOIT PEU VRAIES, IL N'Y AURAIT RIEN À FAIRE. JE PRÉFÈRE QUE MON CORPS MEURE ICI PLUTÔT QUE DE DEVOIR VIVRE AVEC TOI.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"Mais pourquoi choisir une disparition lente et inéluctable alors qu'une autre solution existe ? Si nous étions réunis, nous cesserions de souffrir, tous les deux. Nous ne ferions plus qu'un."~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"Mais pourquoi mourir lentement alors nous pourrions ne plus faire qu'un de nouveau ? De cette façon, nous cesserions enfin de nous torturer mutuellement."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~TES PROPOS *M'EMPOISONNENT*. JE NE VEUX PLUS FAIRE PARTIE DE TOI ET DE TA *MISÉRABLE* EXISTENCE. REGARDE-TOI. TU N'ES QU'UNE CARCASSE BRISÉE ET COUVERTE DE CICATRICES. PLUTÔT MOURIR QUE DE ME RETROUVER ENFERME DANS TON CORPS.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"Regarde-toi : tu n'es qu'une créature spectrale qui se croit puissante, mais dont les pouvoirs ne sont en fait que le pâle reflet de ce qu'ils étaient autrefois. C'est ainsi que tu veux que le multivers se rappelle de toi une fois que tu seras retourné au néant ?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"Très bien. Dans ce cas, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~JE NE TIENS PAS À ÉCHANGER UNE FORME DE NÉANT POUR UNE AUTRE, ET JE N'AI NULLE ENVIE D'OCCUPER TA CARCASSE VIDE, PANTIN.~ */
  IF ~~ THEN REPLY #65929 /* ~"Le néant n'est pas la seule option. Qui sait ce qui se produira si nous fusionnons. Peut-être mourrai-je pour te laisser mon corps. À moins que le tout ne soit supérieur à la somme des parties."~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"Très bien. Dans ce cas, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~TU NE SAIS PAS DE QUOI TU PARLES. SI NOUS SOMMES RÉUNIS, TOUT S'ARRÊTERA LÀ. IL N'Y A PAS D'AVENIR POUR NOUS. NOUS NE FERONS QUE CONNAÎTRE DE NOUVEAUX TOURMENTS, JE LE SAIS.~ */
  IF ~~ THEN REPLY #65932 /* ~"Dans ce cas, nous affronterons ces tourments ensemble. Et nous en viendrons à bout."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~SACHE QUE, SI NOUS DEVENONS UN, NOUS SOUFFRIRONS. LA NATURE DU PREMIER EST TROP FORTE EN NOUS POUR QUE NOUS PUISSIONS ÊTRE SAUVÉS. C'EST LA DAMNATION QUI NOUS ATTEND.~ */
  IF ~~ THEN REPLY #65934 /* ~"Alors, nous l'affronterons, elle aussi, et nous redeviendrons libres."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~SACHE QUE JE T'AI TOUJOURS *HAÏ*, PANTIN, ET QUE JE CONTINUERAI LORSQUE NOUS NE FERONS PLUS QU'UN. QUAND TA MISÉRABLE CARCASSE MOURRA ENFIN, SACHE QUE J'Y PRENDRAI GRAND PLAISIR.~ */
  IF ~~ THEN REPLY #65936 /* ~"C'est le genre de chose que je suis à même de supporter, et les plans aussi. Si je dois souffrir, tu pourras te gausser. Mais il vaut mieux que tu me haïsses après t'être joint à moi, plutôt que nous mourions séparément, sans rien d'autre que le néant au bout du chemin."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~SACHE QUE LA HAINE QUE J'ÉPROUVE POUR TOI EST TELLE QU'ELLE POURRAIT DÉTRUIRE LES PLANS. PRÉPARE-TOI À CE QUE NOUS NE SOYONS PLUS QU'UN… JUSQU'À LA FIN DE TES JOURS.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"Avant que nous ne le fassions, qu'en est-il de mes amis ? Est-il possible de les sauver ?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"Avant que nous ne le fassions, qu'en est-il de mes compagnons ? Je voudrais qu'ils retrouvent une vie normale."~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"Avant que nous ne fassions plus qu'un, je veux que mon ami soit ramené à la vie…"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"Avant que nous ne le fassions, j'exige que tu ressuscites mon compagnon."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~QUAND NOUS NE FERONS PLUS QU'UN, IL EN SERA DE MÊME POUR EUX. MON SAVOIR T'APPARTIENDRA ET, SI TU LE SOUHAITES, TU POURRAS LEUR RENDRE LA VIE. JE SUIS LA MORTALITÉ. JE CONNAIS BIEN… TRÈS BIEN… LA NATURE DE LA VIE ET DE LA MORT.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"Très bien. Je suis prêt à redevenir mortel."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~LA COQUILLE VIDE QU'EST TON ESPRIT NE CONTIENT RIEN QUI SOIT DIGNE D'INTÉRÊT, PANTIN.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"Si, une chose, car maintenant que je sais ce que tu es et où tu te trouves, je peux le dire aux autres, ou revenir te trouver moi-même. Un jour, je me rappellerai peut-être comment parvenir jusqu'à toi, et alors, tu devras m'affronter de nouveau. C'est bien pour cette raison que tu veux que j'oublie, non ?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"Sauf que, si j'en crois ce que le Pilier des Crânes m'a dit, trois êtres savent où tu te trouves : Trias, toi et moi. Si tu nous tues, Trias et moi, personne ne saura plus qui tu es ou comment te trouver."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"Sauf que, si j'en crois ce que le Pilier des Crânes m'a dit, trois êtres savaient où tu te trouves : Trias, qui est mort, toi et moi. Une fois que j'aurai perdu la mémoire, personne ne saura plus qui tu es ou comment te trouver."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~OUI, L'ANGE QUI SE CACHE DERRIÈRE SES MENSONGES DORÉS. TU M'AS ENFIN PERMIS DE PARVENIR JUSQU'À LUI. TOUT COMME TOI, LE TRAÎTRE ÉTAIT DUR À TROUVER. IL VA MOURIR UNE BONNE FOIS POUR TOUTES.~ */
  IF ~~ THEN REPLY #65949 /* ~"Tu t'es donc servi de moi pour le trouver ? Tu voulais que je le tue, n'est-ce pas, afin que son savoir meure avec lui. Et après, tu as essayé de me tuer, moi, pour que j'oublie où te trouver."~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~JE VOIS QUE LE PASSAGE DES SIÈCLES NE T'A PAS RENDU TOTALEMENT STUPIDE. MON BUT A TOUJOURS ÉTÉ DE TE FAIRE OUBLIER.~ */
  IF ~~ THEN REPLY #65951 /* ~"Mais *pourquoi* ? Pourquoi f…"~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~PARCE QUE JE NE VEUX PLUS AVOIR À SUPPORTER TA *PRÉSENCE*, PANTIN. TU ES UNE GÊNE POUR MOI, CAR TU ME RAPPELLES CE QUE MA VIE ÉTAIT AUTREFOIS, ET JE DÉTESTE ÇA. JE VEUX VIVRE EN PAIX DANS MA FORTERESSE.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~JE VEUX T'OUBLIER TOUT COMME TOI, TU M'AS OUBLIÉ. POUR TOUJOURS.~ */
  IF ~~ THEN REPLY #65955 /* ~"J'accepte cette situation. Mais sache que je refuse de souffrir tes attaques plus longtemps. Garde les ombres ici et laisse-moi mener MA vie comme je l'entends. Fais-le, et j'en ferai autant pour TOI."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"Je ne pense pas qu'il s'agisse de la vraie raison. Je crois que tu me fais perdre la mémoire parce que tu as PEUR de moi."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"Mais la mort ne me fait plus oublier, désormais. Autrefois, peut-être ; mais c'est fini, maintenant."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~TU MENS. TU AS TOUJOURS OUBLIÉ, ET MOI, JE ME SUIS TOUJOURS SOUVENU. IL EN A TOUJOURS ÉTÉ AINSI.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"'Toujours' n'a plus le même sens qu'autrefois. Je suis déjà mort une fois et la mémoire m'est revenue, intacte."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"'Toujours' n'a plus le même sens qu'autrefois. Je suis  mort à plusieurs reprises et la mémoire m'est à chaque fois revenue."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~LA TROMPERIE NE TE PROTÉGERA PAS, PANTIN.~ */
  IF ~~ THEN REPLY #65962 /* ~"C'est la vérité. Le fait de me tuer ne m'arrêtera pas, car je n'oublie *plus* en mourant. Je me souviendrai toujours de toi, je me rappellerai de tout ce que tu as fait, mais aussi de l'endroit où tu te trouves et, au bout du compte, de la façon de te détruire."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~DANS CE CAS, JE VAIS T'EMPRISONNER, SANS-NOM. SI TU REFUSES D'OUBLIER, JE NE TE LAISSERAI PAS REPARTIR.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"Mais je me suis déjà échappé de l'une des prisons les plus sûres qui aient jamais existé, tu te souviens ? Tu ne peux ni me tuer, ni m'emprisonner, ni me faire perdre la mémoire, désormais."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"Mais je me suis déjà échappé de ce cristal que tu avais mis sur mon chemin. Tu ne peux ni me tuer, ni m'emprisonner, ni me faire perdre la mémoire, désormais."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~OUI, MAIS TU N'Y ES POUR RIEN. C'EST LE SPECTRE AMOUREUX QUI T'A LIBÉRÉ. MAIS ELLE NE LE FERA PAS, CETTE FOIS-CI. QUAND J'AURAI BROYÉ TOUS TES OS, JE T'ENFERMERAI POUR TOUJOURS DANS LE CRISTAL. LE MULTIVERS A FINI D'ENTENDRE PARLER DE TOI.~ */
  IF ~~ THEN REPLY #65967 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"Tu peux toujours essayer. Prépare-toi, esprit. Voyons si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~ALORS, JE TE JETTERAI EN PÂTURE AUX OMBRES. JE TE VAINCRAI ICI, PUIS JE LEUR DONNERAI TON CORPS BRISÉ. ELLES METTRONT PLUSIEURS ÉTERNITÉS À TE TUER. PLUS JAMAIS TU N'ARPENTERAS LES PLANS.~ */
  IF ~~ THEN REPLY #65970 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"Tu peux toujours essayer. Prépare-toi, esprit. Voyons si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~TU N'AS PAS LE CHOIX, PANTIN. QUAND TU RESSORTIRAS D'ICI, TU OUBLIERAS TOUT CE QUI C'EST PASSÉ. J'EN AI ASSEZ QUE TU PARVIENNES À ME RETROUVER. TON ESPRIT MOURRA, ENCORE ET ENCORE, CAR J'EN AI DECIDÉ AINSI.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"Mais la mort ne me fait plus oublier, désormais. Autrefois, peut-être ; mais c'est fini, maintenant."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~C'EST SANS IMPORTANCE, CAR TU NE PEUX MOURIR. MÊME QUAND TU PERDS L'ESPRIT, TON CORPS CONTINUE DE VIVRE.~ */
  IF ~~ THEN REPLY #65976 /* ~"Comment ça, quand je perds l'esprit ?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~TON ESPRIT S'AFFAIBLIT DE PLUS EN PLUS, MAIS TU CONTINUES DE VIVRE. RIEN D'AUTRE N'EST NÉCESSAIRE.~ */
  IF ~~ THEN REPLY #65978 /* ~"Nécessaire ? Pourquoi ?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~C'EST SANS IMPORTANCE, CAR TU NE PEUX MOURIR. MÊME QUAND TU PERDS L'ESPRIT, TON CORPS CONTINUE DE VIVRE. C'EST TOUT CE QUI EST NÉCESSAIRE.~ */
  IF ~~ THEN REPLY #65980 /* ~"'Nécessaire' ? Pourquoi ?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~NOUS SOMMES LIÉS, TOI ET MOI, MÊME SI CE LIEN EST FAIBLE. JE NE SOUHAITE PAS TE VOIR DÉTRUIT, MAIS JE TE VEUX LOIN DE MOI.~ */
  IF ~~ THEN REPLY #65982 /* ~"Dans ce cas, pourquoi essayes-tu sans cesse de me tuer ?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"Si nous sommes vraiment liés, quand je souffre, il doit en être de même pour toi."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"Tu ne voulais donc pas me tuer car, si je venais à mourir, ce lien serait rompu…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~C'EST SANS IMPORTANCE.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"Attends… les ombres que tu as envoyées contre moi ne sont jamais parvenues à m'éliminer, mais ce n'était pas le but de leurs attaques, n'est-ce pas ? Elles devaient juste me "tuer" pour me faire perdre la mémoire."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"Attends… les ombres que tu as envoyées contre moi ne sont jamais parvenues à m'éliminer, mais ce n'était pas le but de leurs attaques, n'est-ce pas ? Elles devaient juste me "tuer" pour me faire perdre la mémoire."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"Attends… les ombres que tu as envoyées contre moi ne sont jamais parvenues à m'éliminer, mais ce n'était pas le but de leurs attaques, n'est-ce pas ? Elles devaient juste me "tuer" pour me faire perdre la mémoire."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"Vraiment ? Peut-être que tu ne voulais pas me tuer parce que le lien qui nous unit serait rompu si je venais à mourir… auquel cas tu serais détruit, toi aussi."~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~LES FAIBLES SOUFFRENT. MOI, JE RÉSISTE À TOUT.~ */
  IF ~~ THEN REPLY #65991 /* ~"Donc, si je venais à mourir, ce lien serait rompu…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~TU NE PEUX MOURIR.~ */
  IF ~~ THEN REPLY #65993 /* ~"Dans ce cas, toi, tu *n'existes pas*. Tu es ma mortalité, tu te souviens ?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~AUTREFOIS, PEUT-ÊTRE, MAIS PLUS AUJOURD'HUI. J'AI CHANGÉ. JE ME SUIS TRANSCENDÉ POUR DEVENIR UN ÊTRE SUPÉRIEUR.~ */
  IF ~~ THEN REPLY #65995 /* ~"Peut-être, mais tu restes ma mortalité. Si je meurs, il en va de même pour toi."~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"Tu admets donc que la nature d'un être peut changer ?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"Mais rien ne peut changer la nature d'un homme ; tu l'as dit toi-même."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~TU NE SAIS *PAS* DE QUOI TU PARLES. TES PAROLES SONT AUSSI CREUSES QUE TA CARCASSE VIDE. ~ */
  IF ~~ THEN REPLY #66000 /* ~"Je crois que je sais *parfaitement* de quoi je parles, justement. Si je venais à être détruit, il en irait de même pour toi."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"Nous verrons. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~TU M'ÉCOUTES, MAIS TU NE M'ENTENDS PAS. SACHE QUE TU NE PEUX MOURIR.~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"En fait, je peux, maintenant. J'ai demandé à un golem de forger une arme capable de me tuer. Pour qu'elle fonctionne, il fallait qu'elle se retrouve à l'écart des plans, en un lieu où mon immortalité ne pourrait tirer son énergie des myriades d'êtres vivants du multivers. Et me voici…" ~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"Peut-être pas. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~TU *MENS*.~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Montre l'épée : "Vraiment ? Regarde cette épée et vois sa nature. Si tu es aussi puissant que tu le PRETENDS, tu n'auras aucun mal à reconnaître l'arme qui peut mettre un terme à mon existence."~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Montre l'épée : "Vraiment ? Regarde cette épée et vois sa nature. Si tu es aussi puissant que tu le PRETENDS, tu n'auras aucun mal à reconnaître l'arme qui peut mettre un terme à mon existence. Et à la tienne aussi, en vertu du lien qui nous unit."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~Alors même que tu prononces ces paroles, tu sens l'épée frémir dans ta main, puis elle se transforme pour devenir une arme plus dangereuse que tout ce que le multivers a jamais connu.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~TU N'OSERAS JAMAIS.~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"Tu sais bien que cela ne me dérange pas. Après tous les tourments que tu m'as fait subir, je me ferai une joie de la planter dans ton cœur de spectre."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"Si tu ne te rends pas, je me suicide à l'aide de l'épée et nous mourrons tous les deux."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Suicide-toi à l'aide de l'épée.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~SI JE MEURS, IL EN IRA DE MÊME POUR TOI ET NOTRE LIEN SERA ROMPU. TU CONNAÎTRAS ALORS LA VRAIE MORT.~ */
  IF ~~ THEN REPLY #66015 /* ~"Je vois donc deux choix possibles : soit nous mourons tous les deux, soit je te laisse me tuer une nouvelle fois et me voler ce qui me reste de mémoire. Je crois que je préfère en finir une bonne fois pour toutes… à moins que tu n'aies une troisième solution à me proposer…"~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Suicide-toi à l'aide de l'épée.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~CE SERAIT PURE FOLIE. TA MORT N'AURAIT AUCUN SENS.~ */
  IF ~~ THEN REPLY #66017 /* ~"Je vois donc deux choix possibles : soit nous mourons tous les deux, soit je te laisse me tuer une nouvelle fois et me voler ce qui me reste de mémoire. Je crois que je préfère en finir une bonne fois pour toutes… à moins que tu n'aies une troisième solution à me proposer…"~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Suicide-toi à l'aide de l'épée.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~IL N'EXISTE PAS DE SOLUTION SATISFAISANTE. TU VAS ME TENDRE L'ÉPÉE, PUIS TU TE SOUMETTRAS. CELA FAIT, TU QUITTERAS LA FORTERESSE, MAIS SANS TES SOUVENIRS. C'EST LA *SEULE* SOLUTION.~ */
  IF ~~ THEN REPLY #66020 /* ~"J'en vois pourtant une autre : fusionne avec moi. Nous ne ferons alors plus qu'un, comme cela doit être."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~TU N'AS PAS CONSCIENCE DE TES ACTES. SI NOUS SOMMES RÉUNIS, CE SERA LA FIN. IL N'Y A PAS D'AVENIR POUR NOUS. NOUS NE FERONS QUE CONNAÎTRE DE NOUVEAUX TOURMENTS.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"Je préfère cela plutôt que le multivers continue de souffrir à cause de nous."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"Je suis prêt à prendre le risque. J'en ai assez de te pourchasser d'un plan à l'autre. Tout doit cesser maintenant."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~SACHE QUE, SI NOUS DEVENONS UN, NOUS SOUFFRIRONS. LA NATURE DU PREMIER EST TROP FORTE EN NOUS POUR QUE NOUS PUISSIONS ÊTRE SAUVÉS. C'EST LA DAMNATION QUI NOUS ATTEND. TU N'AS PAS CONSCIENCE DE TES ACTES.~ */
  IF ~~ THEN REPLY #66025 /* ~"Au contraire, je sais parfaitement ce que je fais. Et je crois que c'est la seule option possible. Prépare-toi."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~SACHE QUE JE T'AI TOUJOURS *HAÏ*, PANTIN, ET QUE JE CONTINUERAI LORSQUE NOUS NE FERONS PLUS QU'UN. QUAND TA MISÉRABLE CARCASSE MOURRA ENFIN, SACHE QUE J'Y PRENDRAI GRAND PLAISIR.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"Je suis tout à fait capable de le supporter, et le multivers aussi."~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"Tu ne connaîtras nul plaisir, créature. Tu me serviras, et tout ce que tu as amassé au cours de tes vies me reviendra."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NŒUD NUL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~UN NOM EST UNE CHOSE QUE L'HOMME GAGNE PAR SES ACTES, EN VERTU DE QUOI CELUI QUE NOUS AVIONS AUPARAVANT N'A AUCUN SENS.~ */
  IF ~~ THEN REPLY #66031 /* ~"Tu ignores quel était notre nom, pas vrai ?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~UN NOM EST UNE CHOSE QUE L'HOMME REÇOIT DE CEUX QUI LE VOIENT POUR CE QU'IL EST, EN VERTU DE QUOI CELUI QUE NOUS AVIONS AUPARAVANT N'A AUCUN SENS.~ */
  IF ~~ THEN REPLY #66033 /* ~"Tu ignores quel était notre nom, pas vrai ?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~UN NOM N'EST QU'UN MANTEAU DE LETTRES SOUS LEQUEL ON S'ABRITTE. IL NE SIGNIFIE RIEN.~ */
  IF ~~ THEN REPLY #66035 /* ~"Tu ignores quel était notre nom, pas vrai ?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~TU NE CONNAÎTRAS JAMAIS TON NOM, PANTIN.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"Je connais notre nom, créature, et ce savoir m'a rendu plus fort."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"Tu ignores quel était notre nom, pas vrai ?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~PERSONNE NE CONNAÎT NOTRE NOM. C'EST LÀ NOTRE MEILLEURE DÉFENSE, CAR LES NOMS SONT SYNONYMES DE POUVOIR. C'EST QUAND ON EST *SANS NOM*, COMME NOUS, QUE L'ON EST VRAIMENT FORT. NOUS NE POUVONS ÊTRE OBSERVÉS, TRAQUÉS OU BLESSÉS.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"Je connais notre nom, créature, et ce savoir m'a rendu plus fort."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"Pourquoi était-ce important ? Avons-nous un jour été traqués ?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~TU *MENS*. NOTRE NOM A DISPARU. IL A ÉTÉ OUBLIÉ ET LE RESTERA DE TOUTE ÉTERNITÉ.~ */
  IF ~~ THEN REPLY #66043 /* ~"Vraiment ? Mais si tu es moi, tu dois savoir quand je mens… et que ce n'est pas le cas en ce moment."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~MÊME CE SAVOIR NE TE DONNE PAS LA POSSIBILITÉ DE ME VAINCRE.~ */
  IF ~~ THEN REPLY #66045 /* ~"Oh, si, et ne compte pas m'inciter à te combattre alors que ce n'est pas même nécessaire. Car, en connaissant mon nom, mon *vrai* nom, je connais également le tien. Tu ne peux rien contre moi."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"Nous allons voir ça, esprit. Prépare-toi, et voyons si ma mortalité peut mourir…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~JE VAIS TE DÉTRUIRE COMME SI TU N'AVAIS JAMAIS EXISTÉ.~ */
  IF ~~ THEN REPLY #66048 /* ~"Non, c'est *moi* qui vais te détruire. Le multivers n'a plus besoin de toi. Adieu ; le néant t'appelle…"~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"Oh, non. Tu vas fusionner avec moi, et nous ne ferons plus qu'un, comme cela doit être."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~TOUT CE QUI VIT EST TRAQUÉ PAR LE GRAND PRÉDATEUR : LA MORT. MAIS NOUS, ELLE NE NOUS CHASSE PLUS.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"Dans ce cas, sache qu'elle nous poursuit de nouveau. Je connais notre nom, créature, et cela m'a rendu plus fort."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"Non, elle en poursuit d'autres à *notre* place. Des myriades d'individus sont morts des suites de notre séparation. Nous ne pouvons continuer de vivre de la sorte, sans quoi nous continuerons de causer des morts inutiles."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~TOUT CE QUI VIT DOIT MOURIR. LES OMBRES D'ICI SOUFFRENT, MAIS ELLES CONNAISSENT UNE SORTE D'IMMORTALITÉ. JE SUIS LA LUMIÈRE QUI ÉCLAIRE CETTE FORTERESSE DE TÉNÈBRES. ET LA HAINE DES OMBRES EST POUR TOI, PAS POUR MOI.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"Cela ne te dérange donc pas que des innocents souffrent à notre place ?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~SI TU VEUX METTRE UN TERME À LEURS SOUFFRANCES, SOUMETS-TOI À MOI. LAISSE-MOI T'ENFERMER DANS LE CRISTAL ET LES INNOCENTS CESSERONT DE SOUFFRIR POUR TOI. ILS SOUFFRENT CAR TU REFUSES DE MOURIR.~ */
  IF ~~ THEN REPLY #66058 /* ~"Je ne te laisserai pas m'emprisonner. Prépare-toi, esprit, et voyons si ma mortalité peut mourir."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"Très bien. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~CETTE QUESTION EST DENUÉE DE SENS.~ */
  IF ~~ THEN REPLY #66061 /* ~"Je souhaite tout de même entendre ta réponse avant que tout ne soit réglé une bonne fois pour toutes entre nous."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~DANS CE CAS, LA VOICI, ET TU EN ES LA PREUVE VIVANTE : *RIEN* NE PEUT CHANGER LA NATURE D'UN HOMME.~ */
  IF ~~ THEN REPLY #66063 /* ~"C'est tout ce que je voulais savoir. Je vais te prouver que tu as tort. Prépare-toi, esprit, et voyons si ma mortalité peut mourir."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"S'il est une chose que j'ai apprise au cours de mes voyages dans les plans, c'est que nombre de facteurs peuvent changer la nature d'un homme : les regrets, l'amour, la vengeance, la peur, même… il suffit de *croire* au changement pour qu'il devienne possible."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"Tu te trompes. La foi peut changer la nature d'un homme. C'est ainsi que j'ai réussi à mettre un terme à l'existence de Vhailor. Je me demande si je pourrais en faire de même de la mienne…"~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"Tu te trompes. La foi peut changer la nature d'un homme. Il y a bien longtemps, j'ai réussi à créer un homme de la sorte. Je me demande s'il me serait possible d'en détruire un…"~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"C'est donc ta réponse… il y a autre chose que je souhaiterais savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~DANS CE CAS, LA LEÇON QUE TU AS APPRISE ÉTAIT ERRONÉE, PANTIN.~ */
  IF ~~ THEN REPLY #66069 /* ~"Vraiment. J'ai vu la foi déplacer des villes, sinon des montagnes, mais aussi permettre à des hommes de défier une mort certaine, ou encore faire naître la bonté dans le cœur d'une sorcière maléfique. La foi est l'unique fondation sur laquelle repose cette forteresse. Mais elle peut aussi conduire à la damnation, comme dans le cas d'une femme que j'ai connue, qui aimait un homme qui ne l'aimait pas en retour. Je l'ai vue rendre un homme immortel, et faire croire à un esprit prétentieux qu'il était autre chose qu'une partie de moi-même."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~EN CE LIEU, TA RÉSISTANCE TE FERA DAVANTAGE DE MAL QUE LA PIRE BLESSURE. LA FOI NE PEUT CHANGER LA NATURE D'UN HOMME.~ */
  IF ~~ THEN REPLY #66071 /* ~"Je suis persuadé du contraire. Elle pourrait même mettre un terme à mon existence, pour peu que j'y croie suffisamment fort."~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"Peut-être la mettrai-je à l'épreuve plus tard. Mais pour le moment, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~TU NE POSSÈDES PAS LA VOLONTÉ NÉCESSAIRE.~ */
  IF ~~ THEN REPLY #66074 /* ~"Tu reconnais donc que c'est possible."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"Nous verrons bien… peut-être que je devrais relever le défi."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"Ou, si nous sommes bien unis par ce lien dont tu parles, peut-être est-ce à *ton* existence que je devrais essayer de mettre un terme."~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"Peut-être la mettrai-je à l'épreuve plus tard. Mais pour le moment, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~NE METS PAS MA PATIENCE À L'ÉPREUVE, PANTIN.~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Concentre-toi sur ton moi intérieur.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Essaye de te concentrer sur ton moi intérieur.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"Peut-être la mettrai-je à l'épreuve plus tard. Mais pour le moment, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~TU ES *FOU* SI TU PENSES EN ÊTRE CAPABLE. TU PARVIENS À PEINE À NE PAS SOMBRER DANS LA DÉMENCE. TU NE PEUX PAS TOMBER PLUS BAS, PANTIN.~ */
  IF ~~ THEN REPLY #66083 /* ~Continue de te concentrer.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~Tu te concentres sur ton moi intérieur, mais tu ne trouves que peu de choses auxquelles te raccrocher, juste quelques fragments… et tu comprends que tu es incapable de mettre un terme à ton existence. Tu ne possèdes pas la volonté nécessaire.~ */
  IF ~~ THEN REPLY #66085 /* ~"Peut-être pas cette fois-ci, esprit… mais il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*ARRÊTE*. TU N'AS PAS CONSCIENCE DE TES ACTES.~ */
  IF ~~ THEN REPLY #66087 /* ~"Oh si, bien au contraire. Tu m'as bien assez tourmenté. Tout va cesser *maintenant*."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~SI TU FAIS CELA, NOUS SOMMES PERDUS. IL EST IMPOSSIBLE DE DÉTRUIRE L'UN DE NOUS SANS DÉTRUIRE L'AUTRE.~ */
  IF ~~ THEN REPLY #66089 /* ~"Je vois donc deux choix possibles : soit nous mourons tous les deux, soit je te laisse me tuer une nouvelle fois et me voler ce qui me reste de mémoire. Je crois que je préfère en finir une bonne fois pour toutes… à moins que tu n'aies une troisième solution à me proposer…"~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"Dans ce cas, nous périrons ensemble. Je vais nous détruire tous les deux, créature."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~IL EST IMPOSSIBLE DE RÉSOUDRE CE PROBLÈME.~ */
  IF ~~ THEN REPLY #66092 /* ~"Je crois que si, justement. Nous pouvons fusionner et ne plus faire qu'un, comme cela doit être."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"Dans ce cas, nous périrons ensemble. Je vais nous détruire tous les deux, créature."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~NON. ILS SONT MORTS ET ILS LE RESTERONT.~ */
  IF ~~ THEN REPLY #66095 /* ~"Pourquoi ? Ne peux-tu donc pas les sauver ?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"Si je comprends bien, tu n'es pas capable de les sauver. C'est donc que tes pouvoirs sont limités…"~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"Je vais donc t'envoyer les rejoindre. Prépare-toi, esprit, et voyons si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~NE REMETS PAS MON POUVOIR EN QUESTION. ICI, JE PUIS FAIRE CE QUE JE VEUX, MAINTENANT QUE JE SUIS LIBÉRÉ DE TOI.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"Dans ce cas, où serait le mal ?"~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~MAIS JE NE SOUHAITE PAS LES VOIR SAUVÉS. ILS SONT VENUS ME DÉFIER CHEZ MOI ET LEUR MORT SERVIRA D'EXEMPLE À CEUX QUI VOUDRAIENT LES IMITER.~ */
  IF ~~ THEN REPLY #66101 /* ~"Tu es incapable de les ressusciter, pas vrai ?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"Je ne pense pas que tu aies le choix. À mon avis, tu es *incapable* de les ressusciter."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"Peut-être les rejoindras-tu bientôt. En attendant, il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"Dans ce cas, je vais veiller à ce que tu ailles les rejoindre. Prépare-toi, esprit, et voyons si ma mortalité peut mourir." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~AU COURS DES VIES QUE TU AS OUBLIÉES, J'AI OBSERVÉ, J'AI APPRIS ET JE SUIS DEVENU BIEN PLUS PUISSANT, PANTIN.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~QUAND TU AS PRIS PART À LA GUERRE DE LA DÉCENNIE NOIRE, TOUT TON SAVOIR MILITAIRE S'EST IMPRIMÉ DANS MON ESPRIT. QUAND TU AS ACCOMPLI LA DANSE DE LA MAGIE AVEC LUM LE FOU, J'AI ÉGALEMENT APPRIS AVEC TOI. TU AS TOUT OUBLIÉ, MAIS MOI, NON. LA MAÎTRISE DE LA VIE ET DE LA MORT N'EST QU'UNE INFIME PARTIE DE MON POUVOIR.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"Tu dis que tu as appris avec moi, que tu as vécu les mêmes expériences que moi. Cela voudrait-il dire que nous sommes liés, toi et moi ?"~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"Ce lien qui nous unit… il te permet donc de vivre ce que je vis, d'apprendre ce que j'apprends…"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~CELA N'A QUE PEU D'IMPORTANCE. ~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"Bien au contraire. Si tu dis pouvoir les ressusciter, peut-être en suis-je capable, moi aussi."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"Deionarra m'a dit que je ne pouvais inverser la mort que lorsque la victime était décédée à mon côté. Mais, cette faculté qu'elle a éveillée en moi… veux-tu dire que ce n'est qu'une fraction du pouvoir que je détiens sur la vie et la mort ?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~TON ESPRIT EST UNE PIERRE BRISÉE, ÉMOUSSÉE À FORCE DE N'AVOIR PLUS SERVI. MÊME SI TU DÉTENAIS LE POUVOIR, TU SERAIS INCAPABLE DE L'UTILISER.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"Je crois que tu te trompes et que notre lien fonctionne dans les deux sens. Si tu dis pouvoir les ressusciter, peut-être en suis-je capable, moi aussi."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"Si tu prétends détenir ce pouvoir, alors je dois le posséder, moi aussi… même si je n'étais pas là au moment du décès."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~SI TU LE FAIS, ILS MOURRONT DE NOUVEAU. TU N'AS PAS DEVANT TOI LE TEMPS DONT J'AI EU BESOIN POUR APPRENDRE À CONTRÔLER LA VIE ET LA MORT. TU TOMBERAS AVANT MOI.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~Quelque chose te revient brusquement à l'esprit, et tu réalises soudain que tu as devant toi les années nécessaires… ou plutôt, que tu les as eues au fil de tes incarnations. Mais il te faudrait du temps pour apprendre, et tu sais que ta mortalité ne te le laissera pas. Tu pourras peut-être en ressusciter un, mais pas plus.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"Tu sais, avant d'arriver ici, j'ai ouvert la porte intérieure. Les ombres sont désormais libres dans la forteresse ; elles ne sont plus confinées à leur salle."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Ressuscite l'un de tes compagnons.~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Ressuscite ton compagnon.~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"Dans ce cas, laissons-les où ils sont. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Le temps semble se ralentir et tu perçois vaguement leur âme. Tu as la conviction que tu peux les ramener à la vie.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Ressuscite Morte.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Ressuscite Annah.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Ressuscite Dak'kon.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Ressuscite Tombée-en-Disgrâce.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Ressuscite Nordom.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Ressuscite Ignus.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Ressuscite Vhailor.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"Dans ce cas, laissons-les où ils sont. Il y a d'autres choses que j'aurais souhaité savoir…"~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~TU *MENS*.~ */
  IF ~~ THEN REPLY #66128 /* ~"Vérifie par toi-même, si tu ne me crois pas. Je ne vais nulle part."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~JE REVIENDRAI ET TA PUNITION SERA À LA MESURE DE TES ACTES, PANTIN. SI TU AS LIBÉRÉ LES OMBRES, JE TE LIVRERAI À ELLES.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"Très bien. Je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"Très bien, je serai là… si tu reviens."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~POSE TES QUESTIONS, MAIS SACHE QUE TU NE TE SOUVIENDRAS JAMAIS DES RÉPONSES.~ */
  IF ~~ THEN REPLY #66132 /* ~"Tu as fais tout ce que tu pouvais pour éviter ce face à face. Pourquoi ?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"Pourquoi as-tu lancé Vhailor contre moi alors que tu savais qu'il pouvait me tuer ?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"Pourquoi as-tu lancé Ignus contre moi alors que tu savais qu'il pouvait me tuer ?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"Tu dis qu'un lien nous unit, toi et moi."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"Je suis peut-être immortel, mais Ravel m'a appris que le rituel présentait un défaut : chaque fois que je meurs, je perds en partie la mémoire. Au bout du compte, je finirai par ne plus être capable de penser."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"Nous n'aurions jamais dû être divisés, esprit. Notre séparation est un acte contre nature, et je refuse de continuer à vivre de la sorte."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"Si nous sommes liés, comme tu le prétends, je désire connaître mon nom."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"Si nous sommes liés, comme tu le prétends, je désire connaître mon nom."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"Si nous sommes liés, comme tu le prétends, je désire connaître mon nom."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"Si nous sommes liés, comme tu le prétends, je désire connaître mon nom."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"Si nous sommes liés, comme tu le prétends, dis-moi comment nous nous appelons."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"Si nous sommes liés, comme tu le prétends, dis-moi comment nous nous appelons."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"Si nous sommes liés, comme tu le prétends, dis-moi comment nous nous appelons."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"Si nous sommes liés, comme tu le prétends, dis-moi comment nous nous appelons."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"Mes amis… je veux qu'ils retrouvent une vie normale, et qu'ils puissent quitter librement ce lieu."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"Mes compagnons… je suis le seul à pouvoir décider ce qu'il advient d'eux. Je veux qu'ils soient ressuscités, tout de suite."~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"Ressuscite mes amis et laisse-les repartir librement… *si* tu en es capable."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"J'exige que tu ressuscites mes amis et que tu les laisses repartir librement… *si* tu en es capable."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"Dans ce cas, ma dernière question est : qu'est-ce qui peut changer la nature d'un homme ?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"Je ne souhaite rien savoir d'autre. Prépare-toi, esprit, et voyons si ma mortalité peut être tuée." ~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~ALORS, PRÉPARE-TOI À MOURIR UNE NOUVELLE FOIS, PANTIN.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~CELA NE T'AIDERA PAS. TES COMPAGNONS N'ONT ÉTÉ RAMENÉS À LA VIE QUE POUR MOURIR UNE SECONDE FOIS.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Même si je meurs, je reviendrai te chercher, je le *jure*. Je te traquerai de nouveau, quel que soit le temps que cela me prendra."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~JE NE SOUHAITE PAS QUE TES COMPAGNONS SOIENT SAUVÉS. TON… *CHIEN* MORTEL EST VENU ME DÉFIER CHEZ MOI, ET SA MORT SERVIRA D'EXEMPLE À CEUX QUI POURRAIENT ÊTRE TENTÉS DE FAIRE DE MÊME.~ */
  IF ~~ THEN REPLY #68453 /* ~"Tu n'en es pas capable, c'est ça ?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"Je ne pense pas que tu aies le choix. Je suis persuadé que tu n'es pas capable de ressusciter mon compagnon."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"Peut-être iras-tu bientôt les rejoindre dans l'au-delà. Mais il y a d'abord d'autres choses que je souhaiterais savoir…"~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"Dans ce cas, tu vas mourir, toi aussi. Prépare-toi, esprit, et voyons si ma mortalité peut être tuée."~ */ GOTO 141
END
