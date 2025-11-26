// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERIMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERIMAN~

IF ~  NumTimesTalkedTo(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49920 /* ~Ten mężczyzna wygląda na zgorzkniałego, kłótliwego, starego dziwaka. Jego twarz jest wykrzywiona od niezadowolenia, a gdy zauważa, że nadchodzisz, sroży się jeszcze bardziej. "Niech będzie, że nazywam się Wesołek, ale wesoły to ja nie jestem! Odejdź precz, młodzieńcze! Nie mam czasu na takich jak ty!" Od wysiłku jaki wkłada, by cię przegonić, zaczyna kaszleć.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49921 /* ~"Zaczekaj... Dolora chciała, żebym z tobą porozmawiał."~ */ GOTO 2
  IF ~~ THEN REPLY #49922 /* ~"Dobrze... żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #49923 /* ~Wesołek posyła ci cierpkie, miażdżące spojrzenie. "Odejdź." syczy.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49924 /* ~"Zaczekaj... Dolora chciała, żebym z tobą porozmawiał."~ */ GOTO 2
  IF ~~ THEN REPLY #49925 /* ~"Dobrze... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49926 /* ~Wesołek przygląda ci się podejrzliwie. "Naprawdę? A w *jakiej* sprawie, co? Hmm? No?"~ */
  IF ~~ THEN REPLY #49927 /* ~"Mówi, że jesteś jej pierwszą miłością i dopóki będziesz miał klucze do jej serca, nie będzie mogła pokochać innego."~ */ GOTO 3
  IF ~~ THEN REPLY #49928 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49929 /* ~"Tak powiedziała? Jestem zaskoczony. Może to, że została pod opieką Pani Sławy, sprawiło to, czego mi się nie udało... że zaczęły rozwijać się w niej *uczucia*. Tak czy inaczej..." Głaszcze kieszeń u swojej tuniki. "Nie *oddam* ich, tak po prostu."~ */
  IF ~~ THEN REPLY #49930 /* ~"Czekaj - czy to są dosłownie 'klucze do jej serca'?"~ */ GOTO 5
  IF ~~ THEN REPLY #49931 /* ~"Więc, co za nie chcesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #49932 /* ~"Zatem może po prostu ci je *zabiorę*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49933 /* ~"Porozmawiamy o nich później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 6.1 10.1
  SAY #49934 /* ~"Jest tylko jeden sposób na to, żebyś *zabrał* moje klucze - wydrzyj je z moich zimnych, martwych palców! A nie mam pewności, czy to akurat najlepszy pomysł wszczynać awanturę w Miejskim Gmachu Rozrywki..."~ */
  IF ~~ THEN REPLY #49935 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #49936 /* ~"Racja. Czy to dosłownie 'klucze do jej serca'?"~ */ GOTO 5
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49937 /* ~"W porządku. Co za nie chcesz, Wesołku?"~ */ GOTO 7
  IF ~~ THEN REPLY #49938 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.1
  SAY #49939 /* ~Potakuje. "W rzeczy samej. Dolora jest konstruktem; nie wiedziałeś o tym? Jest stworzeniem, które istnieje dzięki czarom i precyzyjnym mechanizmom, jest jednym z moich najlepszych dzieł." Wzdycha. "Jest jednak zimna, bez uczuć i charakteru. Sprowadziłem ją do Przybytku i ustawiłem tak, by nie odeszła, w nadziei, że stały kontakt z tyloma ludźmi rozwinie w niej jej własną osobowość. Te klucze służą do 'nastawiania' jej; ona ich potrzebuje, ponieważ czuje, że ograniczają jej indywidualny rozwój. Tak przynajmniej sądzę."~ */
  IF ~~ THEN REPLY #49940 /* ~"Dlaczego zatem, po prostu nie oddasz jej tych kluczy?"~ */ GOTO 6
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49941 /* ~"Co chcesz w zamian za klucze?"~ */ GOTO 7
  IF ~~ THEN REPLY #49942 /* ~"Zatem może po prostu ci je *zabiorę*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49943 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49944 /* ~Wesołek patrzy spode łba. "Ponieważ stałem się okrutnym i zgorzkniałym, starym człowiekiem, który widzi, że może cię do czegoś wykorzystać."~ */
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49945 /* ~"Zatem, mów dalej... czego chcesz?"~ */ GOTO 7
  IF ~~ THEN REPLY #49946 /* ~"Zatem może po prostu ci je *zabiorę*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49947 /* ~"Porozmawiamy o tym później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.2 5.1 6.0
  SAY #49948 /* ~"Chcę... chcę zapomnieć. Żyję już prawie sto pięćdziesiąt lat i widziałem w tym wspaniałym gmachu wszystkie kamienie doznań. Nie zostało mi już wiele życia, a jestem zbyt słaby, by udać się na poszukiwanie zupełnie nowych doświadczeń... zatem muszę znaleźć sposób, żeby je wszystkie zapomnieć. W ten sposób, mogę zacząć na nowo, u kresu moich dni..."~ */
  IF ~~ THEN REPLY #49949 /* ~"Więc... mam cię po prostu trzepnąć w łeb, czy co?"~ */ JOURNAL #49952 /* ~Wesołek chciał, abym w zamian za klucze do serca Dolory pomógł mu pozbyć się wspomnień. Muszę więc rozejrzeć się za czymś stosownym. Najlepiej najpierw wypróbować coś takiego na kimś innym, a potem przynieść to Wesołkowi. Sam Wesołek napomknął coś o wodzie z rzeki Styks.~ */ GOTO 8
  IF ~~ THEN REPLY #49950 /* ~"Jak mogę pomóc?"~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ JOURNAL #49952 /* ~Wesołek chciał, abym w zamian za klucze do serca Dolory pomógł mu pozbyć się wspomnień. Muszę więc rozejrzeć się za czymś stosownym. Najlepiej najpierw wypróbować coś takiego na kimś innym, a potem przynieść to Wesołkowi. Sam Wesołek napomknął coś o wodzie z rzeki Styks.~ */ GOTO 9
  IF ~~ THEN REPLY #49951 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49953 /* ~"Nie, ty krwiożerczy tłumoku!"~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #49954 /* ~"Będę potrzebował... jakiegoś przedmiotu, czegoś... co pozwoliłoby mi zapomnieć. Czegoś, co byłoby podobne do napicia się wody ze Styksu; czegoś takiego."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49955 /* ~"Proszę, weź ten puchar... jest w nim Mroczny Ptak Okantusa, lodowy odłamek z rzeki Styks. Powinien wymazać twoje wspomnienia..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49956 /* ~"Dobrze. Wrócę, jeśli coś znajdę... żegnaj."~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ EXIT
END

IF ~  Global("Merriman","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #49957 /* ~Wesołek patrzy z ukosa na ciebie. "Więc? Masz coś, co wymazałoby z mej pamięci te przeklęte wspomnienia? Nawet mi przez myśl nie przeszło, że mógłbyś wrócić bez... w ten sposób nigdy nie dostaniesz kluczy do serca Dolory."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49958 /* ~"Proszę, weź ten puchar... jest w nim Mroczny Ptak Okantusa, lodowy odłamek z rzeki Styks. Powinien wymazać twoje wspomnienia..."~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49959 /* ~"Zatem może po prostu ci je *zabiorę*..."~ */ GOTO 4
  IF ~~ THEN REPLY #49960 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #49961 /* ~Wesołek bierze najpierw puchar, a potem, z kieszeni, kawałek papieru. Przechyla puchar do tyłu i bierze do ust lodowy odłamek... ten rozpuszcza się w jednej chwili, wprawiając go w osłupienie.~ */
  IF ~  HasItem("DlraKey",Myself)
~ THEN REPLY #49962 /* ~"Wesołku...?"~ */ DO ~GiveItem("DlraKey",Protagonist)
AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Przyniosłem Wesołkowi kawał lodu z wody z rzeki Styks, zwany Czarnym Ptakiem Ocanthusa. Wesołek połknął go i stracił wszystkie swoje wspomnienia. No cóż, tego właśnie chciał, ale przyznam szczerze, że po tym, co sam przeszedłem, wcale mu tego stanu nie zazdroszczę.~ */ GOTO 12
  IF ~  !HasItem("DlraKey",Myself)
~ THEN REPLY #49963 /* ~"Wesołku...?"~ */ DO ~AddexperienceParty(12000)
~ JOURNAL #66580 /* ~Przyniosłem Wesołkowi kawał lodu z wody z rzeki Styks, zwany Czarnym Ptakiem Ocanthusa. Wesołek połknął go i stracił wszystkie swoje wspomnienia. No cóż, tego właśnie chciał, ale przyznam szczerze, że po tym, co sam przeszedłem, wcale mu tego stanu nie zazdroszczę.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49964 /* ~Wesołek patrzy zakłopotany najpierw na ciebie, a potem na papier w swoich rękach. Czyta go na głos: "Gratulacje, Wesołku: zacząłeś od nowa. Podziękuj temu, który stoi przed tobą i daj mu klucz z twojej kieszeni. Poproś Drzazgę, mężczyznę przy wejściu do tego budynku, o więcej informacji." Spogląda raz jeszcze na ciebie. "Cóż... wygląda na to, że winien ci jestem wdzięczność, dobry panie. Proszę... weź ten klucz. Lepiej poszukam tego 'Drzazgę' i zobaczę o co chodzi!"~ */
  IF ~~ THEN REPLY #49965 /* ~"Dziękuję, Wesołku. Powodzenia."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #49966 /* ~Wesołek patrzy zakłopotany najpierw na ciebie, a potem na papier w swoich rękach. Czyta go na głos: "Gratulacje, Wesołku: zacząłeś od nowa. Podziękuj temu, który stoi przed tobą i daj mu klucz z twojej kieszeni. Poproś Drzazgę, mężczyznę przy wejściu do tego budynku, o więcej informacji." Spogląda raz jeszcze na ciebie. "Hmm... zdaje się jednak, że nie mam klucza przy sobie. Może ktoś go ode mnie wziął. Wybacz więc! Cóż, może lepiej poszukam tego 'Drzazgę' i zobaczę o co chodzi!"~ */
  IF ~~ THEN REPLY #49967 /* ~"Powodzenia, Wesołku. Żegnaj."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END
