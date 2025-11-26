// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~Ta prosta kula z brązu mierzy sobie jakieś trzydzieści centymetrów średnicy, ale jest wyjątkowo lekka, jakby była wydrążona.~ */
  IF ~~ THEN REPLY #62412 /* ~Przyjrzyj się kuli.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~Odłóż kulę na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~Chociaż generalnie rzecz biorąc, wygląd tej kuli nie ma w sobie nic nadzwyczajnego, jest w niej coś, co sprawia, że wszystkie twoje zmysły znajdują się w stanie dziwnego pobudzenia. Struktura kuli i jej zachowanie przywodzi na myśl jajo, która ma za chwilę pęknąć. Już samo dotknięcie jej powierzchni sprawia, że po twoich plecach przechodzą ciarki. Co więcej, od kuli wionie nieznaczny, ale wyjątkowo obrzydliwy fetor jakiejś zastarzałej polewy, co sprawia, że twoje oczy potężnie łzawią.~ */
  IF ~~ THEN REPLY #62414 /* ~Odłóż kulę na miejsce.~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~Kiedy tylko podnosisz kulę i zaczynasz się jej przyglądać, ogarniają cię wspomnienia z czasów pierwszego z twoich poprzednich żywotów. Ale obrazy te nie rażą cię natarczywością, ani też nie napełniają cię krzepiącą mocą. To spokojne obrazy, łagodne jak myśli człowieka przechadzającego się w nieodgadnionej dali i przemawiającego stamtąd do przyjaciela, którego nie widział od wieków.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~Kiedy tylko odczuwasz jego obecność, zaczynasz dostrzegać kulę w innym świetle. Nie uważasz jej już za brzydki, ani obrzydliwy przedmiot, ale za coś niezwykle cennego, niczym nowo narodzone dziecko. Kula ta to magiczny magazyn rozczulających wspomnień z czasów, kiedy nie spoczywało na tobie żadne przekleństwo, kiedy jeszcze nie szukałeś Raveli na Szarym Pustkowiu i nie myślałeś o tym, żeby poprosić ją, aby sprawiła to, co niemożliwe.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~Wiesz już, dlaczego ją o to poprosiłeś. I wiesz teraz, że wszystko, czego ci trzeba, to dotknąć powierzchni kuli obiema dłońmi i odczuć *żal*. A kiedy to uczynisz, kamień otworzy się przed tobą.~ */
  IF ~~ THEN REPLY #64919 /* ~Ściśnij kamień i pozwól, aby cię ogarnął żal.~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~Pozwól, niechaj twoje wspomnienia pozostaną tam, gdzie je odnalazłeś, pogrzebane we wnętrzu brązu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~Kula marszczy się w twoich dłoniach, jej powierzchnia kruszy się i odpada w ulewie brązowych kropel, a wszystkie z nich spadają na ciebie. Z każdą kroplą, z każdym fragmentem kuli wnikającym w twoje ciało, czujesz nowe poruszenie wspomnień, czujesz straconą miłość, zapomniane cierpienia, żal po utracie czegoś, a razem z tym wszystkim przybywa wielki żal, żal po beztroskich i bezmyślnych postępkach, żal po mękach, żal po wojnie, żal po śmierci, żal tak przytłaczający, że czujesz, jak twój cały umysł ugina się pod natłokiem tych żalów. Jest ich tak wiele, tyle szkód, uczynionych innym... Jest ich takie mnóstwo, że z całego tego bólu mógłbyś wznieść niebotyczną FORTECĘ.~ */
  IF ~~ THEN REPLY #64922 /* ~Spróbuj sięgnąć do swojego wnętrza, osiągnąć pełnię koncentracji.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~I nagle, przez ten zalew żalów, znowu wraca do ciebie poczucie twojego pierwszego wcielenia. Twoje pierwsze wcielenie trzyma na twoim ramieniu, niewidzialną i bezcielesną dłoń. Ale ta dłoń podtrzymuje cię i pokrzepia. Usta twojego pierwszego wcielenia milczą, ale jego dotyk sprawia, że nagle z mroków niepamięci wynurza się twoje prawdziwe imię.~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~...A jest to rzecz tak prosta, tak różna od tych wszystkich innych rzeczy, o których myślałeś, że nagle odczuwasz wielką pociechę. Znasz już swoje imię, swoje prawdziwe imię i masz świadomość, że odzyskałeś właśnie najważniejszą cząstkę samego siebie.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~Teraz, kiedy poznałeś swoje imię, poznałeś samego siebie i wiesz, że już niewiele więcej możesz uczynić. Twoje pierwsze wcielenie zdejmuje dłoń z twojego ramienia i patrzy na ciebie z lekkim uśmiechem.~ */
  IF ~~ THEN REPLY #64927 /* ~"A więc takie było cały czas moje imię? Ale jeżeli tak właśnie..."~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~Twoje pierwsze wcielenie dotyka palcem swoich ust, łagodnie nakazując ci zachowanie ciszy. Wskazuje teraz na symbol znajdujący się na twoim ramieniu, jakby doradzało ci, żebyś zrobił z niego użytek.~ */
  IF ~~ THEN REPLY #64929 /* ~Przyjrzyj się własnemu ramieniu.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,33,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~Ten znak na twoim ramieniu - to Symbol Udręki. Wydaje się niezwykle kruchy, jak gdyby ledwo trzymał się twojej skóry. Bezwiednie dotykasz go i bezboleśnie wykruszasz go ze swojego ramienia.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~Jesteś ledwie w połowie swojego pytania, kiedy dociera do ciebie, że w twoim umyśle zapadła ciężka cisza. Nie ma już w tobie krzepiącej obecności twojego pierwszego 'ja'.~ */
  IF ~~ THEN REPLY #64935 /* ~Zabierz Symbol Udręki.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~Symbol Udręki odrywa się od twojego ramienia jak kawał zrogowaciałej skóry. Teraz kiedy trzymasz go w dłoni, wiesz, że przyszedł czas, abyś mógł skorzystać z jego potęgi. Bo jego władza nad tobą już się zakończyła.~ */
  IF ~~ THEN REPLY #64939 /* ~"A więc nie mam już na sobie tego symbolu. Czy to oznacza, że...?~ */ GOTO 11
END
