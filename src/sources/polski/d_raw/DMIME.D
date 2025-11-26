// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~Twarz tego człowieka jest pomalowano na biało. Na czole, ołówkiem, zaznaczono mu parę łukowato wygiętych brwi. Czerwonym pudrem ma wykreślone małe kółka na policzkach. Wargi też, dla podkreślenia, ma upudrowane na czerwono. Coś mówi, ale nie słyszysz jego słów. Jego dłonie, silnie ściśnięte, opierają się o coś, co wygląda na niewidzialną ścianę.~ */
  IF ~~ THEN REPLY #49774 /* ~"Proszę? Nie słyszę cię..."~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~Sprawdź, czy możesz go dotknąć.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~Zwiesza głowę, wzdycha bezgłośnie, i wzrusza ramionami. Potem cofa się o krok, macha ci ręką na pożegnanie i zaczyna swoją pantomimę: włazi po linie, schodzi po schodach i tak dalej.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~Sprawdź, czy możesz go dotknąć.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~Wyciągasz rękę, aby dotknąć tego człowieka, ale zastyga ona w powietrzu, jak gdyby powstrzymywała ją jakaś niewidzialna siła. Wygląda na to, że mim jest uwięziony w czymś na kształt niewidzialnej skrzyni lub klatki.~ */
  IF ~~ THEN REPLY #49781 /* ~Odejdź.~ */ EXIT
END
