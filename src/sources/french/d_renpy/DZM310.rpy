init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'Ce cadavre réanimé a les lèvres cousues et le numéro „310“ est gravé dans son front ; une odeur de formol se répand dans l„atmosphère. Ses yeux sans vie se tournent vers toi tandis que tu t“approches pour lui barrer le passage.'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"Alors… t„as vu quelque chose d“intéressant ?"' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"Je suis heureux de t„avoir parlé. Au revoir."':
            # a4 # r6503
            jump zm310_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'L„espace d“un instant, tu penses que ce cadavre n„est pas capable de répondre à tes questions… mais tu réalises soudain toute la misère qui s“est emparée de lui et que l„esprit a dû la ressentir si profondément qu“il s„est retranché dans sa carapace d“origine.'

    menu:
        '"Je voudrais te poser une question…"':
            # a7 # r6506
            jump zm310_s3

        'Laisse l„esprit en paix.':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'Il s„exprime d“une voix atone, la voix d„un individu désespéré, brisé. En cet instant, rien ne le distingue d“un zombi sans âme. "Que veux-tu savoir, messire ?"'

    menu:
        '"Qui es-tu ?"':
            # a9 # r9658
            jump zm310_s4

        '"D„où viens-tu ?"':
            # a10 # r9659
            jump zm310_s5

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a11 # r9660
            jump zm310_s6

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a12 # r9661
            jump zm310_s7

        '"Pourquoi un tel désespoir ?"':
            # a13 # r9662
            jump zm310_s8

        '"Que sais-tu sur cet endroit ?"':
            # a14 # r9663
            jump zm310_s9

        '"Connais-tu un certain Pharod ?"' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Rien, peu importe."':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'L„esprit parle si doucement que tu dois tendre l“oreille. C„est à peine s“il articule les mots. "Je ne suis personne, messire ; un pauvre insecte cramponné à la Tour Gâchée, sur Oïnos. Jadis, certes, on m„appelait Arabhiem, messire… mais c“était il y a si longtemps…"'

    menu:
        '"La Tour Gâchée ?"':
            # a17 # r9666
            jump zm310_s13

        '"Oïnos ?"':
            # a18 # r9667
            jump zm310_s7

        '"J„ai une autre question…"':
            # a19 # r9668
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"Je vivais à Sigil, messire. Dans la Ruche. Au fond, la vie n„était pas si terrible, quand je le compare à mon nouveau… foyer, Oïnos." Le cadavre cille lentement ; si lentement que tu crois d“abord qu„il se borne à fermer les yeux.'

    menu:
        '"La Ruche ?"':
            # a21 # r9670
            jump zm310_s12

        '"Oïnos ?"':
            # a22 # r9671
            jump zm310_s7

        '"J„ai une autre question…"':
            # a23 # r9672
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"Des voleurs m„ont tué, messire. J“étais ivre, égaré, je titubais par les ruelles de la Ruche… et je suis tombé sous les coups d„une bande de brigands. C“est peut-être mieux. Ma vie ne devait pas valoir les pièces de cuivre que le Récupérateur qui a ramassé mon cadavre en aura tiré."'

    menu:
        '"Pourquoi portes-tu un jugement si sévère sur ta propre vie ?"':
            # a25 # r9674
            jump zm310_s16

        '"Un Récupérateur ?"':
            # a26 # r9675
            jump zm310_s15

        '"J„ai une autre question…"':
            # a27 # r9676
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'L„esprit ferme les yeux, le corps qu“il occupe frissonne. "Oïnos, messire, un lieu horrible. Dans la Gaste Grise. C„est là que mon âme est confinée, à l“ombre de Khin-Oïn, la Tour Gâchée."'

    menu:
        '"Dis-m„en plus sur ce… Oïnos."':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oïn ?"':
            # a30 # r9679
            jump zm310_s13

        '"J„ai une autre question…"':
            # a31 # r9680
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"Je n„attends rien, messire. Piégé à jamais dans l“étendue pestilente d„Oïnos, voilà mon lot. Il n“y a aucun espoir pour quelqu„un de ma sorte." L“esprit prend un air plus pathétique encore ; les épaules du cadavre se courbent sous le fardeau de son chagrin.'

    menu:
        '"Oïnos ?"':
            # a33 # r9682
            jump zm310_s7

        '"Je vois. J„ai une autre question…"':
            # a34 # r9683
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"Très peu, messire ; juste qu„on apporte les morts ici pour y être enterrés, incinérés… ou utilisés comme main-d“œuvre, ainsi que mon corps l„a été."'

    menu:
        '"Je vois, maintenant. Une autre question…"':
            # a36 # r9685
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'Il secoue lentement la tête de gauche et de droite. "Non, je ne connais personne de ce nom. Je suis navré, messire."'

    menu:
        '"Ça ne fait rien. J„ai une autre question…"':
            # a38 # r9687
            jump zm310_s3

        '"Alors, au revoir."':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"Il n„y a rien à en dire, messire. Au pays du seigneur de Khin-Oïn, mon Maître, la peur et la maladie sont souveraines, la pourriture atteint et le corps et l“esprit, le désespoir règne."'

    menu:
        '"Qui est ce… „Maître“ ?"':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oïn ?"':
            # a41 # r9690
            jump zm310_s13

        '"J„ai une autre question…"':
            # a42 # r9691
            jump zm310_s3

        '"On dirait bien. Au revoir, esprit."':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Oui, messire. Un méchant lieu, mais moins terrible qu„Oïnos."'

    menu:
        '"Oïnos ?"':
            # a44 # r9693
            jump zm310_s7

        '"J„ai une autre question…"':
            # a45 # r9694
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Oui, messire. C„est une tour immense, plus haute que la plus haute tour de Sigil. Elle paraît en os, messire - telle la colonne vertébrale d“un géant. C„est là que j“effectue mon labeur, qui est de réparer les dégâts commis par les armées des ennemis de mon Maître, les autres princes."'

    menu:
        '"Qui est ce „Maître“ ?"':
            # a47 # r9696
            jump zm310_s14

        '"Je vois. J„ai une autre question…"':
            # a48 # r9697
            jump zm310_s3

        '"Je vois. Je dois te quitter maintenant, esprit. Au revoir."':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"Le seul nom que je connais au Seigneur de Khin-Oïn est celui de Maître. C„est un prince fiélon, un ultroloth aux pouvoirs formidables. Il détient mon âme pour toujours et à jamais, petite chose condamnée à languir sous sa botte jusqu“à ce que l„éternité devienne l“Oubli."'

    menu:
        '"Parle-moi de ce „Khin-Oïn“."':
            # a50 # r9699
            jump zm310_s13

        '"J„ai une autre question…"':
            # a51 # r9700
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Oui, messire, un Récupérateur, de ceux qui recueillent les morts de Sigil et les amènent à la Morgue - ici - pour quelques piécettes." L„esprit observe les alentours, et pousse un soupir.'

    menu:
        '"Que sais-tu sur cette Morgue ?"':
            # a53 # r9702
            jump zm310_s9

        '"Je vois. J„ai une autre question à te poser…"':
            # a54 # r9703
            jump zm310_s3

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"Je n„en parlerai pas, messire. Il n“y a rien à en dire." L„opinion de l“esprit semble bien arrêtée.'

    menu:
        '"Très bien. Alors, j„aurais d“autres questions…"':
            # a56 # r9705
            jump zm310_s3

        '"Alors, au revoir."':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'Tu ne comprends que l„esprit a quitté le cadavre qu“au moment où celui-ci reprend son labeur à pas traînants.'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'Le cadavre semble rétrécir, ployant sous le poids du désespoir de son esprit.'

    menu:
        '"J„ai des questions…"':
            # a58 # r20103
            jump zm310_s3

        '"Je ne faisais que passer. Au revoir."':
            # a59 # r20104
            jump zm310_dispose
