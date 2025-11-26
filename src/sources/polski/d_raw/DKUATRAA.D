// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~Kiedy ten mężczyzna tak chodzi od pudła do pudła, wydaje się, że pogrążony jest całkowicie w ich liczeniu i gryzmoleniu wyników na kawałku pergaminu. Kiedy mu przerywasz wygląda na rozdrażnionego. "O co chodzi tym razem? Nie widzisz, że jestem zajęty spisywaniem inwentarza? Idź zawracać głowę komuś innemu."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"Powiedziano mi, żebym dostarczył ci tę skrzynkę."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"Nie chciałem ci przeszkadzać. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"Znowu ty! Myślałem, że ci mówiłem, żebyś mi nie przeszkadzał."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"Powiedziano mi, żebym dostarczył ci tę skrzynkę."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"Nie chciałem ci przeszkadzać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"Trzeba było tak mówić od razu. Zobaczmy, co tam masz dla mnie. Jestem pewien, że trzeba będzie to zainwentaryzować."~ */
  IF ~~ THEN REPLY #45437 /* ~"Szpetny powiedział mi, żeby ci to dać."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~Kiedy wyciągasz do niego skrzynkę, wyraz twarzy zmienia mu się z zainteresowania na wielkie przerażenie. "Nie! Proszę... zabierz to ode mnie!"~ */
  IF ~~ THEN REPLY #45439 /* ~"Nie rozumiem, dlaczego boisz się tej skrzynki?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"Powiedziałem... z-zabierz! Śmierć... zło... musiały w-wyprowadzić w pole Szpetnego... nie mógł już tego znieść. Proszę... zabierz to do Braskena... mieszka na południowym zachodzie... Ul... Ja... nieeeeee!" Najwyraźniej widok skrzynki przeraził go, bo ucieka z budynku z krzykiem.~ */
  IF ~~ THEN REPLY #45441 /* ~"Zaczekaj! Co mam zrobić z... tą..."~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~Miałem osobliwe spotkanie z Ku'atraą. Szpetny powierzył mi zadanie dostarczenia mu dziwnej skrzynki. Ku'atraa wyglądał jakby się bał tego co się w niej znajduje. Gdy mu ją pokazałem przeraził się tak bardzo, że zaczął coś bełkotać, a następnie uciekł. Z tego co zdołałem zrozumieć z jego chaotycznych wypowiedzi, wynika, że chciał abym zaniósł skrzynkę człowiekowi o imieniu Brasken, który mieszka gdzieś w południowo-zachodniej części Ula. Mogę tylko mieć nadzieję, że ten cały Brasken wyjaśni sytuację i weźmie ode mnie tę skrzynkę. Za każdym razem gdy na nią spojrzę, czuję się nieswojo.~ */ EXIT
END
