init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"Zdar šefíku. Seš v pořádku? Hraješ si tu na mrtváka nebo se snažíš zmást Spalovače? Myslel sem, že seš naprosto vytuhlej."~ [MRT001]'

    menu:
        '"Co…? Kdo jsi?"':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"Ehm… kdo jsem *JÁ?* Neměl bys začít spíš *TY*? Kdo seš ty?"'

    menu:
        '"Já… nevím. Nemůžu si vzpomenout."':
            # a1 # r39796
            jump morte1_s2

        '"Já se *TĚ* ptal první, lebko."':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"Jó, tak pán si nemůže vzpomenout na méno? Ha. Tak příště, až budeš na flámu, tak to s tim chlastem zas tak nepřeháněj. Já jsem ňákej Morte. Taky jsem tu zavřenej."'

    menu:
        '"Zavřenej?"':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"Jo a já se ptal *druhej*. Takže, jak se menuješ?"'

    menu:
        '"Já… nevím. Nemůžu si vzpomenout."':
            # a4 # r39801
            jump morte1_s2

        '"Ty první, lebko. Tohle je naposledy, co se ptám."':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"Ouuuu… s tebou je sranda jak s oprátkou kolem krku. Tak teda jo, klaďase si zahraju já. Jmenuju se Morte. Kdo seš ty?"'

    menu:
        '"Já… nevím. Nemůžu si vzpomenout."':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"Jo, přesně tak. Zatímco ty sis tady válel šunky, tak já už jsem makal jako včelka: Vodzkoušel jsem všecky dveře, jenže tahle místnost je zamčená víc než pás cudnosti."'

    menu:
        '"Takže jsme zamčení v… kdeže? Co je tohle za místo?"':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"Říká se tomu Márnice… je to taková velká černá budova připomínající svou strukturou gravidního pavouka."'

    menu:
        '"Márnice? To jako že jsem mrtvý?"':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"Minimálně z mýho pohledu ne. Máš teda spoustu jizev a… vypadáš, jako by tě ňákej čipera pomaloval nožem. To je další důvod, proč zdrhnout z tohodle místa. Přece bys nechtěl, aby se ten umělec vrátil dokončit svou práci."'

    menu:
        '"Jizvy? Vypadají hodně zle?"':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"Nooo… ty na hrudníku eště nejsou zas tak moc špatný… jenže ty na zádech…" Morte se odmlčel. "Dalo by se říct, že máš na zádech vyobrazenej katalog z tetovacího salónu, chápeš, šéfíku? Moh bych je přečíst…"'

    menu:
        '"Tetování na zádech? A co říkají?"':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"Hohó! Tak se mi zdá, že tu máš napsaný pokyny…" prohodil Morte. "Tak se na to podíváme… začíná to…  "Vím, že se cítíš, jako bys vypil několik džberů bahna z řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl válet deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých."'

    menu:
        '"Pharod…? Je tam ještě něco?"':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"Jo, ještě pořád tu něco zbejvá…" Morte se odmlčel. "Takže… pokračuje to…"  "Hlavně ten deník neztrať, protože pak bychom zase byli v bahně Styxu. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria. Udělej, co ti říkám: PŘEČTI si deník, pak NAJDI Pharoda."'

    menu:
        '"A já se divím, že mě bolí záda; vždyť tam mám hotový román. A k tomu deníku, co jsem měl mít u sebe… neválí se tu někde kolem?"':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"Ne… přivlekli tě sem svlečenýho až na kůži. Ale stejně to vypadá, že velkej díl toho deníku máš napsanej na svým těle."'

    menu:
        '"A co ten Pharod? Znáš ho?"':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"Nikoho takovýho neznám… na druhou stranu, já neznám zrovna moc lidí. Tak ale pořád by tu moh bejt někdo, kdo o Pharodovi vědět bude… teda nejdřív se vocaď budem muset dostat."'

    menu:
        '"A jak se odsud dostaneme?"':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"No, všecky dveře sou zavřený, takže by se nám šiknul klíč. Je možný, že ho bude mít jedna z těch chodících mrtvol."'

    menu:
        '"Chodících mrtvol?"':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"Jo, majitelé Márnice je vydržujou jako levnou pracovní sílu. Ty mrtvoly sou zamlklý jak kameny, ale taky sou neškodný a nenapadnou tě, pokud ty nezaútočíš první."'

    menu:
        '"Nebyla by nějaká jiná možnost? Nechci je zabíjet jen tak pro klíč."':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"Takže mám jednu z těch mrtvol zabít a sebrat jí ten klíč?"':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"Copak ty myslíš, že je to bude bolet? Sou MRTVÝ. A když to vezmeš z tý druhý stránky: zabiješ je a oni tak konečně dosáhnou odpočinku. Teda až do tý doby, než je znovu oživěj."'

    menu:
        '"Tak dobrá… sundám jednoho z nich a seberu mu ten klíč."':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"No, ale než to uděláš, tak by ses moh eště ozbrojit. Myslím, že někde v těch poličkách kolem se válí skalpel."  POZNÁMKA: Prozkoumej police v místnosti a najdi zbraň pro napadení zombie. Až nějakou najdeš, přepni se do obrazovky inventáře (tlačítko batohu vpravo dole) a ozbroj se. Přeješ-li si prozkoumat předmět, který najdeš, klikni na něj pravým tlačítkem v obrazovce inventáře.'

    menu:
        '"Tak dobrá, podívám se po něm."':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"A ještě jedna věc: Tydle mrtvoly jsou sice jak zpomalenej film, jenže dostat ránu vod jedný z nich je, jako by tě políbilo beranidlo. Dyž už ti začne docházet dech, uvědom si, že ty můžeš UTÍKAT, jenže ony ne. Takže pokavaď se potřebuješ zotavit, můžeš si tak udržovat odstup."  POZNÁMKA: Pro běh buď přepni položku běh v nastavení, nebo stiskni klávesu SHIFT a levým myšítkem klikni na místo, kam chceš jít. Jsi-li v nebezpečí, nebo umíráš-li, můžeš si tak udržovat odstup od zombie a zotavit se.'

    menu:
        '"Výborně. Dík za radu."':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Někde v těch policích kolem by se měl poflakovat skalpel. Bejt tebou, tak ho najdu dřív, než si pudu poklábosit s některým zombíkem."  POZNÁMKA: Prozkoumej police v místnosti a najdi zbraň pro napadení zombie. Až nějakou najdeš, přepni se do obrazovky inventáře (tlačítko batohu vpravo dole) a ozbroj se. Přeješ-li si prozkoumat předmět, který najdeš, klikni na něj pravým tlačítkem v obrazovce inventáře.'

    menu:
        '"Tak fajn… ještě se tu podívám."':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"No hurá, našels ten skalpel! Teď si to skoč vyřídit s těma mrtvolama… a nemusíš se bát, já zůstanu vzadu a budu ti poskytovat cenné taktické informace a rady."'

    menu:
        '"Možná bys mi mohl pomoci, Morte."':
            # a22 # r39835
            jump morte1_s20

        '"Tak dobrá."':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"No vždyť já ti budu pomáhat. Nejni přece nad dobrou radu."'

    menu:
        '"Měl jsem na mysli pomoci mi s napadením zombie."':
            # a24 # r39838
            jump morte1_s21

        '"Tak tedy dobrá."':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"Cože, já? Já sem romantik a ne žádnej voják. Prostě se budu držet stranou."'

    menu:
        '"Hele, až napadnu tu mrtvolu, tak ty budeš stát vedle mě a bojovat taky, jinak budeš další věc na řadě, do které zarazím tenhle skalpel."':
            # a26 # r39841
            jump morte1_s22

        '"Tak tedy dobrá."':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"Ehmm… tak jo. Pomůžu ti."  POZNÁMKA: Pokud chceš, aby ti Morte pomohl v boji, ujisti se, že oba dva jste označeni, když napadáš soupeře. Morte se potom přidá k útoku.'

    menu:
        '"Jsem rád, že si rozumíme."':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"Je čas představit těm mrtvolám jejich druhou smrt…"  POZNÁMKA: Možnost útoku můžeš vybrat jak z rychlého menu, tak i pomocí tlačítka "A".'

    menu:
        '"Tak jdeme."':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"No sláva, zdá se, že todle byla ta správná mrtvolka. Teď už jenom najít ten klíč. Měl by bejt někde u toho těla. Až ho najdeš, konečně vocaď vypadnem."  POZNÁMKA: Nese-li nějaká bytost předmět a je-li zabita, pak tento předmět je položen na zem. Všechny předměty se zobrazí na hromádce vedle mrtvého těla. Přejeď kursorem přes dané místo pro ujištění, že ti nic neuniklo.'

    menu:
        '"Dobrá."':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"Hohó, to bude ten klíč. Určitě pasuje do jedněch z těch dveří."'

    menu:
        '"Tak teda vyzkoušíme všechny postupně."':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"Já věděl, že se vrátíš, šéfíku! Konečně ti došlo, jak mě potřebuješ, co?"~ [MRT516]'

    menu:
        '"Jo… tak půjdem."':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"Ještě ne, Morte."':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"Hmmmph. Nevim, jak dlouho tu ještě vydržím stát, takže ti dávám POSLEDNÍ šanci. Určitě nepotřebuješ můj bystrej úsudek a moudrý rady?"'

    menu:
        '"Morte, ani jednu z těchto věcí neovládáš."':
            # a34 # r39855
            jump morte1_s28

        '"Dobrá, rozmyslel jsem si to. Tak pojď, půjdeme."':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"Teď ne, Morte. Možná později."':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"Snažíš se ranit mý city? Copak sem něco špatnýho řek? Je to tím, že nemám ruce? Co?"'

    menu:
        '"Dobrá, rozmyslel jsem si to. Tak pojď, půjdeme."':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"Nic takového. Prostě tvojí společnost momentálně nepotřebuju. Sbohem, Morte."':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"No, ale já tu nehodlám čekat VĚČNĚ, takže se rači brzo vrať, než si to rozmyslím."'

    menu:
        '"Vrátím se. Zatím sbohem, Morte."':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"Co tě žere, šéfíku?"~ [MRT515]'

    menu:
        '"Teď zrovna nic, Morte. Jenom se ujišťuji, že jsi pořád se mnou."':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"Ehm, šéfe… voni tě neslyší, kapišto? Jsou mrtví."'

    menu:
        '"Ale ty jsi taky mrtvý. A přesto se mnou mluvíš."':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"No jo, ale *Já* sem výjimka. Smrt ňák nemůže ukončit mou chuť k životu. Ty mrtváci támhle…" Morte pohlédne směrem k nim. "Ty nemaj tolik osobnosti, aby něco takovýho dokázali."'

    menu:
        '"Jo… chápu."':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"Koukni šéfe… sledovat, jak se snažíš plkat s těmahle mrtvákama, mě moc nebere. Nenecháme radši tydle záhrobní bláboly na těch pitomcích, co?"'

    menu:
        '"V pohodě. Pojďme."':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"Zdá se, že naše přání byly vyslyšený šéfe. Koukni… má v ruce klíč."'

    jump zm782_s2  # EXTERN
