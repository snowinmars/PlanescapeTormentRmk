// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~Widzisz pokrytego łuską biesa, który wygląda bardzo podobnie do innego, stojącego obok - oprócz przekłutych lewych uszu obaj są gadami o czarnej skórze i złożonych razem nietoperzowych skrzydłach. Temu brakuje zęba po prawej stronie. Zauważa stojące obok ciebie Annę i Nie-Sławę i parska, sycząc: "Zabierz to robactwo z Otchłani, wtedy porozmawiamy. Do tego czasu ani słowa." Ponownie spluwa dla podkreślenia swoich słów.~ */
  IF ~~ THEN REPLY #3059 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~Widzisz pokrytego łuską biesa, który wygląda bardzo podobnie do innego, stojącego obok - oprócz przekłutych lewych uszu obaj są gadami o czarnej skórze i złożonych razem nietoperzowych skrzydłach. Temu brakuje zęba po prawej stronie. Zauważa stojącą obok ciebie Annę i parska, sycząc: "Zabierz to małe kaducze robactwo, wtedy porozmawiamy. Do tego czasu ani słowa." Ponownie spluwa dla podkreślenia swoich słów.~ */
  IF ~~ THEN REPLY #12343 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~Widzisz pokrytego łuską biesa, który wygląda bardzo podobnie do innego, stojącego obok - oprócz przekłutych lewych uszu obaj są gadami o czarnej skórze i złożonych razem nietoperzowych skrzydłach. Temu brakuje zęba po prawej stronie. Zauważa stojącą obok ciebie Nie-Sławę i parska, sycząc: "Zabierz to robactwo z Otchłani, wtedy porozmawiamy. Do tego czasu ani słowa." Ponownie spluwa dla podkreślenia swoich słów.~ */
  IF ~~ THEN REPLY #12345 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~Widzisz pokrytego łuską biesa, który wygląda bardzo podobnie do innego, stojącego obok - oprócz przekłutych lewych uszu obaj są gadami o czarnej skórze i złożonych razem nietoperzowych skrzydłach. Temu brakuje zęba po prawej stronie. "Ach, Tegar'in," powiada, "nasz stary przyjaciel powrócił, by złożyć nam wizytę."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~Abiszai prostuje się na twój widok. "Zabierz małe szczury chaosu..." wskazuje na Nie-Sławę i Annę "...daleko od nas, a wtedy będziemy się z tobą układać. Do tego czasu nie zamienimy z tobą ani słowa."~ */
  IF ~~ THEN REPLY #12348 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~Abiszai prostuje się na twój widok. "Zabierz małego szczura chaosu..." wskazuje na Annę "...daleko od nas, a wtedy będziemy się z tobą układać. Do tego czasu nie zamienimy z tobą ani słowa."~ */
  IF ~~ THEN REPLY #12350 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~Abiszai prostuje się na twój widok. "Zabierz małego szczura chaosu..." wskazuje na Nie-Sławę "...daleko od nas, a wtedy będziemy się z tobą układać. Do tego czasu nie zamienimy z tobą ani słowa."~ */
  IF ~~ THEN REPLY #12352 /* ~"Zatem żegnajcie."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"Syn marnotrawny wraca, hę?" Bies syczy do ciebie i uśmiecha się, a trujące opary wydobywają mu się z kącików ust. "Czy twoje wspomnienia wróciły do ciebie, stary przyjacielu?"~ */
  IF ~~ THEN REPLY #12354 /* ~"Co masz na myśli?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"Mam kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"Kilka pytań? Może mamy odpowiedzi. Z pewnością chętnie ci pomożemy, stary przyjacielu."~ */
  IF ~~ THEN REPLY #12358 /* ~"Kim jesteś?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"Co tutaj robicie?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"Co to za miejsce?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"Opowiedzcie mi o biesach."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"Czy znacie Zbieracza o imieniu Farod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"Szukam dziennika."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"Rozważam tę umowę, o której wcześniej mówiliście."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"Czy znacie Zbieracza, który układał się z biesami?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"Jeszcze raz, gdzie ukrywa się ten Zbieracz?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"Jakiego rodzaju jest 'moc', którą obdarzy mnie medalion?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"Nie udało mi się odebrać medalionu od Erynii, a ona zniknęła."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Kłamstwo: "Nie potrafiłem znaleźć Erynii. Nie było jej w alejce, o której mi opowiadaliście."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"Oto i medalion."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"Nieważne. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"Podobnie jak mnie, Tegar'inie... bardzo mi go żal. Jednak jestem spokojny. Minęło, w końcu, wiele setek lat, a wiemy, że umysły śmiertelników mają zwyczaj rozpływać się z czasem."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Etelgrin ignoruje cię, odpowiadając swemu towarzyszowi: "I ponownie, Tegar'inie, trafiłeś prosto w sedno sprawy. Choć może nie jest najlepszym pozyskanie uwagi tego rodzaju, jaką z pewnością na siebie zwraca noszący imię 'Po Trzykroć Przeklęty'."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"Mam jeszcze kilka pytań..."~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"Mam jeszcze kilka pytań..."~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"O, czyżbym widział małą latającą czaszkę? Bije od ciebie, mój piękny, słodki zapach rozkładu Baator. Może powinniśmy o tym porozmawiać... później." Abiszai zwraca się z powrotem do ciebie. "A zatem... mówiłeś, że masz jakieś pytania?"~ */
  IF ~~ THEN REPLY #12370 /* ~"Kim jesteś?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"Co tutaj robicie?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"Co to za miejsce?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"Opowiedzcie mi o biesach."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"Czy znacie Zbieracza o imieniu Farod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"Szukam dziennika."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"Rozważam tę umowę, o której wcześniej mówiliście."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"Czy znacie Zbieracza, który układał się z biesami?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"Jeszcze raz, gdzie ukrywa się ten Zbieracz?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"Jakiego rodzaju jest 'moc', którą obdarzy mnie medalion?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"Nie udało mi się odebrać wisiora od Erynii, a ona zniknęła."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Kłamstwo: "Nie potrafiłem znaleźć Erynii. Nie było jej w alejce, o której mi opowiadaliście."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"Oto i medalion."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"Nie. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"Co robimy? Cóż, czyż to nie jest jasne jak słońce, stary przyjacielu? Jesteśmy na przepustce z naszej ukochanej wojenki, korzystamy z wielce potrzebnych chwil odpoczynku i może skłonimy kogoś, by przyłączył się do naszej chwalebnej sprawy. Tak dla pewności, nasi przełożeni w pełni popierają naszą obecność."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"Wydaje nam się, że istnieją dwa rodzaje biesów: Te, które mają rację, oraz te, które jej nie mają. Nasza strona - baatezu - jest słuszna. Druga, ci przeklęci, znienawidzeni, chaotyczni tanar'ri, jest niewłaściwa i musi zostać zniszczona."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"Nie prowadzę dzienników, przyjacielu, i radzę ci, abyś również tego nie czynił. Spytaj mojego drogiego towarzysza Tegar'ina dlaczego, a zostaniesz oświecony."~ */
  IF ~~ THEN REPLY #12380 /* ~"Dobrze. Tegar'inie, czemu nie powinienem prowadzić dziennika?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"Może później. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"Może później. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"Tak, tak. Czy on wie?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"Tak, oczywiście, masz zupełną rację." Bies odwraca się do ciebie. "Co wiesz o tym Zbieraczu, przyjacielu z dawnych lat?"~ */
  IF ~~ THEN REPLY #14741 /* ~"Niewiele, tyle tylko, że ma dziwne zwyczaje i widywano go rozmawiającego z biesami."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"Nic, tak właściwie. Miałem nadzieję, że może mnie oświecisz."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"Niewiele. Spytam was jednak o to innym razem. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"Powiedziałbym ci, towarzyszu, ale niestety, przysiągłem o tym nie mówić!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"Czy ty nie przysięgałeś, Tegar'inie?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"Cudownie!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~Drugi bies przerywa, zanim Tegar'in zdążył się odezwać: "Medalion! Nie zapominaj!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"...może chciałbyś zawrzeć z nami układ? Jak za starych dobrych czasów..."~ */
  IF ~~ THEN REPLY #14743 /* ~"Nie. Nie zgadzam się."~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"Co miałeś na myśli?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"Opowiemy ci wszystko, co wiemy o 'Zbieraczu'..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"...o jego słabościach i o tym, jak go pokonać, zdobywając w ten sposób jego medalion - którego moglibyśmy użyć, aby uczynić cię o wiele silniejszym. W zamian..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"Tak, medalion. Ma kształt ludzkiej czaszki z sześcioma kryształami wpuszczonymi w okolice ciemienia."~ */
  IF ~~ THEN REPLY #14745 /* ~"Czemu nie zdobędziecie go sami?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"Jaka moc kryje się w medalionie?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"Zgoda."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"Nie. Nie zgadzam się."~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"Zabroniono nam w ogóle zbliżać się do 'Zbieracza', nie mówiąc już o nagabywaniu go, czy krzywdzeniu."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"Nic ważnego dla ciebie."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"Nie ma ponadto żadnych mocy. To właściwie przedmiot działający dość pasywnie."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"Z pewnością zaś, każdy może dostrzec korzyści płynące dla nas z posiadania takowego przedmiotu."~ */
  IF ~~ THEN REPLY #14749 /* ~"Czemu nie zdobędziecie go sami?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"Zgoda."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"Nie. Nie zgadzam się."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"Niedobrze, niedobrze."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"Doskonale."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"Ona została przeklęta, rozumiesz, zaklęta w postać, w jakiej ją widzisz. Wiele z jej siły zostało zmarnowane, odarte przez świętą moc kapłana."~ */
  IF ~~ THEN REPLY #14752 /* ~"Interesujące..."~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"To uwodzicielki."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"Po prostu zdejmij medalion z jej ciała i zwróć go nam, by dopełnić umowy, przyjacielu. Użyjemy mocy, jaką udało jej się zgromadzić w środku, by cię wzmocnić, a potem zatrzymamy pusty przedmiot dla siebie."~ */
  IF ~~ THEN REPLY #14753 /* ~"Rozumiem."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"Nie zrobię tego. Nie ma mowy."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"Cudownie! Wróć tutaj, gdy wykonasz zadanie."~ */
  IF ~~ THEN REPLY #14755 /* ~"Zanim odejdę, mam kilka pytań..."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"Zatem żegnaj."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"Jakie to okrutne!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"O *wiele* silniejszy!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"Tegar'inie! Jak to się stało?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"Czy zabijemy go teraz, zaciągniemy do Baator?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"Ha! Widzisz, jak skomle, Tegar'inie?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"Doskonale!" Etelgrin wyrywa ci Wisior Yemeta, rzucając go Tegar'inowi.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Etelgrin odwraca się, jakby jego uwagę przyciągnęło coś na barze obok niego.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"Mmm? Och, nie. Nie wiedziałem."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"Niemożliwe, obawiam się. Teraz jest nasz i znaczy dla nas zbyt wiele, byśmy mogli go stracić. Proszę, wróć, gdy pozbędziesz się magii, która nie pozwala nam ci pomóc."~ */
  IF ~~ THEN REPLY #14757 /* ~Zaatakuj biesy.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"Phi. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"Co? Nie! Nie możesz!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"Zabić go?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"Podły mięczaku! Precz!"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"Czekaj... mam medalion."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Odejdź.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"Spójrz, on powrócił. I ma medalion!"~ */
  IF ~~ THEN REPLY #14761 /* ~"Zaczekaj - jakiego rodzaju moc mi przekażecie?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"Oto i medalion."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"Zdecydowałem się zatrzymać medalion."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"Ach, patrz kto powrócił. Tak nam przykro, przyjacielu, ale nie będziemy rozmawiać z tobą, dopóki nie przyniesiesz nam naszego medalionu. Żegnaj."~ */
  IF ~~ THEN REPLY #14764 /* ~Odejdź.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"Spójrz, kto to jest, Tegar'inie..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"Powinna być ukryta sama w alejce nieco na północ od tego miejsca, pomiędzy dwoma budynkami. Szukaj jej tam późnym wieczorem."~ */
  IF ~~ THEN REPLY #14765 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"To wszystko, co chciałem wiedzieć. Żegnajcie."~ */ EXIT
END
