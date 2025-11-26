// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~Atrakcyjna młoda kobieta uśmiecha się i kiwa do wszystkich przechodniów, wychwalając zalety swoich towarów. "Talerze! Dzbany! Kubki! Kufle! Pijcie tylko z kielichów, z jakich piją najlepsi panowie!" Na twój widok macha, jak gdybyście się znali.~ */
  IF ~~ THEN REPLY #17433 /* ~"Czy mogę zobaczyć co sprzedajesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~Udawaj, że nie widzisz, jak macha. Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~Gdy podchodzisz, kobieta uśmiecha się ciepło. "Witaj ponownie, panie. Co chciałbyś kupić dzisiaj, mmm?"~ */
  IF ~~ THEN REPLY #17436 /* ~"Co masz do sprzedania?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"Nic, ale mam parę pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"Nic, jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"Sprzedaję talerze, kubki, dzbany, kufle, sztućce i tak dalej, panie. Wszystko wysokiej jakości, najlepsze." Cofa się i unosi wieko skrzyni stojącej na wozie. "Proszę, spójrz na moje towary... Jeśli masz jakieś pytania, nie krępuj się."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"Potrzebuję czegoś na atrament... masz jakiś kufel albo kielich?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~Podejdź bliżej i zobacz co jest w skrzyni.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"Nie teraz. Mam kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~Spoglądasz do skrzyni; jest pełna... talerzy, kubków, dzbanów, kufli, sztućców i tak dalej. Są różnej jakości, ale niektóre całkiem ładne. Gdy je oglądasz, opiera się o ciebie. "Widzisz coś, co ci się podoba, panie? Mmm?" Jej długie, faliste włosy, ocierają się o twoje ramię; pachną delikatnie i słodko niczym wanilia.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"Potrzebuję czegoś na atrament... masz jakiś kufel albo kielich?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"Skąd masz to wszystko?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"Nie, nie potrzebuję żadnej z tych rzeczy. Ale mam kilka pytań..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"Nie, niczego nie potrzebuję. Żegnaj."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"Nie, nie ma tu nic, co mogłoby mi się przydać. Ale mam parę pytań..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"Nie, żadnego nie potrzebuję. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~Uśmiecha się szelmowsko. "Moi kochankowie są włamywaczami, panie - te towary zostały skradzione z domów szlachetnie urodzonych." Widząc wyraz twojej twarzy, śmieje się słodko. "To tylko żarty, panie! Mój ojciec i bracia to druciarze; te rzeczy zostały wyrzucone z dworów możnych, a oni tylko je naprawili."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"Potrzebuję czegoś na atrament... masz jakiś kufel albo kielich?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"Rozumiem. Mam parę pytań..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"Och, poczekaj, panie!" Kładzie rękę na twoim przedramieniu; jej dotyk jest lekki jak piórko. "Jesteś *pewien*, że niczego nie potrzebujesz? Na pewno jest tu coś, co przyda ci się w domu, albo na prezent..." Wstydliwie gryzie wargę, lekko unosząc głowę.~ */
  IF ~~ THEN REPLY #17454 /* ~"Cóż... ten tutaj, to całkiem ładny talerz..."~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"Eee... nie, nie ma tu nic dla mnie. Chcę tylko spytać..."~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"Przykro mi... nie ma tu nic dla mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"Och, poczekaj, panie!" Kładzie rękę na twoim przedramieniu; jej dotyk jest lekki jak piórko. "Jesteś *pewien*, że niczego nie potrzebujesz? Na pewno jest tu coś, co przyda ci się w domu, albo na prezent..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"Który, panie... ten tutaj?"~ */
  IF ~~ THEN REPLY #17459 /* ~"Nie, uch, to - poczekaj. To śmieszne. Nie potrzebuję talerzy. Chcę o coś spytać..."~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"Słuchaj, przepraszam. Naprawdę nie potrzebuję talerzy. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~Wygląda tak smutno, że prawie czujesz się winny. Powoli opuszcza wieko. "Przykro mi, panie, nie mam czasu na rozmowę. Muszę sprzedać jak najwięcej, nim skończy się dzień. Moja rodzina jest duża i głodna."~ */
  IF ~~ THEN REPLY #17461 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~Wygląda na tak bardzo urażoną, że prawie czujesz się winny. Powoli opuszcza wieko. "Żegnaj więc, panie. Jeśli kiedyś będziesz czegoś potrzebował, błagam, wróć tutaj. Niegdzie indziej nie dostaniesz tak dobrych rzeczy za tak wspaniałą cenę." Smutno macha ręką.~ */
  IF ~~ THEN REPLY #17462 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~"Przykro mi, panie. Nie mam czasu na rozmowy. Muszę sprzedać jak najwięcej, zanim skończy się dzień. Moja rodzina jest duża i głodna." Wciąż trzyma wieko skrzyni. "Jesteś *pewien*, że nie chcesz zobaczyć, co mam w ofercie? Mmm?"~ */
  IF ~~ THEN REPLY #17463 /* ~"Dobrze. Popatrzę."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"Może innym razem. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~Sprzedawczyni zadziera swój śliczny, mały nosek. "Jesteś tak zazdrosna, że obrabowałabyś biedną kobietę? Ten dobry pan to tylko klient, o Sfero-Tknięta, a nie kawał mięsa, o który się walczy lub posiada." Mówiąc to, kiwa na ciebie.~ */
  IF ~~ THEN REPLY #17465 /* ~Poczekaj...~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~Kiwa głową. "Och, tak... wiele rodzajów. Ich cena waha się od kilku miedziaków do kilkuset..."~ */
  IF ~~ THEN REPLY #22236 /* ~"Tak naprawdę, to chcę najtańszy, jaki masz."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~Unosi brew. Sięga do skrzyni obok, i pokazuje ci sponiewierany kufel. Ma wiele wgnieceń, a jego rączka wygląda, jak gdyby miała odpaść.~ */
  IF ~~ THEN REPLY #22237 /* ~"Uch... wygląda jakby nim walnięto kogoś w łeb."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~Lekko się uśmiecha.~ */
  IF ~~ THEN REPLY #22238 /* ~"Wystarczy. Dziękuję i żegnaj."~ */ JOURNAL #21909 /* ~Od jednego z kupców dostałem poobijany kufel. Mogę go już zanieść i pokazać Meir'am.~ */ EXIT
END
