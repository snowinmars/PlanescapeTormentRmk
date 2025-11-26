// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~Ciało Burta drży, gdy do niego mówisz. "Czego... czego chcesz?"~ */
  IF ~~ THEN REPLY #2882 /* ~"Chcę zadać ci jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"Co... co chcesz wiedzieć... wiedzieć?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"Opowiedz mi jeszcze raz o sobie."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"Co się stało z Grisem?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"W jaki sposób umarłeś?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"Opowiedz mi o katakumbach."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"Nazywałem... nazywałem się Burt. Ja i Lowden, mój najlepszy kumpel, my teraz martwi."~ */
  IF ~~ THEN REPLY #20796 /* ~"Gdzie jest teraz Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"Odpowiedz mi na kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"Złapani w jakąś straszną pułapkę w krypcie. Uciekliśmy od Grisa i tej... *rzeczy*, co go dopadła. Lowden ruszył do... do krypty, o której żeśmy wiedzieli, że zła, ale... ale był tak przerażony, że go to nie obchodziło. Słyszałem, jak umierał." W jego głosie przez chwilę pojawia się niezadowolenie. "Miał ze sobą wszystkie świecidełka z tej jazdy, też... a to była niezła jazda..."~ */
  IF ~~ THEN REPLY #20800 /* ~"Pułapka w krypcie?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"Z pewnością. Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"Tia. Kolce, ostrza, krew, kraty w podłodze. Jeśli Lowden wciąż jest w jednym kawałku, to tam będzie. Jeśli po niego pójdziesz, to uważaj... jak chodzisz..."~ */
  IF ~~ THEN REPLY #20804 /* ~"Z pewnością. Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"Coś strasznego... otworzyło kryptę i *ona* tam była. Lowden i ja, wepchnęlim Grisa do środka i zwialim. Słyszelim go... jego krzyki."~ */
  IF ~~ THEN REPLY #20807 /* ~"Rozumiem... Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"Rozumem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"Jestem... martwy? Musi być... uciekałem z krypty królowej i biegłem katakumbami. Lowden ruszył w złe miejsce... ja... ja biegłem dalej. Wbiegłem na mur... przez chwilę żem krwawił... jak się obudziłem, to mnie żarły szczury... wyżarły mnie na śmierć..."~ */
  IF ~~ THEN REPLY #20810 /* ~"Gdzie jest Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"Rozumem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"Było... było... ulubione... bogate... miałem zamiar wydostać się stąd na samych kościach... zbyt niebezpieczne... Gris? Gris?" Ciało milknie.~ */
  IF ~~ THEN REPLY #20814 /* ~"Odpowiedz mi na kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~Zostaw je.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~Ciało jest dosyć świeże - co najwyżej z ostatnich kilku tygodni - i duże jego części zostały wyrwane zębami szczurów. Skóra na jego czole wygląda, jakby ktoś nieźle uderzył tego biednego skurla w głowę. Słysząc twoje pytania, zadrżał. "K... kto mi przeszkadza?"~ */
  IF ~~ THEN REPLY #20817 /* ~"Mam do ciebie jeszcze kilka pytań, trupie..."~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"Nikt. Żegnaj."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~Ciało jest dosyć świeże - co najwyżej z ostatnich kilku tygodni - i duże jego części zostały wyrwane zębami szczurów. Skóra na jego czole wygląda, jakby ktoś nieźle uderzył tego biednego skurla w głowę. Kłujesz je palcem u nogi, a ono obraca się bezwładnie.~ */
  IF ~~ THEN REPLY #20820 /* ~"Nie ma tu nic użytecznego..."~ */ EXIT
END
