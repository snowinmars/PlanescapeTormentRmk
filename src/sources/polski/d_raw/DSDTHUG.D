// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~Ten przygarbiony człowiek o dzikich oczach ujada i wyje na granicy wytrzymałości swoich płuc. Pod jego zmierzwioną, gęstą czupryną dostrzegasz wiele osobliwych tatuaży. Ich tematyka jest bardzo różnorodna, od rysunków krzyczących twarzy, poprzez dziwaczne figury geometryczne, aż po coś na kształt fragmentów utworów poetyckich. Jest niemal nagi, ale brud i nieczystości pokrywające jego ciało chronią go przed sianiem zgorszenia.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"Witaj."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"Witaj."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Zawyj długo i żałośnie.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Zawyj długo i żałośnie.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Zostaw szaleńca w spokoju.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Zostaw szaleńca w spokoju~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~Człowiek zwraca się ku tobie i wydobywa ze swojego gardła głuchy warkot. Warczy tak przez chwilę, a potem zaczyna cię zajadle obszczekiwać. Słyszysz, jak w oddali odpowiadają mu inne psy.~ */
  IF ~~ THEN REPLY #13761 /* ~"Powiedziałem "Witaj."~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Odszczeknij mu, odsłaniając zęby.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"Hm... Żegnaj zatem."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"Hm... Żegnaj zatem."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~Usłyszawszy twoje wycie, szaleniec zwraca się ku tobie, krzywo uśmiecha i odrzuciwszy w tył głowę skwapliwie dołącza się swoim rykiem do twojego jazgotu. W kilka chwil później przerywa i powraca do własnego koncertu warczenia, ujadania i szczekania, które nie powstydziłby się najdzikszy brytan.~ */
  IF ~~ THEN REPLY #13765 /* ~"Powiedziałem "Witaj."~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Odszczeknij mu, odsłaniając zęby.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"Hm... Widzę, że można sobie z tobą pogadać."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"Hm... Widzę, że można sobie z tobą pogadać."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~Szaleniec zamyka swój koncert ujadania krótki warkotem i rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #13769 /* ~"Jeżeli w ten sposób szukasz śmierci, wilczy człeku..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~Człowiek o dzikich oczach wciąż warczy, ujada i szczeka na granicy wytrzymałości swoich płuc.~ */
  IF ~~ THEN REPLY #13770 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Zawyj długo i żałośnie.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Zostaw szaleńca w spokoju~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Zostaw szaleńca w spokoju~ */ EXTERN ~DMORTE~ 162
END
