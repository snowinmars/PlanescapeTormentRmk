// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BMORTE~

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31485 /* ~"Nic by się ci nie stało jakbyś powiedziała do mnie kilka miłych słów, kaduku."~ [MRT478] */
  IF ~~ THEN EXTERN ~DANNAH~ 289
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61707 /* ~"Anno, mogłabyś przestać tak smagać tym ogonem? To mi działa na nerwy."~ [MRT476A] */
  IF ~~ THEN EXTERN ~DANNAH~ 290
END

IF ~~ THEN BEGIN 2 // from:
  SAY #61709 /* ~"To przynajmniej merdaj z dala ode mnie."~ [MRT476B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #61710 /* ~"Powiedz, Anno... czy ten ogon może pójść całkiem w górę?"~ [MRT479A] */
  IF ~~ THEN EXTERN ~DANNAH~ 291
END

IF ~~ THEN BEGIN 4 // from:
  SAY #61712 /* ~"'Ano, może... prosto do twego czerepu, wyrwać ci mózg.'"~ [MRT479B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #61713 /* ~"Kaduku, muszę o to zapytać. Skąd się u ciebie wziął ten akcent?"~ [MRT544A] */
  IF ~~ THEN EXTERN ~DANNAH~ 292
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61714 /* ~"Nieważne."~ [MRT544B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",4)
~ THEN BEGIN 7 // from:
  SAY #61715 /* ~"A więc, kaduczku, pozwól że usiądę ci na kolanach i wysłucham opowieści."~ [MRT477A] */
  IF ~~ THEN EXTERN ~DANNAH~ 293
END

IF ~~ THEN BEGIN 8 // from:
  SAY #61716 /* ~"W takim razie odlatuję obrażony."~ [MRT477B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",5)
~ THEN BEGIN 9 // from:
  SAY #61717 /* ~"Czy zawsze jesteś taka niemiła?"~ [MRT480] */
  IF ~~ THEN EXTERN ~DANNAH~ 294
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY #61718 /* ~"Jesteś takim małym, sprośnym rabusiem trupów. Podoba mi się to."~ [MRT542A] */
  IF ~~ THEN EXTERN ~DANNAH~ 295
END

IF ~~ THEN BEGIN 11 // from:
  SAY #61719 /* ~"Hej, jeśli znajdziesz moje ciało to proszę bardzo."~ [MRT542B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",7)
~ THEN BEGIN 12 // from:
  SAY #61720 /* ~"A więc kaduku. Czy ten ogon to twój jedyny demoniczny element?"~ [MRT549A] */
  IF ~~ THEN EXTERN ~DANNAH~ 296
END

IF ~~ THEN BEGIN 13 // from:
  SAY #61721 /* ~"Zdaje się, że masz też demoniczne usta."~ [MRT549B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",8)
~ THEN BEGIN 14 // from:
  SAY #61722 /* ~"Wiesz co, kaduku, jesteś w porządku... gdybyś nie była cały czas takim upiorem."~ [MRT541A] */
  IF ~~ THEN EXTERN ~DANNAH~ 297
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61723 /* ~"Chyba się zakochałem."~ [MRT541B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",9)
~ THEN BEGIN 16 // from:
  SAY #61724 /* ~"Jeśli sprawy przybiorą zły obrót, będę mógł równie dobrze zatańczyć w cieniu Pani."~ [MRT553A] */
  IF ~~ THEN EXTERN ~DANNAH~ 298
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61725 /* ~"Chodzi ci o *Panią Bólu*? Czy rozmowa o *Pani Bólu* to coś złego? Dlaczego *Pani Bólu* miałaby mieć coś przeciwko tej rozmowie?"~ [MRT553B] */
  IF ~~ THEN EXTERN ~DANNAH~ 299
END

IF ~~ THEN BEGIN 18 // from:
  SAY #61726 /* ~"To los nie powinien kusić *mnie*."~ [MRT553C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",10)
~ THEN BEGIN 19 // from:
  SAY #61727 /* ~"Wiesz co kaduku, znacznie lepiej byś wyglądała gdybyś założyła na siebie coś więcej. No wiesz - para sznurowanych butów na wysokich obcasach świetnie by pasowała do tych szmaragdowych ocząt."~ [MRT546A] */
  IF ~~ THEN EXTERN ~DANNAH~ 300
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61728 /* ~"Na twoim miejscu wynająłbym apartament i nie wychodził z niego przez miesiąc."~ [MRT546B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",11)
~ THEN BEGIN 21 // from:
  SAY #61729 /* ~"Wiesz co, kaduku, jesteś jak ogniste ziarno z Arborei."~ [MRT547A] */
  IF ~~ THEN EXTERN ~DANNAH~ 301
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61730 /* ~"Twoje włosy są niczym słodki, czuły płomień, jednak wewnątrz jesteś gorzka jak ukąszenie insekta."~ [MRT547B] */
  IF ~~ THEN EXTERN ~DANNAH~ 302
END

IF ~~ THEN BEGIN 23 // from:
  SAY #61732 /* ~"Czasem chciałbym żebyś mnie kochała za to kim jestem... a nie za to co mogę dla ciebie zrobić."~ [MRT542C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",12)
~ THEN BEGIN 24 // from:
  SAY #61733 /* ~"O Moce nad nami. Znów mnie coś swędzi z tyłu głowy. Zaraz zwariuję."~ [MRT554A] */
  IF ~~ THEN EXTERN ~DANNAH~ 303
END

IF ~~ THEN BEGIN 25 // from:
  SAY #61734 /* ~"Wiesz co, pewnego dnia też cię będzie swędzieć tam gdzie nie będziesz się mogła podrapać, a ja ci nie pomogę. I tak dopełni się moja zemsta."~ [MRT554B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",13)
~ THEN BEGIN 26 // from:
  SAY #61735 /* ~"A więc, kaduku, powiedz mi to prosto z mostu. Po prostu nie możesz się beze mnie obejść, co?"~ [MRT548A] */
  IF ~~ THEN EXTERN ~DANNAH~ 304
END

IF ~~ THEN BEGIN 27 // from:
  SAY #61736 /* ~"Ple, ple, ple, nic tylko grozisz, grozisz i grozisz. Nie męczy cię to?"~ [MRT548B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",14)
~ THEN BEGIN 28 // from:
  SAY #61737 /* ~"Wiesz co, kaduku, widzę jak patrzysz na szefa. Nie ma się czego wstydzić. Dlaczego nic nie powiesz?"~ [MRT551A] */
  IF ~~ THEN EXTERN ~DANNAH~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY #61738 /* ~"Dobra, dobra... uspokój się."~ [MRT551B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",15)
~ THEN BEGIN 30 // from:
  SAY #61739 /* ~"Anno, jak ci się nie podoba, że się na ciebie patrzę, to po co nosisz tę... wiesz... tę... kamizelkę?"~ [MRT550A] */
  IF ~~ THEN EXTERN ~DANNAH~ 306
END

IF ~~ THEN BEGIN 31 // from:
  SAY #61740 /* ~"Mnie za to zapiera dech."~ [MRT550B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Morte_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #61741 /* ~"A więc, Sławo... masz jakieś siostry?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~~ THEN BEGIN 33 // from:
  SAY #61742 /* ~"Daj mi chwilę, żebym się nacieszył tą wiadomością."~ [MRT461BD] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #61743 /* ~"Daj spokój, Sławo. Myślałem, że wy, sukkuby, lubicie dobrze się bawić. Czemu jesteś taka zimna?"~ [MRT462AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 363
END

IF ~~ THEN BEGIN 35 // from:
  SAY #61744 /* ~"Jejku. Zadaj pytanie, a od razu chcą cię obedrzeć ze skóry."~ [MRT462B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 36 // from:
  SAY #61745 /* ~"No nie. Jedyny sukkub z jakim mogliśmy mieć szansę podróżować okazuje się być purytanką. To dopiero trzeba mieć pecha."~ [MRT463AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 364
END

IF ~~ THEN BEGIN 37 // from:
  SAY #61746 /* ~"Mowa. Ja... hej, poczekaj chwilę."~ [MRT463B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
InParty("Annah")
~ THEN BEGIN 38 // from:
  SAY #61747 /* ~"Nie pozwól kadukowi tak się traktować, Sławo. Po prostu nie jest tak ładna jakby chciała być.~ [MRT555] */
  IF ~~ THEN EXTERN ~DGRACE~ 365
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Morte_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 39 // from:
  SAY #61749 /* ~"Dlaczego nie wskoczysz z powrotem do Mechanusa, Nordomie?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #61750 /* ~"Zaraz poturlam tym głupim pudłem jak kostką do gry."~ [MRT464AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 139
END

IF ~~ THEN BEGIN 41 // from:
  SAY #61751 /* ~"Durna nakręcana zabawka."~ [MRT465] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 42 // from:
  SAY #61752 /* ~"Nordomie, jak to jest, że nigdy nie przeładowujesz kusz?"~ [MRT557A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 140
END

IF ~~ THEN BEGIN 43 // from:
  SAY #61753 /* ~"To na pewno wygodne."~ [MRT557B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #61754 /* ~"Nordom, przestań szczękać tymi kuszami! Zaraz przez to zbzikuję."~ [MRT558A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 141
END

IF ~~ THEN BEGIN 45 // from:
  SAY #61755 /* ~"Gdybym tak raz... choć raz... mógł podróżować z kimś normalnym."~ [MRT558B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #61756 /* ~"Hej, Nordomie... 'Puk-puk'."~ [MRT556A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 142
END

IF ~~ THEN BEGIN 47 // from:
  SAY #61757 /* ~"To taki żart, ty głupi wieloboku. Powinieneś odpowiedzieć 'Kto tam?'"~ [MRT556B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 143
END

IF ~~ THEN BEGIN 48 // from:
  SAY #61758 /* ~"Wiesz co, zapomnij o tym."~ [MRT556C] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 49 // from:
  SAY #61759 /* ~"Hej, Nordomie. Oblicz najłatwiejszy dla mnie sposób bym mógł 'wtulić się w poduszeczki Anny'."~ [MRT467AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 144
END

IF ~~ THEN BEGIN 50 // from:
  SAY #61760 /* ~"Knebel! Knebel!"~ [MRT467BA] */
  IF ~~ THEN EXTERN ~DANNAH~ 307
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #64208 /* ~"A więc, Sławo... masz jakieś siostry?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
~ THEN BEGIN 52 // from:
  SAY #64209 /* ~"Dlaczego nie wskoczysz z powrotem do Mechanusa, Nordomie?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END
