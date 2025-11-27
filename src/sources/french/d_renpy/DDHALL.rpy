init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Avant que Morte finisse sa phrase, le scribe tousse violemment. Après un moment, sa toux se calme et la respiration du scribe reprend son sifflement saccadé.{#dhall_s0_}'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Avant que Morte finisse sa phrase, les yeux gris du scribe se posent sur toi. "Le poids des ans se fait lourdement ressentir, le Sans Repos." Il pose sa plume. "… mais je ne suis pas encore atteint de surdité."{#dhall_s1_}'

    menu:
        '"„Le Sans Repos“ ? Tu me connais ?"{#dhall_s1_r827}':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Tu ne connais pas le cadavre de la femme enterrée dans la Salle de Commémoration ? Je pensais qu„elle avait voyagé avec toi dans le passé…" Dhall semble prêt à tousser, puis il reprend son souffle. "Est-ce que je me trompe ?"{#dhall_s2_}'

    menu:
        '"Où est son corps ?"{#dhall_s2_r5070}' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"Jamais entendu parler d„elle."{#dhall_s2_r5071}' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"Elle prétend me connaître, mais je ne me souviens pas d„elle."{#dhall_s2_r5072}' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"Tu as dit qu„il y en avait d“autres. Qui d„autre est là ?"{#dhall_s2_r5073}' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"Tu as dit qu„il y en avait d“autres. Qui d„autre est là ?"{#dhall_s2_r5074}' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Peut-être. J„ai d“autres questions à te poser…"{#dhall_s2_r6063}':
            # a6 # r6063
            jump dhall_s9

        '"Je vais descendre dans la Salle de Commémoration pour voir si je trouve son corps."{#dhall_s2_r6064}' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Peut-être pas. Au revoir."{#dhall_s2_r13288}' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall te fixe du regard. "En es-tu certain ?"{#dhall_s3_}'

    menu:
        '"Oui. C„est un bon déguisement."{#dhall_s3_r830}' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Oui. C„est un bon déguisement."{#dhall_s3_r831}' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.j39469_s3_r831_action()
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"Non, tout bien réfléchi, peut-être que je l„ai imaginé. Écoute, j“ai d„autres questions…"{#dhall_s3_r834}':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"Je…" Dhall est repris d„une quinte de toux. Après quelques minutes, il reprend son souffle. "Je… je vais en informer les gardes sur-le-champ."{#dhall_s4_}'

    menu:
        '"Merci. J„ai d“autres questions…"{#dhall_s4_r836}':
            # a12 # r836
            jump dhall_s9

        '"Excellent. Au revoir."{#dhall_s4_r837}':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'Ce scribe a l„air très âgé… sa peau ridée a une légère teinte jaune, telle un vieux parchemin. Ses yeux gris foncé brillent au milieu d“un visage anguleux et une grande barbe blanche tombe telle une cascade sur sa robe noire. Il a le souffle court et saccadé, mais même ses quintes de toux occasionnelles ne ralentissent pas la cadence de sa plume sur le parchemin.{#dhall_s5_}'

    menu:
        '"Bonjour."{#dhall_s5_r839}' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Bonjour."{#dhall_s5_r835}' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Bonjour."{#dhall_s5_r5058}' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Laisse le vieux scribe tranquille.{#dhall_s5_r5060}':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'Il te dévisage par-dessus son livre et ses yeux gris cillent. "Je te suspectais d„être responsable des attaques dans la Morgue…" Il tousse légèrement, puis anhèle. "Ce n“est pas une façon d„entrer dans la prochaine vie."{#dhall_s6_}'

    menu:
        '"Je ne faisais que me défendre. J„ai d“autres questions à te poser avant de m„éclipser…"{#dhall_s6_r842}' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Le fait de partager un peu la mort avec tes adorateurs de cadavres n„est pas un crime en ce qui me concerne. Bon, j“ai d„autres questions à te poser…"{#dhall_s6_r843}' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Tu me connais ?"{#dhall_s6_r5062}' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Au revoir."{#dhall_s6_r5063}':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'Le scribe arrête de griffonner son livre et lève les yeux, qui sont comme deux clous enfoncés dans son crâne. "Bon…" Il a l„air fatigué, comme s“il avait répété la même chose bien des fois. "Tu es sorti de ton sommeil et tu es retourné dans ton rêve." Il continue avec plus de respect. "Bienvenue… à nouveau, le Sans Repos."{#dhall_s7_}'

    menu:
        '"„Le Sans Repos“ ? Tu me connais ?"{#dhall_s7_r845}':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"Essaye de comprendre. Ton existence est un blasphème pour eux. Plusieurs personnes de notre faction voudraient te voir incinéré… s„ils connaissaient ta détresse."{#dhall_s8_}'

    menu:
        '"Tu es un Homme-Poussière. Mais tu n„as pas l“air de vouloir me tuer. Pourquoi ?"{#dhall_s8_r940}':
            # a23 # r940
            jump dhall_s23

        '"Dis-m„en plus sur la Morgue."{#dhall_s8_r911}':
            # a24 # r911
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s8_r913}':
            # a25 # r913
            jump dhall_s9

        '"J„en ai assez entendu. Au revoir, Dhall."{#dhall_s8_r6038}':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Très bien. Que désires-tu savoir ?"{#dhall_s9_}'

    menu:
        '"Tu savais qu„il y avait quelqu“un déguisé en zombi dans les chambres de l„est ?"{#dhall_s9_r854}' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"Qu„est-ce que c“est que cet endroit ?"{#dhall_s9_r857}':
            # a28 # r857
            jump dhall_s10

        '"Comment j„ai atterri ici ?"{#dhall_s9_r855}':
            # a29 # r855
            jump dhall_s15

        '"Tu m„expliques comment on fait pour sortir d“ici ?"{#dhall_s9_r858}' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Sais-tu qui je suis ?"{#dhall_s9_r5069}':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"Qu„est-ce que tu fais ici ?"{#dhall_s9_r5748}':
            # a32 # r5748
            jump dhall_s25

        '"Tu as l„air malade. Ça ne va pas ?"{#dhall_s9_r6065}':
            # a33 # r6065
            jump dhall_s26

        '"Rien… Au revoir, Dhall."{#dhall_s9_r41663}':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"Tu es dans la Morgue, le Sans Repos. Tu es… revenu." Avant d„avoir pu finir, Dhall est pris d“une quinte de toux. Après quelques instants, il se calme et sa respiration reprend son sifflement saccadé. "… voici la salle d„attente pour ceux qui sont sur le point de quitter l“ombre de cette vie."{#dhall_s10_}'

    menu:
        '"Parle-moi de la Morgue."{#dhall_s10_r861}':
            # a35 # r861
            jump dhall_s32

        '"*Le Sans Repos* ?"{#dhall_s10_r860}':
            # a36 # r860
            jump dhall_s38

        '"L„ombre de cette vie ?"{#dhall_s10_r862}':
            # a37 # r862
            jump dhall_s33

        '"Encore… ? Ce n„est pas la première fois que je viens ici ?"{#dhall_s10_r863}':
            # a38 # r863
            jump dhall_s14

        '"Comment j„ai atterri ici ?"{#dhall_s10_r864}':
            # a39 # r864
            jump dhall_s15

        '"J„ai d“autres questions…"{#dhall_s10_r865}':
            # a40 # r865
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s10_r866}':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'Tu te retournes, prêt à partir, lorsque Dhall dit : "Sache une chose : je ne t„envie pas, le Sans Repos. Me réincarner ainsi serait une malédiction que je ne supporterais pas. Tu dois l“accepter. Un jour, ton parcours te ramènera ici." Dhall tousse. Ses paroles s„étranglent dans sa gorge. "C“est le sort de tout ce qui est fait de chair et d„os."{#dhall_s11_}'

    menu:
        '"Alors, on se reverra peut-être, Dhall."{#dhall_s11_r41564}':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Je suis sûr qu„il doit y en avoir, mais je ne connais ni leur nom, ni leur emplacement. Un être tel que toi a quitté le chemin que beaucoup ont suivi, et auquel peu ont survécu." Dhall gesticule autour de toi. "Tous les morts viennent ici. Certains d“entre eux ont dû voyager avec toi."{#dhall_s12_}'

    menu:
        '"Où est cette femme dont tu as parlé ?"{#dhall_s12_r870}' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"Ton raisonnement me semble tout à fait correct. J„ai d“autres questions…"{#dhall_s12_r871}':
            # a44 # r871
            jump dhall_s9

        '"Alors, je vais essayer de les trouver. Peut-être qu„ils raviveront ma mémoire. Au revoir."{#dhall_s12_r872}':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… l„entrée principale est la sortie la plus évidente, mais ils ne laissent passer personne, à part les Hommes-Poussière…" Dhall est pris d“une quinte de toux violente, puis il continue. "… l„un des guides de l“entrée principale a une clé, mais ça m„étonnerait qu“il t„ouvre, à moins que tu ne sois extrêmement persuasif."{#dhall_s13_}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#dhall_s13_r876}':
            # a46 # r876
            jump dhall_s9

        '"Eh bien, au revoir, Dhall."{#dhall_s13_r877}':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Oui, *encore.* On t„a amené ici bien des fois déjà, le Sans Repos. J“espérais que cette fois-ci serait la dernière, vu les blessures que tu as reçues." Il soupire. "Quand vas-tu enfin abandonner tes passions et quitter cette ombre de vie ?"{#dhall_s14_}'

    menu:
        '"*Le Sans Repos* ?"{#dhall_s14_r880}':
            # a48 # r880
            jump dhall_s38

        '"Mes blessures ?"{#dhall_s14_r881}':
            # a49 # r881
            jump dhall_s34

        '"L„ombre de la vie ?"{#dhall_s14_r883}':
            # a50 # r883
            jump dhall_s33

        '"Dis-m„en plus sur la Morgue."{#dhall_s14_r879}':
            # a51 # r879
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s14_r5751}':
            # a52 # r5751
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s14_r5752}':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall grogne de mépris, comme s„il trouvait ce souvenir répugnant. "Ton chariot moisi t“a conduit jusqu„à la Morgue, le Sans Repos. On aurait dit que tu étais un roi soutenu par ses sujets, empestant et suppurant, sur le chariot qui t“a mené ici."{#dhall_s15_}'

    menu:
        '"J„ai atterri ici en chariot ?"{#dhall_s15_r886}':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Dis-m„en plus sur la Morgue."{#dhall_s15_r887}':
            # a55 # r887
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s15_r888}':
            # a56 # r888
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s15_r889}':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Oui… ton cadavre était au milieu d„un tas, et échangeait ses fluides avec les autres corps amoncelés." Dhall est repris d“une violente quinte de toux. Enfin, il reprend son souffle. "Ton „Sénéchal“, Pharod, était comme toujours heureux d„accepter quelques malheureuses pièces pour porter ce tas devant l“entrée de la Morgue."{#dhall_s16_}'

    menu:
        '"C„est qui ce Pharod ?"{#dhall_s16_r891}' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"On dirait que tu n„apprécies guère Pharod."{#dhall_s16_r892}' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Dis-m„en plus sur la Morgue."{#dhall_s16_r893}':
            # a60 # r893
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s16_r894}':
            # a61 # r894
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s16_r5753}':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"C„est un… Récupérateur. Il ramasse les morts." Dhall anhèle, puis continue. "Dans cette cité, des personnes ramassent les corps de ceux qui ont pris le chemin de la Vraie Mort et nous les ramènent afin qu“ils soient enterrés comme il se doit."{#dhall_s17_}'

    menu:
        '"Où est-ce que je peux trouver ce „Pharod“ ?"{#dhall_s17_r897}':
            # a63 # r897
            jump dhall_s18

        '"On dirait que tu n„apprécies guère Pharod."{#dhall_s17_r898}' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Dis-m„en plus sur la Morgue."{#dhall_s17_r899}':
            # a65 # r899
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s17_r5754}':
            # a66 # r5754
            jump dhall_s9

        '"Alors, je vais chercher ce Pharod. Au revoir, Dhall."{#dhall_s17_r6031}':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"Si rien ne change, le Sans Repos, il y a plus de chance que Pharod te trouve et te ramène à nous avant que tu ne découvres dans quelle mare boueuse il se vautre à cet instant."{#dhall_s18_}'

    menu:
        '"Pourtant, je dois le trouver."{#dhall_s18_r902}':
            # a68 # r902
            jump dhall_s19

        '"Dis-m„en plus sur la Morgue."{#dhall_s18_r903}':
            # a69 # r903
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s18_r904}':
            # a70 # r904
            jump dhall_s9

        '"J„ai le pressentiment que nos chemins vont se croiser. Au revoir, Dhall."{#dhall_s18_r5755}':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr '"Ne cherche pas Pharod, le Sans Repos," te prévient Dhall. "Je suis sûr que tout recommencera encore ; toi, tu n„en seras pas plus avancé, et Pharod sera riche de quelques pièces de cuivre de plus. Accepte la mort, le Sans Repos. Ne perpétue pas ton cercle de douleur."{#dhall_s19_}'

    menu:
        '"Je *dois* le trouver. Tu sais où il est ?"{#dhall_s19_r906}':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Dis-m„en plus sur la Morgue."{#dhall_s19_r905}':
            # a73 # r905
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s19_r907}':
            # a74 # r907
            jump dhall_s9

        '"Je ne peux plus parler avec toi. Au revoir, Dhall."{#dhall_s19_r5756}':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall reste silencieux. Puis, il reprend la parole, semble-t-il à contrecœur. "Je ne sais pas dans quel coupe-gorge Pharod a établi son repère, mais j„imagine qu“on peut le trouver quelque part, passé l„entrée de la Morgue, dans la Ruche. Là-bas, quelqu“un sera peut-être en mesure de te dire où il se trouve."{#dhall_s20_}'

    menu:
        '"On dirait que tu n„apprécies guère Pharod."{#dhall_s20_r910}' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Tu peux m„en dire plus sur la Morgue ?"{#dhall_s20_r909}':
            # a77 # r909
            jump dhall_s32

        '"Merci. J„ai d“autres questions…"{#dhall_s20_r5757}':
            # a78 # r5757
            jump dhall_s9

        '"Alors, je vais aller me renseigner là-bas. Au revoir."{#dhall_s20_r6030}':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"Je te connais peu, le Sans Repos. Je ne connais pas beaucoup plus ceux qui ont voyagé avec toi et qui reposent aujourd„hui sous notre garde." Dhall soupire. "Je te prie de ne plus demander aux autres de se joindre à toi, le Sans Repos - partout où tu vas, la souffrance t“accompagne. Garde ton fardeau pour toi."{#dhall_s21_}'

    menu:
        '"D„autres ont voyagé avec moi ? Et ils sont ici ?"{#dhall_s21_r921}':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"J„ai d“autres questions…"{#dhall_s21_r922}':
            # a81 # r922
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s21_r923}':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall soupire. "Il est dit qu„il existe des âmes qui n“atteignent jamais la Vraie Mort. La mort les a abandonnées et leur nom ne sera jamais inscrit dans le livre des morts. Le fait que tu te sois réveillé comme tu l„as fait après ton décès… laisse à penser que tu es l“une de ces âmes. Ton existence est inacceptable pour notre faction."{#dhall_s22_}'

    menu:
        '"„Inacceptable“ ? Ça ne me laisse pas dans une position avantageuse, on dirait."{#dhall_s22_r917}':
            # a83 # r917
            jump dhall_s8

        '"Je vois. Dis-m„en plus sur la Morgue."{#dhall_s22_r918}':
            # a84 # r918
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s22_r919}':
            # a85 # r919
            jump dhall_s9

        '"Je crois que j„en ai assez entendu. Au revoir, Dhall."{#dhall_s22_r920}':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Parce que t„imposer nos croyances serait injuste. Tu dois abandonner l“ombre de cette vie de ton propre chef, non parce que l„on t“y aura forcé." Dhall semble être repris d„une quinte de toux mais, non sans difficulté, il parvient à la réprimer. "Tant que je serai à mon poste, je protégerai ton droit de chercher ta vérité."{#dhall_s23_}'

    menu:
        '"C„est quoi ta fonction ?"{#dhall_s23_r927}':
            # a87 # r927
            jump dhall_s25

        '"Dis-m„en plus sur la Morgue."{#dhall_s23_r928}':
            # a88 # r928
            jump dhall_s32

        '"Très bien. J„ai d“autres questions…"{#dhall_s23_r925}':
            # a89 # r925
            jump dhall_s9

        '"J„en ai assez entendu. Au revoir, Dhall."{#dhall_s23_r6039}':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"Je suis celui qui classe les dépouilles qui arrivent dans nos salles, le Sans Repos." Dhall est pris d„une quinte de toux, puis se calme. "Je suis le seul à voir les visages de ceux qui reposent sur nos dalles. Les noirs secrets de ton existence sont en bonnes mains avec moi."{#dhall_s24_}'

    menu:
        '"Dis-m„en plus sur la Morgue."{#dhall_s24_r1305}':
            # a91 # r1305
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s24_r6041}':
            # a92 # r6041
            jump dhall_s9

        '"Je crois que j„ai une dette envers toi. Au revoir, Dhall."{#dhall_s24_r6042}':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"Je suis scribe, je répertorie toutes les dépouilles qui arrivent à la Morgue." Dhall tousse de nouveau, puis inspire profondément. "Tant que le flot de cadavres passera par la Morgue, je resterai à mon poste."{#dhall_s25_}'

    menu:
        '"Tu dis que ce n„est pas la première fois que je me retrouve ici. Alors pourquoi les Hommes-Poussière ne me reconnaissent-ils pas ?"{#dhall_s25_r931}' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Dis-m„en plus sur la Morgue."{#dhall_s25_r932}':
            # a95 # r932
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s25_r933}':
            # a96 # r933
            jump dhall_s9

        '"Très bien. Au revoir, Dhall."{#dhall_s25_r6040}':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"Je me rapproche de la Vraie Mort, le Sans Repos. Bientôt, je traverserai la Frontière Éternelle et je trouverai la paix que j„ai toujours recherchée. Je suis fatigué de cette sphère mortelle…" Dhall lâche un râle. "Les plans n“ont plus aucun secret pour quelqu„un comme moi."{#dhall_s26_}'

    menu:
        '"La Frontière Éternelle ?"{#dhall_s26_r935}':
            # a98 # r935
            jump dhall_s41

        '"Vraiment ? Je devrais pouvoir trouver un moyen de t„aider."{#dhall_s26_r936}':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"J„ai d“autres questions…"{#dhall_s26_r937}':
            # a100 # r937
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s26_r960}':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"Je ne désire ni vivre éternellement, ni ressusciter, le Sans Repos. Je ne le supporterai pas."{#dhall_s27_}'

    menu:
        '"Très bien. J„ai d“autres questions…"{#dhall_s27_r1303}':
            # a102 # r1303
            jump dhall_s9

        '"Soit ! Au revoir, Dhall."{#dhall_s27_r1304}':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"Elle t„a *parlé* ?" Dhall murmure : "La *fièvre* se serait-elle emparée de toi, le Sans Repos ? Elle a rejoint la Vraie Mort et se trouve hors de ta portée."{#dhall_s28_}'

    menu:
        '"Elle m„a parlé, Dhall. Son esprit vit ici."{#dhall_s28_r981}':
            # a104 # r981
            jump dhall_s30

        '"Je l„ai peut-être imaginé, alors. J“ai d„autres questions…"{#dhall_s28_r982}':
            # a105 # r982
            jump dhall_s9

        '"Je ne suis pas certain qu„elle ait atteint la Vraie Mort. Au revoir, Dhall."{#dhall_s28_r873}':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Dhall s„arrête et réfléchit. "Très probablement. Te manque-t-il quelque chose… quelque chose de valeur ?" Sa voix tombe et il fronce les sourcils. "Pharod ne ferait aucune exception à moins que la chose ne soit greffée directement sur ton corps. Et parfois, cela ne suffit pas à calmer son esprit vorace."{#dhall_s29_}'

    menu:
        '"J„ai perdu un journal."{#dhall_s29_r942}' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Tu sais où je peux trouver Pharod ?"{#dhall_s29_r943}' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"J„ai d“autres questions…"{#dhall_s29_r944}':
            # a109 # r944
            jump dhall_s9

        '"Je devrais peut-être parler à Pharod. Au revoir, Dhall."{#dhall_s29_r6026}' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"Je vois. Au revoir, Dhall."{#dhall_s29_r874}' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall dessine un demi-cercle imaginaire en l„air. "C“est un mauvais présage, le Sans Repos. Je prie pour que tu aies imaginé cette conversation… mais j„ai bien peur que ce ne soit pas le cas."{#dhall_s30_}'

    menu:
        '"Je l„ai peut-être imaginé. J“ai d„autres questions."{#dhall_s30_r946}':
            # a112 # r946
            jump dhall_s9

        '"On en reparlera peut-être plus tard. Au revoir, Dhall."{#dhall_s30_r947}':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"Un journal ? S„il a de la valeur, il doit se trouver entre les mains de Pharod."{#dhall_s31_}'

    menu:
        '"Où est-ce que je peux trouver ce Pharod ?"{#dhall_s31_r948}' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"Je vois. J„ai d“autres questions…"{#dhall_s31_r949}':
            # a115 # r949
            jump dhall_s9

        '"Alors, je vais me mettre à sa recherche. Au revoir, Dhall."{#dhall_s31_r6027}' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"Je vois. Au revoir, Dhall."{#dhall_s31_r6066}' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"C„est ici que l“on apporte les morts qui doivent être enterrés ou incinérés. Il est de notre devoir, en tant qu„Hommes-Poussière, de nous occuper des morts, ceux qui ont quitté cette ombre de vie et pris le chemin de la Vraie Mort." Dhall baisse le ton ; il se fait du souci pour toi. "Tes blessures t“ont fait payer un lourd tribut si tu ne reconnais pas ce lieu. C„est presque chez toi."{#dhall_s32_}'

    menu:
        '"L„ombre de la vie ?"{#dhall_s32_r951}':
            # a118 # r951
            jump dhall_s33

        '"La Vraie Mort ?"{#dhall_s32_r953}':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Des Hommes-Poussière ?"{#dhall_s32_r954}':
            # a120 # r954
            jump dhall_s47

        '"Sigil ?"{#dhall_s32_r955}':
            # a121 # r955
            jump dhall_s37

        '"Mes blessures ?"{#dhall_s32_r956}':
            # a122 # r956
            jump dhall_s34

        '"Comment ai-je atterri ici ?"{#dhall_s32_r846}':
            # a123 # r846
            jump dhall_s15

        '"J„ai d“autres questions…"{#dhall_s32_r5735}':
            # a124 # r5735
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s32_r6062}':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Oui, une ombre. Tu comprends, le Sans Repos, cette vie… elle n„est pas réelle. Ton existence ou la mienne ne sont que des ombres vacillantes de ce qu“était autrefois la vie. Cette „vie“, c„est là que nous finissons *après* la mort. Et c“est là que nous restons… piégés. En cage. Jusqu„à ce que nous puissions parvenir à la Vraie Mort."{#dhall_s33_}'

    menu:
        '"La Vraie Mort ?"{#dhall_s33_r958}':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"Qu„est-ce qui te fait croire que cette vie n“est pas réelle ?"{#dhall_s33_r959}':
            # a127 # r959
            jump dhall_s50

        '"Dis-m„en plus sur la Morgue."{#dhall_s33_r5736}':
            # a128 # r5736
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s33_r5737}':
            # a129 # r5737
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s33_r5738}':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Oui, les blessures qui ornent ton corps… il semble qu„elles auraient envoyé un simple mortel sur le chemin de la Vraie Mort. Mais on dirait que beaucoup d“entre elles ont déjà cicatrisé." Dhall tousse violemment, puis se calme. "Mais ce ne sont que des blessures visibles."{#dhall_s34_}'

    menu:
        '"Des blessures visibles ? Qu„est-ce que tu veux dire ?"{#dhall_s34_r1301}':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Dis-m„en plus sur la Morgue."{#dhall_s34_r1302}':
            # a132 # r1302
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s34_r5746}':
            # a133 # r5746
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s34_r5747}':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"Il y en a certains que je respecte, le Sans Repos." Dhall anhèle puis se calme. "Pharod n„en fait pas partie. Il porte sa mauvaise réputation comme une médaille d“honneur et prend certaines libertés avec les biens des morts. C„est un chevalier de la gueuserie qui commerce des ordures de la pire sorte."{#dhall_s35_}'

    menu:
        '"Un „chevalier de la gueuserie“ ?"{#dhall_s35_r963}':
            # a135 # r963
            jump dhall_s36

        '"Tu sais où je peux trouver Pharod ?"{#dhall_s35_r964}' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"Je vois. J„ai d“autres questions…"{#dhall_s35_r965}':
            # a137 # r965
            jump dhall_s9

        '"Encourageant. Au revoir, Dhall."{#dhall_s35_r6028}':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"Un chevalier de la gueuserie…" Dhall tousse. "… un escroc. Tous ceux que Pharod apporte dans ces murs sont dépouillés du peu de dignité qui leur restait. Pharod s„empare de tout ce qu“il peut arracher à leurs doigts crispés."{#dhall_s36_}'

    menu:
        '"Ce Pharod m„a pris quelque chose ?"{#dhall_s36_r967}':
            # a139 # r967
            jump dhall_s29

        '"Tu sais où je peux trouver Pharod ?"{#dhall_s36_r968}' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"Je vois. J„ai d“autres questions…"{#dhall_s36_r969}':
            # a141 # r969
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s36_r6029}':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil est notre bonne cité, le Sans Repos."{#dhall_s37_}'

    menu:
        '"Dis-m„en plus sur la Morgue."{#dhall_s37_r971}':
            # a143 # r971
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s37_r972}':
            # a144 # r972
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s37_r5758}':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Sans Repos est un nom aussi convenable qu„un autre." Dhall anhèle. "Quelque chose te retient ici, n“est-ce pas ? Quelque chose que tu dois accomplir, une passion que tu dois assouvir avant de rejoindre la Vraie Mort ?"{#dhall_s38_}'

    menu:
        '"La Vraie Mort ?"{#dhall_s38_r974}':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Dis-m„en plus sur la Morgue."{#dhall_s38_r975}':
            # a147 # r975
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s38_r5749}':
            # a148 # r5749
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s38_r5750}':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"Tu feras ce que tu as toujours fait, le Sans Repos. Tu chercheras cet idiot de Poil-d„asticot et lui demanderas de te restituer tes biens. Puis, tu reprendras ta quête inutile, tu tenteras d“accomplir des tâches inutiles, tu rassembleras des objets inutiles, et tu seras terrassé et tu nous reviendras. Gagne du temps et parle-moi. Cela nous évitera de reprendre cette conversation quand tu auras à nouveau perdu la mémoire."{#dhall_s39_}'

    menu:
        '"J„ai d“autres questions…"{#dhall_s39_r976}':
            # a150 # r976
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s39_r977}':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall lève les yeux à ton approche. "Alors, tu es revenu…" Dhall anhèle, puis est pris d„une violente quinte de toux. Après quelques instants, sa toux se calme et Dhall reprend son souffle saccadé. "Sois le bienvenu, une nouvelle fois, le Sans Repos."{#dhall_s40_}'

    menu:
        '"J„ai d“autres questions pour toi, Dhall."{#dhall_s40_r979}':
            # a152 # r979
            jump dhall_s9

        '"Peu importe. Au revoir."{#dhall_s40_r980}':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"La frontière entre l„ombre de cette vie et la Vraie Mort."{#dhall_s41_}'

    menu:
        '"L„ombre de cette vie ?"{#dhall_s41_r984}':
            # a154 # r984
            jump dhall_s33

        '"La Vraie Mort ?"{#dhall_s41_r985}':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Dis-m„en plus sur la Morgue."{#dhall_s41_r5739}':
            # a156 # r5739
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s41_r5740}':
            # a157 # r5740
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s41_r5741}':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"Dans la Salle de Commémoration du nord-ouest à l„étage en dessous. Vérifie les cercueils… son nom doit figurer sur l“une des plaques commémoratives. Peut-être que ça te rafraîchira la mémoire."{#dhall_s42_}'

    menu:
        '"Je ne sais pas. Je ne me souviens pas avoir jamais voyagé avec une femme."{#dhall_s42_r5076}' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"Eh bien, elle prétend me connaître, mais je ne me souviens pas d„elle."{#dhall_s42_r5077}' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"Tu as dit qu„il y en avait d“autres. Qui d„autre est là ?"{#dhall_s42_r5078}' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"Tu as dit qu„il y en avait d“autres. Qui d„autre est là ?"{#dhall_s42_r5079}' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"J„irai peut-être à sa recherche. J“ai d„autres questions à te poser avant de partir…"{#dhall_s42_r6067}':
            # a163 # r6067
            jump dhall_s9

        '"Je vais descendre dans la Salle de Commémoration pour voir si je trouve son corps."{#dhall_s42_r6068}':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall ne répond pas. Il se contente de t„observer en silence.{#dhall_s43_}'

    menu:
        '"Où est-ce que je peux la trouver ?"{#dhall_s43_r5081}' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Tu as dit tout à l„heure qu“il y en avait d„autres enterrés ici qui avaient voyagé avec moi. Où sont-ils ?"{#dhall_s43_r5082}' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Tu as dit tout à l„heure qu“il y en avait d„autres enterrés ici qui avaient voyagé avec moi. Où sont-ils ?"{#dhall_s43_r5083}' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"J„ai d“autres questions à te poser…"{#dhall_s43_r6069}':
            # a168 # r6069
            jump dhall_s9

        '"Alors, au revoir."{#dhall_s43_r6070}':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Si je te connais ? Je…" Il y a de l„amertume dans la voix du scribe. "Je ne te connais *pas*, le Sans Repos. Pas plus que tu ne te connais toi-même." Il reste un moment sans rien dire. "Car tu l“as oublié, n„est-ce pas ?"{#dhall_s44_}'

    menu:
        '"*Qui* es-tu ?"{#dhall_s44_r1327}':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"Comme toujours, la question. Et la mauvaise question, comme toujours." Dhall s„incline légèrement, mais ce mouvement lui donne soudain une quinte de toux. "Je…" Il s“arrête un instant pour reprendre son souffle. "Je… m„appelle Dhall."{#dhall_s45_}'

    menu:
        '"Tu peux peut-être répondre à quelques questions pour moi, Dhall…"{#dhall_s45_r5731}':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"Je n„ai pas le temps. Au revoir."{#dhall_s45_r5732}':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"D„accord, le Sans Repos." acquiesce Dhall. "Mais j“ai peur que le temps ne soit pas ton ennemi dans cette affaire." Il reprend sa plume. "Quand tu voudras parler, je serai là."{#dhall_s46_}'

    menu:
        '"Je reviendrai peut-être. Au revoir."{#dhall_s46_r40005}':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"Nous autres Hommes-Poussière sommes une faction, un rassemblement de ceux d„entre nous qui reconnaissons l“illusion de cette vie. Nous attendons la vie ultérieure et assistons les autres dans leur voyage."{#dhall_s47_}'

    menu:
        '"Tu peux peut-être m„expliquer pourquoi les Hommes-Poussière veulent ma mort."{#dhall_s47_r6032}' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"La Vraie Mort ?"{#dhall_s47_r6033}':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"L„ombre de cette vie ?"{#dhall_s47_r6034}':
            # a176 # r6034
            jump dhall_s33

        '"Dis-m„en plus sur la Morgue."{#dhall_s47_r6035}':
            # a177 # r6035
            jump dhall_s32

        '"J„ai d“autres questions à te poser…"{#dhall_s47_r6036}':
            # a178 # r6036
            jump dhall_s9

        '"Alors, au revoir."{#dhall_s47_r6037}':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"La Vraie Mort est une non-existence. Un état dépourvu de raison, de sensations, de passion." Dhall tousse, puis respire de façon saccadée. "Un état de pureté."{#dhall_s48_}'

    menu:
        '"Ça ressemble à l„état d“oubli. Comment peut-on vouloir ça ?"{#dhall_s48_r6043}':
            # a180 # r6043
            jump dhall_s49

        '"Oh. Peux-tu m„en dire plus sur la Morgue ?"{#dhall_s48_r6044}':
            # a181 # r6044
            jump dhall_s32

        '"Je… je vois. J„ai d“autres questions."{#dhall_s48_r6045}':
            # a182 # r6045
            jump dhall_s9

        '"Je dois partir. Au revoir, Dhall."{#dhall_s48_r6046}':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Est-ce que c„est pire que de rester dans cette ombre de vie ? Je ne pense pas."{#dhall_s49_}'

    menu:
        '"L„ombre de la vie ?"{#dhall_s49_r6047}':
            # a184 # r6047
            jump dhall_s33

        '"Dis-m„en plus sur la Morgue."{#dhall_s49_r6048}':
            # a185 # r6048
            jump dhall_s32

        '"Je… je vois. J„ai d“autres questions."{#dhall_s49_r6049}':
            # a186 # r6049
            jump dhall_s9

        '"Je dois partir. Au revoir, Dhall."{#dhall_s49_r6050}':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"Qu„est-ce qui te fait croire que cette vie *est* vraie ? Regarde en toi. Tu ne sens pas qu“il manque quelque chose ?" Dhall secoue la tête. "Ici, c„est un purgatoire. On n“y trouve que le chagrin, la douleur, les tourments… ce ne sont pas les éléments qui constituent la „vie“. Ils font partie de la cage qui nous retient prisonniers de cette ombre."{#dhall_s50_}'

    menu:
        '"Je crois que ton fatalisme a eu raison de toi. Ces choses font partie de la vie, mais pas de toute la vie."{#dhall_s50_r6051}':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Qui nous retient prisonniers ? Comment ?"{#dhall_s50_r6052}':
            # a189 # r6052
            jump dhall_s51

        '"J„en ai assez de ta philosophie. Qu“est-ce que ça vient faire avec le fait que je me suis réveillé ici ?"{#dhall_s50_r6053}':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall secoue la tête. "Les passions sont un véritable fardeau. Nombreux sont ceux qui leur doivent de se retrouver enterrés dans cette ombre de vie. Tant qu„on se cramponne à ses émotions, on renaît continuellement dans cette “vie„, souffrant éternellement, sans jamais connaître la pureté de la Vraie Mort."{#dhall_s51_}'

    menu:
        '"Je… je vois. Comment échappe-t-on au cycle de la renaissance pour atteindre cette… Vraie Mort ?"{#dhall_s51_r6054}':
            # a191 # r6054
            jump dhall_s52

        '"Dis-m„en plus sur la Morgue."{#dhall_s51_r6055}':
            # a192 # r6055
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s51_r6056}':
            # a193 # r6056
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s51_r6057}':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Débarrasse-toi de tes passions et de ton besoin de sensations. Lorsque tu seras complètement nettoyé, le cycle de la renaissance prendra alors fin, et la paix pourra enfin s„installer." Dhall émet un soupir… tel un râle d“agonie dans sa gorge. "Au-delà de la carapace qui nous enferme, de la Frontière Éternelle, gît la paix que toute âme recherche."{#dhall_s52_}'

    menu:
        '"La Frontière Éternelle ?"{#dhall_s52_r6058}':
            # a195 # r6058
            jump dhall_s41

        '"Dis-m„en plus sur la Morgue."{#dhall_s52_r6059}':
            # a196 # r6059
            jump dhall_s32

        '"J„ai d“autres questions…"{#dhall_s52_r6060}':
            # a197 # r6060
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s52_r6061}':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"Je parle des blessures de l„esprit. Tu as oublié bien des choses, n“est-ce pas ? Peut-être que tes véritables blessures sont bien plus profondes que les cicatrices que tu portes à la surface…" Dhall tousse de nouveau. "… mais c„est quelque chose que tu es le seul à savoir."{#dhall_s53_}'

    menu:
        '"Dis-m„en plus sur la Morgue."{#dhall_s53_r5743}':
            # a199 # r5743
            jump dhall_s32

        '"Je vois. J„ai d“autres questions…"{#dhall_s53_r5744}':
            # a200 # r5744
            jump dhall_s9

        '"Au revoir, Dhall."{#dhall_s53_r5745}':
            # a201 # r5745
            jump dhall_s11
