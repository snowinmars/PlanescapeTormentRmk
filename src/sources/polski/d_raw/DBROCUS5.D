// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~Czoło mężczyzny jest mocno zmarszczone w skupieniu. Gdy do niego podchodzisz, patrzy na ciebie i grzecznie kiwa głową. "Tak?"~ */
  IF ~~ THEN REPLY #3207 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"Nic. Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~Ten poważny mężczyzna wciąż zdaje się starać rozwiązać jakiś problem. Gdy się do niego zbliżasz, przerywa on swój tok myśli i spogląda na ciebie. "Tak?"~ */
  IF ~~ THEN REPLY #40691 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"Nic. Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~Wygląda na nieco zirytowanego, ale nic nie mówi.~ */
  IF ~~ THEN REPLY #40694 /* ~"Wyglądasz na zmartwionego..."~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"Co tu robisz?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"Tak właściwie, to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~Mężczyzna marszczy się. "Nie, nie jestem 'zmartwiony'... staram się tylko odnaleźć sposób na wygranie z Dolorą."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"Z kim?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"Tak, jest godnym przeciwnikiem."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"Muszę dopiero z nią zagrać."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"Dolora to jedna z tutejszych kurtyzan. Dobrze wykształcona, wybitnie inteligentna, do wszystkich odnosi się z rezerwą... umysł zaprawdę, ostry jak żyletka. Jeśli lubisz wyzwania, spróbuj pokonać ją w grze."~ */
  IF ~~ THEN REPLY #40711 /* ~"Zatem nigdy jej nie pokonałeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~Potrząsa głową, marszcząc się. "Kiedyś grałem z kobietą o imieniu Vivian i zdawało mi się, że mam sporą wprawę... ale wtedy spotkałem Dolorę. Podejrzewam, że Vivian pozwalała mi wygrywać, ale nigdy jej o to nie spytałem."~ */
  IF ~~ THEN REPLY #40715 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"Odpoczywam po druzgocącej klęsce z rąk Dolory. Czuję jednak, że ostatnim razem prawie ją pokonałem, więc staram się myśleć o tym, co mogę uczynić, jak będziemy grać następnym razem."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"Kim jest Dolora?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"Muszę dopiero z nią zagrać."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~Przytakuje. "Czy było coś jeszcze, czy też...?"~ */
  IF ~~ THEN REPLY #40723 /* ~"Tak. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"Nie, to wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"Słuchaj, mam sporo rzeczy do przemyślenia. Więc jeśli mi wybaczysz..."~ */
  IF ~~ THEN REPLY #40726 /* ~"Czekaj - pozwól, że spytam cię o coś jeszcze..."~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"Zatem wybacz, że ci przeszkadzam. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"Nic, naprawdę."~ */
  IF ~~ THEN REPLY #40730 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"Raveli, powiadasz? Nigdy ją o to nie pytałem. Może ty powinieneś."~ */
  IF ~~ THEN REPLY #40733 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"Zatem żegnaj."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"Może tak uczynię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"Nie. Nie rozmawiałem z Vivian od dłuższego czasu. Nie wiedziałem, że go w ogóle straciła. Szkoda - zawsze pachniała tak porażająco erotycznie."~ */
  IF ~~ THEN REPLY #40737 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"Nie. Czy coś jeszcze?"~ */
  IF ~~ THEN REPLY #40740 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"Nie." Mężczyzna uśmiecha się półgębkiem, po czym wzdycha. "Cóż, tak. To nocna wiedźma, wygnana do jednego z labiryntów Pani, jest przedmiotem ponad stu przerażających bajek dla dzieci... ale sądzę, że nie takich informacji poszukujesz."~ */
  IF ~~ THEN REPLY #40743 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"Tak czy inaczej, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~Potrząsa głową. "Nie. Sądziłem, że jest ich tylko dziewięć."~ */
  IF ~~ THEN REPLY #40746 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"Zatem żegnaj."~ */ EXIT
END
