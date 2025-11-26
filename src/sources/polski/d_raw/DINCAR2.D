// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"Może... może I TAK umrzesz. NIGDY nie zapominaj, że OBSERWUJĘ was, ZŁODZIEJE, ZABÓJCY - WSZYSCY ZABÓJCY, wszyscy TRZEJ..."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"Wszyscy jesteście ZŁODZIEJAMI... macie MOJE ciało... MOJE ciało, które jeszcze mi ODDACIE!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~Mężczyzna jest podobny do ciebie, ale chowa głowę w ramionach, jak gdyby nieustannie bał się, że ktoś go uderzy. Obserwuje cię z rezerwą, i gdy podchodzisz, syczy. Zaciska dłonie, jak gdyby chciał cię udusić. Jego ramiona są okropnie sękate i pełne blizn, jak gdyby zostały skąpane w strumieniu kwasu - wygląda na to, że jego lewe ramię jest przyszyte do tułowia.~ */
  IF ~~ THEN REPLY #63714 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"WIEDZ, że długo tutaj NIE wytrzymasz, ZŁODZIEJU!" Z ust kapie mu ślina, a jego twarz wykrzywia się w doprowadzającym do szału uśmiechu. "LABIRYNTY, ŻALE I ŚMIERĆ to wszystko, co można TU ZNALEŹĆ..."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"Co masz na myśli?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"ZŁODZIEJU!" Jego ręce skręcają się, jak gdyby chciały udusić tamto wcielenie. "Będę czuł, jak twój kark PĘKA w moim uścisku... i zabiorę moje CIAŁO." Odwraca się do ciebie. "ZŁODZIEJU! Nosisz moje ciało, niczym PŁASZCZ i przynosisz mi wstyd..."~ */
  IF ~~ THEN REPLY #63719 /* ~"Nie jestem złodziejem. *Nic* ci nie ukradłem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"Jesteś ZŁODZIEJEM!" Jego ręce skręcają się, jak gdyby oplatały twoją szyję. "Będę czuł, jak twój kark PĘKA w moim uścisku... i zabiorę moje CIAŁO. Nosisz je, niczym PŁASZCZ i przynosisz mi wstyd..."~ */
  IF ~~ THEN REPLY #63721 /* ~"Nie jestem złodziejem. *Nic* ci nie ukradłem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"UKRADŁEŚ WSZYSTKO! OBUDZIŁEM SIĘ NA ULICY MIASTA PIERŚCIENI I WSZYSCY, KTÓRZY MNIE SPOTKALI, ZNALI MNIE!"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~Oddycha chrapliwie. "Wszystko, co zrobiłeś, wszyscy, których zraniłeś - czekało tam na mnie. Oskarżali mnie, ranili tak długo, aż nie mogłem już ZNIEŚĆ ich głosów..." Jego dłonie chwytają powietrze. "Więc musiałem ich UCISZYĆ."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"To ty stworzyłeś ten dwunastościenny dziennik, ten pełen pułapek, prawda?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"To ty umieściłeś pułapkę w kamieniu doznań, prawda? I w tym dwunastościennym dzienniku?"~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"To ciebie Pani wtrąciła do labiryntu, prawda? Znalazłem twój dziennik... i ten drugi też, ten dwunastościan pełen pułapek."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~"To ty... ty udusiłeś tych wszystkich ludzi, prawda? Znalazłem twój dziennik w Labiryncie Pani... i znalazłem też ten drugi, dwunastościan pełen pułapek."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"To ty... ty udusiłeś tych wszystkich ludzi, prawda? I to ty zostawiłeś mi dziennik pełen pułapek, ten dwunastościan."~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"To ty... ty zabiłeś Fina, tego lingwistę, prawda? A potem napisałeś dwunastościenny dziennik w języku Uyo."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~Szalone wcielenie obserwuje cię z rezerwą, a gdy zbliżasz się, syczy. Zaciska dłonie, jak gdyby chciał cię udusić. Jego ramiona są okropnie sękate i pełne blizn, jak gdyby zostały skąpane w strumieniu kwasu - wygląda na to, że jego lewe ramię jest przyszyte do tułowia.~ */
  IF ~~ THEN REPLY #63732 /* ~"Chciałbym wiedzieć parę rzeczy."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~Obrzuca cię nieufnym spojrzeniem - wydaje się, że samo patrzenie na ciebie sprawia mu kłopot.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"Jeśli mam opuścić to miejsce, musisz znów stać się częścią mnie. Zrobisz to?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"To ty podpaliłeś zapisy Iannisa, prawda? Próbując zniszczyć mój zapis?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"Pułapka w kamieniu doznań - to ty ją dla mnie zostawiłeś, prawda?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"Czy to ty udusiłeś tych wszystkich ludzi w Sigil?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"To ciebie Pani wtrąciła do labiryntu, prawda? Znalazłem w nim twój dziennik."~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"To ciebie należy winić za śmierć Fina lingwisty, prawda?"~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"Co się stało z twoim ramieniem?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"Czy wiesz, jak można się stąd wydostać?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"Co wiesz o innych wcieleniach?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~Powiedz w języku Uyo: (Porozmawiajmy na osobności, tylko my dwaj.)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~Powiedz w języku Uyo: (Porozmawiajmy na osobności, tylko my dwaj.)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~Zaciśnij dłonie na jego szyi i uduś go.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~Zaciśnij dłonie na jego szyi i uduś go.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"Nieważne. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"Tak, SPALIŁEM te fałszywe papiery. JESZCZE WIĘCEJ kłamstw, kłamstw o moich FAŁSZYWYCH ŻYCIACH..."~ */
  IF ~~ THEN REPLY #63750 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"Tak..." Uśmiecha się złośliwie. "Prosta pułapka. Na kogoś, kto nie może umrzeć - pułapka UMYSŁU."~ */
  IF ~~ THEN REPLY #63753 /* ~"Właściwie łatwo było się wydostać."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~Jego uśmiech zastyga. "KŁAMIESZ!"~ */
  IF ~~ THEN REPLY #63757 /* ~"Nie, to było wręcz banalnie proste. Udało mi się z niej uciec bez żadnego wysiłku."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"Być może. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"KŁAMLIWY ZŁODZIEJ!" Jego oczy płoną niczym pochodnie, widzisz, jak ściska swe lewe ramię... a potem *wyrywa* je, rozrywając, rozplątując szwy...~ */
  IF ~~ THEN REPLY #63761 /* ~"Co...?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~Rzuca okiem na czarne kamienie, jak gdyby coś sobie przypomniał - coś nieprzyjemnego. Zaczyna lekko się trząść. "Twierdzili, że mnie znają. Musiałem ich UCISZYĆ, zdusić ich głosy. Oskarżały mnie. Zawsze OSKARŻAŁY..."~ */
  IF ~~ THEN REPLY #63763 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"Prosta ucieczka, prosta pułapka. Z łatwością poradziłem sobie z jej labiryntem. Mogłem sprawić, żeby był lepszy, bardziej śmiercionośny." Uśmiecha się. "Nie wiedziała, co trzeba zrobić, by schwytać MNIE."~ */
  IF ~~ THEN REPLY #63766 /* ~"Na to wygląda. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"Było..." Przez chwilę wydaje się zmieszany. "Było WIELU, których zabiłem. Było wielu, których musiałem uciszyć."~ */
  IF ~~ THEN REPLY #63769 /* ~"Rozumiem... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~Przez chwilę spogląda na swoje ramię, następnie podnosi wzrok i uśmiecha się. "Ciągle ODPADAŁO... więc musiałem je przyszyć."~ */
  IF ~~ THEN REPLY #63772 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"Wolałbym UMRZEĆ."~ */
  IF ~~ THEN REPLY #63775 /* ~"Śmierć to też wyjście. Ale chcę ci dać szansę."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"Więc gotuj się na śmierć."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"Więc gotuj się na śmierć."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"NIGDY." Wypluwa ostatnie słowo: "ZŁODZIEJU."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"Więc gotuj się na śmierć."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"Więc gotuj się na śmierć."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"NIGDY ci nie powiem. A ty stąd NIGDY nie wyjdziesz..." Uśmiecha się. "Tu jest bardzo CICHO. SPOKOJNIE."~ */
  IF ~~ THEN REPLY #63786 /* ~"Dobrze... Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"ZŁODZIEJE. To ZŁODZIEJE - wszyscy. A ZŁODZIEJE muszą UMRZEĆ."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"Jesteś ZŁODZIEJEM! Ukradłeś mi życie i ciało! A ZŁODZIEJE muszą UMRZEĆ!"~ */
  IF ~~ THEN REPLY #63792 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"Jeszcze porozmawiamy... Później."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~Gdy mówisz w języku Uyo, jego oczy rozszerzają się i zaczynają wpatrywać w ciebie. Po chwili ciszy, odpowiada ci w tym samym języku. (Tylko ja znam język Uyo. Skąd go znasz?)~ */
  IF ~~ THEN REPLY #63795 /* ~(Masz rację: tylko ty znasz język Uyo. Więc jeśli i ja go znam, muszę być tobą.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(Nieważne. Później porozmawiamy. Poczekaj aż wrócę.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~Wpatruje się w ciebie w milczeniu.~ */
  IF ~~ THEN REPLY #63798 /* ~(To ci *inni* nie są tobą, ponieważ nie znają języka Uyo.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~Przytakuje... wolno. (Słyszę cię.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(Kiedy zaatakuję, bądź przy mnie. Zabijemy tych złodziei, a potem zaznamy spokoju.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(To miejsce wypacza postrzeganie - obaj jesteśmy tobą i musimy stać się jednością.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(Jeszcze porozmawiamy, tylko ty i ja. Czekaj na mnie.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(Kiedy uderzysz, ja zrobię to samo.)~ */
  IF ~~ THEN REPLY #63804 /* ~"Chciałbym wiedzieć coś jeszcze..."~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(Jeszcze porozmawiamy, tylko ty i ja. Czekaj na mnie.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~Wygląda na przestraszonego. "Ja..." Ku twemu zaskoczeniu używa normalnej mowy... i nie moduluje już głosu. Mówi spokojnie, równo, bardzo podobnie do ciebie "Ja... nie chcę już tak żyć."~ */
  IF ~~ THEN REPLY #63807 /* ~(Nie musisz. Wymażę cały ból, zmartwienia i udręki, jakich zaznałeś w życiu. Wszystko.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(Wiele wycierpiałeś. Urodziłeś się w świecie, w którym nic nie miało sensu, gdzie obcy twierdzili, że cię znają, oskarżali o rzeczy, o których nie miałeś pojęcia i próbowali cię skrzywdzić.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(Jeszcze porozmawiamy, tylko ty i ja. Czekaj na mnie.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~Patrzy na ciebie - widzisz, jak jego oczy tracą szalony blask i stają się podobne do twoich. "Tak..."~ */
  IF ~~ THEN REPLY #63811 /* ~(Będę cię chronił. Zaznasz spokoju. Bo przecież tego zawsze chciałeś, prawda?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~Słysząc to, twoje wcielenie rozluźnia się, a gdy spogląda ci w oczy, widzisz, że jego zaszły mgłą. Szepcze coś bardzo cicho i pada na czarne kamienie - z tyłu głowy zaczynasz odczuwać mrowienie...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~Z szybkością błyskawicy zaciskasz dłonie na jego szyi - on sam krzyczy przerażony, gdy *zacieśniasz* uścisk. Warczy, a potem z dzikim uśmiechem, zaciska swoją dłoń na twoim karku i zaczyna go *skręcać*.~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"Ja... z... tobą... SKOŃCZĘ."~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"Ja... z... tobą... SKOŃCZĘ."~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"Ja... z... tobą... SKOŃCZĘ."~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~Poddaj się, pozwól by skręcił ci kark.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~Gdy mocniej *zaciskasz* dłonie, jego oczy nagle rozszerzają się. Zdejmuje ręce z twego karku i chwyta twoje, próbując oderwać je od siebie. Jednak jego uścisk jest słaby, wątły.~ */
  IF ~~ THEN REPLY #63819 /* ~"Dam ci wybór. Albo zginiesz z mej ręki, albo się ze mną połączysz, i *módl się* żebyś jakoś przetrwał w moim umyśle."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~Użyj języka Uyo: (To za śmierć Fina.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"Teraz *zakończymy* twoje nędzne życie..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~Gdy mocniej *zaciskasz* dłonie, jego oczy nagle rozszerzają się. Chwyta twój kark - jesteście tak samo silni i żaden nie może uzyskać przewagi... wygląda na to, że wygra ten, który dłużej wytrzyma...~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~Wytrzymaj...~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~Wytrzymaj...~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~Spróbuj uwolnić się z jego uścisku.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~Poddaj się, niech skręci ci kark.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~Gdy mocniej *zaciskasz* dłonie, on uśmiecha się złośliwie i chwyta twój kark - i wtedy zdajesz sobie sprawę, jak bardzo jest *silny* - wiesz, że za kilka sekund wyciśnie z ciebie życie.~ */
  IF ~~ THEN REPLY #63828 /* ~Spróbuj uwolnić się z jego uścisku.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~Poddaj się, niech skręci ci kark.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~Jego oczy płoną niczym pochodnie, widzisz, jak ściska swe lewe ramię... a potem *wyrywa* je, rozrywając, rozplątując szwy...~ */
  IF ~~ THEN REPLY #63831 /* ~"Co...?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~Po chwili, która wydaje się wiecznością, czujesz jak jego dłoń drży na twym karku, maca go, próbując znaleźć jakiś słaby punkt... i nie udaje się jej. W jego oczach pojawia się strach, zdejmuje dłoń i chwyta twoje, próbując oderwać je od siebie. Jednak jego uścisk jest słaby, wątły.~ */
  IF ~~ THEN REPLY #63833 /* ~"Dam ci wybór. Albo zginiesz z mej ręki, albo się ze mną połączysz, i *módl się* żebyś jakoś przetrwał w moim umyśle."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~Użyj języka Uyo: (To za śmierć Fina.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"Nadszedł twój koniec..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~Wciąż ściskasz jego szyję, rozpaczliwie próbując być lepszym od niego. Nagle zdajesz sobie sprawę, że jego szaleństwo daje mu siłę i wytrzymałość, z którą nie możesz się równać... Jeśli dalej będziecie walczyć, on na pewno zwycięży.~ */
  IF ~~ THEN REPLY #63837 /* ~Spróbuj uwolnić się z jego uścisku.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~Poddaj się, niech skręci ci kark.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~Nagle rzucasz się w prawo, wytrącając go z równowagi i wyślizgujesz się z jego uścisku. Jego oczy płoną i widzisz, jak ściska swe lewe ramię... a potem *wyrywa* je, rozrywając, rozplątując szwy...~ */
  IF ~~ THEN REPLY #63840 /* ~"Co robisz...?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~Z szybkością błyskawicy zaciskasz dłonie na jego szyi - on sam krzyczy przerażony i nagle ucisza się, gdy zaczynasz ściskać mocniej. Chwyta twoje dłonie i próbuje oderwać je od siebie. Jednak jego uścisk jest słaby, wątły.~ */
  IF ~~ THEN REPLY #63842 /* ~"Dam ci wybór. Albo zginiesz z mej ręki, albo się ze mną połączysz, i módl się żebyś jakoś przetrwał w moim umyśle."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~Użyj języka Uyo: (To za śmierć Fina.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"Nadszedł twój koniec..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~Gwałtownie wykręcasz jego kark w prawo - słychać odbijający się echem *trzask*, jak gdyby łamania tysiąca kości i wcielenie wpada bezwładnie w twoje ramiona. Puszczasz go, a on pada na czarne kamienie. Gdy umiera, czujesz mrowienie z tyłu głowy, które sprawia, że zaczynasz drżeć. Wiesz, że przestał istnieć.~ */
  IF ~~ THEN REPLY #63846 /* ~"Żegnaj..."~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~Zaciskając zęby, obrzuca cię grobowym spojrzeniem, ale po chwili rozluźnia się. Słychać cichutki szept, a on pada na czarne kamienie. Czujesz mrowienie z tyłu głowy...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~Czujesz PRZYPŁYW wspomnień, siły i emocji... Uspokajasz się, przez chwilę tylko odczuwając zawroty głowy. Po chwili znów widzisz wszystko wyraźnie i znowu jesteś sobą.~ */
  IF ~~ THEN REPLY #63849 /* ~"Żegnaj..."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~Od jego śmiertelnego uścisku ciemnieje ci w oczach. Przestajesz czuć ból - powoli zaczynasz tracić świadomość. Czujesz, jak twa osobowość rozpada się, kawałek po kawałku i nagle - przestajesz istnieć.~ */
  IF ~~ THEN REPLY #63851 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"Ta KOBIETA - ten DUCH?!" W oczach przygarbionego wzbiera furia, z ust kapie mu ślina. "DRĘCZYŁA mnie przez lata, ścigając, nienawidząc i TO TY JĄ ZABIŁEŚ?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"Zupełnie bez wartości!" Drugie wcielenie wybucha nierównym śmiechem, bardziej radosnym niż szalonym. "Tak ŁATWO było poradzić sobie z tą dziecinną pułapką. Znalazłem ją... i ZMIENIŁEM. Żeby była TRUDNIEJSZA. Zmieniłem TREŚĆ."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
