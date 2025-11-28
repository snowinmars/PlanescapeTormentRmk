init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pfff… un p„tit conseil, chef : à ta place, j“la mettrais en veilleuse à partir de maintenant ; pas besoin d„inscrire trop de cadavres dans le livre des morts… surtout les femmes. En plus, si tu les tues, ça risque d“attirer les gardiens."{#morte2_s0_1}'

    menu:
        '"Je ne crois pas que tu en aies déjà parlé… *Qui* sont ces gardiens ?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"Tous ces cadavres… d„où ils viennent ?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Pourquoi tu t„intéresses aux cadavres féminins ?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est une bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."{#morte2_s1_1}'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"{#morte2_s2_1}'

    menu:
        '"Les cadavres que j„ai vus ici… d“où ils venaient ?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"La mort rend visite aux plans tous les jours, chef. Ces loques, c„est tout c“qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."{#morte2_s3_1}'

    menu:
        '"Explique-moi… *Qui* sont ces gardiens ?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver les clés."{#morte2_s4_1}'

    menu:
        '"Dernière chance ? De quoi tu *parles* ?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"{#morte2_s5_1}'

    menu:
        '"Non… non, en fait, non."{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"C„est une *blague* ?"{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."{#morte2_s6_1}'

    menu:
        '"Attends… tu as bien dit tout à l„heure que j“étais *pas* mort ?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"{#morte2_s7_1}'

    menu:
        '"Qui sont ces gardiens déjà ?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"Mais d„où viennent tous ces cadavres ?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"Très bien… Je vais essayer de m„en souvenir."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Écoute, chef ; on voit bien qu„t“es pas encore remis de ta rencontre avec la mort, alors j„ai deux conseils à te donner : premièrement, si t“as des questions, *pose-les moi*, d„accord ?"  ^NREMARQUE : <SPEAKTO>^-{#morte2_s8_1}'

    menu:
        '"D„accord… si j“ai des questions, je te les poserai."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Deuxièmement, si t„es *aussi* distrait que t“en as l„air, commence à tout noter - chaque fois que tu tombes sur quelque chose qui *pourrait* être important, note-le pour pas oublier."{#morte2_s9_1}'

    menu:
        '"Si je détenais ce journal que je suis *supposé* avoir sur moi, c„est ce que je ferais."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"Alors commences-en un nouveau, chef. T„as rien à perdre. Y a plein de parchemin et d“encre par ici."{#morte2_s10_1}'

    menu:
        '"Hmmmm. D„accord. Ça coûte rien… je vais en commencer un nouveau, alors."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Utilise-le pour garder une trace de tes mouvements. Si tu commences à t„embrouiller sur les trucs importants, comme qui tu es… ou plus important, qui *je* suis… utilise-le pour te rafraîchir la mémoire."  ^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-{#morte2_s11_1}'

    menu:
        '"Très bien… Compris. Allons-y."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Qu„est-ce qui te dérange, chef ?"{#morte2_s12_1}'

    menu:
        '"Tu peux me relire ce qui est tatoué sur mon dos ?{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"C„est quoi cet endroit déjà ?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"Cet endroit est immense… qui s„en occupe ?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"C„est qui, déjà, les gardiens de cet endroit ?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"Tous ces cadavres… d„où ils viennent ?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"Qu„est-ce que je fais de ces bandages ?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Oh, *allez,* chef. Ne m„dis pas qu“t„as déjà oublié."{#morte2_s13_1}'

    menu:
        '"J„ai juste besoin de me rafraîchir la mémoire."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"Bon, peu importe. J„ai d“autres questions…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"Alors laisse tomber. On y va."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"Alors laisse tomber. On y va."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Quelque chose me dit que je vais entendre ÇA souvent." Morte s„éclaircit la voix. "Voyons…"  “Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.“{#morte2_s14_1}'

    menu:
        '"Pharod… hmmm. Continue."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"Peu importe. J„avais d“autres questions…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"Laisse. J„en ai assez entendu. On y va."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Laisse. J„en ai assez entendu. On y va."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"Oui, oui, attends." Morte s„interrompt un instant. "D“accord, voilà la fin…"  „Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t“arrive, ou on t„enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.“{#morte2_s15_1}'

    menu:
        '"Et il n„y avait pas de journal sur moi quand je me suis réveillé ?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"Peu importe. J„avais d“autres questions…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"Laisse. J„en ai assez entendu. On y va."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Laisse. J„en ai assez entendu. On y va."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"Non… t„étais nu comme un ver. Comme j“te l„ai déjà dit, on dirait que t“as déjà un journal écrit sur le corps."{#morte2_s16_1}'

    menu:
        '"Et tu es sûr que tu ne connais personne du nom de Pharod ?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"C„est vrai. J“ai d„autres questions…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"Bon, très bien. Allons-y."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"Bon, très bien. Allons-y."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander… UNE FOIS qu„on sera sorti d“ici."{#morte2_s17_1}'

    menu:
        '"Avant d„y aller, j“ai d„autres questions…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"Bon, très bien. Allons-y."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"Bon, très bien. Allons-y."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."{#morte2_s18_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"C„est tout ce que je voulais savoir. Merci."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"C„est tout ce que je voulais savoir. Merci."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est une bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."{#morte2_s19_1}'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"Compris. J„ferais gaffe, alors."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Compris. J„ferais gaffe, alors."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"{#morte2_s20_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"Tu, ben… tu les *utilises*. Pour épancher le sang et tout ça."  ^NREMARQUE : <BANDAGES2>^-{#morte2_s21_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"Merci. Je devrais pouvoir y arriver."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Merci. Je devrais pouvoir y arriver."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"La mort rend visite aux plans tous les jours, chef. Ces loques, c„est tout c“qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."{#morte2_s22_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver les clés."{#morte2_s23_1}'

    menu:
        '"Dernière chance ? De quoi tu *parles* ?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"{#morte2_s24_1}'

    menu:
        '"Non… non, en fait, non."{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"C„est une *blague* ?"{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"J„en ai assez entendu. On y va."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."{#morte2_s25_1}'

    menu:
        '"Attends… tu as bien dit tout à l„heure que j“étais *pas* mort ?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"J„en ai assez entendu. On y va."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"{#morte2_s26_1}'

    menu:
        '"J„ai d“autres questions à te poser, Morte…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"J„en ai assez entendu. On y va."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"Je savais que tu reviendrais, chef ! T„as finalement réalisé que t“avais besoin de moi, hein ?"{#morte2_s27_1}'

    menu:
        '"Ouais… on y va."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Pas pour le moment, Morte."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIERE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"{#morte2_s28_1}'

    menu:
        '"Morte, tu n„as RIEN de tout ça."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Pas pour le moment, Morte. Peut-être plus tard."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Est-ce que tu essaies de me vexer, chef ? Qu„est-ce qu“il y a, c„est quelque chose que j“ai dit ? Le fait que je n„ai pas de bras ? Quoi ?"{#morte2_s29_1}'

    menu:
        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Non, ce n„est pas ça. C“est juste que je n„ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d„avis."{#morte2_s30_1}'

    menu:
        '"Je le ferai. Au revoir, Morte."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Par les Puissances d„en haut. Tu PARLES d“un livre !"{#morte2_s31_1}'

    menu:
        '"Quoi ?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"Si j„devais deviner, j“dirais que c„est le livre où ils gribouillent le nom de tous les pauvres bougres suffisamment malchanceux pour finir ici."{#morte2_s32_1}'

    menu:
        '"Tu crois que mon nom pourrait y être inscrit ?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Euh… ben… *j„suppose.* Pour le savoir, il faudrait que t“ailles branler ton râtelier avec l„Homme-Poussière flottant, là-bas. J“suis pas sûr que ce soit une bonne idée."{#morte2_s33_1}'

    menu:
        '"Ben, j„ai besoin de réponses. Je vais aller lui parler."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
