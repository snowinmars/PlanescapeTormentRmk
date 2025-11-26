// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~Zdajesz sobie sprawę, że stoisz pod pętlą kata. Z ciemności dochodzi grobowy, rechoczący głos. "Znowu śnisz? Znowu! Znowu!"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Ciało twe wydaje się być dziwnie lekkie i zwiewne. Tak, jakbyś utracił nad nim kontrolę, jakby hulały w jego wnętrzu wichry.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~Zdajesz sobie sprawę, iż przenikasz przez labirynt uformowany z poskręcanych roślin i czarnych kolców, które rozdzierają twe niematerialne ciało.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Istoty z koszmarnego snu wynurzają się z ziemi oraz ścian i rozszarpują twe wnętrzności. Ich szaleńczy atak doprowadza cię do utraty przytomności.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~Stoisz przed wieżą złożoną z czaszek, która bełkocze do ciebie, ale nie rozumiesz tych słów. Rozprasza cię nagle jakiś stukot za tobą... Dostrzegasz pędzący w twym kierunku batalion biesów.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~Ponownie znajdujesz się w labiryncie; otacza cię odór śmierci. Wiesz, że zabiłeś je wszystkie. Rechoczący głos wybrzmiewa ponownie.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"Och, moja śliczna mała zagadko, zabiłeś ich tak wielu, straciłam już rachubę w ich liczeniu." Odbiera ci głos i nie możesz odpowiedzieć.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"Przybądź do mnie, najdroższy... Przybądź do Raveli w jej czarnokolcym labiryncie. Przybądź, by śnić razem ze mną."~ */
  IF ~~ THEN REPLY #56051 /* ~Otrząśnij się ze snu.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
