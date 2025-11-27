init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… „n guter Ratschlag, Meister: Ich würd“ mich ab jetzt zurückhalten - du mußt ja nicht mehr Leichen ins Totenbuch stecken als unbedingt notwendig… besonders die Ladies. Außerdem könnte es die Verwalter hier auf den Plan bringen, wenn du sie umbringst."{#morte2_s0_}'

    menu:
        '"Ich glaube nicht, daß du„s schon mal erwähnt hast… *Wer* sind diese Verwalter?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"Die Leichen hier… Wo kommen die alle her?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Warum machst du dir um die weiblichen Leichen Sorgen?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"Sie nennen sich selbst die „Staubmenschen“. Sie sind gar nicht zu übersehen: Sie stehen auf Schwarz und totenstarre Gesichter. Sie sind eine räudige Bande ghulischer Todesanbeter, die glauben, daß jeder sterben sollte… je früher, desto besser."{#morte2_s1_}'

    menu:
        '"Das versteh ich nicht… Was können diese Staubmenschen dagegen haben, wenn ich mich hier aus dem Staub mache?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Hast du nicht zugehört?! Ich sagte, daß die Staubies glauben, daß JEDER sterben muß, je früher, desto besser. Glaubst du, daß die Leichen, die du gesehen hast, sich im Totenbuch besser fühlen als außerhalb des Buchs?"{#morte2_s2_}'

    menu:
        '"Die Leichen hier… Wo kommen die alle her?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Der Tod sucht die Ebenen jeden Tag heim, Meister. Diese watschelnden Gerüste hier sind alles, was von den armen Schluckern übriggeblieben ist, die ihre Leichen nach ihrem Tod an die Verwalter verkauft haben."{#morte2_s3_}'

    menu:
        '"Klär mich mal auf… *Wer* sind diese Verwalter?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Wa… im *Ernst*? Hör zu, Meister, diese toten Dinger sind die letzte Chance für ein paar hartgesottene Typen wie uns. Wir müssen *nett* sein… und nicht wegen ein paar Schlüsseln Kleinholz aus ihnen machen, ihnen die Gliedmaßen abhacken oder etwas Ähnliches tun."{#morte2_s4_}'

    menu:
        '"Letzte Chance? Wovon *redest* du denn?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Meister, SIE sind tot, WIR sind tot… verstehst du, worauf ich hinaus will? Nun?"{#morte2_s5_}'

    menu:
        '"Nein… nein, eigentlich nicht."{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"Du *kannst* das nicht ernst meinen."{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Meister, wir haben bereits etwas mit diesen hinkenden Damen gemein. Wir sind *alle* mindestens einmal gestorben: da haben wir doch schon Gesprächsstoff. Sie schätzen Männer mit dieser Art von Erfahrung."{#morte2_s6_}'

    menu:
        '"Warte… Hast du vorhin nicht gesagt, daß ich *nicht* tot bin?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"Tja… okay, *du* bist vielleicht nicht tot, aber *ich* bin„s. Und ich für meinen Teil hätte nichts dagegen, einen Sarg mit einem dieser sehnigen Kadaver hier zu teilen." Morte fängt an, in freudiger Erwartung mit den Zähnen zu klappern. "Natürlich müßten die Verwalter sich erst von ihnen trennen, und das ist ziemlich unwahrscheinlich…"{#morte2_s7_}'

    menu:
        '"Wer sind diese Verwalter noch gleich?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"Aber wo kommen all diese Leichen her?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"In Ordnung… Ich versuche, mir das zu merken."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Sieh mal, Meister. Offensichtlich bist du nach deinem Kuss mit dem Tod immer noch etwas verwirrt, sodass ich dir zwei kleine Ratschläge erteilen will: Erstens, wenn du Fragen hast, *fragst* du mich, in Ordnung?"  ^NHINWEIS: <SPEAKTO>^-{#morte2_s8_}'

    menu:
        '"Also gut… Wenn ich irgendwelche Fragen habe, wende ich mich an dich."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Zweitens, wenn du nur *halb* so vergeßlich bist, wie du den Eindruck machst, fang lieber an, dir Notizen zu machen - immer, wenn dir etwas begegnet, das wichtig sein *könnte*, schreib„s dir auf, damit du es nicht wieder vergißt."{#morte2_s9_}'

    menu:
        '"Wenn ich dieses Journal hätte, das ich eigentlich bei mir haben *sollte*, würde ich das tun."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"Dann fang ein neues an, Meister. Ist doch kein Problem. Hier gibt„s genug Pergament und Tinte für dich."{#morte2_s10_}'

    menu:
        '"Hmmmm. Also gut. Kann ja nicht schaden… Dann mache ich halt ein neues."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Benutze es, um deine Bewegungen im Blick zu behalten. Falls du wichtige Dinge nicht mehr genau weißt, wie, wer du bist… oder viel wichtiger, wer *ich* bin… kannst du es benutzen, um deine Erinnerung aufzufrischen."  ^NHINWEIS: Um auf das Tagebuch zuzugreifen, wählst du die Tagebuch-Taste im Schnellmenü. Dein Tagebuch wird während des Spiels automatisch aktualisiert.^-{#morte2_s11_}'

    menu:
        '"In Ordnung… Ich hab„s kapiert. Gehen wir."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Was nagt an dir, Meister?"{#morte2_s12_}'

    menu:
        '"Kannst du mir noch mal vorlesen, was auf meinen Rücken tätowiert ist?{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"Was ist das hier noch mal für ein Ort?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"Dieser Ort ist riesig… Wer kümmert sich darum?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Wer kümmert sich doch gleich um diesen Ort?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"Die Leichen hier… Wo kommen die alle her?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"Wie kann ich diese Bandagen benutzen?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Nichts, Morte. Ich wollte nur mal gucken, ob du noch da bist."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Nichts, Morte. Ich wollte nur mal gucken, ob du noch da bist."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Ah, nun *komm* schon, Meister. Erzähl„ mir nicht, daß du es schon vergessen hast."{#morte2_s13_}'

    menu:
        '"Ich muß einfach mein Gedächtnis auffrischen, das ist alles."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"Dann vergiß es. Gehen wir."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"Dann vergiß es. Gehen wir."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Ich wette, daß ich DAS oft zu hören bekommen werde." Morte räuspert sich. "Laß mal sehen…"  „Ich weiß, daß du dich so fühlst, als hättest du “n paar Eimer Styx-Wasser getrunken, aber du mußt dich KONZENTRIEREN. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen kann. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.„{#morte2_s14_}'

    menu:
        '"Pharod… hmmm. Lies weiter."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"Vergiß es. Ich hab genug gehört. Gehen wir."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Vergiß es. Ich hab genug gehört. Gehen wir."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"Mach ich ja, mach ich ja, warte." Morte hält einen Augenblick lang inne. "Also gut, das letzte Stück…"  „Verliere das Journal nicht, sonst sind wir schon wieder den Styx hoch. Und was auch immer du tust, erzähle NIEMANDEM, WER du bist oder WAS mit dir geschieht, denn sonst wirst du auf eine schnelle Pilgerfahrt zum Krematorium geschickt. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod.“{#morte2_s15_}'

    menu:
        '"Und ich hatte kein Journal bei mir, als ich aufgewacht bin?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"Vergiß es. Ich hab genug gehört. Gehen wir."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Vergiß es. Ich hab genug gehört. Gehen wir."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"Nein… du warst nackt bis auf die Haut. Wie ich bereits gesagt habe, sieht so aus, als ob genug von einem Journal direkt auf deinen Körper geschrieben ist."{#morte2_s16_}'

    menu:
        '"Und du bist sicher, daß du niemanden namens Pharod kennst?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"Wie wahr. Ich hätte da noch ein paar Fragen…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"Also gut. Gehen wir."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"Also gut. Gehen wir."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Nö. Trotzdem, irgendein Dussel muß ja wissen, wo man ihn finden kann. Fragen wir doch einfach rum… NACHDEM wir hier raus sind."{#morte2_s17_}'

    menu:
        '"Bevor wir gehen hätte ich noch ein paar Fragen…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"Also gut. Gehen wir."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"Also gut. Gehen wir."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"Man nennt diesen Ort die „Leichenhalle“… Es ist ein großer schwarzer Bau mit dem architektonischen Charme einer schwangeren Spinne."{#morte2_s18_}'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"Das ist alles, was ich wissen wollte. Danke."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"Das ist alles, was ich wissen wollte. Danke."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"Sie nennen sich selbst die „Staubmenschen“. Sie sind gar nicht zu übersehen: Sie stehen auf Schwarz und totenstarre Gesichter. Sie sind eine räudige Bande ghulischer Todesanbeter, die glauben, daß jeder sterben sollte… je früher, desto besser."{#morte2_s19_}'

    menu:
        '"Das versteh ich nicht… Was können diese Staubmenschen dagegen haben, wenn ich mich hier aus dem Staub mache?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"Verstehe. Dann bin ich eben vorsichtig."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Verstehe. Dann bin ich eben vorsichtig."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Hast du nicht zugehört?! Ich sagte, daß die Staubies glauben, daß JEDER sterben muß, je früher, desto besser. Glaubst du, daß die Leichen, die du gesehen hast, sich im Totenbuch besser fühlen als außerhalb des Buchs?"{#morte2_s20_}'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"Nun, du… du *benutzt* sie. Blutung stillen, und so."  ^NHINWEIS: <BANDAGES2>^-{#morte2_s21_}'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"Danke. Ich glaube, damit werde ich schon fertig."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Danke. Ich glaube, damit werde ich schon fertig."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Der Tod sucht die Ebenen jeden Tag heim, Meister. Diese watschelnden Gerüste hier sind alles, was von den armen Schluckern übriggeblieben ist, die ihre Leichen nach ihrem Tod an die Verwalter verkauft haben."{#morte2_s22_}'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Wa… im *Ernst*? Hör zu, Meister, diese toten Dinger sind die letzte Chance für ein paar hartgesottene Typen wie uns. Wir müssen *nett* sein… und nicht wegen ein paar Schlüsseln Kleinholz aus ihnen machen, ihnen die Gliedmaßen abhacken oder etwas Ähnliches tun."{#morte2_s23_}'

    menu:
        '"Letzte Chance? Wovon *redest* du denn?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"In Ordnung… Ich… versuche, mir das zu merken."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Meister, SIE sind tot, WIR sind tot… verstehst du, worauf ich hinaus will? Nun?"{#morte2_s24_}'

    menu:
        '"Nein… nein, eigentlich nicht."{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"Du *kannst* das nicht ernst meinen."{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"Ich habe genug gehört. Gehen wir."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Meister, wir haben bereits etwas mit diesen hinkenden Damen gemein. Wir sind *alle* mindestens einmal gestorben: da haben wir doch schon Gesprächsstoff. Sie schätzen Männer mit dieser Art von Erfahrung."{#morte2_s25_}'

    menu:
        '"Warte… Hast du vorhin nicht gesagt, daß ich *nicht* tot bin?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"Ich habe genug gehört. Gehen wir."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"Tja… okay, *du* bist vielleicht nicht tot, aber *ich* bin„s. Und ich für meinen Teil hätte nichts dagegen, einen Sarg mit einem dieser sehnigen Kadaver hier zu teilen." Morte fängt an, in freudiger Erwartung mit den Zähnen zu klappern. "Natürlich müßten die Verwalter sich erst von ihnen trennen, und das ist ziemlich unwahrscheinlich…"{#morte2_s26_}'

    menu:
        '"Ich hätte da noch ein paar Fragen an dich, Morte…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"Ich habe genug gehört. Gehen wir."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"Ich wußte doch, daß du zurückkommst, Meister! Hast wohl endlich eingesehen, daß du mich brauchst, was?"{#morte2_s27_}'

    menu:
        '"Ja… Gehen wir."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Nein, Morte, im Moment brauche ich dich nicht."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmm. Na, ich werde hier nicht ewig warten. Also werde ich dir noch eine LETZTE Chance geben. Bist du sicher, daß du meine weisen Ratschläge und meinen scharfen Verstand nicht brauchst?"{#morte2_s28_}'

    menu:
        '"Morte, du hast WEDER das eine noch das andere."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Ja, Morte, im Moment brauche ich weder das eine noch das andere. Aber vielleicht später."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Willst du mich beleidigen, Meister? Habe ich was Falsches gesagt? Liegt es daran, daß ich keine Arme habe? Nun sag„s mir schon!"{#morte2_s29_}'

    menu:
        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Das hat überhaupt nichts damit zu tun. Ich brauche dich nur einfach im Moment nicht. Leb wohl, Morte."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"Also, ich werde hier nicht EWIG warten. Solltest du dir„s doch noch anders überlegen, dann mußt du dich beeilen."{#morte2_s30_}'

    menu:
        '"Okay. Leb wohl, Morte."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Du Heiligster. Das ist ein HÖLLISCHES Buch."{#morte2_s31_}'

    menu:
        '"Was ist es?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"Wenn ich raten müßte, würde ich sagen, das ist das Buch, in das sie die Namen jedes armen Schluckers ritzen, der das Pech hat, hier abgeladen zu werden."{#morte2_s32_}'

    menu:
        '"Könnte mein Name da drin sein?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Äh… tja… *könnte* sein. Um das herauszufinden, mußt du deine Knochenschüssel mit dem schwebenden Staubie da drüben rasseln lassen. Ich bin aber nicht sicher, ob das so ne gute Idee ist."{#morte2_s33_}'

    menu:
        '"Na ja, ich brauche Antworten. Ich werde mit ihm sprechen."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
