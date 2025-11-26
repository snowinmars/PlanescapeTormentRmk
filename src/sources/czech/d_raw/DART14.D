// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~Je to portrét groteskní, staré babizny s hákovitým nosem. Její maso má nemocnou šedomodrou barvu, její oči záři rudě jako uhlíky uhasínajícího ohně. Její brada, dlouhá a hranatá, vyčnívá vpřed. Z její čelisti vyčnívají dva zažloutlé špičáky, jako malé kly. Úsměv na jejích vyprahlých rtech hovoří o hrozivém tajemství. Popis zní 'Šedá Čarodějnice z Oinosu.'~ */
  IF ~~ THEN REPLY #42684 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~Je to portrét podivné staré baby se skobovitým nosem. Tělo čarodějnice má neduživě šedomodrou barvu; její oči žhnou červeně jako žhavé uhlíky odumírajícího ohně. Její brada, dlouhá a ostrá, vyčnívá kupředu s extrémním podkusem; dva zažloutlé špičáky vyčnívají vzhůru z její dolní čelisti, jako malé kly. Úsměv na jejích seschlých, červenavých rtech vypráví o příšerném tajemství. Nápis uvádí 'Šedá Čarodějnice z Oinosu.'~ */
  IF ~~ THEN REPLY #42686 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~Jak jsi se začal otáčet od malby, něco na něm přitáhlo tvoji pozornost... podivný, brnivý pocit vyvstává v pozadí tvé mysli... paměť, se začíná vynořovat...~ */
  IF ~~ THEN REPLY #42687 /* ~Pokus se vyvolat vzpomínky.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~Otoč se zpět a potlač vzpomínky.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~Vzpomínáš si, jak zmateně stojíš, v šípkovém bludišti. Ohyzdná babizna z malby je před tebou, bláznivě se smějíc. Skřípeš zuby zklamáním, zvědavý, proč se ti směje. "Ty moje ubohá, drahá, roztomilá lidská věcičko!" brouká si. "Proč to bylo tvé *první* přání!" Ukazuje jedním kostnatým, drápovitým prstem na tvé čelo. Tvůj spánek začíná bolestivě pulzovat... a na nic víc si nemůžeš vzpomenout.~ */
  IF ~~ THEN REPLY #42689 /* ~Odejít.~ */ EXIT
END
