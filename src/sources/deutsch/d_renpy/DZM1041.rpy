init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'Diese wiederbelebte männliche Leiche trägt die Nummer "1041" auf der Stirn. Trotz ihrer fahlen, ausgetrockneten Haut ist es offensichtlich, daß seine Gesichtzüge einmal einen „exotischen“ Einschlag hatten. Die Lippen des Zombies wurden zugenäht - höchstwahrscheinlich um zu verhindern, daß er unentwegt jammert und stöhnt - und er riecht stark nach Formaldehyd .{#zm1041_s0_1}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm1041_s0_r6576}' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm1041_s0_r6577}' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm1041_s0_r6578}' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1041_s0_r6579}' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1041_s0_r6580}' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm1041_s0_r6581}':
            # a5 # r6581
            jump zm1041_dispose

        'Laß die Leiche in Ruhe.{#zm1041_s0_r9095}':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm1041_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1041_s1_r6582}':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'Die Leiche schwankt einen Moment lang, während der Geist seine frühere Heimstatt besucht. Ihre mandelförmigen Augen verdunkeln sich ein weiteres Mal, und über die blasse Haut legt sich ein leichter, bronzefarbener Schleier. Sie richtet sich auf und wischt den Staub von ihrer Kleidung.  Als er endlich den Rufer wahrnimmt, starrt der Geist dich einen Moment lang neugierig an und verbeugt sich dann leicht.{#zm1041_s2_1}'

    menu:
        'Verbeug dich auch.{#zm1041_s2_r6583}':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"Ich hätte ein paar Fragen…"{#zm1041_s2_r9096}':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Verlaß den Geist.{#zm1041_s2_r9097}':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'Der Geist lächelt einen Moment zufrieden. Er sammelt sich, steht mit einer Hand hinter dem Rücken da und beginnt mit leiser Stimme zu reden:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  Nachdem er diese Worte gesagt hat, wartet er zufrieden und geduldig auf deine Antwort.{#zm1041_s3_1}'

    menu:
        '"Ich… ähh."{#zm1041_s3_r9098}':
            # a11 # r9098
            jump zm1041_s5

        '"Ich habe keine Ahnung, was du sagst… kannst du verstehen, was ich sage?"{#zm1041_s3_r9099}':
            # a12 # r9099
            jump zm1041_s5

        '"Ich kann dich nicht verstehen. Leb wohl."{#zm1041_s3_r9100}':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'Du öffnest deinen Mund, um eine Frage zu formulieren, aber bevor du ansetzen kannst, beginnt der Geist mit leiser Stimme zu reden:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  Nachdem er diese Worte gesagt hat, wartet er zufrieden und geduldig auf deine Antwort.{#zm1041_s4_1}'

    menu:
        '"Ich… ähh."{#zm1041_s4_r9101}':
            # a14 # r9101
            jump zm1041_s5

        '"Ich habe keine Ahnung, was du sagst… kannst du verstehen, was ich sage?"{#zm1041_s4_r9102}':
            # a15 # r9102
            jump zm1041_s5

        '"Ich kann dich nicht verstehen. Leb wohl."{#zm1041_s4_r9103}':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'Der Geist hält einen Moment inne und scheint nachzudenken. Dann setzt er wieder mit starkem Akzent, aber dennoch wohl formuliert, seine Ausführungen fort.  "Ihr müßt mir verzeihen, ehrenwerter Herr. Aber es ist schon eine ganze Weile her, daß ich in Eurer Sprache habe reden müssen. Zweifellos ist mein Geist hierher befohlen worden, um Eure Fragen zu beantworten; was ist es, das Ihr von mir wissen möchtet?"{#zm1041_s5_1}'

    menu:
        '"Wer bist du?"{#zm1041_s5_r9104}':
            # a17 # r9104
            jump zm1041_s6

        '"Wo kommst du her?"{#zm1041_s5_r9105}':
            # a18 # r9105
            jump zm1041_s7

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"{#zm1041_s5_r9106}':
            # a19 # r9106
            jump zm1041_s8

        '"Wo bist du… wo wohnt dein Geist… jetzt?"{#zm1041_s5_r9107}':
            # a20 # r9107
            jump zm1041_s11

        '"Was weißt du über diesen Ort?"{#zm1041_s5_r9108}':
            # a21 # r9108
            jump zm1041_s9

        '"Kennst du jemanden mit dem Namen Pharod?"{#zm1041_s5_r9109}' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Ach nichts, ist schon gut."{#zm1041_s5_r9110}':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"Wer ich bin, ist eine schwierige Frage… nicht jedoch, wer ich *war*. Man kannte mich unter dem Namen Zhuang Bei, Lehrer und Leibwächter von Liu Xixi, der Tochter des Zensors Chi„an.{#zm1041_s6_1}'

    menu:
        '"Lehrer *und* Leibwächter?"{#zm1041_s6_r9111}':
            # a24 # r9111
            jump zm1041_s12

        '"Hmm. Hört sich beeindruckend an."{#zm1041_s6_r9112}':
            # a25 # r9112
            jump zm1041_s13

        '"Ich verstehe. Ich hätte da noch ein paar Fragen…"{#zm1041_s6_r9113}':
            # a26 # r9113
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s6_r9114}':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"Ich kam aus einem Ort namens Shou Lung… einem Ort, den ich einst als Mittelpunkt des Universums betrachtet habe." Diese Vorstellung scheint ihn leicht zu amüsieren. "So viele Orte, so viele Welten. Ich hielt mich für einen wirklich gebildeten Mann, doch wußte ich so wenig, als ich starb…"{#zm1041_s7_1}'

    menu:
        '"Und wie kamst du von diesem Ort „Shou Lung“ hierher?"{#zm1041_s7_r9115}':
            # a28 # r9115
            jump zm1041_s16

        '"Ich verstehe. Ich hätte da noch ein paar Fragen…"{#zm1041_s7_r9116}':
            # a29 # r9116
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s7_r9117}':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"Ich wurde von einem der Männer ermordet, mit denen zusammen ich in diese Welt gefallen bin. Ich hatte ihn in dieser Stadt schon seit vielen, vielen Wochen gejagt - in dieser Zeit hatte ich übrigens ihre Sprache gelernt - aber er hat mich zuerst aufgespürt. Er war ein bezahlter Mörder und hat mich im Schlaf umgebracht."{#zm1041_s8_1}'

    menu:
        '"In diese Welt gefallen?"{#zm1041_s8_r9118}':
            # a31 # r9118
            jump zm1041_s16

        '"Du hast Mörder gejagt?"{#zm1041_s8_r9119}':
            # a32 # r9119
            jump zm1041_s16

        '"Ich verstehe, aber weißt du denn, wieso deine Hülle hier arbeiten soll?"{#zm1041_s8_r9120}':
            # a33 # r9120
            jump zm1041_s17

        '"Du sprichst sehr gut für jemanden, der nur so kurze Zeit gehabt hat, um die Sprache zu lernen."{#zm1041_s8_r9121}':
            # a34 # r9121
            jump zm1041_s18

        '"Ich verstehe. Ich hätte da noch ein paar Fragen…"{#zm1041_s8_r9122}':
            # a35 # r9122
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s8_r9123}':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"Über dieses Gebäude? Überhaupt nichts; ich hatte davon gehört, wußte, daß meine Leiche hier zu Diensten sein würde, aber das ist schon alles." "Über „Sigil“, diese großartige Stadt, weiß ich fast ebenso wenig. Die Wochen, die ich hier verbrachte, waren ausgefüllt mit der Suche nach den Männern, mit denen zusammen ich in dieser Welt gelandet bin sowie mit dem Erlernen der Sprache. Es schmerzte mich, daß ich für andere Dinge wenig Zeit hatte. Von den zahllosen Wundern eines solchen Ortes hätte ich so vieles lernen können…"{#zm1041_s9_1}'

    menu:
        '"Dein Körper sollte nach dem Tode hier dienen? Wie denn das?"{#zm1041_s9_r9124}':
            # a37 # r9124
            jump zm1041_s17

        '"In diese Welt gefallen?"{#zm1041_s9_r9125}':
            # a38 # r9125
            jump zm1041_s16

        '"Du sprichst sehr gut für jemanden, der nur so kurze Zeit gehabt hat, um die Sprache zu lernen."{#zm1041_s9_r9126}':
            # a39 # r9126
            jump zm1041_s18

        '"Ich verstehe. Ich hätte da noch ein paar Fragen…"{#zm1041_s9_r9127}':
            # a40 # r9127
            jump zm1041_s14

        '"Also schön. Wer weiß, vielleicht sprechen wir uns später noch einmal."{#zm1041_s9_r9128}':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"Nein, der Name sagt mir nichts. Es tut mir leid, daß ich Euch in dieser Sache nicht helfen kann."{#zm1041_s10_1}'

    menu:
        '"Versteh schon. Ich hätte da noch ein paar Fragen…"{#zm1041_s10_r9129}':
            # a42 # r9129
            jump zm1041_s14

        '"Also schön. Wer weiß, vielleicht sprechen wir uns später noch einmal."{#zm1041_s10_r9130}':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'Der Geist sieht einen Moment lang schmerzerfüllt aus. "Ich… Mein Geist residiert im Reich des ruhmreichen Magistrats Yen-Wang-Yeh: dem Urteilspalast."{#zm1041_s11_1}'

    menu:
        '"Ist etwas nicht in Ordnung? Ist es solch ein schlechter Ort?"{#zm1041_s11_r9131}':
            # a44 # r9131
            jump zm1041_s15

        '"Versteh schon. Ich hätte da noch ein paar Fragen…"{#zm1041_s11_r9132}':
            # a45 # r9132
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s11_r9133}':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Ja; dort, wo ich herkomme, ist das nichts Ungewöhnliches. Es war meine Pflicht, ständig an Miss Lius Seite zu sein, und zwar nicht nur, um sie vor Gefahren zu schützen, sondern auch, um sie auszubilden. Ich hatte mir sowohl als Lehrer wie auch als Schwertkämpfer einen gewissen Namen gemacht. Ich hätte ihr sicher besser dienen können, wenn ich ein besserer Schwertkämpfer gewesen wäre…"{#zm1041_s12_1}'

    menu:
        '"Ihr besser gedient haben? Hast du sie irgendwie enttäuscht?"{#zm1041_s12_r9134}':
            # a47 # r9134
            jump zm1041_s16

        '"Vielleicht. Ich hätte da noch ein paar Fragen…"{#zm1041_s12_r9135}':
            # a48 # r9135
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s12_r9136}':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Beeindruckend? Ja, vielleicht könnte man es in meinem Fall so ausdrücken. Ich… ich habe Miss Liu und dem Zensor gegenüber meine Pflicht nicht erfüllt."{#zm1041_s13_1}'

    menu:
        '"Wie das?"{#zm1041_s13_r9137}':
            # a50 # r9137
            jump zm1041_s16

        '"Ich hätte da noch ein paar Fragen…"{#zm1041_s13_r9138}':
            # a51 # r9138
            jump zm1041_s14

        '"Ich verstehe. Wer weiß, vielleicht sprechen wir uns später noch einmal."{#zm1041_s13_r9139}':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'Der Geist nickt - eine überraschend würdevolle Geste für eine runzelige Leiche. "Bitte, fragt, was immer Ihr wollt."{#zm1041_s14_1}'

    menu:
        '"Wer bist du?"{#zm1041_s14_r9140}':
            # a53 # r9140
            jump zm1041_s6

        '"Wo kommst du her?"{#zm1041_s14_r9141}':
            # a54 # r9141
            jump zm1041_s7

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"{#zm1041_s14_r9142}':
            # a55 # r9142
            jump zm1041_s8

        '"Wo bist du… wo wohnt dein Geist… jetzt?"{#zm1041_s14_r9143}':
            # a56 # r9143
            jump zm1041_s11

        '"Was weißt du über diesen Ort?"{#zm1041_s14_r9144}':
            # a57 # r9144
            jump zm1041_s9

        '"Kennst du jemanden mit dem Namen Pharod?"{#zm1041_s14_r9145}' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"Was hast du vorhin gesagt, als du erschienen bist?"{#zm1041_s14_r9146}':
            # a59 # r9146
            jump zm1041_s26

        '"Macht nichts. Auf bald."{#zm1041_s14_r9147}':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"Nun ja, seht…" Der Geist hält einen Augenblick inne, um nachzudenken und reibt die welken Hände der Leiche aneinander. "Als ich ankam, sollte ich nach einer kurzen Wartezeit zu meinem letzten, *wahren* Bestimmungsort geleitet werden. Allerdings kam es, als ich durch den Palast geführt wurde, zu einigen Verzögerungen und ich wurde in einen Nebenraum geführt mit dem Versprechen, daß man sich sofort um mich kümmern würde."{#zm1041_s15_1}'

    menu:
        '"Und…?"{#zm1041_s15_r9148}':
            # a61 # r9148
            jump zm1041_s19

        '"Was meinst du mit „letztem Bestimmungsort“? Wo solltest du denn hingeschickt werden?"{#zm1041_s15_r9149}':
            # a62 # r9149
            jump zm1041_s20

        '"Halt mal… Ich hätte da noch ein paar Fragen, bevor du weitererzählst."{#zm1041_s15_r9150}':
            # a63 # r9150
            jump zm1041_s14

        '"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."{#zm1041_s15_r9151}':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"Ich will ihnen die ganze Geschichte erzählen. Als Lehrer und Leibwächter von Liu Xixi bin ich natürlich sowohl mit ihrer Ausbildung als auch mit ihrem Schutz beauftragt. Eines Abends standen wir auf einem Balkon oberhalb des Gerichtshofes und ich erklärte ihr die verschiedenen Sternbilder.{#zm1041_s16_1}'

    menu:
        '"Bitte, erzähl weiter."{#zm1041_s16_r9152}':
            # a65 # r9152
            jump zm1041_s21

        '"Lehrer *und* Leibwächter?"{#zm1041_s16_r9153}':
            # a66 # r9153
            jump zm1041_s12

        '"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."{#zm1041_s16_r9154}':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ach das. Einmal bin ich nachts von einer jungen Frau auf der Straße angesprochen worden; sie gehörte zu einer Gruppe, die sich die Staubmenschen nannte; es sind dieselben, die auch diesen Komplex beaufsichtigen." "Sie hat mir in Aussicht gestellt, daß meine Leiche für eine geringe Summe nach meinem Ableben.. hier… Verwendung finden könne."{#zm1041_s17_1}'

    menu:
        '"Und das schien dir nicht irgendwie merkwürdig?"{#zm1041_s17_r9155}':
            # a68 # r9155
            jump zm1041_s22

        '"Ich verstehe. Ich hätte da noch eine andere Frage, wenn du erlaubst…"{#zm1041_s17_r9156}':
            # a69 # r9156
            jump zm1041_s14

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1041_s17_r9157}':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"Linguistik ist in der Tat ein Fach, das mich außerordentlich interessiert. Als ich Lehrer wurde, habe ich festgestellt, daß ich neue Sprachen ganz ohne Mühe erlernen konnte."{#zm1041_s18_1}'

    menu:
        '"Das würde einiges erklären. Nun zu einer anderen Frage…"{#zm1041_s18_r9158}':
            # a71 # r9158
            jump zm1041_s14

        '"Versteh schon. Danke, daß du mit mir gesprochen hast. Leb wohl."{#zm1041_s18_r9159}':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"Nun ja, seht… es ist nie wieder jemand zu mir gekommen. Ich habe tagelang geduldig gewartet, aber es war umsonst. Schließlich habe ich den Raum verlassen und bin im Palast umhergegangen, in der Hoffnung, daß ich jemanden finden würde, der mich führt…" Er seufzt leise und sein Atem riecht leicht nach Balsamierungsöl. "Hier gibt es 9.001 Räume; kaum hatte ich einen davon passiert, war ich schon in einem anderen. Es sieht so aus, als sei ich vorerst hier gefangen."{#zm1041_s19_1}'

    menu:
        '"Ich verstehe. Ich hätte da aber noch eine andere Frage…"{#zm1041_s19_r9160}':
            # a73 # r9160
            jump zm1041_s14

        '"Kann ich vielleicht irgendwie helfen?"{#zm1041_s19_r9161}':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Armer Irrer… Ich frage mich, wie lange sie dich noch umherwandern lassen werden!"{#zm1041_s19_r9162}':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"Ich wünsche dir viel Glück. Leb wohl."{#zm1041_s19_r9163}':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"Das kann ich nicht sagen. Es ist alles so frustrierend!" Er hält einen Augenblick inne, um sich wieder zu fassen; die steifen Gelenke und Sehnen der Leiche knacken, als sie sich entspannen.{#zm1041_s20_1}'

    menu:
        '"Bitte, erzähl deine Geschichte weiter."{#zm1041_s20_r9164}':
            # a77 # r9164
            jump zm1041_s19

        '"Kann ich mir vorstellen… Ich hätte noch eine andere Frage…"{#zm1041_s20_r9165}':
            # a78 # r9165
            jump zm1041_s14

        '"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."{#zm1041_s20_r9166}':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Natürlich. Als wir dort oben standen, sprangen plötzlich zwei Angreifer vom Dach auf den Balkon, um Miss Liu zu ermorden oder zu entführen. Ich rief nach der Wache und eilte ihr mit gezückter Klinge zu Hilfe. Im darauf folgenden Kampf zerbrach das Balkongeländer und wir vier fielen in das Jade-Portal."{#zm1041_s21_1}'

    menu:
        '"Das was? Jade-Portal?"{#zm1041_s21_r9167}':
            # a80 # r9167
            jump zm1041_s23

        '"Halt mal… Ich hätte da noch ein paar Fragen, bevor du weitererzählst."{#zm1041_s21_r9168}':
            # a81 # r9168
            jump zm1041_s14

        '"Vielleicht könntest du mir den Rest ein andermal erzählen. Leb wohl."{#zm1041_s21_r9169}':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Vielleicht kommt das einem zunächst etwas… makaber vor. Aber nachdem ich längere Zeit mit ihr gesprochen hatte, merkte ich, daß sie - die Staubmenschen - über den Tod ganz ähnlich dachten wie ich. Mein Körper? Ein Vehikel, mehr nicht. Ich glaube, daß ihr „Wahrer Tod“ jene höhere Daseinsform ist, die ich immer zu erreichen bestrebt war… völlige Loslösung und Befreiung von der materiellen Welt. Sollte mein Körper, nachdem er seine Aufgabe als meine sterbliche Hülle erfüllt hat, einem bescheidenen Zwecke hier dienen, dann soll es mir recht sein." Der Geist lächelt dich höflich an.{#zm1041_s22_1}'

    menu:
        '"Hört sich logisch an. Nun zu einer anderen Frage…"{#zm1041_s22_r9170}':
            # a83 # r9170
            jump zm1041_s14

        '"Interessant. Aber ich sollte mich jetzt lieber auf den Weg machen. Leb wohl."{#zm1041_s22_r9171}':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Oh! Verzeiht die Annahme meinerseits… das Jade-Portal ist ein rundes Becken, das sich in der Mitte des Hofs befindet. Es ist mit Kacheln aus grünem und weißen Speckstein ausgekleidet und wird Portal genannt, weil sich in seinem schimmerndem Wasser das Bild eines anderen Ortes abzeichnet."{#zm1041_s23_1}'

    menu:
        '"Ich verstehe. Bitte, erzähl deine Geschichte weiter."{#zm1041_s23_r9172}':
            # a85 # r9172
            jump zm1041_s27

        '"Bevor du weitererzählst, hätte ich noch ein paar Fragen…"{#zm1041_s23_r9173}':
            # a86 # r9173
            jump zm1041_s14

        '"Das ist alles, was ich im Moment wissen wollte. Leb wohl."{#zm1041_s23_r9174}':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Euer Angebot ist zu freundlich. Allerdings fürchte ich, daß Ihr nichts tun könnt… ich bin sicher, daß ich mich bald auf den Weg machen muß. Trotzdem vielen Dank."{#zm1041_s24_1}'

    menu:
        '"Natürlich. Aber sag mal, ich hätte da noch eine andere Frage…"{#zm1041_s24_r9175}':
            # a88 # r9175
            jump zm1041_s14

        '"Keine Sorge. Aber ich gehe jetzt besser. Lebe wohl."{#zm1041_s24_r9176}':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'Der Geist starrt dich kalt an; tief in seinen toten Augen siehst du ein Funkeln. Anscheinend hast du ihn beleidigt .{#zm1041_s25_1}'

    menu:
        '"Ich bitte um Entschuldigung. Dürfte ich dann noch etwas anderes fragen?"{#zm1041_s25_r9177}':
            # a90 # r9177
            jump zm1041_s14

        'Geh einfach, und laß den Geist dort schweben.{#zm1041_s25_r9178}':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Oh, das… äh… das war ein Gedicht. Schwer zu übersetzen. Habt Ihr vielleicht noch eine Frage?" Er lächelt dich gezwungen an.{#zm1041_s26_1}'

    menu:
        '"Ja ja… hab„ ich."{#zm1041_s26_r9179}':
            # a92 # r9179
            jump zm1041_s14

        '"Nein… aber ich denke, ich würde gerne mehr über dieses Gedicht wissen."{#zm1041_s26_r9180}':
            # a93 # r9180
            jump zm1041_s28

        '"Nein. Wenn du„s genau wissen willst: Ich denke, ich gehe jetzt. Leb wohl."{#zm1041_s26_r9181}':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"Wie ich schon sagte, sind wir in das Jade-Portal gefallen. Ich hätte mir niemals träumen lassen, daß es *tatsächlich* ein Portal im ursprünglichen Sinn des Wortes war! Ich habe mich in einer unbekannten Gasse wiedergefunden, mein Bein war gebrochen. Als ich mich umschaute, sah ich die Mörder davonlaufen, von denen einer Liu Xixi auf der Schulter trug."{#zm1041_s27_1}'

    menu:
        '"Wirklich merkwürdig. Bitte erzähl weiter."{#zm1041_s27_r9182}':
            # a95 # r9182
            jump zm1041_s31

        '"Oh. Bevor du weitermachst, hätte ich noch ein paar Fragen…"{#zm1041_s27_r9183}':
            # a96 # r9183
            jump zm1041_s14

        '"Ich verstehe. Vielen Dank, aber ich muß jetzt gehen."{#zm1041_s27_r9184}':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"Also gut." Er denkt einen Moment nach und tippt die Spitzen seiner langen, knochigen Finger aneinander. Danach beginnt er wieder, in einem langsamen, stetigen Rhythmus zu reden:  "Es ist so schwierig, einander zu finden wie voneinander zu scheiden. "Der Nordwind ist abgeflaut, hunderte von Blumen welken dahin. "Wenn die Raupen sterben, wird die Seide nie wieder erstehen. "Wenn das Kerzenwachs zu Asche verbrennt, werden alle Tränen versiegen."  Er lächelt dich höflich an.{#zm1041_s28_1}'

    menu:
        '"Ah… Ich hätte noch eine andere Frage."{#zm1041_s28_r9185}':
            # a98 # r9185
            jump zm1041_s14

        '"Interessant. Was bedeutet das?"{#zm1041_s28_r9186}':
            # a99 # r9186
            jump zm1041_s29

        '"Du willst mir also sagen, daß ich deinen Geist hätte in Ruhe lassen sollen? Habe ich dich beleidigt, indem ich dich gerufen habe?"{#zm1041_s28_r9187}' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Oh. Ich danke dir für deine Erklärung. Leb wohl."{#zm1041_s28_r9188}':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"Nun, ich muß zu meiner Beschämung zugeben, daß ich versucht habe anzudeuten, daß Ihr besser die Geister der Toten in Ruhe laßt. Ich habe nicht länger das Verlangen, an dieser Welt…" Mit einer ausholenden Bewegung deutet er auf alles um ihn herum. "…teil zu haben."{#zm1041_s29_1}'

    menu:
        '"Hmm. Ich verstehe. Da war noch was, was ich dich fragen wollte."{#zm1041_s29_r9189}':
            # a102 # r9189
            jump zm1041_s14

        '"Versteh schon. Na dann leb wohl."{#zm1041_s29_r9190}':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Äh.. nun ja… nein. Ich wollte nicht so direkt sein und eine Konfrontation vermeiden, verstehst du. Es ist nur so, daß ich nicht länger das Verlangen habe, an dieser Welt…" Mit einer ausholenden Bewegung deutet er auf alles um ihn herum. "…teil zu haben."{#zm1041_s30_1}'

    menu:
        '"Hmm. Ich verstehe. Da war noch was, was ich dich fragen wollte…"{#zm1041_s30_r9191}':
            # a104 # r9191
            jump zm1041_s14

        '"Versteh schon. Na dann leb wohl."{#zm1041_s30_r9192}':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"Nun, das ist eigentlich schon alles. Ich bin unter Schmerzen mit dem gebrochenen Bein umhergehumpelt, bis ich jemanden gefunden habe, der es heilen konnte. Dafür hat er mir das bißchen Geld abgenommen, das ich dabei hatte. Von diesem Heiler und anderen habe ich dann die Sprache der Leute hier gelernt; die ganze Zeit aber habe ich diesen Ort nach den Mördern und meiner Schutzbefohlenen abgesucht."{#zm1041_s31_1}'

    menu:
        '"Du hast sie demnach nie gefunden?"{#zm1041_s31_r9193}':
            # a106 # r9193
            jump zm1041_s32

        '"Hmm. Weißt du, es ist schon merkwürdig, daß du so schnell die Sprache erlernen konntest…"{#zm1041_s31_r9194}':
            # a107 # r9194
            jump zm1041_s38

        '"Oh. Bevor du weitermachst, hätte ich noch ein paar Fragen…"{#zm1041_s31_r9195}':
            # a108 # r9195
            jump zm1041_s14

        '"Ich glaube, den Rest mußt du mir ein andermal erzählen. Lebwohl."{#zm1041_s31_r9196}':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"Einen von ihnen habe ich erwischt, aber er wollte nicht reden. Ich habe ihn exekutiert und seinen Kopf in einem seidenen Sack aufbewahrt, um ihn dem Zensor zeigen zu können, wenn ich ihm seine Tochter zurückbringe." Er legt seine Stirn in Falten und spricht weiter. "Der andere Mörder ist… mir entwischt. Es ist ihm sogar noch mehr gelungen; er hat mich erwischt, bevor ich ihn töten und meine Schutzbefohlene retten konnte. Traurig, aber damit habe ich abgeschlossen."{#zm1041_s32_1}'

    menu:
        '"Hättest du gewußt, wie du in dein Land zurückkehren könntest, wenn du diese… „Xi-xi“ gerettet hättest?"{#zm1041_s32_r9197}':
            # a110 # r9197
            jump zm1041_s33

        '"Interessante Geschichte. Ich hätte da aber noch einige Fragen…"{#zm1041_s32_r9198}':
            # a111 # r9198
            jump zm1041_s14

        '"Faszinierend. Aber ich sollte dich jetzt lieber alleine lassen. Leb wohl."{#zm1041_s32_r9199}':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"Nein, aber ich bin sicher, daß ich einen Weg gefunden hätte. Aber es ist müßig, jetzt darüber zu spekulieren."{#zm1041_s33_1}'

    menu:
        '"Ich frage mich, ob sie noch immer in der Stadt sind. Vielleicht könnte ich dieses Mädchen finden und ihr helfen."{#zm1041_s33_r9200}':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"Es scheint dir sicher sehr einfach, dich nicht um deine Pflichten zu sorgen, weil du halt tot bist. Ich weiß nicht, ob ich das so einfach machen könnte."{#zm1041_s33_r9201}':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Interessant. Darf ich dich noch etwas anderes fragen?"{#zm1041_s33_r9202}':
            # a115 # r9202
            jump zm1041_s14

        '"Hmm. Ich muß dich jetzt verlassen. Viel Glück noch."{#zm1041_s33_r9203}':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Dein Angebot weist dich als Ehrenmann aus… Doch sind nicht weniger als fünfundsiebzig Jahre vergangen, seit ich erschlagen wurde. Der Mann, der mich umgebracht hat, ist schon lange tot, und Xixi höchstwahrscheinlich auch."{#zm1041_s34_1}'

    menu:
        '"Hmm. Egal. Ich hätte noch eine andere Frage…"{#zm1041_s34_r9205}':
            # a117 # r9205
            jump zm1041_s14

        '"Ach, vergiß es. Leb wohl."{#zm1041_s34_r9206}':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"Der Mörder hat Gesichtszüge, die den meinen gleichen, und eine Lotusblüte, die auf seine Augenbraue tätowiert ist." Als er deine Verwirrung bemerkt, sagt er: "Es ist eine Blumenart mit sieben Blütenblättern. Liu Xixi ist ein junges Mädchen, gerade 14 Jahre alt. Vielleicht weiß sie oder der Mörder den Weg zurück und wie er wieder aktiviert werden kann."{#zm1041_s35_1}'

    menu:
        '"Sollte ich sie sehen, werde ich mein Bestes tun und ihr in deinem Gedenken helfen."{#zm1041_s35_r9207}':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Schon gut. Ich habe dafür keine Zeit."{#zm1041_s35_r9208}':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"Also gut. Ich hätte noch eine andere Frage…"{#zm1041_s35_r9209}':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"Das ist alles, was ich brauche. Leb wohl."{#zm1041_s35_r9210}':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"Ihr seid ein gütiger und ehrenhafter Mann. Tut es nicht für mich… es sind das Mädchen und ihr Vater, denen Ihr am meisten helft."{#zm1041_s36_1}'

    menu:
        '"Also schön. Ich hätte noch eine andere Frage…"{#zm1041_s36_r9211}':
            # a123 # r9211
            jump zm1041_s14

        '"Versteh schon. Leb wohl, Geist."{#zm1041_s36_r9212}':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"Ich habe wirklich nicht erwartet, Euch wiederzusehen." Der Geist verneigt sich höflich, aber sein Gesichtsausdruck zeigt keine Regung. "Was wollt Ihr von mir?"{#zm1041_s37_1}'

    menu:
        '"Eine Frage…"{#zm1041_s37_r9213}':
            # a125 # r9213
            jump zm1041_s14

        '"Nichts, ich werde dich jetzt besser alleine lassen."{#zm1041_s37_r9214}':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"Linguistik ist in der Tat ein Fach, das mich außerordentlich interessiert. Als ich Lehrer wurde, habe ich festgestellt, daß ich neue Sprachen ganz ohne Mühe erlernen konnte."{#zm1041_s38_1}'

    menu:
        '"Das würde einiges erklären. Du hast die Mörder demnach nie gefunden?"{#zm1041_s38_r9719}':
            # a127 # r9719
            jump zm1041_s32

        '"Ich verstehe. Darf ich dich dann noch etwas anderes fragen?"{#zm1041_s38_r9720}':
            # a128 # r9720
            jump zm1041_s14

        '"Versteh schon. Danke, daß du mit mir gesprochen hast. Leb wohl."{#zm1041_s38_r9721}':
            # a129 # r9721
            jump zm1041_dispose
