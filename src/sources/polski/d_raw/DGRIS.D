// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~Widzisz zwłoki mężczyzny, ma złamany nos, a jego twarz wyraża zaskoczenie. Trudno powiedzieć jak zginął: czy od wielu przerażających ran na brzuchu i gardle, czy może z utraty krwi. Jego ramię zostało prawie oderwane od tułowia.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~Widzisz zwłoki mężczyzny, ma złamany nos, a jego twarz wyraża zaskoczenie. Trudno powiedzieć jak zginął: czy od wielu przerażających ran na brzuchu i gardle, czy może z utraty krwi. Jego ramię zostało prawie oderwane od tułowia.~ */
  IF ~~ THEN REPLY #20657 /* ~"Niedobrze, że się tak stało. Gdybym tylko mógł z nim porozmawiać, na pewno miałby co opowiadać..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~Ciało człowieka z zakrzywionym nosem drga nieznacznie i wydobywa się flegmowaty głos Grisa. "Znalazłeś to? Dałem ci jasne instrukcje, no nie? A ty szwendasz się, podczas, gdy ja leżę tu i gniję. No dobra. Co stary, martwy Gris może dla ciebie zrobić?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"Gdzie jest amulet Kwinta?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"Gdzie jest ta skrytka?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"A tak w ogóle, co ci się stało?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"Co możesz mi powiedzieć o tych katakumbach?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"Opowiedz mi o sobie."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~Ciało człowieka z zakrzywionym nosem drga nieznacznie i wydobywa się flegmowaty głos Grisa. "Znalazłeś to? Dałem ci jasne instrukcje, no nie? A ty szwendasz się, podczas, gdy ja leżę tu i gniję. No dobra. Co stary, martwy Gris może dla ciebie zrobić?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"Gdzie jest amulet Kwinta?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"Gdzie jest ta skrytka?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"A tak w ogóle, co ci się stało?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"Co możesz mi powiedzieć o tych katakumbach?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"Opowiedz mi o sobie."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"Mówiłem ci. Jest po lewej stronie domu Marty - tej starej wiedźmy - ukryty w stercie odpadków. Poszukaj dobrze, a znajdziesz."~ */
  IF ~~ THEN REPLY #20677 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"Dzięki, Grisie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"Ukryłem to w pobliżu domu Ojo - jest stuknięty, nie? - ukryłem to w pobliżu jego domu. Myślę, że nikt mi już nie pomoże, a ponieważ jesteś bez wątpienia ostatnią osobą, z którą rozmawiam, możesz to wziąć. Jest po prawej stronie domu, jeśli stoisz twarzą do drzwi."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"W porządku. Mam jeszcze parę pytań."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"W porządku. Mam jeszcze parę pytań."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"Ja i moi chłopcy dopiero co otwarliśmy tę kryptę... i mówię ci, to było trudniejsze, niż rozpięcie pasa cnoty. Powęszyliśmy przy drzwiach, co zdawało się trwać wieczność. W końcu dostaliśmy się tutaj. Kombinowaliśmy jak otworzyć kryptę, gdy moi chłopcy zaczynają krzyczeć, a to... to *coś*... tnie mnie i wrzuca do krypty... Walczę z tym, i słyszę jak uciekają... krwawię... co się z nimi stało? Gdzie jest Burt? Lowden? Udało się im, czy są już w księdze umarłych?"~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~Prawda: "Nie żyją."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~Kłamstwo: "To oni cię załatwili."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~Kłamstwo: "Nie wiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~Kłamstwo: "Nie żyją."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~Kłamstwo: "To oni cię załatwili."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~Prawda: "Nie wiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"To mój teren. Jest tu wiele wiekowych krypt, prawie nietkniętych przez nikogo od..." Przerywa. "No cóż, od wielu lat, tak myślę. Ja i moi chłopcy rozłupaliśmy tu wiele krypt... Dopiero co weszliśmy do tej, kiedy zaczęły się kłopoty."~ */
  IF ~~ THEN REPLY #20690 /* ~"Co się stało?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"O których kryptach możesz mi coś powiedzieć?"~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"Czy odpowiesz mi na parę pytań?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"Gris. Gris Sęp. Nazwali mnie tak, bo potrafię na kilometr wyczuć grób i biorę najlepsze łupy, zanim ktokolwiek inny dowie się, że tam były. Spędzałem większość czasu obrabiając umarlaków. Dlaczego pytasz?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"Kwint cię szukał, Grisie. Powiedział, że masz coś, co należy do niego."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"Jesteś Gris, no nie? Powiem innym mieszkańcom wioski, że nie żyjesz."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"Jesteś Gris, no nie? Powiem innym mieszkańcom wioski, że nie żyjesz."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"Bez powodu."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~Człowiek wzdycha. "Co chcesz wiedzieć, trepie?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"Gdzie jest amulet Kwinta?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"Gdzie jest ta skrytka?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"A tak w ogóle, co ci się stało?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"Grisie, musisz mi powiedzieć gdzie znajduje się amulet Kwinta. Powiedział, że wiesz."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"Co możesz mi powiedzieć o tych katakumbach?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"Opowiedz mi o sobie."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"Amulet Kwinta?" Trup śmieje się. "Jeśli ten faszerowany, syfilityczny, syn ladacznicy przysłał cię tu z tego powodu, jesteś w złym miejscu, trepie. Ta rzecz trafiła z powrotem do Zakopanej Wioski."~ */
  IF ~~ THEN REPLY #20718 /* ~"Ale gdzie on jest?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"Rozumiem. Poszukam. Żegnaj."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"Gris. Gris Sęp. Nazwali mnie tak, bo potrafię na kilometr wyczuć grób i biorę najlepsze łupy, zanim ktokolwiek inny dowie się, że tam były. Spędzałem większość czasu obrabiając umarlaków. Dlaczego pytasz?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"To dobrze. Nie chciałbym by przeżyli, po tym jak mnie zostawili na śmierć."~ */
  IF ~~ THEN REPLY #20728 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"Plugawe gnojki! Prawdopodobnie sprzedali mnie ladacznicy-fortunie, zostawiając na pastwę tego *czegoś*, a sami zwiali w bezpieczne miejsce..."~ */
  IF ~~ THEN REPLY #20731 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"Taa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"Trudno. Miejmy nadzieję, że im się nie udało. Plugawe, tchórzliwe gnojki."~ */
  IF ~~ THEN REPLY #20734 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"Już mnie o to pytałeś, trepie. Gris, Sęp, krypty, katakumby, bycie Zbieraczem... cóż jeszcze chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #20737 /* ~"Tylko parę odpowiedzi..."~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"Jest tam jedna, na lewo od wejścia z luźnym pękiem głów ghuli... nie radzę tam leźć bez pochodni i łuków. Jest krypta z pięknymi płytkami na prawo i spory kawał drogi w dół od wejścia... Dalej jest taka, którą zdążyłem zbadać, zanim mi się przytrafiło nieszczęście... Myślę, że krypta z pięknymi płytkami kryje jakąś tajemnicę... inaczej pachnie. Jest tam gdzieś jeszcze ukryta komnata, ale nie wiem jak do niej dojść."~ */
  IF ~~ THEN REPLY #20740 /* ~"Gdzie ona jest?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"Żegnaj, Grisie."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"Gdzieś w Zatopionych Ziemiach... choć nie pamiętam dokładnie gdzie."~ */
  IF ~~ THEN REPLY #20744 /* ~"W porządku. Mam też inne pytania..."~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"Dzięki Grisie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"Ech, ty trepie. Wiedz, że gdybym nie był martwy, nigdy bym ci tego nie wyśpiewał. Ale..." Przerywa, "ale, ponieważ jestem już truposzem, powiem ci. Zakopałem go w odpadkach po lewej stronie domu Marty - rozpruwaczki trupów."~ */
  IF ~~ THEN REPLY #20747 /* ~"Znajdę. Lecz najpierw odpowiedz na parę pytań..."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris Sęp zdradził mi, gdzie mogę znaleźć trujący amulet Kwinty. Znajduje się na wysypisku śmiecia, na lewo od domostwa Marty, w Zakopanej Wiosce.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"Dzięki, Grisie. Żegnaj."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris Sęp zdradził mi, gdzie mogę znaleźć trujący amulet Kwinty. Znajduje się na wysypisku śmiecia, na lewo od domostwa Marty, w Zakopanej Wiosce.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"Cóż, wygląda na to, że jestem, cholera, martwy. Przekaż im więc życzenia wszystkiego najgorszego. Gnojki, pewnie już grzebią w mojej skrytce i żyją na mój koszt."~ */
  IF ~~ THEN REPLY #20750 /* ~"Twojej skrytce?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"Być może. Mam kilka innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"Tak... schowałem coś w pobliżu mojego... coś, o czym ten piernik Farod nic nie wie. Jeśli dobrze pamiętam, schowałem to na prawo od domu tego głupka Ojo."~ */
  IF ~~ THEN REPLY #20754 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"Tak, jestem pewien."~ */
  IF ~~ THEN REPLY #20757 /* ~"Taa, w porządku... odpowiedz na kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"Eee... taa. Żegnaj."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~Widzisz zwłoki mężczyzny, ma złamany nos a jego twarz wyraża zaskoczenie. Trudno powiedzieć jak zginął: czy od wielu przerażających, ran na brzuchu i gardle, czy może z utraty krwi. Jego ramię zostało prawie oderwane od tułowia. Odpowiada ci grzechotliwym głosem. "Eee... nie... nie, bestia, muszę... uciekać! Dlaczego jestem tak odrętwiały... opiłem się? Nie czuję rąk... ani nóg. Co do diabła - ostatnie co pamiętam, to jak mnie tu coś wepchnęło, a chłopców... pocięło coś wielkiego..."~ */
  IF ~~ THEN REPLY #20760 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"O czym ty mówisz?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"Co? Kim do stu diabłów jesteś? Pokaż się... auuu, na owłosioną dupę samego Twarzowca... jestem martwy, no nie?"~ */
  IF ~~ THEN REPLY #20763 /* ~"Obawiam się, że tak. Odpowiesz na parę pytań?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"No..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"Zawsze wiedziałem, że do tego dojdzie... powiedz mi, śmiałku... czy wciąż jestem w katakumbach?"~ */
  IF ~~ THEN REPLY #20766 /* ~"Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~Kłamstwo: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~W głosie umierającego słychać gorzką nutę. "Tak jest. Zrób im przysługę, a oni i tak zostawią cię w potrzebie."~ */
  IF ~~ THEN REPLY #20769 /* ~"W porządku. Odpowiedz na kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~Wydaje się być zaskoczony. "Ktoś mnie wyciągnął? Nie powiem, że się tego po nich spodziewałem... pewnie zrobili to, by dowiedzieć się gdzie jest moja skrytka..."~ */
  IF ~~ THEN REPLY #20772 /* ~"Twoja skrytka?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"Dobrze. Odpowiedz na parę pytań."~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"Nieważne. Żegnaj."~ */ EXIT
END
