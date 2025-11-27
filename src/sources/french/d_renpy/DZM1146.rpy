init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    nr 'Le numéro „1146“ est gravé sur le front de ce cadavre errant ; ses lèvres ont été cousues à l„aide d“un fil noir grossier. Tout le corps est recouvert d„horribles cicatrices, pires encore que les tiennes, comme s“il avait été brûlé vif. Le nez, les oreilles et plusieurs doigts manquent, sans doute à la suite d„une très vieille conflagration. Lorsque tu lui barres le chemin pour attirer son “attention„, il s“arrête et te regarde d„un air hagard.{#zm1146_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm1146_s0_r6521}' if zm1146Logic.r6521_condition():
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm1146_s0_r6522}' if zm1146Logic.r6522_condition():
            # a1 # r6522
            jump zm1146_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm1146_s0_r6523}' if zm1146Logic.r6523_condition():
            # a2 # r6523
            jump zm1146_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1146_s0_r6524}' if zm1146Logic.r6524_condition():
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        '"C„était super de parler avec toi. Au revoir."{#zm1146_s0_r6525}':
            # a4 # r6525
            jump zm1146_dispose

        'Laisse le cadavre tranquille.{#zm1146_s0_r6526}':
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zm1146_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1146_s1_r6527}':
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    nr 'Les odeurs de soufre fumant, de cheveux brûlés et de sang roussi te prennent à la gorge tandis que l„esprit retourne dans son ancienne demeure. Le cadavre s“effondre presque immédiatement sur le sol avec un choc violent, en poussant un râle. Tu peux presque voir de fines volutes de fumée nauséabonde dégouliner de ses membres.{#zm1146_s2_}'

    menu:
        '"Est-ce que… ça va ?"{#zm1146_s2_r6528}':
            # a7 # r6528
            jump zm1146_s3

        '"J„ai des questions à te poser…"{#zm1146_s2_r9413}':
            # a8 # r9413
            jump zm1146_s9

        'Laisse l„esprit enflammé.{#zm1146_s2_r9414}':
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    nr 'L„esprit soulève une paupière ; le globe oculaire, tout blanc, se détache dans son nid de chair grise. Il lève lentement la tête pour te toiser, la chair brûlée et scarifiée de son visage s“étire sur ses os et sa gorge détruite forme quelques mots : "Non. Non, pas du tout… espèce de… pauvre… enfumé."{#zm1146_s3_}'

    menu:
        '"Je peux faire quelque chose pour toi ?"{#zm1146_s3_r9415}':
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        '"J„ai une question…"{#zm1146_s3_r9416}':
            # a11 # r9416
            jump zm1146_s9

        '"C„est aussi bien, espèce de déchet puant et fumant ; tu mérites sûrement ton sort. Au revoir."{#zm1146_s3_r9417}':
            # a12 # r9417
            jump zm1146_s6

        'Laisse l„esprit torturé.{#zm1146_s3_r9418}':
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    nr '"Hé-hé-HEURK !" Un spasme d„une rare violence secoue l“esprit, qui s„était mis à rire, et il vomit un torrent de pourriture noire et de lotion d“embaumement. Tordu de douleur, il ne s„arrête de tousser que pour cracher des glaires jaunâtres et des bouts de fil de suture.{#zm1146_s4_}'

    menu:
        'Attends patiemment la fin de la crise.{#zm1146_s4_r9419}':
            # a14 # r9419
            jump zm1146_s5

        '"J„ai une autre question…"{#zm1146_s4_r9421}':
            # a15 # r9421
            jump zm1146_s9

        'Laisse l„esprit torturé à sa souffrance.{#zm1146_s4_r9422}':
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    nr 'L„horrible quinte de toux se calme enfin. "Non, bige… tu… peux pas. À moins… à moins que tu viennes à Baator histoire de me… secourir, j“ai… plus rien à espérer. L„heure de… de l“expiation a sonné." Il ferme les yeux et sa tête retombe par terre.{#zm1146_s5_}'

    menu:
        '"Je vois. J„ai une autre question…"{#zm1146_s5_r9423}':
            # a17 # r9423
            jump zm1146_s9

        '"Très bien. Au revoir."{#zm1146_s5_r9424}':
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    nr 'Dans un ricanement glaireux, ses lèvres craquelées et noircies découvrent des dents jaunies, toutes de guingois. "Attends… attends un peu que je me… sorte de cette Fosse… tu… tu seras le premier sur ma liste, bige…"{#zm1146_s6_}'

    menu:
        '"C„est ça. Je n“ai pas peur de toi, ni de tes semblables."{#zm1146_s6_r9425}':
            # a19 # r9425
            jump zm1146_s7

        'Frappe-le.{#zm1146_s6_r9426}':
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'Ignore ce misérable, détourne-toi et pars.{#zm1146_s6_r9427}':
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    nr 'Il s„arrache un grognement guttural et crache vers toi - la glaire puante rate tes pieds de vingt bons centimètres. Épuisé, il laisse alors retomber sa tête et la vie, ou ce qui lui en tient lieu, se retire une fois de plus de son corps.{#zm1146_s7_}'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    nr 'Tu lui décoches un coup de pied dans les reins, en vain ; il n„a pas l“air de s„en porter plus mal. "Hé ! hé ! hé !" ricane l“esprit, avant de se retirer de son corps une bonne fois pour toutes. Tu en restes un peu frustré.{#zm1146_s8_}'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    nr '"Que… Qu„est-ce que tu veux *encore*, bige ?" L“esprit se tortille et se tapote pour éteindre les petits foyers qui brûlent en divers endroits de son corps.{#zm1146_s9_}'

    menu:
        '"Qui es-tu ?"{#zm1146_s9_r9428}':
            # a22 # r9428
            jump zm1146_s10

        '"D„où viens-tu ?"{#zm1146_s9_r9429}':
            # a23 # r9429
            jump zm1146_s11

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"{#zm1146_s9_r9430}':
            # a24 # r9430
            jump zm1146_s12

        '"Où es-tu… Où réside ton esprit… en ce moment ?"{#zm1146_s9_r9431}':
            # a25 # r9431
            jump zm1146_s13

        '"Qu„as-tu fait pour mériter un tel supplice ?"{#zm1146_s9_r9432}':
            # a26 # r9432
            jump zm1146_s14

        '"Que sais-tu sur cet endroit ?"{#zm1146_s9_r9433}':
            # a27 # r9433
            jump zm1146_s15

        '"Connais-tu un certain Pharod ?"{#zm1146_s9_r9434}' if zm1146Logic.r9434_condition():
            # a28 # r9434
            jump zm1146_s16

        '"Rien, peu importe."{#zm1146_s9_r9435}':
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    nr '"C„est pas tes oignons… Fous-moi… la paix…{#zm1146_s10_}'

    menu:
        '"Non. J„ai une autre question…"{#zm1146_s10_r9436}':
            # a30 # r9436
            jump zm1146_s9

        '"Alors, au revoir."{#zm1146_s10_r9437}':
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    nr '"Hein ? Par les puissances… qu„est-c“qu„on en a… à fiche ? De Sigil, pauvre… idiot."{#zm1146_s11_}'

    menu:
        '"J„ai une autre question…"{#zm1146_s11_r9438}':
            # a32 # r9438
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s11_r9439}':
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    nr '"À ton avis, béjaune ?" Il est de nouveau secoué par une violente quinte de toux. "J„ai vendu ma viande… pour un peu de jonc… à ces fichus Hommes-Poussière, et de suite après - DE SUITE APRÈS, t“imagines ? - un foutu magicien complètement azimuté décide de faire flamber la Ruche, avec moi coincé au milieu !" L„esprit part à marmonner d“un air mauvais. Un liquide fumant coule à gros bouillons des commissures de ses lèvres déchiquetées.{#zm1146_s12_}'

    menu:
        '"Un magicien a brûlé la Ruche ?"{#zm1146_s12_r9440}':
            # a34 # r9440
            jump zm1146_s18

        '"J„ai une autre question…"{#zm1146_s12_r9441}':
            # a35 # r9441
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s12_r9465}':
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    nr '"Où c„que tu crois… quoqueret de lascar ? Sur Baator, dans ce trou à rats appelé Phlegetos. Nom de nom, brûler… brûler… je fais qu“ça. J„crève en brûlant, pis j“brûle dans l„au-d“là." De rage, il grince des dents. "Vrai de vrai, l„ironie du truc, c“est à s„tordre ! Quand j“sortirai de là, j„en balancerai, des bougres, au fond de c“trou d„malheur, crois-moi. Hé ! hé ! hé ! *glup*."{#zm1146_s13_}'

    menu:
        '"Pourquoi voudrais-tu infliger ton destin aux autres ?"{#zm1146_s13_r9442}':
            # a37 # r9442
            jump zm1146_s17

        '"J„ai une autre question…"{#zm1146_s13_r9443}':
            # a38 # r9443
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s13_r9444}':
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    nr '"Mériter ? MÉRI ? Rien ! Je… j„ai rien fait. J“essayais de m„en sortir… comme tout l“monde… et puis… ffchchch !… ce fils de bouc, voilà qu„y fiche le feu à la Ruche, mage de mes deux !"{#zm1146_s14_}'

    menu:
        '"Un mage… a brûlé… la Ruche ?"{#zm1146_s14_r9445}':
            # a40 # r9445
            jump zm1146_s18

        '"Je vois. J„ai une autre question…"{#zm1146_s14_r9446}':
            # a41 # r9446
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s14_r9745}':
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    nr '"Rien. Rien du tout, j„te l“dis, bige. Laisse-moi… laisse-moi brûler en paix…"{#zm1146_s15_}'

    menu:
        '"Très bien. Alors, j„aurais une autre question…"{#zm1146_s15_r9447}':
            # a43 # r9447
            jump zm1146_s9

        '"Alors, au revoir."{#zm1146_s15_r9448}':
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    nr '"Qui ? Quoi ? Non ! Qu„est-ce qui t“fait croire que j„te l“dirais si j„le connaissais, hein… bougre de bige ? Pff…"{#zm1146_s16_}'

    menu:
        '"Très bien. J„ai une autre question…"{#zm1146_s16_r9449}':
            # a45 # r9449
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s16_r9450}':
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    nr '"La vengeance, enfumé ! J„les… j“les aurai tous, ceux qui m„ont refait. Surtout c“magicien ! J„lui arracherai ses parties intimes et j“les lui fourrerai dans la gorge ! Puis j„le jetterai dans ce fichu trou, et ses parties intimes avec ! Lui et tout plein d“autres… pour faire bon poids ! Hé ! hé ! hé !"{#zm1146_s17_}'

    menu:
        '"Tu es un petit homme méchant et insignifiant. Apparemment, tu as mérité ton sort."{#zm1146_s17_r9420}':
            # a47 # r9420
            jump zm1146_s6

        '"Je vois. J„ai d“autres questions à te poser…"{#zm1146_s17_r9451}':
            # a48 # r9451
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s17_r9452}':
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    nr '"Ouais, la Ruche… le pire coin d„Sigil. Jamais vu autant d“feu de toute ma vie… J„ai couru partout, je voulais m“tirer, mais tout brûlait ! Les baraques, les rues, les gens et leurs mômes… Et ce foutu magicien qui riait et qui riait ! J„ai tourné un coin de rue et j“ai cru qu„j“en étais sorti, mais non ! Voilà-t-y pas que ma foutue tête prend feu ?! À partir de là, ç„a été… de mal en pis…" Ses yeux flamboient d“un éclat mauvais.{#zm1146_s18_}'

    menu:
        '"Qui était ce magicien ?"{#zm1146_s18_r9459}':
            # a50 # r9459
            jump zm1146_s19

        '"Je vois. J„ai d“autres questions à te poser…"{#zm1146_s18_r9464}':
            # a51 # r9464
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s18_r9746}':
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    nr '"J„sais pas. Le temps qu“on l„arrête, si on l“a fait, j„étais cuit et recuit, de toute façon. J“crois m„rappeler qu“y„en a qui l“ont poursuivi au début en criant son nom… heu… oh ! Ignis, je crois bien qu„c“était. Ignis. Ou un truc dans c„genre-là. C“que j„espère, c“est que c„cagueur s“r„trouve dans un pire trou que moi !"{#zm1146_s19_}'

    menu:
        '"Je vois. J„ai d“autres questions à te poser…"{#zm1146_s19_r9747}':
            # a53 # r9747
            jump zm1146_s9

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1146_s19_r9748}':
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    nr '"Encore ?!"{#zm1146_s20_}'

    menu:
        '"J„ai quelques questions…"{#zm1146_s20_r20100}':
            # a55 # r20100
            jump zm1146_s9

        '"Rien, je ne faisais que passer. Au revoir."{#zm1146_s20_r20101}':
            # a56 # r20101
            jump zm1146_dispose
