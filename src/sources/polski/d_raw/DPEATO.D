// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~Widzisz przed sobą młodego człowieka odzianego w brudne, niechlujne szaty. Kiedy podchodzisz, mężczyzna przygląda ci się niespokojnie.~ */
  IF ~~ THEN REPLY #58707 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"Czego chcesz?" Mężczyzna spogląda wokoło nerwowo zagryzając wargę.~ */
  IF ~~ THEN REPLY #58710 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #58713 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"Dlaczego się tu znalazłeś?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"Szukam devy. Powiedziano mi, że tutaj go znajdę."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~Młodzieniec waha się, ale w końcu odpowiada. "Czym to jest dla ciebie?"~ */
  IF ~~ THEN REPLY #58719 /* ~"Dobrze wiedzieć, z kim się rozmawia."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"Zmień swój ton albo ci w tym pomogę."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"Mniejsza z tym. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"Mam na imię Peato." Spogląda na ciebie znudzonym wzrokiem.~ */
  IF ~~ THEN REPLY #58724 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~Przez jego twarz przelatuje dreszcz złości. Młodzieniec zaczyna coś do ciebie mówić. Potem spostrzega twoje blizny i szybko się wycofuje. "Przepraszam, jestem Peato."~ */
  IF ~~ THEN REPLY #58727 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~Młodzieniec uśmiecha się pogardliwie. "Złapano mnie, kiedy *pożyczałem* kilka rzeczy od tutejszego kupca. Nie spodobało mu się to, no i znalazłem się tutaj."~ */
  IF ~~ THEN REPLY #58730 /* ~"Więc jesteś złodziejem."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~Mężczyzna spogląda na ciebie. "Chyba można to tak określić."~ */
  IF ~~ THEN REPLY #58734 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"Szpicuj się, trepie. Mam cię już dość." Młodzieniec spogląda na siebie w komicznym geście. "Czy ja wyglądam jak oprowadzacz?"~ */
  IF ~~ THEN REPLY #58737 /* ~"Nie, wyglądasz jakbyś miał poważne problemy ze zdrowiem."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~Mężczyzna spogląda na ciebie z niezrozumieniem. "O czym ty mówisz? Nie mam żadnych problemów ze zdrowiem."~ */
  IF ~~ THEN REPLY #58741 /* ~"Ale będziesz miał, jak nie odpowiesz na moje pytanie."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"Mniejsza z tym. Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~Już wydaje się, że podejmie twoje wyzwanie, ale zmienia zdanie. "To więzienie. Składa się z trzech okręgów: zewnętrznego, środkowego i wewnętrznego."~ */
  IF ~~ THEN REPLY #58745 /* ~"Opowiedz mi o zewnętrznym kręgu."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~"Opowiedz mi o środkowym kręgu."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~"Opowiedz mi o wewnętrznym kręgu."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"Teraz znajdujesz się w kręgu zewnętrznym. Trepy, które się tu znalazły, przeważnie skazano za drobne wykroczenia. Kradzieże, napaści i tak dalej."~ */
  IF ~~ THEN REPLY #58751 /* ~"Opowiedz mi o środkowym kręgu."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~"Opowiedz mi o wewnętrznym kręgu."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"Środkowy krąg jest przeznaczony dla trochę groźniejszych przestępców. Tam spotkasz osiłków i bandytów, którzy zabili kogoś nieumyślnie albo w afekcie."~ */
  IF ~~ THEN REPLY #58756 /* ~"Opowiedz mi o zewnętrznym kręgu."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~"Opowiedz mi o wewnętrznym kręgu."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"Wewnętrzny krąg jest dla tych, którzy stanowią zagrożenie dla innych. Siedzą tam gwałciciele, mordercy i wrogowie rządu."~ */
  IF ~~ THEN REPLY #58761 /* ~"Opowiedz mi o zewnętrznym kręgu."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~"Opowiedz mi o środkowym kręgu."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"Rozumiem. Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"Chodzi ci o Triasa." Młodzieniec marszczy brwi i odwraca na chwilę wzrok. "Tak, jest tam. Na nasze nieszczęście."~ */
  IF ~~ THEN REPLY #58766 /* ~"Dlaczego tak mówisz?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"Strażnicy używają nas jako siły roboczej do rozbudowywania więzienia. Za każdym razem, jak potrzebne są nowe pomieszczenia, to je wykopujemy. Podczas takich prac natknięto się na nowy obszar i tam właśnie był Trias." Mężczyzna milknie na chwilę i marszczy brwi. "Wkrótce potem na dole wybuchła zaraza."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"Tak. Już o tym słyszałem. Czy zaraza była groźna?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"Zaraza?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"Bardzo... ponad setka nie żyje, wielu innych zostało zarażonych." Młodzieniec przerywa na chwilę. "Teraz jednak wydaje się, że udało się to powstrzymać. Ostatnio nie wykryto żadnych nowych przypadków zakażeń."~ */
  IF ~~ THEN REPLY #58773 /* ~"Rozumiem. Więc gdzie znajdę Triasa?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~Młodzieniec kręci przecząco głową. "Nie wiem. Nigdy nie byłem w pobliżu nowych wykopalisk. Poszukaj w okolicy, może uda ci się je odszukać."~ */
  IF ~~ THEN REPLY #58777 /* ~"Mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~Mężczyzna przytakuje. "Tak, i to okropna. Zaatakowała zaraz po tym, jak otworzono jego komnatę. Rozprzestrzeniała się jak pożar buszu."~ */
  IF ~~ THEN REPLY #58780 /* ~"Czy zaraza była groźna?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~Widzisz przed sobą złodzieja imieniem Peato. "Witaj znowu. Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #58782 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"Nic. Żegnaj."~ */ EXIT
END
