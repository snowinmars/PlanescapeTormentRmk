// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~Widzisz dość korpulentnego mężczyznę. Zwały tłuszczu wylewają się z niego wszędzie. Jego wzrok powoli zwraca się w twoim kierunku, a gdy na tobie spoczywa, nagle czujesz niewysłowione niebezpieczeństwo. "We mnie tkwi prawdziwa esencja miecza. To, co tu widzisz, to tylko pusta skorupa. Ostrze jest we mnie. Musisz mnie pokonać, aby go dosięgnąć."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"Przybyłem po miecz."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"Tak. Już ukradłem ci bandaże. Czy sądzisz, że powstrzymałbyś mnie przed kradzieżą ostrza, gdybym się na tym skupił?"~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Zapomnij o tym. Żegnaj."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~Jego głęboki głos dobywa się spod zwałów tłuszczu. "Nazywam się Kasjusz. Byłem najpotężniejszą bronią martwego Lorda Otchłani, a jego następcy wciąż mnie szukają. Jestem przerażającą tajemnicą w sercu sfer chaosu i strażnikiem tego ostrza."~ */
  IF ~~ THEN REPLY #59670 /* ~"Byłeś *bronią*?"~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"Nie wyglądasz tak groźnie..."~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"Przyszedłem po miecz."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"Rozumiem. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~Jego głos jest głęboki, jakby dochodził z wnętrza jaskini. "Ten miecz podtrzymuje Więzienie Klątwy. Jego wyjęcie uwolni wszystkich więźniów skazanych na zapomnienie. Moim zadaniem jest do tego nie dopuścić. Czy pragniesz tego ostrza?"~ */
  IF ~~ THEN REPLY #59705 /* ~"Tak."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"Nie."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"Chciałem tylko odejść."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"Kiedyś byłem najskuteczniejszą bronią w całej Otchłani, przybierającą kształt zgodny z wolą mojego władcy. Mogłem przyjąć postać zguby każdej istoty. Zabiłem więcej przeciwników mego martwego lorda, niż większość ma chwil w życiu. Mój brat, mój blady cień, mój Zekiel, wciąż zabija w głębinach Otchłani."~ */
  IF ~~ THEN REPLY #59710 /* ~"Czemu odszedłeś?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"Dobrze. Cóż, przyszedłem po miecz."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"Dobrze. Właśnie wychodziłem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"Mój władca zatonął w sercu Otchłani, podczas gdy ja byłem daleko. Gdy wróciłem z misji, on odszedł, a jego następcy sprzeczali się, który ma mnie zabrać. Żaden z nich nie potrafił mnie ułaskawić, więc odszedłem. Ta służba jest miła. Tych, którzy przychodzą - zabijam. Nie jest to trudne zadanie."~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"Przybyłem po ostrze."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"Mógłbyś mnie zabić?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"Rozumiem. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~Przygląda ci się ostrożnie. Po chwili oznajmia, "Mógłbym, choć byłaby to ciężka walka. Czy chcesz, abym cię zabił?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"Tak właściwie to przyszedłem tylko po miecz."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"Chciałbym spróbować."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"Nie. Tak właściwie, to wychodzę."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"Powiedz mi, że przyszedłeś po ostrze, a ja cię zniszczę."~ */
  IF ~~ THEN REPLY #59729 /* ~"Przyszedłem po ostrze."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"Zapomnij. Idę."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~Głos Kasjusza dochodzi z głębin jego tłustego brzucha. "Czy szukasz ostrza?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"Opowiedz mi najpierw o sobie."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"Tak."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"Tak. Już ukradłem ci bandaże. Czy sądzisz, że powstrzymałbyś mnie przed kradzieżą ostrza, gdybym się na tym skupił?"~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"Jeślibyś pożądał prawdziwej esencji ostrza, musisz do mnie wrócić i będziemy się o nią pojedynkować. W ten czy inny sposób, walczyć będziemy."~ */
  IF ~~ THEN REPLY #59736 /* ~"Dobrze, żegnaj."~ */ JOURNAL #59745 /* ~Obleśnie tłusty mężczyzna wyzwał mnie w więzieniu na dziwny pojedynek, którego stawką jest miecz, którego strzeże. Powiedział, że ma w sobie cząstkę tego miecza, więc jeżeli pożądam tego oręża, muszę stawić czoło temu tłuściochowi..~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"Zatem oto zasady. Musisz wybrać jedną z trzech opcji: siła, umysł albo szybkość. Jeśli w którejś z nich zawiedziesz, zniszczę cię."~ */
  IF ~~ THEN REPLY #59746 /* ~"Wybieram siłę."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"Wybieram umysł."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"Wybieram szybkość."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"Zapomnij. Wrócę później."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"Zatem będziemy walczyć. Gdybyś wygrał, możesz wziąć ostrze z mojego ciała. Gdybyś przegrał, ja będę ucztował na twoich kościach."~ */
  IF ~~ THEN REPLY #59751 /* ~"Dobrze."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~W ramach pojedynku o miecz, zdecydowałem się poddać próbie siły. Zobaczymy kto tu jest silniejszy. Kasjusz jest mocny i odgraża się, że, kiedy padnę pod jego ciosem, będzie ucztował siedząc na moich kościach.~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"W takim wypadku wybieram umysł."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"W takim wypadku wybieram szybkość."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"W takim wypadku zapomnij."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"Zatem zadam ci trzy zagadki. Jeśli na nie nie odpowiesz, zniszczę cię, z twojej czaszki zrobię fajki, a na twej duszy będę po wieczność grał pieśń udręki."~ */
  IF ~~ THEN REPLY #59757 /* ~"Dobrze. Zadawaj zagadki."~ */ JOURNAL #59738 /* ~Rozpoczynam z Kasjuszem próbę umysłu. Jest to seria trzech zagadek. Jeżeli wygram, zdobędę miecz. Jeżeli przegram, to, według pogróżek Kasjusza, mój szkielet i mój duch staną się jego narzędziami.~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"W takim wypadku wybieram siłę."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"W takim wypadku wybieram szybkość."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"W takim wypadku zapomnij."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"Zatem musisz ukraść zwój bandaża z kryjówki w moim ciele. Jeśli ci się uda, porozmawiaj ze mną, a ja wyciągnę ostrze z kryjówki. Jeśli zawiedziesz, ognie Piekieł będą ci się zdawać łagodne w porównaniu z bólem, jaki ci zadam. Czy chcesz rozpocząć?"~ */
  IF ~~ THEN REPLY #59765 /* ~"Dobrze."~ */ JOURNAL #59739 /* ~Rozpoczynam z Kasjuszem, strażnikiem miecza, próbę szybkości. Jeżeli zdołam zerwać zwój bandaży z jego otyłego ciała, wówczas będę musiał z nim jeszcze raz porozmawiać, a on podaruje mi miecz. Jeżeli przegram, to, według jego pogróżek, czeka mnie rychła zagłada.~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"W takim wypadku wybieram siłę."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"W takim wypadku wybieram umysł."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"W takim wypadku zapomnij."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"Zatem zdobądź je. W innym wypadku przyjmę, że poszukujesz ostrza w inny sposób."~ */
  IF ~~ THEN REPLY #59769 /* ~"Dobrze. Zobaczymy."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"Zacznijmy od klasycznej zagadki: Co chodzi na czterech nogach rano, dwóch w południe i trzech o zmierzchu?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~Znasz odpowiedź: "Człowiek, który raczkuje po urodzeniu, chodzi na dwóch nogach, gdy jest młody i opiera się na lasce, gdy jest stary."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"Mężczyzna?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"Zraniony żuk?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"Niedźwiedź?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"Zmiennokształtny tanar'ri?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"To nieprawda. Zginiesz w wyjątkowym bólu."~ */
  IF ~~ THEN REPLY #59775 /* ~"Czekaj!"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"To prawda. Oto druga zagadka: jęczę, ale słowa nigdy nie wychodzą z moich ust. Mogę być próżny, ale nigdy nie jestem zaspokojony. Czym jestem?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~Znasz odpowiedź: "Czy jesteś głodem?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"Duch?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"Więzień bez języka?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"Głód?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"Księżyc?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"Tak. Trzecia zagadka brzmi: Co leci, ale nie może stanąć w miejscu? Co pożera wszystko, czego dotknie, jednak nic nie je? Czego nigdy nie można pożyczyć, ale zawsze się marnuje? Co się zawsze spędza, ale nigdy nie nagania?"~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~Znasz odpowiedź: "Odpowiedzią jest czas."~ */ JOURNAL #59740 /* ~W próbie umysłu okazałem się lepszy od Kasjusza, strażnika miecza w więzieniu Klątwy. Nawiasem mówiąc jego pytania były dziecinnie proste.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"Czy to czas?"~ */ JOURNAL #59740 /* ~W próbie umysłu okazałem się lepszy od Kasjusza, strażnika miecza w więzieniu Klątwy. Nawiasem mówiąc jego pytania były dziecinnie proste.~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"Czy to ogień?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"Czy to moc?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"Czy to magia?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"Pokonałeś mnie. Twój wygląd sprawił, że sądziłem, iż umysł jest odbiciem pokrytej bliznami skóry. Zawiodłem i oddaję ci ostrze. Muszę odejść z tego miejsca."~ */
  IF ~~ THEN REPLY #59787 /* ~"Dzięki."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"Twój wygląd zadaje kłam umiejętnościom. Naprawdę jesteś dla mnie zbyt przebiegłym złodziejem, bym powstrzymywał twoje wysiłki. Oto klucz. Muszę odejść z tego miejsca, by ukryć swój wstyd."~ */
  IF ~~ THEN REPLY #59788 /* ~"Zatem żegnaj."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~W próbie szybkości okazałem się lepszy od Kasjusza, strażnika miecza w więzieniu Klątwy. Nawiasem mówiąc Kasjusz był powolny jak wół.~ */ EXIT
END
