// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUDESIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DUDESIRE~

IF ~  Global("UDesire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2987 /* ~Kobieta, którą widzisz przed sobą, jest niewiarygodnie atrakcyjna. Jest w niej coś nieuchwytnego, co sprawia, że *pragniesz* z nią porozmawiać. Kiedy podchodzisz do niej, spogląda na ciebie wstydliwie, potem zaś uśmiecha się porozumiewawczo.~ */
  IF ~~ THEN REPLY #2988 /* ~"Witaj..."~ */ DO ~SetGlobal("UDesire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44849 /* ~Zostaw ją samej sobie.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 21.0
  SAY #44850 /* ~"*Pragniesz* czegoś, czy taaak?" Kobieta przeciąga znacząco ostatnie słowo, tak, aż brzmi w jej ustach jak obietnica niebiańskiej pieszczoty. "Mogę ci pomóc. Wypowiedz tylko imię swojej żądzy, a zaspokoję cię."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 475
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44851 /* ~"Pragnę *ciebie*."~ */ GOTO 3
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44852 /* ~"Pragnę potężnego oręża."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44853 /* ~"Pragnę magicznych przedmiotów."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44854 /* ~"Pragnę czarodziejskich zaklęć."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44855 /* ~"Pragnę wiedzy. Mam kilka pytań..."~ */ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44856 /* ~"Pragnę powrotu moich wspomnień - wszystkich."~ */ GOTO 17
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44857 /* ~"A cóż ty masz takiego, czego miałbym pragnąć?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44858 /* ~"Może później. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44859 /* ~Kobieta nie zwraca uwagi na Mortego, jej wzrok trzyma się tylko twojego spojrzenia. Kobieta uśmiecha się, oczekując twojej odpowiedzi.~ */
  IF ~~ THEN REPLY #44860 /* ~"Pragnę *ciebie*."~ */ GOTO 3
  IF ~~ THEN REPLY #44861 /* ~"Pragnę potężnego oręża."~ */ GOTO 10
  IF ~~ THEN REPLY #44862 /* ~"Pragnę magicznych przedmiotów."~ */ GOTO 10
  IF ~~ THEN REPLY #44863 /* ~"Pragnę czarodziejskich zaklęć."~ */ GOTO 10
  IF ~~ THEN REPLY #44864 /* ~"Pragnę wiedzy. Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #44865 /* ~"Pragnę powrotu moich wspomnień - wszystkich."~ */ GOTO 17
  IF ~~ THEN REPLY #44866 /* ~"A cóż ty masz takiego, czego miałbym pragnąć?"~ */ GOTO 16
  IF ~~ THEN REPLY #44867 /* ~"Może później. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #44868 /* ~Kobieta zwilża językiem wargi i dalej się uśmiecha. Czujesz szarpnięcie w piersi, jak gdyby ktoś wbił dłoń w twoje ciało i próbował wyrwać twoje wnętrze. "To proste życzenie. I takie też mam dla ciebie, wędrowcze: proszę, abyś powiedział mi, wyjaśnił mi, w jaki sposób mnie pragniesz. Niech usłyszę twoją żądzę... *wówczas*, podam ci cenę."~ */
  IF ~~ THEN REPLY #44869 /* ~"Przejęzyczyłem się... Nie pragnę ciebie."~ */ GOTO 4
  IF ~~ THEN REPLY #44870 /* ~"Pragnę ciebie. Czy to nie wystarczy?"~ */ GOTO 6
  IF ~~ THEN REPLY #44871 /* ~Opisz jej, na czym polega żądza, jaką w tobie obudziła.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44872 /* ~Pokaż jej naocznie, że jej pragniesz.~ */ GOTO 7
  IF ~~ THEN REPLY #44873 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44874 /* ~Jej uśmiech blednie. Twoja odpowiedź najwyraźniej ją zasmuciła. "Czy twoja żądza to chęć drażnienia się ze mną, wędrowcze? Żądza to nie przelotne uczucie... Czyż więc nie pragniesz *niczego*, wędrowcze?"~ */
  IF ~~ THEN REPLY #44875 /* ~"Są inne rzeczy, których pragnę..."~ */ GOTO 5
  IF ~~ THEN REPLY #44876 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0 15.0 16.0
  SAY #44877 /* ~"Tak? Proszę... Powiedz mi..."~ */
  IF ~~ THEN REPLY #44878 /* ~"Pragnę *ciebie*."~ */ GOTO 3
  IF ~~ THEN REPLY #44879 /* ~"Pragnę potężnego oręża."~ */ GOTO 10
  IF ~~ THEN REPLY #44880 /* ~"Pragnę magicznych przedmiotów."~ */ GOTO 10
  IF ~~ THEN REPLY #44881 /* ~"Pragnę czarodziejskich zaklęć."~ */ GOTO 10
  IF ~~ THEN REPLY #44882 /* ~"Pragnę wiedzy. Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #44883 /* ~"Pragnę powrotu moich wspomnień - wszystkich."~ */ GOTO 17
  IF ~~ THEN REPLY #44884 /* ~"A cóż ty masz takiego, czego miałbym pragnąć?"~ */ GOTO 16
  IF ~~ THEN REPLY #44885 /* ~"Może później. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 7.0
  SAY #44886 /* ~Jej uśmiech traci swoją łagodność. "Musisz dać swej żądzy głos i uczucie, inaczej będzie dla mnie tylko pyłem. Musisz przekonać mnie, że naprawdę tego pragniesz lub nie będę mogła ci tego dać."~ */
  IF ~~ THEN REPLY #44887 /* ~Opisz jej, na czym polega żądza, jaką w tobie obudziła.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44888 /* ~Pokaż jej naocznie, że jej pragniesz.~ */ GOTO 7
  IF ~~ THEN REPLY #44889 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 6.1
  SAY #44890 /* ~Próbujesz złapać ją za ramiona, ale błyskawicznie cofa się, a twoje ręce zagarniają próżnię. "Nie wystarczy po prostu *pragnąć* wejść do pałacu... Chętny musi umieć wypowiedzieć swoją żądzę, a jedynie wtedy brama zostanie otwarta. Mów zatem."~ */
  IF ~~ THEN REPLY #44891 /* ~"Pragnę ciebie. Czy to nie wystarczy?"~ */ GOTO 6
  IF ~~ THEN REPLY #44892 /* ~Opisz jej, na czym polega żądza, jaką w tobie obudziła.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44893 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 6.0 7.1
  SAY #44894 /* ~Kiedy mówisz, jej uśmiech blednie, pochyla się ku tobie pełna uwagi, lustrując bacznie twoją twarz. Masz wrażenie, że w jej obecności mówisz znacznie więcej, niż powiedziałbyś zazwyczaj, a po kilku chwilach kobieta zamyka oczy i zaczerpuje powietrza. Nagle, żądza, którą w tobie budziła, poczyna się zmniejszać... Twoje pożądanie całkowicie cię opuszcza, pozostawiając po sobie tylko poczucie zimnej pustki. Otwiera oczy i uśmiecha się. W jej spojrzeniu widać pewną satysfakcję.

"Czy coś się stało, wędrowcze? Czy już mnie nie pragniesz?~ */
  IF ~~ THEN REPLY #44895 /* ~"Nie... Nie pragnę. Co ty ze mną zrobiłaś?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44896 /* ~Wydaje się, że wprawiłeś ją w zakłopotanie. "Co właściwie masz na myśli?" Mimo jej niewinnego zachowania, czujesz, że wydarzyło się coś niezwykłego. Kobiecie udało się w jakiś niepojęty sposób pochłonąć całe pożądanie, jakie w tobie budziła. Dołączyła je pewnie do swojej koszmarnej kolekcji ludzkich pragnień, albo może po prostu nakarmiła się nim? Tak czy owak, pragnienie odeszło... bezpowrotnie.

"Czy pragniesz jeszcze czegoś? Opowiedz mi o tym..."~ */
  IF ~~ THEN REPLY #44897 /* ~"Ja... Lepiej nie. Żegnaj, Niezaspokojona Żądzo."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.3 1.4 2.1 2.2 2.3 5.1 5.2 5.3
  SAY #44898 /* ~Kobieta ogarnia cię uważnym spojrzeniem. "Jeżeli naprawdę tego pragniesz, musisz najpierw spełnić moją prośbę: Musisz powiedzieć mi, w jaki sposób pożądasz tych rzeczy. Opowiedz mi o swojej żądzy, a ja podam ci cenę."~ */
  IF ~~ THEN REPLY #44899 /* ~"Przejęzyczyłem się... Nie pragnę czegoś takiego."~ */ GOTO 11
  IF ~~ THEN REPLY #44900 /* ~"Pragnę tego. Czy to nie wystarczy?"~ */ GOTO 12
  IF ~~ THEN REPLY #44901 /* ~Opisz jej, w jaki sposób tego pragniesz.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44902 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 17.0 18.0
  SAY #44903 /* ~Jej uśmiech blednie. Twoja odpowiedź najwyraźniej ją zasmuciła. "Czy twoja żądza to chęć drażnienia się ze mną, wędrowcze? Żądza to nie przelotne uczucie... Czyż więc nie pragniesz *niczego*, wędrowcze?"~ */
  IF ~~ THEN REPLY #44904 /* ~"Są inne rzeczy, których pragnę..."~ */ GOTO 5
  IF ~~ THEN REPLY #44905 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #44906 /* ~Jej uśmiech traci swoją łagodność. "Musisz dać swej żądzy głos i uczucie, inaczej będzie dla mnie tylko pyłem. Musisz przekonać mnie, że naprawdę tego pragniesz lub nie będę mogła ci tego dać."~ */
  IF ~~ THEN REPLY #44907 /* ~"Przejęzyczyłem się... Nie pragnę czegoś takiego."~ */ GOTO 11
  IF ~~ THEN REPLY #44908 /* ~Opisz jej, w jaki sposób tego pragniesz.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44909 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 12.1
  SAY #44910 /* ~Kiedy mówisz, jej uśmiech blednie, pochyla się ku tobie pełna uwagi, lustrując bacznie twoją twarz. Masz wrażenie, że w jej obecności mówisz znacznie więcej, niż powiedziałbyś zazwyczaj, a po kilku chwilach, kobieta zamyka oczy i zaczerpuje powietrza. Nagle, twoja żądza zaczyna się zmniejszać... Twoje *pragnienie* powoli cię opuszcza, pozostawiając po sobie tylko poczucie zimnej pustki. Kobieta otwiera oczy, gdy przestajesz mówić.

"Co się stało, wędrowcze? Czy już tego nie pragniesz...?"~ */
  IF ~~ THEN REPLY #44911 /* ~"Nie... To znaczy tak... Co ty ze mną zrobiłaś?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 20.0
  SAY #44912 /* ~Wydaje się, że wprawiłeś ją w zakłopotanie. "Co właściwie masz na myśli?" Mimo jej niewinnego zachowania, czujesz, że wydarzyło się coś niezwykłego. Kobiecie udało się w jakiś niepojęty sposób pochłonąć część twojej żądzy. Dołączyła ją pewnie do swojej koszmarnej kolekcji ludzkich pragnień, albo może po prostu nakarmiła się nią? Masz pewność, że gdybyś skończył mówić o twym pragnieniu, już na zawsze by cię opuściło.

"Czy pragniesz jeszcze czegoś? Opowiedz mi o tym..."~ */
  IF ~~ THEN REPLY #44913 /* ~"Ja... Lepiej nie. Żegnaj, Niezaspokojona Żądzo."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.4 5.4 22.0
  SAY #44914 /* ~Kobieta marszczy brwi i odwraca spojrzenie na chwilę "Wiedza... Nie zajmuję się takimi rzeczami. Na pewno masz jakieś *inne* pragnienia, *inne* potrzeby, o których mógłbyś mi opowiedzieć..."~ */
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44915 /* ~"Są inne rzeczy, których pragnę..."~ */ GOTO 5
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44916 /* ~"Może następnym razem. Póki co, żegnaj."~ */ EXIT
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #44917 /* ~"Nie wydaje mi się, abym miał ochotę dzielić się tym z tobą. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7 2.6 5.6
  SAY #44918 /* ~"W moim zasięgu leży wszystko, czego pragniesz. Te kilka rzeczy, których nie posiadam, mogę zdobyć. Powiedz mi, czego pragniesz..."~ */
  IF ~~ THEN REPLY #44919 /* ~"Tak, *jest* coś, czego pragnę..."~ */ GOTO 5
  IF ~~ THEN REPLY #44920 /* ~"Może następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.6 2.5 5.5
  SAY #44921 /* ~Kobieta uśmiecha się "Wiele może odejść w zapomnienie podczas żywota... A jeszcze więcej podczas wielu żywotów. *Mogę* ci pomóc." Patrzy z bliska na twoją twarz. "Wyjaśnij mi, w jaki sposób pragniesz tych wspomnień. Opisz mi swą żądzę... Wówczas, podam ci cenę."~ */
  IF ~~ THEN REPLY #44922 /* ~"Przejęzyczyłem się... Nie pragnę z powrotem moich wspomnień."~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #44923 /* ~"Jaki masz dowód na to, że możesz przywrócić moje wspomnienia?"~ */ GOTO 18
  IF ~~ THEN REPLY #44924 /* ~"Pragnę, by do mnie wróciły... Czy to nie wystarczy?"~ */ GOTO 19
  IF ~~ THEN REPLY #44925 /* ~Opisz jej, w jaki sposób pragniesz powrotu twoich wspomnień.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44926 /* ~"Może następnym razem. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0
  SAY #44927 /* ~Wydaje się, że kobieta nie poruszyła się, ale niepojętym sposobem jej dłoń dotyka twojego czoła. Jej palec błądzi po twojej skroni. "Tylko to..." Czujesz, jak mgła w twojej głowie rozpływa się i przez moment możesz uchwycić rąbka wspomnień, ale zanim jesteś w stanie skupić się na nich, mgła znowu opada. "Tylko to. Powiedz mi, *dlaczego* tego pragniesz, opisz swoją żądzę, a ja podam ci cenę..."~ */
  IF ~~ THEN REPLY #44928 /* ~"Przejęzyczyłem się... Nie pragnę z powrotem moich wspomnień."~ */ GOTO 11
  IF ~~ THEN REPLY #44929 /* ~"Pragnę, aby do mnie wróciły... Czy to nie wystarczy?"~ */ GOTO 19
  IF ~~ THEN REPLY #44930 /* ~Opisz jej, w jaki sposób pragniesz powrotu twoich wspomnień.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44931 /* ~"Może następnym razem. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #44932 /* ~Jej uśmiech traci swoją łagodność. "Musisz dać swej żądzy głos i uczucie, inaczej będzie dla mnie tylko pyłem. Musisz przekonać mnie, że naprawdę tego pragniesz lub nie będę mogła ci tego dać."~ */
  IF ~~ THEN REPLY #44933 /* ~"Jaki masz dowód na to, że możesz przywrócić moje wspomnienia?"~ */ GOTO 18
  IF ~~ THEN REPLY #44934 /* ~Opisz jej, w jaki sposób pragniesz powrotu twoich wspomnień.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44935 /* ~"Może następnym razem. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.2 19.1
  SAY #44936 /* ~Kiedy mówisz, jej uśmiech blednie, pochyla się ku tobie pełna uwagi, lustrując bacznie twoją twarz. Masz wrażenie, że w jej obecności mówisz znacznie więcej, niż powiedziałbyś zazwyczaj, a po kilku chwilach kobieta zamyka oczy i zaczerpuje powietrza. Nagle, twoja żądza zaczyna się zmniejszać... Twoje *pragnienie* powoli maleje, pozostawiając po sobie tylko poczucie zimnej pustki. Kobieta otwiera oczy, kiedy przestajesz mówić.

"Co się stało, wędrowcze? Czy już nie pragniesz, aby twoje wspomnienia powróciły do ciebie...?"~ */
  IF ~~ THEN REPLY #44937 /* ~"Nie... To znaczy tak... Co ty ze mną zrobiłaś?"~ */ GOTO 14
END

IF ~  Global("UDesire","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #44938 /* ~Widzisz Niezaspokojoną Żądzę. Kiedy się do niej zbliżasz, odwraca się ku tobie i uśmiecha.~ */
  IF ~~ THEN REPLY #44939 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #44940 /* ~"Akurat tędy przechodziłem; żegnaj."~ */ EXIT
END

IF ~  Global("UDesire","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #44941 /* ~Widzisz Niezaspokojoną Żądzę, istotę zajmującą się zbieraniem lub pożeraniem pragnień innych ludzi, które wcześniej trwale usuwa z ich umysłów. Kobieta uśmiecha się na twój widok.~ */
  IF ~~ THEN REPLY #44942 /* ~"Mam kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #44943 /* ~"Akurat tędy przechodziłem; żegnaj."~ */ EXIT
END
