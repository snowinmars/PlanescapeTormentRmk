// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~Na kościach tego sędziwego kościotrupa nie ma ani śladu mięsa... tylko kilka kolorowych szmat, które służą raczej jako dekoracja niż jako okrycie.~ */
  IF ~~ THEN REPLY #19744 /* ~"Bądź pozdrowiony..."~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~Zostaw szkielet w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"Ty też bądź pozdrowiony." Spokojny, wyobcowany głos szkieletu odbija się echem w jego czaszce, a potem wydobywa się na zewnątrz w chmurze kurzu.~ */
  IF ~~ THEN REPLY #19753 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"Powiem ci to, co wiem." Kiedy szkielet mówi, ze stawów jego żuchwy spada kurz. "Pytaj o co chcesz, nigdzie mi się nie spieszy."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"Gdzie ja jestem?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"Co tu robicie?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"Pozwól, że zapytam cię o konkretną osobę..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"Czy widziałeś tu gdzieś małą, brązową kulę?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"Jesteś w krainie, którą my zwiemy Ziemiami Umarłych... to nasz dom pod Sigil. To tylko mała część naszej cywilizacji, tylko pogranicze... Ziemie Umarłych ciągną się na wiele, wiele mil w ciemność."~ */
  IF ~~ THEN REPLY #19769 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"To kraina Nieumarłych; rządzi nią Milczący Król. Znajdziesz tutaj zombie i ghule. Dalej, w katakumbach na wschodzie, żyją czaszkoszczury. Od czasu do czasu zapuszcza się tu jakiś Żywy - tak jak ty albo Soe."~ */
  IF ~~ THEN REPLY #19771 /* ~"Kto to jest Milczący Król?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"Opowiedz mi o was."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"Opowiedz mi o innych nieumarłych."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"Opowiedz mi o czaszkoszczurach."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"Opowiedz mi o Soem."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"Opowiedz mi o Soem."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~Szkielet wolno kiwa głową, a kości jego szyi zaczynają delikatnie trzeszczeć. "Pytaj proszę."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"Dlaczego mnie uwięziono?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"Gdzie ja jestem?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"Co tutaj robicie?"~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"Kto zamieszkuje to miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"Pozwól, że zapytam cię o konkretną osobę..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"Czy widziałeś tu gdzieś małą, brązową kulę?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~Szkielet kiwa głową. "Jesteśmy najstarszymi z nieumarłych, jesteśmy najbardziej wyzwoleni z ciała. Próbujemy służyć innym jako przewodnicy i nauczyciele, utrzymując w ten sposób zdrową społeczność."~ */
  IF ~~ THEN REPLY #19786 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"Są silni, ale wolno myślą i działają. Zatrzymali więcej ludzkich cech niż my - oni ciągle mają swoje uczucia. Służą naszej społeczności jako robotnicy pod nadzorem Czerstwej Mary. Ona jest z nich wszystkich najbardziej troskliwa i inteligentna."~ */
  IF ~~ THEN REPLY #19789 /* ~"Opowiedz mi o Czerstwej Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"Ghule to silne, brutalne i krwiożercze bestie. Przewodzi im Akasta. Służą społeczności Ziem Umarłych jako strażnicy... ale nie zawsze można na nich polegać. Podporządkowują się tylko z obawy przed przewagą liczebną pozostałych nieumarłych oraz przed gniewem Milczącego Króla. Jeśli zabraknie naszego wielkiego władcy, to któregoś dnia i my, i nasi podopieczni, padniemy ich ofiarą."~ */
  IF ~~ THEN REPLY #19793 /* ~"Opowiedz mi o Akaście."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"Kto to jest Milczący Król?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"Wasi podopieczni?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"Kto cię interesuje?"~ */
  IF ~~ THEN REPLY #19799 /* ~"Zombie."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"Ghule."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"To nasz pan i władca. Nazywa się Milczącym Królem, bo przemawia tylko wtedy, kiedy jest to bardzo potrzebne." Szkielet żywo gestykuluje, dzięki czemu ciągle słychać trzeszczenie starych stawów. "Zapytaj Hargrimma, naszego wysokiego kapłana. On powie ci więcej."~ */
  IF ~~ THEN REPLY #19803 /* ~"Opowiedz mi o Hargrimmie."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"To szkodniki, których inteligencja wzrasta, gdy zbierają się w grupę. Stanowią poważne zagrożenie. Pewnego razu napadły na naszych podopiecznych i zakłóciły spokój milczących. Teraz trzymają się w tych częściach katakumb, które są położone najbardziej na wschód. Ghule złapały i pożarły wystarczająco dużo tych gryzoni, więc przynajmniej przez jakiś czas nie powinny nas niepokoić."~ */
  IF ~~ THEN REPLY #19808 /* ~"Waszych podopiecznych?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"Opowiedz mi o ghulach."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"Ten Grabarz był czymś w rodzaju misjonarza. Myślał, że uda mu się przekonać nas, żebyśmy się poddali Prawdziwej Śmierci. Z tego co wiem, teraz jest jednym z naszych podopiecznych."~ */
  IF ~~ THEN REPLY #19814 /* ~"Waszych podopiecznych?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"Ten Grabarz jest czymś w rodzaju misjonarza. Myśli, że uda mu się przekonać nas, żebyśmy się poddali Prawdziwej Śmierci. Można go teraz spotkać w Kaplicy na północnych obrzeżach tych zimnych i zakurzonych komnat. Sam możesz z nim porozmawiać."~ */
  IF ~~ THEN REPLY #19818 /* ~"Kto jeszcze tu mieszka?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"A co robią żywi w świecie ponad nami? Zajmujemy się tu naszym życiem. Pracujemy tu, chroniąc naszych podopiecznych, milczących, przed rabusiami."~ */
  IF ~~ THEN REPLY #19821 /* ~"Waszych podopiecznych?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"Milczący... To umarli, którzy ciągle śpią. Ochraniamy ich i strzeżemy, żeby nikt nie zakłócał ich odpoczynku."~ */
  IF ~~ THEN REPLY #19824 /* ~"A kto miałby zakłócać ich spokój?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~Szkielet wzrusza ramionami. Jego łopatki skrobią po tylniej części tułowia. "Nie. Powinieneś porozmawiać z Hargrimmem, naszym wysokim kapłanem. On wiele wie."~ */
  IF ~~ THEN REPLY #19827 /* ~"Opowiedz mi o Hargrimmie."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~Szkielet dotyka podbródka, lekko podnosząc czaszkę do góry. "Ghule mają pozwolenie, żeby żywić się tymi, których przyłapią na okradaniu katakumb. Milczący Król uznał, że pozostali nieproszeni goście - ci którzy zostaną złapani na naszym terenie i uwięzieni, tak jak ty - powinni oddać się naszej pieczy, a nie zostać pożartymi przez ghule. Może powinieneś porozmawiać z Hargrimmem, naszym wysokim kapłanem. To on rozmawia z Milczącym Królem."~ */
  IF ~~ THEN REPLY #19830 /* ~"Opowiedz mi o Hargrimmie."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"Z Milczącym Królem?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"'Oddać się waszej pieczy?'"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~Szkielet kiwa głową. "Zostać jednym z naszych podopiecznych. Jednym z milczących."~ */
  IF ~~ THEN REPLY #19835 /* ~"Cóż to za wasi... podopieczni?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"Co to za Milczący Król?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"Jeszcze raz, bądź pozdrowiony. Przyzwyczaiłeś się już do swojego nowego domu?"~ */
  IF ~~ THEN REPLY #19839 /* ~"Raczej nie. Mam do ciebie parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"Wielu." Szkielet zaczyna machać swoim pożółkłym, zakurzonym palcem. "Głodne, zbuntowane ghule, szczury, a przede wszystkim... żywi. Ci z zakopanej wioski - słudzy człowieka o imieniu Farod - którzy schodzą do krypt Ziem Umarłych i zakłócają spokój milczących. Nie wiem czemu to robią i nie chcę wiedzieć... Martwię się tylko o to, jak ich zmusić do zaprzestania kradzieży."~ */
  IF ~~ THEN REPLY #19841 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~Szkielet kiwa głową. "Kto cię interesuje?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"Milczący Król."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"Hargrimm."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"Czerstwa Mary."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"Akasta."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"Soe."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"Mniejsza z tym. Mam do ciebie parę innych pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"Nikt, mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"To nasz wysoki kapłan. Właśnie on rozmawia z Milczącym Królem i przekazuje nam słowa i prawa ustanowione przez naszego władcę. Znajdziesz go w przedsionku sali tronowej Milczącego Króla."~ */
  IF ~~ THEN REPLY #19850 /* ~"Opowiedz mi o Milczącym Królu."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"Pozwól, że spytam cię o kogoś innego..."~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"Jest wolna, ale bardzo troskliwa i mądra. W pewnym sensie jest dla wszystkich innych zombie jak matka. Znajdziesz ją w komnacie na zachód od miejsca, gdzie po raz pierwszy wszedłeś na Ziemie Umarłych."~ */
  IF ~~ THEN REPLY #19854 /* ~"Opowiedz mi o zombie."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"Pozwól, że spytam cię o kogoś innego..."~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"To upiorna władczyni bandy ghuli, którzy nazywają siebie Uwiędniętymi. Służą w Ziemiach Umarłych jako strażnicy... przynajmniej jak na razie. Znajdziesz ją w komnacie, gdzie po raz pierwszy wszedłeś na Ziemie Umarłych."~ */
  IF ~~ THEN REPLY #19858 /* ~"Opowiedz mi o Uwiędniętych."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"Pozwól, że spytam cię o kogoś innego..."~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END
