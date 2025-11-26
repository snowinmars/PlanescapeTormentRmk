init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr 'This huge corpse is standing silently in a corner of the room, facing the wall. He looks to have been a heavy-set man in his early years, and judging by the condition of the body, he died only recently. The freshly-stitched number on his forehead reads "1664." This corpse looks like it is serving as a librarian, for it is carrying a huge stack of books in its arms.'

    menu:
        'Examine the books.' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        'Examine the books again.' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"It was great talking to you. Farewell."':
            # a4 # r47007
            jump zm1664_dispose

        'Leave the corpse in peace.':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr 'The corpse stares blankly at the wall.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr 'The corpse does not stir. Despite the fact it looks recently dead, it does not seem able to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr 'The books appear to be old Mortuary ledgers, none of them of any particular interest. As you search through the texts, however, you notice a loose page folded between two of the books. You are suddenly struck with the feeling that someone tucked it there to hide it.'

    menu:
        'Take the page.':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr 'The page doesn„t look like it belongs with the ledgers… it looks like it belongs in a log book. The tear is clean, as if with a knife, so you suspect the page was removed on purpose.'

    menu:
        'Read through it.':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr 'You take a moment to read through the page… it„s a list of dead bodies brought to the Mortuary and logged in the Receiving Room. All the entries appear to be recent arrivals.  ^NNOTE: <READSTUFF>^-'

    menu:
        'Examine the zombie again.':
            # a10 # r47018
            jump zm1664_s0

        'Take the page with you and leave.':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr 'The books appear to be old Mortuary ledgers, none of them of any particular interest. You do another search through the texts, but you find nothing more.'

    menu:
        '"So how did you come to be a librarian? All the other jobs taken?"':
            # a12 # r47022
            jump zm1664_s1

        'Leave the zombie in peace.':
            # a13 # r47023
            jump zm1664_dispose
