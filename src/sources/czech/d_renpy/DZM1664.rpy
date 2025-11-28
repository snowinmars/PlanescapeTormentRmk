init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'Obrovská mrtvola tiše stojí v rohu místnosti, tváří ke stěně. Vypadá, že v dřívějších časech to byl zavalitý muž. Podle stavu těla soudíš, že zemřel teprve nedávno. Čerstvě vyšité číslo na jeho čele hlásí "1664." Tahle mrtvola vypadá, že slouží jako knihovník, podle ohromné hromady knih, které drží v náručí.{#zm1664_s0_1}'

    menu:
        'Prohlédni knihy.{#zm1664_s0_r47003}' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Znovu prohlédni knihy.{#zm1664_s0_r47004}' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"Vím, že nejsi zombie, rozumíš. Nikoho neoklameš."{#zm1664_s0_r47005}' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Užij na mrtvolu svou schopnost Kosti-vyprávějte.{#zm1664_s0_r47006}' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"Bylo skvělé si s tebou popovídat. Sbohem."{#zm1664_s0_r47007}':
            # a4 # r47007
            jump zm1664_dispose

        'Nechej mrtvolu být.{#zm1664_s0_r47008}':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'Mrtvola zírá prázdně do zdi.{#zm1664_s1_1}'

    menu:
        'Nechej mrtvolu být.{#zm1664_s1_r47010}':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'Mrtvola se nehýbá. Navzdory skutečnosti, že je mrtvá teprve chvíli, nezdá se schopna odpovědět na některou z tvých otázek.{#zm1664_s2_1}'

    menu:
        'Nechej mrtvolu být.{#zm1664_s2_r47012}':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Nicméně, jak sis prohlížel jednotlivé texty, objevil jsi volný list vložený mezi dvě knihy. Náhle tě přepadl pocit, že jej tam někdo dal jako do úkrytu.{#zm1664_s3_1}'

    menu:
        'Vezmi stránku.{#zm1664_s3_r47014}':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'Stránka nevypadá jako vytržená z účetních knih… spíš byla součástí nějakých záznamů. Odtržení je rovně oříznuté jakoby nožem, proto předpokládáš, že stránka byla odstraněna úmyslně.{#zm1664_s4_1}'

    menu:
        'Přečti si to.{#zm1664_s4_r47016}':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'Pročíst se celou stránkou ti zabralo trochu času… je to seznam mrtvých těl přinesených do Márnice a zaznamenaných v Přijímací místnosti. Všechna přihlášení vypadají jako z nedávné doby.  POZNÁMKA: Aby sis "přečetl" zprávy, knihy nebo svitky, ulož je do svého inventáře, klikni na ně pravým tlačítkem a zobrazí se ti panel s informacemi.{#zm1664_s5_1}'

    menu:
        'Prozkoumej zombie znova.{#zm1664_s5_r47018}':
            # a10 # r47018
            jump zm1664_s0

        'Odejdi a vezmi si stránku s sebou.{#zm1664_s5_r47019}':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Ještě jednou je prohledáváš, ale už jsi nenašel nic dalšího.{#zm1664_s6_1}'

    menu:
        '"Tak jak ses stal knihovníkem? Všechna ostatní místa byla obsazená?"{#zm1664_s6_r47022}':
            # a12 # r47022
            jump zm1664_s1

        'Opusť zombie v míru.{#zm1664_s6_r47023}':
            # a13 # r47023
            jump zm1664_dispose
