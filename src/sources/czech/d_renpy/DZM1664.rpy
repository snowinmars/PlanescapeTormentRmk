init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'Obrovská mrtvola tiše stojí v rohu místnosti, tváří ke stěně. Vypadá, že v dřívějších časech to byl zavalitý muž. Podle stavu těla soudíš, že zemřel teprve nedávno. Čerstvě vyšité číslo na jeho čele hlásí "1664." Tahle mrtvola vypadá, že slouží jako knihovník, podle ohromné hromady knih, které drží v náručí.'

    menu:
        'Prohlédni knihy.' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Znovu prohlédni knihy.' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"Vím, že nejsi zombie, rozumíš. Nikoho neoklameš."' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Užij na mrtvolu svou schopnost Kosti-vyprávějte.' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"Bylo skvělé si s tebou popovídat. Sbohem."':
            # a4 # r47007
            jump zm1664_dispose

        'Nechej mrtvolu být.':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'Mrtvola zírá prázdně do zdi.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'Mrtvola se nehýbá. Navzdory skutečnosti, že je mrtvá teprve chvíli, nezdá se schopna odpovědět na některou z tvých otázek.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Nicméně, jak sis prohlížel jednotlivé texty, objevil jsi volný list vložený mezi dvě knihy. Náhle tě přepadl pocit, že jej tam někdo dal jako do úkrytu.'

    menu:
        'Vezmi stránku.':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'Stránka nevypadá jako vytržená z účetních knih… spíš byla součástí nějakých záznamů. Odtržení je rovně oříznuté jakoby nožem, proto předpokládáš, že stránka byla odstraněna úmyslně.'

    menu:
        'Přečti si to.':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'Pročíst se celou stránkou ti zabralo trochu času… je to seznam mrtvých těl přinesených do Márnice a zaznamenaných v Přijímací místnosti. Všechna přihlášení vypadají jako z nedávné doby.  POZNÁMKA: Aby sis "přečetl" zprávy, knihy nebo svitky, ulož je do svého inventáře, klikni na ně pravým tlačítkem a zobrazí se ti panel s informacemi.'

    menu:
        'Prozkoumej zombie znova.':
            # a10 # r47018
            jump zm1664_s0

        'Odejdi a vezmi si stránku s sebou.':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Ještě jednou je prohledáváš, ale už jsi nenašel nic dalšího.'

    menu:
        '"Tak jak ses stal knihovníkem? Všechna ostatní místa byla obsazená?"':
            # a12 # r47022
            jump zm1664_s1

        'Opusť zombie v míru.':
            # a13 # r47023
            jump zm1664_dispose
