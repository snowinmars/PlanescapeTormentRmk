init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'Le numéro „1094“ est gravé sur le front de ce cadavre errant. Ses lèvres sont cousues, et l„odeur chimique de formol frais flotte dans l“air sous la forme d„un nuage. Malgré ses formes floues et sans vie et ses yeux laiteux, ce corps devait être autrefois celui d“un beau jeune homme.'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"Alors… t„as vu quelque chose d“intéressant ?"' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"Je suis heureux de t„avoir parlé. Au revoir."':
            # a4 # r6569
            jump zm1094_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'Le corps tremble, puis s„immobilise, l“esprit une fois de plus plongé dans sa carapace mortelle à l„abandon. L“espace de quelques secondes, un semblant de vie semble surgir dans les yeux de ce zombi, qui se met à regarder autour de lui d„un air intrigué et perplexe. Le corps tout entier semble maintenant entouré d“une aura douce et dorée.'

    menu:
        '"Je voudrais te poser une question…"':
            # a7 # r6572
            jump zm1094_s3

        'Laisse l„esprit.':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'Soudain, l„esprit s“aperçoit de ta présence et te dédie un sourire désarmant qui fait sauter tous les points de suture autour de sa bouche. Étonné, il porte la main à ses lèvres, hausse les épaules et te salue d„un hochement de tête. "Où… où suis-je ? Drôle d“endroit ! On se connaît ?" Il a un petit toussotement et masse sa gorge roide.'

    menu:
        '"Tu es là pour répondre à *mes* questions, esprit."':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"Tu… Tes restes, en tout cas… sont dans une morgue."':
            # a10 # r9248
            jump zm1094_s13

        '"Non, je doute que tu me connaisses. Maintenant, j„ai une question à te poser…"':
            # a11 # r9249
            jump zm1094_s14

        '"Ça m„étonnerait. Au revoir."':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'Il se départit aussitôt de son attitude cordiale. Il t„observe un long moment, sourcils froncés ; des lambeaux de fil de suture pendent à ses lèvres grises et parcheminées. "Très bien, pose donc tes questions." Il détourne la tête, comme s“il s„ennuyait.'

    menu:
        '"Qui es-tu ?"':
            # a13 # r9251
            jump zm1094_s5

        '"D„où viens-tu ?"':
            # a14 # r9252
            jump zm1094_s6

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a15 # r9253
            jump zm1094_s7

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a16 # r9254
            jump zm1094_s8

        '"Que sais-tu sur cet endroit ?"':
            # a17 # r9255
            jump zm1094_s9

        '"Connais-tu un certain Pharod ?"' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Rien, peu importe."':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"Je m„appelais Asonje. Puis-je disposer ?"'

    menu:
        '"Non, j„ai une autre question…"':
            # a20 # r9258
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"Je ne m„en souviens pas. Autre chose ?"'

    menu:
        '"Oui, j„ai une autre question…"':
            # a22 # r9260
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'L„esprit hausse les épaules, les yeux au ciel. "Je n“en sais rien. Qu„importe, d“ailleurs ?" Sa bouche dessine un pli amer, et il te dévisage d„un regard dur ; la lueur spectrale au fond de ses orbites prend un éclat furieux. "Autre chose ?"'

    menu:
        '"Oui, j„ai une autre question…"':
            # a24 # r9262
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"Mon esprit réside en Arborée…" Il s„interrompt, perdu dans ses souvenirs. "Il me tarde d“y retourner et de mettre fin à cet interrogatoire aussi égoïste que déplacé et lassant. Puis-je disposer ?"'

    menu:
        '"Non, j„ai une autre question…"':
            # a26 # r9264
            jump zm1094_s11

        '"Oui, vas-y. Au revoir."':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'Il te jette un regard exaspéré. "Rien, bien sûr!" Il secoue la tête, agacé ; dans le mouvement, les fils de suture se balancent.'

    menu:
        '"Alors, comment ton corps a-t-il pu arriver ici, dans ces salles lugubres ?"':
            # a28 # r9266
            jump zm1094_s12

        '"J„ai une autre question…"':
            # a29 # r9267
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"Non." L„esprit ne semble guère te prêter beaucoup d“attention.'

    menu:
        '"Alors, j„ai une autre question…"':
            # a31 # r9269
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'Il pousse un grand soupir qui emplit l„atmosphère d“une odeur de formol. "Oui, oui… pose tes questions."'

    menu:
        '"Qui es-tu ?"':
            # a33 # r9271
            jump zm1094_s5

        '"D„où viens-tu ?"':
            # a34 # r9272
            jump zm1094_s6

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a35 # r9273
            jump zm1094_s7

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a36 # r9274
            jump zm1094_s8

        '"Que sais-tu sur cet endroit ?"':
            # a37 # r9275
            jump zm1094_s9

        '"Connais-tu un certain Pharod ?"' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Rien, peu importe."':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Tu en sais autant que moi, mon beau. J„aimerais disposer, à présent, si cela ne t“ennuie pas."'

    menu:
        '"Non, j„ai une autre question…"':
            # a40 # r9278
            jump zm1094_s11

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'Après un temps de réflexion, il s„esclaffe. "Oui ! Voilà qui expliquerait tout, hein ? Je te connais, au fait ?" Il incline la tête pour te dévisager. Tâcher de découvrir ton identité doit lui paraître un jeu.'

    menu:
        '"Non, je doute que tu me connaisses. Maintenant, j„ai une question à te poser…"':
            # a42 # r9280
            jump zm1094_s14

        '"Ça m„étonnerait. Au revoir."':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'L„esprit hausse les épaules et sourit. "Tu as peut-être raison ! Que voulais-tu me demander ?" D“un air absent, il entreprend de retirer de ses lèvres les fils de suture brisés qu„il laisse tomber par terre un par un.'

    menu:
        '"Qui es-tu ?"' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Qui es-tu ?"' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"D„où viens-tu ?"':
            # a46 # r9287
            jump zm1094_s16

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a47 # r9288
            jump zm1094_s17

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a48 # r9317
            jump zm1094_s18

        '"Que sais-tu sur cet endroit ?"':
            # a49 # r9318
            jump zm1094_s19

        '"Connais-tu un certain Pharod ?"' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Rien, peu importe."':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '"Je m„appelais Asonje. Et toi ?"'

    menu:
        '"Je… Je ne sais pas."':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"Je t„en parlerai une autre fois. J“ai une question…"':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Une autre fois, peut-être. Au revoir."':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"Je suis de partout et de nulle part ! En vérité, j„ignore où je suis né. J“ai beaucoup voyagé et habité en divers endroits durant ma vie. À présent, j„ai l“Arborée toute entière à explorer…" Il a l„air ravi.'

    menu:
        '"Je vois. J„ai une autre question…"':
            # a55 # r9292
            jump zm1094_s22

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'Son sourire s„efface, et il prend un air troublé. "Bizarre… Je n“en sais rien ! Je ne me souviens pas comment je suis mort." Il hausse les épaules. "Peu importe !" Il retrouve son sourire réjoui qui, bien que plaqué sur ce visage cadavérique, a quelque chose de réconfortant.'

    menu:
        '"J„ai une autre question…"':
            # a57 # r9294
            jump zm1094_s22

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"L„Arborée ! Il n“y a pas plus merveilleux. Jamais dans ma vie de mortel je n„ai vu un lieu aussi vibrant… aussi majestueux…" Il marque une pause, perdu dans ses pensées. "La beauté de cette contrée, de ses habitants… ah, un endroit magnifique. En fait, il me manque déjà, pour dire vrai !"'

    menu:
        '"Je vois. J„ai une autre question…"':
            # a59 # r9296
            jump zm1094_s22

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"C„est ça. J“ai signé un contrat avec une femme Homme-Poussière, sur un coup de tête… elle m„avait indiqué cet endroit lugubre et dit qu“on y animerait mon cadavre pour y servir de main-d„œuvre. Je me suis dit : Je n“en aurai pas besoin dans l„au-delà, pourquoi pas ? Autant en tirer quelques pièces d“argent pour me payer des femmes et du vin ! " Il en rit, et la lueur spectrale de son regard prend un éclat joyeux.'

    menu:
        '"Que sais-tu sur la cité qui entoure la Morgue ?"':
            # a61 # r9298
            jump zm1094_s24

        '"Je vois. J„ai une autre question…"':
            # a62 # r9299
            jump zm1094_s22

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'L„esprit réfléchit. "Non, dit-il, je crains de n“avoir jamais entendu parler de cet homme. Un ami à toi ?"'

    menu:
        '"Peut-être. J„ai une autre question…"':
            # a64 # r9301
            jump zm1094_s22

        '"Je ne sais pas. Au revoir."':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'Il paraît surpris. "Curieux ! Et dommage… Comment veux-tu que je t„appelle, alors ?" Il te considère d“un air interrogateur.'

    menu:
        '"À mon avis, tu trouveras bien quelque chose. J„ai une question…"':
            # a66 # r9303
            jump zm1094_s22

        'Invente un nom : "J„sais pas… “Adahn„ ?"':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"Non, ça n„a pas d“importance. Au revoir."':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Certes. Vas-y !" Il sourit d„un air aimable et attend ta question avec intérêt. Son sourire paraît presque normal, sans les fils de suture.'

    menu:
        '"Qui es-tu ?"' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Qui es-tu ?"' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"D„où viens-tu ?"':
            # a71 # r9308
            jump zm1094_s16

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a72 # r9309
            jump zm1094_s17

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a73 # r9310
            jump zm1094_s18

        '"Que sais-tu sur cet endroit ?"':
            # a74 # r9311
            jump zm1094_s19

        '"Connais-tu un certain Pharod ?"' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Rien, peu importe."':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'Sentant ta frustration, l„esprit a un rire franc. "Pauvre bougre ! Ce sera donc Adahn, l“ami. Alors, tu as une question à me poser ?"'

    menu:
        '"Oui…"':
            # a77 # r9313
            jump zm1094_s22

        '"Non. Au revoir."':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"Sigil ?" Te voyant hocher la tête, il sourit plus largement, l„air mutin. "Oh, je ne vais pas te gâcher la surprise ! Explore la cité par toi-même ! Perds-toi parmi ses rues, ses tavernes, ses gens… mais sois prudent ! Elle peut s“avérer aussi dangereuse que merveilleuse. Cela dit, c„est ce qui fait son charme, non ?"'

    menu:
        '"Je… suppose. J„ai une autre question…"':
            # a79 # r9315
            jump zm1094_s22

        '"Peut-être. Au revoir."':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"Je m„appelais Asonje."'

    menu:
        '"J„ai une autre question…"':
            # a81 # r9284
            jump zm1094_s22

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"T„es de retour, hein ?" Il affiche un large sourire.'

    menu:
        '"J„ai quelques questions…"':
            # a83 # r20063
            jump zm1094_s22

        '"Je ne faisais que passer. Au revoir."':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Oh, toi… encore." Il fronce les sourcils et détourne son regard.'

    menu:
        '"J„ai quelques questions…"':
            # a85 # r20065
            jump zm1094_s11

        '"Je ne faisais que passer. Au revoir."':
            # a86 # r20066
            jump zm1094_dispose
