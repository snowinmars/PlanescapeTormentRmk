init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1664_logic import Zm1664Logic
    zm1664Logic = Zm1664Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1664.DLG
# ###


# s0 # say47002
label zm1664_s0: # from 5.0 # IF ~  True()
    nr '이 거대한 체구의 시체는 방 한 구석에서 조용히 서 있다. 그는 생전에 거구의 청년이었던 듯 하며, 시체의 상태로 미루어 볼 때 최근에 죽은 것 같다. 이마의 "1664"란 번호도 실로 꿰맨 지 얼마되지 않은 듯하다. 팔에 책을 잔뜩 들고 있는 것을 볼 때 이 시체는 사서 노릇을 하고 있는 듯하다.'

    menu:
        '책들을 살펴본다.' if zm1664Logic.r47003_condition():
            # a0 # r47003
            jump zm1664_s3

        '책들을 다시 살펴본다.' if zm1664Logic.r47004_condition():
            # a1 # r47004
            jump zm1664_s6

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zm1664Logic.r47005_condition():
            # a2 # r47005
            jump zm1664_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zm1664Logic.r47006_condition():
            # a3 # r47006
            jump zm1664_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a4 # r47007
            jump zm1664_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a5 # r47008
            jump zm1664_dispose


# s1 # say47009
label zm1664_s1: # from 0.2 6.0
    nr '좀비는 벽을 멍하니 쳐다보고 있다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a6 # r47010
            jump zm1664_dispose


# s2 # say47011
label zm1664_s2: # from 0.3
    nr '시체는 미동도 하지 않는다. 최근에 죽은 것처럼 보이는 데도 불구하고 당신 질문에 대답할 수가 엇는 듯하다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a7 # r47012
            jump zm1664_dispose


# s3 # say47013
label zm1664_s3: # from 0.0
    nr '책들은 오래된 시체안치소 장부들인 것 같으나, 당신의 관심을 끌 만한 내용은 없는 듯하다. 하지만 책들을 뒤지다가 당신은 두 권의 책 사이에 낀 푸석푸석한 페이지 한 장을 발견한다. 갑자기 당신은 누군가 그것을 감추려고 그 곳에 끼워 넣었다는 생각을 하게 된다.'

    menu:
        '그 페이지를 챙겨 넣는다.':
            # a8 # r47014
            $ zm1664Logic.r47014_action()
            jump zm1664_s4


# s4 # say47015
label zm1664_s4: # from 3.0
    nr '그 페이지는 장부에서 나온 것 같지는 않다… 일지에서 떨어져 나온 듯하다. 찢어진 부분이 마치 칼로 자른 것처럼 깨끗한 것을 볼 때 누군가 일부러 잘라낸 것 같다.'

    menu:
        '그것을 통독한다.':
            # a9 # r47016
            jump zm1664_s5


# s5 # say47017
label zm1664_s5: # from 4.0
    nr '당신은 잠시 그 페이지를 읽는다… 그것은 시체안치소로 운반되어 접수실로 옮겨진 시체들의 목록이다. 목록의 항목들은 모두 최근에 도착한 시체에 대한 것 같다.  ^NNOTE: <READSTUFF>^-'

    menu:
        '좀비를 다시 살펴본다.':
            # a10 # r47018
            jump zm1664_s0

        '그 페이지를 챙겨 넣고 떠난다.':
            # a11 # r47019
            jump zm1664_dispose


# s6 # say47021
label zm1664_s6: # from 0.1
    nr '책들은 오래된 시체안치소 장부들인 것 같으나, 당신의 관심을 끌 만한 내용은 없는 듯하다. 책들을 한 번 더 뒤져보지만 아무 것도 나오지 않는다.'

    menu:
        '"그래, 당신은 어떻게 해서 사서가 되었소? 다른 일자리는 남은 게 없었소?"':
            # a12 # r47022
            jump zm1664_s1

        '좀비를 그냥 내버려 둔다.':
            # a13 # r47023
            jump zm1664_dispose
