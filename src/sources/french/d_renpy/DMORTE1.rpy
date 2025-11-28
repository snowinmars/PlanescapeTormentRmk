init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"Hé, chef, ça va ? Tu fais l„mort ou t“essaies d„bluffer les Hommes-Poussière ? J“ai vraiment cru qu„t“étais clamsé."~ [MRT001]{#morte1_s0_1}'

    menu:
        '"Qu… ? Qui es-tu ?"{#morte1_s0_r39793}':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"Euh… qui *je* suis ? Et pourquoi *tu* ne commencerais pas ? Qui tu es, toi ?"{#morte1_s1_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte1_s1_r39796}':
            # a1 # r39796
            jump morte1_s2

        '"C„est à *toi* que j“ai demandé en premier, crâne."{#morte1_s1_r39797}':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"Tu ne te souviens pas de ton *nom* ? Hé ben ! La PROCHAINE fois que tu passes la nuit dans ce bled, vas-y doucement sur la bibe. J„m“appelle Morte. Moi aussi, j„suis piégé ici."{#morte1_s2_1}'

    menu:
        '"Piégé ?"{#morte1_s2_r39799}':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"Ouais, et je t„ai demandé en *deuxième*. Comment tu t“appelles ?"{#morte1_s3_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte1_s3_r39801}':
            # a4 # r39801
            jump morte1_s2

        '"Toi d„abord, crâne. C“est la dernière fois que je te le demande."{#morte1_s3_r39802}':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"Pffff… c„que t“es têtu. Très bien, c„est *moi* qui vais jouer les gentils. Je m“appelle Morte. Et toi ?"{#morte1_s4_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte1_s4_r39804}':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"Ouais, comme t„as pas encore eu le temps de te remettre d“aplomb, voilà la chanson : j„ai essayé toutes les portes et cette salle est fermée à clé plus sûrement qu“une ceinture de chasteté."{#morte1_s5_1}'

    menu:
        '"On est enfermés… où ? Quel est cet endroit ?"{#morte1_s5_r39806}':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."{#morte1_s6_1}'

    menu:
        '"„La Morgue“ ? Qu„est-ce… suis-je mort ?"{#morte1_s6_r39808}':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"Pas de mon point de vue. Tu as plein de cicatrices… on dirait qu„un bige t“a peint avec un couteau. Raison de plus pour jouer un air à cet endroit avant que celui qui a commencé la gravure revienne finir son boulot."{#morte1_s7_1}'

    menu:
        '"Des cicatrices ? Profondes comment ?"{#morte1_s7_r39810}':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"Ben… les trucs gravés sur ta poitrine ne sont pas TROP moches… mais ceux que tu as dans le dos…" Morte s„interrompt. "En gros, on dirait que tu as une galerie entière de tatouages sur le dos, chef. Comme si ça voulait dire quelque chose…"{#morte1_s8_1}'

    menu:
        '"Des tatouages dans le dos ? Qu„est-ce qu“ils disent ?"{#morte1_s8_r39812}':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"Hé ! C„est comme si t“avais été livré avec le mode d„emploi…" Morte s“éclaircit la voix. "Voyons… ça commence par…  „Je sais que tu as l“impression d„avoir bu plusieurs barils d“eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s„il n“est pas déjà inscrit dans le livre des morts.„{#morte1_s9_1}'

    menu:
        '"Pharod ? Ça dit autre chose ?"{#morte1_s9_r39814}':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"Ouais, c„est pas fini…" Morte s“interrompt. "Voyons… ça continue…"  "Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t„arrive, ou on t“enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod."{#morte1_s10_1}'

    menu:
        '"Je comprends maintenant pourquoi j„ai mal au dos ; il y a un bon sang d“roman écrit dessus. Et ce journal que je suis supposé avoir sur moi… est-ce que j„en avais un quand tu m“as vu allongé là ?"{#morte1_s10_r39816}':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"Non… t„étais nu comme un ver quand t“es arrivé ici. De toute façon, t„as déjà un journal écrit sur le corps."{#morte1_s11_1}'

    menu:
        '"Et Pharod ? Tu le connais ?"{#morte1_s11_r39818}':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"Ça m„dit rien… mais ceci dit, j“connais pas grand monde. Enfin, y a bien un bige qui doit savoir où trouver Pharod… euh, une fois qu„on sera sorti d“ici, j„veux dire."{#morte1_s12_1}'

    menu:
        '"Et comment on va *faire* pour sortir d„ici ?"{#morte1_s12_r39820}':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"Bon, toutes les portes sont fermées, nous avons donc besoin de la clé. Il y a des chances qu„un des cadavres errants ici l“ait."{#morte1_s13_1}'

    menu:
        '"Des cadavres errants ?"{#morte1_s13_r39822}':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"Ouais, les gardiens de la Morgue utilisent les corps morts comme main-d„œuvre bon marché. Les cadavres sont aussi muets que des pierres, ils sont inoffensifs et n“attaqueront que si tu les provoques."{#morte1_s14_1}'

    menu:
        '"Y a-t-il un autre moyen ? Je ne veux pas les tuer juste pour une clé."{#morte1_s14_r39824}':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"Je devrais donc attaquer un de ces cadavres et lui faucher la clé ?"{#morte1_s14_r39825}':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"Quoi, tu penses que ça va les vexer ? Ils sont MORTS. Mais le point positif, c„est que si tu les tues, ils pourront au moins se reposer avant que leurs gardiens les ressuscitent pour les remettre au travail."{#morte1_s15_1}'

    menu:
        '"Bon, d„accord… J“en descendrai un et je prendrai la clé."{#morte1_s15_r39827}':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"Bon, avant de faire ça, arme-toi. Je crois avoir vu un scalpel sur une des étagères par ici."  ^NREMARQUE : Fouille les étagères dans la pièce et trouve une arme pour attaquer les zombis. <SEARCH_WEAPON>^-{#morte1_s16_1}'

    menu:
        '"D„accord, j“en chercherai un."{#morte1_s16_r39829}':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"Une dernière chose : ces cadavres sont aussi lents que de la mélasse, mais un seul coup de poing et tu comprendras ta douleur. S„ils commencent à prendre l“avantage, souviens-toi que tu peux COURIR et qu„eux ne peuvent pas. Utilise cet avantage pour maintenir les distances si t“as besoin de reprendre ton souffle".  ^NREMARQUE : <RUNAWAY> Si tu es en danger de mort, mets de la distance entre toi et les zombis en courant, le temps de récupérer.^-{#morte1_s17_1}'

    menu:
        '"D„accord. Merci du conseil."{#morte1_s17_r39831}':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Il devrait y avoir un scalpel sur l„une de ces étagères. Je le trouverais avant d“en découdre avec un de ces cadavres."  ^NREMARQUE : Fouille les étagères dans la pièce et trouve une arme pour attaquer les zombis. <SEARCH_WEAPON>^-{#morte1_s18_1}'

    menu:
        '"Très bien… Je vais continuer à chercher."{#morte1_s18_r39833}':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Bien, tu as trouvé le scalpel ! Bon, va chercher ces cadavres… et ne t„en fais pas, je resterai derrière et te fournirai de précieux conseils tactiques."{#morte1_s19_1}'

    menu:
        '"Tu pourrais peut-être *m„aider*, Morte."{#morte1_s19_r39835}':
            # a22 # r39835
            jump morte1_s20

        '"D„accord."{#morte1_s19_r39836}':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"Je t„aiderai. Les bons conseils ne sont pas si évidents."{#morte1_s20_1}'

    menu:
        '"Je voulais dire m„aider à attaquer le *cadavre*."{#morte1_s20_r39838}':
            # a24 # r39838
            jump morte1_s21

        '"Bon, d„accord."{#morte1_s20_r39839}':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"Moi ? Mais je suis un romantique, pas un soldat. Je te gênerai."{#morte1_s21_1}'

    menu:
        '"Quand je vais attaquer ce cadavre, tu as intérêt à être là, sinon c„est toi qui vas recevoir le coup de scalpel suivant."{#morte1_s21_r39841}':
            # a26 # r39841
            jump morte1_s22

        '"Bon, d„accord."{#morte1_s21_r39842}':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"Bon… d„accord. Je vais t“aider."  ^NREMARQUE : si tu veux que Morte t„aide à attaquer, il te suffit de vérifier que vous êtes tous deux sélectionnés lorsque vous attaquez le cadavre. Morte se joindra à l“attaque.^-{#morte1_s22_1}'

    menu:
        '"Je suis content qu„on se comprenne."{#morte1_s22_r39844}':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"Le moment est venu de renvoyer ces cadavres dans l„au-delà…"  ^NREMARQUE : <ATTACKNOTE>^-{#morte1_s23_1}'

    menu:
        '"Allons-y."{#morte1_s23_r39846}':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"D„accord, on dirait que tu t“es occupé du bon cadavre. Maintenant il faut que tu trouves la clé. Elle aurait dû être sur lui. Une fois qu„on l“aura, on pourra sortir d„ici."  ^NREMARQUE : <DEADPILE>^-{#morte1_s24_1}'

    menu:
        '"D„accord."{#morte1_s24_r39848}':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"Parfait, voilà la clé. Elle doit rentrer dans le verrou de l„une des portes de la salle."{#morte1_s25_1}'

    menu:
        '"Bon, je vais essayer toutes les portes."{#morte1_s25_r39850}':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"Je savais que tu reviendrais, chef ! T„as finalement réalisé que t“avais besoin de moi, hein ?"~ [MRT516]{#morte1_s26_1}'

    menu:
        '"Ouais… on y va."{#morte1_s26_r39852}':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"Pas pour le moment, Morte."{#morte1_s26_r39853}':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIÈRE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"{#morte1_s27_1}'

    menu:
        '"Morte, tu n„as RIEN de tout ça."{#morte1_s27_r39855}':
            # a34 # r39855
            jump morte1_s28

        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte1_s27_r39856}':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"Pas pour le moment, Morte. Peut-être plus tard."{#morte1_s27_r39857}':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"Est-ce que tu essaies de me vexer, chef ? Qu„est-ce qu“il y a, c„est quelque chose que j“ai dit ? Le fait que je n„aie pas de bras ? Quoi ?"{#morte1_s28_1}'

    menu:
        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte1_s28_r39859}':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"Non, ce n„est pas ça. C“est juste que je n„ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."{#morte1_s28_r39860}':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d„avis."{#morte1_s29_1}'

    menu:
        '"Je le ferai. Au revoir, Morte."{#morte1_s29_r39862}':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"Qu„est-ce qui te dérange, chef ?"~ [MRT515]{#morte1_s30_1}'

    menu:
        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."{#morte1_s30_r39864}':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"Euh, chef… Ils ne peuvent pas t„entendre, d“accord ? Ils sont morts."{#morte1_s31_1}'

    menu:
        '"Mais toi aussi tu es mort. Et ça ne t„empêche pas de me parler."{#morte1_s31_r42299}':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"Ouais, mais *je suis* spécial. Ce n„est pas la mort qui pourrait m“ôter mon goût de vivre. Ces cadavres, là…" Morte roule les yeux. "Ils ne devaient déjà pas avoir beaucoup de personnalité à l„origine."{#morte1_s32_1}'

    menu:
        '"Je… je vois."{#morte1_s32_r42301}':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"Écoute, chef… Te regarder essayer de parler avec ces cadavres, c„est pas très bon pour mon moral. Laissons ça aux azimutés, d“accord ?"{#morte1_s33_1}'

    menu:
        '"Bon, très bien. Allons-y."{#morte1_s33_r42303}':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"On dirait que c„est le suppliant chanceux, chef. Regarde… Il tient la clé dans sa main."{#morte1_s34_1}'

    jump zm782_s2  # EXTERN
