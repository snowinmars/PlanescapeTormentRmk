// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~Ženská zombie, zatuchle páchnoucí, vypadá velice staře, téměř mumifikovaně. Její pokožka vypadá jako ztrouchnivělá šedozelená kůže, jedno z jejích očí vypadlo, zanechávajíc ve tváři temnou díru. Její hlas je pomalý a hrubý: "Zhh-zhhh-zhhdrhavhííímh."~ */
  IF ~~ THEN REPLY #2992 /* ~"Zdravím..."~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"Zdravím, a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~Ukáže na sebe a znovu hovoří. "Suh-suh-stuhl Muhhhry." Vypadá to, jako by její hlasivky čvachtaly sem a tam v husté polévce někde dole v krku.~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"Ošuntělá Mary? Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"Ošuntělá Mary? Měl bych nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"Teď se rozloučím, Mary. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~Mrtvola pomalu přikyvuje v odpověď.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"Měl bych nějaké otázky..."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"Rozloučím se, hned. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~Pokývá hlavou, očekávaje tvou otázku.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"Hargrimm říkal, že se potřebuji *naučit* tě poslouchat... víš co tím myslel?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"Mary, potřebuji mluvit s Tichým Králem. Můžeš mi pomoci?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"Proč jsem se stal vězněm?"~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"Kde jsem?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"Co tu děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"Kdo obývá tohle místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"Nechej mě zeptat se na někoho podrobněji..."~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"Viděla jsi tady někde malou, bronzovou kouli?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~Mumlá a sténavě koktá, nakonec nesrozumitelně vyslovuje.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"Omlouvám se, ale já ti nerozumím. Nebyla by tu lepší cesta, jak se domluvit?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"Nerozumím ti. Můžeš mluvit trochu čistěji?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"Er... Měl bych nějaké jiné otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"Nevadí... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~Potřese sklíčeně hlavou, její ramena se zvednou a pomalu, bolestně se pokrčí.~ */
  IF ~~ THEN REPLY #22221 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~Mrtvola udělá krok směrem k tobě, zvedá ruku, aby se tě dotkla.~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~Udělej krok zpět.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~Udělej krok zpět.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~Nechej ji, aby se tě dotknula.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"Co to děláš?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"Co to děláš?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~Ona jen jemně zasténá v odpověď, snažíc se ještě jednou dotknout tvojí paže. ~ */
  IF ~~ THEN REPLY #22269 /* ~Nechej ji dotknout se.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"Musím získat povolení teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~Ona jen jemně zasténá v odpověď, snažíc se ještě jednou dotknout tvojí paže. Vzdor pustošení času, v jejich očích stále zůstává známka lidskosti. Cítíš, že ti nechce ublížit.~ */
  IF ~~ THEN REPLY #22272 /* ~Nechej ji dotknout se.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"Musím se teď rozloučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~Její téměř bezmasá ruka se ostře přiblíží k tvému předloktí a žena mluví: "Possslhhhhejj." (Poslouchej.)~ */
  IF ~~ THEN REPLY #22275 /* ~"Jak si to udělala?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"Jak to, že ti rozumím?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~Dotkne se tě ještě jednou. "Mluvvvttt kk nmmm mmmuuuzzzzss. Allll msssiiiiss tooo dlllttttt sppprvvvnne." (Mluvit k nám můžeš. Ale musíš to dělat správně.)~ */
  IF ~~ THEN REPLY #22278 /* ~"Můžeš mě učit?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~Usměje se, ztvrdlá kůže její tváře zaskřípe jako silná vesta. "Anhhh." (Ano.)~ */
  IF ~~ THEN REPLY #22280 /* ~"Učiň tak tedy, prosím..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~Ošuntělá Mary se se mnou podělila o znalosti jak mluvit s mrtvými. Teď můžu rozmlouvat s těly, která nejsou příliš dlouho mrtvá.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~Dokončuje tvé učení v dovednosti, která je nutná k hovorům s mrtvými, proces, jež sama nazývá 'Pověsti-Mluvících-Kostí.'~ */
  IF ~~ THEN REPLY #22283 /* ~"Mohu mluvit s něčím mrtvým tělem?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"Jssstt. Nuuhhtrrii prhhhiss mhhhrtvv. Mushhhss puuhhzttt dvvvehddnsst." (Jistě. Někteří příliš mrtví. Musíš použít dovednost.)~ */
  IF ~~ THEN REPLY #22285 /* ~"Díky. Měl bych nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~Pokývá hlavou očekávaje tvou otázku.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"Můj společník byl unesen mocným člověkem, který za jeho propuštění žádá 'cennější' lebku. Co mám dělat, Mary?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"Hargrimm říkal, že se potřebuji *naučit* jí naslouchat... nevíš, co tím myslel?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"Mary, potřebuji mluvit s Tichým Králem. Můžeš mi pomoci?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"Mary, potřebuji mluvit s Tichým Králem. Můžeš mi pomoci?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"Mary, potřebuji mluvit s Tichým Králem. Můžeš mi pomoci?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"Jak je možné, že si s těmi umrlci rozumíš? Já jim vůbec nerozumím..."~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"Proč jsem se stal vězněm?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"Kde jsem?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"Co tu děláš?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"Kdo obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"Nech mě zeptat se na někoho podrobněji..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"Viděla jsi tady někde malou, bronzovou kouli?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"Shhhne Tichhhhho krhleee." (Síně Tichého krále.)~ */
  IF ~~ THEN REPLY #22299 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"Vhhhhhd sthhhhhtnnnnn zzzohhhmmmb. Dbbbbjj nnhh kkhhhld kzzzzddhhhhh." (Veď ostatní zombie. Dbej na klid každého.)~ */
  IF ~~ THEN REPLY #22303 /* ~"Pověz mi o ostatních zombie."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"Klid každého?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"Zzzohhhmmmb. Khhstlllcc. Guh-guh-gooooolllvv. Khhhrsssssy." (Zombie. Kostlivci. Ghúlové. Krysy.)~ */
  IF ~~ THEN REPLY #22308 /* ~"Pověz mi o zombiích."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"Pověz mi o kostlivcích."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"Pověz mi o ghúlech."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"Pověz mi o krysách."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"Phrrcccjj ppr Tichhhhho krhleee." (Pracuj pro Tichého krále.)~ */
  IF ~~ THEN REPLY #22315 /* ~"Co je to za práci?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"Kdo další obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"Obhhhhnnn, ccc blll rzzzzzzbhhhtto. Dbbbbjj oooo phhhrrvvvuu smrrrrrrrt." (Obnov, co bylo rozbito. Dbej o pravou smrt.)~ */
  IF ~~ THEN REPLY #22321 /* ~"Pověz mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"Kdo další obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"Hhhhuhhhg-rrrrm, jhhhjjch vddddcce, dhhhhl nmmmmm shhhllvo Tichhhhho krhleee. Khhstlllcc nsss phrvvvzzjiii phrrr nhhhsii phhhrrci." (Hargrimm, jejich vůdce, dal nám slovo Tichého krále. Kostlivci nás provázejí při naší práci.)~ */
  IF ~~ THEN REPLY #22326 /* ~"Pověz mi o Hargrimmovi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"Pověz mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"Kdo další obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"Hlllldvhhhhha... prrrrrdd hlllldvhhhhha." (Hladoví... pořád hladoví.)~ */
  IF ~~ THEN REPLY #22332 /* ~"Kdo další obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"Dsssstt. Gooooolllvv vhhhnnnnlll." (Dost. Ghúlové vyhnali.)~ */
  IF ~~ THEN REPLY #22336 /* ~"Pověz mi o ghúlech."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"Kdo další obývá tohle místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"Ahhhnnn?" (Ano?)~ */
  IF ~~ THEN REPLY #22341 /* ~"Pověz mi o sobě."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"Pověz mi o Tichém Králi."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"Pověz mi o Hargrimmovi."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"Pověz mi o Soegovi."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"Pověz mi o Acaste."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~"Tichhhhh krrrhhhhhhl." (Tichý král.)~ */
  IF ~~ THEN REPLY #22349 /* ~"Ano, co mi o něm můžeš říct?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"Nevadí. Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~"Tichhhhh krrrhhhhhhl." (Tichý král.)~ */
  IF ~~ THEN REPLY #22354 /* ~"Co o něm víš?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"Nevadí. Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~"Tichhhhh krrrhhhhhhl." (Tichý král.)~ */
  IF ~~ THEN REPLY #22359 /* ~"Nevadí, takže... pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"Nevadí, takže... Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~"Hhhhuhhhg-rrrrm, vddddcce khhstlllcc, nmmmmm dhhhhl shhhllvo Tichhhhho krhleee. Zhhhnnpkjnnn. Utrrrpnnnn." (Hargrimm, vůdce kostlivců, nám dal slovo Tichého krále. Znepokojený. Utrápený.)~ */
  IF ~~ THEN REPLY #22363 /* ~"Proč je znepokojený?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"Suhhhguh. Uhhhcuhhhstuh." (Soego. Acaste.)~ */
  IF ~~ THEN REPLY #22368 /* ~"Proč je utrápený kvůli Soegovi?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"Proč je utrápený kvůli Acaste?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"Suhhguh kkhhzzzz smmrrrrrth." (Soego káže smrt.)~ */
  IF ~~ THEN REPLY #22374 /* ~"Káže smrt?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"Chhhhhccc, bchhhhhh zmrrrrrlll." (Chce, abychom zemřeli.)~ */
  IF ~~ THEN REPLY #22379 /* ~"Proč chce, abyste zemřeli?"~ */ JOURNAL #22385 /* ~Ošuntělá Mary mi řekla, že Hargrimm, velekněz Tichého krále, má starosti kvůli Spalovači, Soegovi. Soego se snaží donutit nemrtvé z Mrtvých národů, aby se vzdali jejich 'nežití' a přistoupili na Pravou Smrt.~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"Ohhhhnn Spppppplvcc." (On Spalovač.)~ */
  IF ~~ THEN REPLY #22388 /* ~"Proč má Hargrimm starosti kvůli Acaste?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"Uhhhcuhhhstuhhh... uhhhnnvvv." (Acaste... hněv.)~ */
  IF ~~ THEN REPLY #22397 /* ~"Hněv?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"Uhhhcuhhhstuhhh chhhcccc zhhhhbbttt khhhhhzdddhhh." (Acaste chce zabít každého.)~ */
  IF ~~ THEN REPLY #22403 /* ~"Proč chce každého zabít?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"Hlhhhdvvvv... rrrzhhhhvnnn." (Hladová. Rozhněvaná.)~ */
  IF ~~ THEN REPLY #22409 /* ~"Proč je Hargrimm kvůli Soegovi utrápený?"~ */ JOURNAL #22413 /* ~Ošuntělá Mary mi řekla, že Hargrimm, velekněz Tichého krále, má starosti kvůli Acaste. Ghúlovi, který se zajímá jen o zabíjení a požírání všeho v Mrtvých národech.~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"Hlhhhdvvvv... rrrzhhhhvnnn." (Hladová. Rozhněvaná.)~ */
  IF ~~ THEN REPLY #22414 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"Ohhhnn Sphhhhllvcc." (On Spalovač.)~ */
  IF ~~ THEN REPLY #22420 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"Oshhh-oshhh-*oshhhunthhhll* Muhreee." (Ošuntělá Mary.)~ */
  IF ~~ THEN REPLY #22426 /* ~"Co tu děláš?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"Jak ses sem dostala?"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~"Prhhhavv smrrrrhht." (Pravá smrt.)~ */
  IF ~~ THEN REPLY #22436 /* ~"Pověz mi o ostatních zombie."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"Nhhhhh, prhhhhhmnn." (Ne, promiň.)~ */
  IF ~~ THEN REPLY #22442 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~Pokrčí rameny. "Zhhhpthhhejj shh Hhhhuhhhg-rrrrmha." (Zeptej se Hagrimma.)~ */
  IF ~~ THEN REPLY #22447 /* ~"Pověz mi o Hargrimmovi."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"Dlhhhy chhhhs phh smrrrrhhht. Pahhhmhhtt phhrrccc." (Dlouhý čas po smrti. Paměť pryč.)~ */
  IF ~~ THEN REPLY #22454 /* ~"Co tu děláš?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"Pověz mi o někom jiném."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"To je vše, co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"Prhhc?" (Proč?)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Potřebuji opustit tohle místo, Mary. Tak strašně moc... a být tu uvězněný, jenom proto, že jsem narazil na Mrtvé národy... to není fér. Prosím... Žádám jen o špetku slitování. Pomůžeš mi?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Potřebuji opustit tohle místo, Mary. Tak strašně moc... a být tu uvězněný, jenom proto, že jsem narazil na Mrtvé národy... to není fér. Prosím... Žádám jen o špetku slitování. Pomůžeš mi?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"Nevadí, pro teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"Prhhc?" (Proč?)~ */
  IF ~~ THEN REPLY #22468 /* ~"Potřebuji opustit tohle místo."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"Nevadí. Měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"Nevadí, pro teď. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"Nhhh." (Ne.)~ */
  IF ~~ THEN REPLY #22478 /* ~"Takže, měl bych nějaké jiné otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"Tak sbohem."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~Vidíš Ošuntělou Mary. Když si tě konečně všimne, jemně zasténá: "Zdhhhh-vhhhm..."~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"Měl bych nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"Jen se dívám. Sbohem."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~Vidíš Ošuntělou Mary. Když si tě konečně všimne, jemně zasténá: "Zdhhhh-vhhhm..." (Zdravím.)~ */
  IF ~~ THEN REPLY #22484 /* ~"Měl bych nějaké otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~Ošuntělá Mary na chvíli ztichne, pak přikývne. Nejprve zamíří ke třem portálům podél severní zdi. "C-c-cluuhh ayyysss. Thuuuh uh Suhhhlunnh Kuh-kuknnng. Wwhhhuuuhbh uuhhhnd nuuuheehhh ahhhlllk-ku-kuuuhh. Bhu-bhu-buhhh uhn suuuhhh lhuuung ayyye lhhhuuuv." (Zavři oči. Mysli na Tichého krále. Kráčej skrze severozápadní výklenek. Ale jen tak dlouho, dokud žiji.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Díky, Mary. Sbohem."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~Ošuntělá Mary mi řekla, že k tomu, abych dosáhl trůnního sálu Tichého krále, mohu použít portál v její komoře. Před tím než vstoupím do výklenku v severozápadním rohu, musím zavřít oči a myslet na Tichého krále. Portál bude fungovat jen tak dlouho, dokud bude Ošuntělá Mary žít.~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Díky, Mary. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"Dluoohoo." (Dlouho.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~Ošuntělá Mary mluví, její hlas je těžkopádný: "Aaa-nnii jjáá." (Ani já.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"Aunoo." (Ano.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~Ošuntělá Mary vydává slabý bublavý zvuk.~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"Tvvvvůůůj p-p-prrrrííííteeel? Ve-ve-veemmmm sssssi mmmmhhhooouuuu leeeebkuuu..." (Tvůj přítel? Vem si mou lebku.) Ošuntělá Mary uchopila oběma rukama svou hlavu...~ */
  IF ~~ THEN REPLY #50846 /* ~"Vzít si... tvou lebku? Ale to tě zabije."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"Uch... dobrá. Díky..."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"Počkej... Měl bych další otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"Probereme to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~Mary pomalu kroutí hlavou ze strany na stranu - její popraskané rty vytvářejí něco, co by snad mohl být smutný úsměv. "Zaz-zabiit? Uuuz sssssseemmmmm mrrrtvaaaa." (Zabít? Už jsem mrtvá.) Nechává ruce na skráních a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #50851 /* ~"Díky, Mary. Vezmu si pro Lothara tvou lebku."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"Ne, Mary - prostě nemohu. Přijdu na jiný způsob."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~Mary kývla. "Mááááššsss dod-doooobrré sssssrdcce." (Máš dobré srdce.)~ */
  IF ~~ THEN REPLY #50855 /* ~"Měl bych další otázky..."~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"Sbohem, Mary."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~S odporným vlhce trhavým zvukem si Ošuntělá Mary utrhla hlavu z ramennou. Její hnijící tělo se chvilku po předání lebky rozpadlo v odporně páchnoucí hromadu.~ */
  IF ~~ THEN REPLY #50858 /* ~Odlož hlavu, odejdi.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~Mary kývla k dvojitým dveřím na jihu trůnní místnosti. "Thééééď odhhééééjdi. Phrooooomhhhhhlůvhíííímhe shí phoooozhhhhhhdějhííííí..." (Teď odejdi. Promluvíme si později.)~ */
  IF ~~ THEN REPLY #58913 /* ~Odejdi.~ */ EXIT
END
