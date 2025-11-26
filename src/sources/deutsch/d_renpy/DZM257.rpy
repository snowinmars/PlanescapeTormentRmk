init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm257_logic import Zm257Logic
    zm257Logic = Zm257Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM257.DLG
# ###


# s0 # say6507
label zm257_s0: # - # IF ~  True()
    nr 'Die Augen dieser Leiche stehen sehr eng zusammen, und die Augäpfel selbst stehen leicht schief. Einer sieht nach links, und der andere nach rechts. Du kannst eben so die Zahl „257“ erkennen, die auf seiner verletzten Stirn steht - es sieht so aus, als habe die Leiche einige Schläge am Kopf eingesteckt, wodurch die Zahl jetzt nur noch schwer zu erkennen ist.'

    menu:
        '"Wird dir nicht schwindelig, wenn deine Augen so stehen?"' if zm257Logic.r6510_condition():
            # a0 # r6510
            $ zm257Logic.r6510_action()
            jump zm257_s1

        '"Wird dir nicht schwindelig, wenn deine Augen so stehen?"' if zm257Logic.r6511_condition():
            # a1 # r6511
            jump zm257_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm257Logic.r6512_condition():
            # a2 # r6512
            jump zm257_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm257Logic.r6513_condition():
            # a3 # r6513
            jump zm257_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a4 # r6514
            jump zm257_dispose

        'Laß die Leiche in Ruhe.':
            # a5 # r6515
            jump zm257_dispose


# s1 # say6508
label zm257_s1: # from 0.0 0.1 0.2
    nr 'In den Augen der Leiche flackert kein Funke des Verstehens auf. Sie starren einfach still nach links und rechts.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a6 # r6516
            jump zm257_dispose


# s2 # say6509
label zm257_s2: # from 0.3
    nr 'Der Geist fährt mit solcher Wucht wieder in den Körper, daß die Muskeln vehement zusammenzucken und die Leiche nach hinten geschleudert wird! Einen Augenblick später steht der Körper wieder auf den Beinen, tanzt und wirbelt wie wahnsinnig herum und wirft die Arme in die Luft; die Nähte reißen auf und lose Fleischfetzen fliegen herum, während der Körper vor und zurück hüpft; die Augäpfel rollen und treten aus dem Schädel, während der Mund fortwährend ein irres Kichern von sich gibt.'

    menu:
        '"Ähh… Ich habe da eine Frage an dich, Geist…"':
            # a7 # r6517
            jump zm257_s3

        'Laß den Geist in Ruhe.':
            # a8 # r9558
            jump zm257_dispose


# s3 # say9553
label zm257_s3: # from 2.0
    nr 'Die von einem Geist besessene Leiche hüpft durch die Gegend und singt aufs Geratewohl mit lauter oder leiser, hoher oder tiefer Stimme. "DU bist der GEIST, ich LEBE - beantworte meine Fragen GEFÄLLIGST!" Dein verwirrter Ausdruck scheint dem Geist zu gefallen. Mit seinen knochigen Fingern zieht er seinen Mund zu einer gräßlichen Fratze, lacht wie wahnsinnig und bewegt seine teigige, weiße Zunge hin und her.'

    menu:
        '"Also gut… stell deine Fragen."':
            # a9 # r9559
            jump zm257_s4

        '"Nein. Ich würde gern *dich* was fragen…"':
            # a10 # r9560
            jump zm257_s5

        'Laß den chaotischen Geist in Ruhe.':
            # a11 # r9561
            jump zm257_s6


# s4 # say9554
label zm257_s4: # from 3.0 4.0 5.0
    nr 'Der Geist scheint sich kurz zu beruhigen, bevor er einen ohrenbetäubend lauten Schwall himmelschreienden Unsinns von sich gibt. Die Kakophonie macht dich fast verrückt. Doch genauso schnell, wie der Ausbruch anfing… hört er wieder auf. Die Leiche beruhigt sich und zuckt nur noch leicht.'

    menu:
        '"Das hab„ ich nicht ganz kapiert. Könntest du das wohl nochmal wiederholen?"':
            # a12 # r9562
            $ zm257Logic.r9562_action()
            jump zm257_s4

        '"Ich verstehe dich nicht. Aber ich hab„ da eine Frage…"':
            # a13 # r9563
            jump zm257_s5

        '"Ich verstehe dich nicht. Leb wohl."':
            # a14 # r9564
            jump zm257_s6


# s5 # say9555
label zm257_s5: # from 3.1 4.1 5.1
    nr 'Der Geist singt wieder: "Die Fragen DER Lebenden sollen Die TOTEN beantworten; so WAR es, so ES ist, und so soll es SEIN. Du wirst BEANTWORTEN meine Fragen!" Dein Gesichtsausdruck scheint ihm großes Vergnügen zu bereiten. Er führt einen wilden Freudentanz auf, und du fragst dich, ob seine Hülle das überhaupt verkraften kann. Du kannst förmlich hören, wie ihre Knochen knacken und ihre Sehnen reißen.'

    menu:
        '"Bitte… stell deine Fragen."':
            # a15 # r9565
            jump zm257_s4

        '"Du verstehst nicht. Ich hätte da eine Frage an *dich*…"':
            # a16 # r9566
            jump zm257_s5

        'Gib auf und laß den brabbelnden Geist in Ruhe.':
            # a17 # r9567
            jump zm257_s6


# s6 # say9556
label zm257_s6: # from 3.2 4.2 5.2
    nr 'Als der Geist aus dem Körper weicht, verzieht sich sein brabbelnder Mund zu einem wissenden Lächeln. Seine wild funkelnden Augen durchdringen dich wie der Blick eines Psychopathen. Er flüstert dir ein einziges Wort zu, das er deutlich ausspricht und wie Gummi dehnt: "Limbus…"'

    menu:
        '"Was?"':
            # a18 # r9568
            jump zm257_s7

        'Ignoriere ihn und wende dich ab.':
            # a19 # r9569
            jump zm257_dispose


# s7 # say9557
label zm257_s7: # from 6.0
    nr '…und mit diesem Wort entfleucht er. Du fühlst dich kein bißchen besser und etwas durcheinander. Der Zombie nimmt still seine Arbeit wieder auf.'

    jump zm257_dispose
