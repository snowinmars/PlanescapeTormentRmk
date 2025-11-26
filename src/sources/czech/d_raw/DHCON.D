// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~Vidíš mechanickou postavu s lávově rudou barvou na jedné paži. Sleduje tvůj příchod obezřetným pohledem.~ */
  IF ~~ THEN REPLY #60815 /* ~"Buď pozdraven."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~Nahnul hlavu na jednu stranu a upřel na tebe tázavý pohled. "Zdravím, vetřelče." ~ */
  IF ~~ THEN REPLY #60818 /* ~"Proč myslíš, že jsem vetřelec?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"Co jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"Co děláš?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"Musím jít. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~Věnoval ti křivý úsměv. "Protože nejsi jeden z nás. Proto tedy musíš být vetřelec. A jako vetřelec musíš zemřít." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60824 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"Nemám žádnou identitu, mám pouze seznam příkazů. A jedním z nich je tě zabít." Nachystal se k útoku.~ */
  IF ~~ THEN REPLY #60826 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"Jsem těžký bojový stroj. Obsahuji: Nadprůměrné bojové schopnosti, vyšší inteligenci a nadprůměrnou schopnost užít zbraň dle svého výběru. Bohužel jsem však byl vybaven špatnými reakcemi." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60828 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"Zkoumám kde jsou uloženy tvé důleřité tělesné orgány. Teď když jsem shrnul všechny informace, použiji je k tomu, abych ti způsobil nějakou opravdickou bolest." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60830 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~Zle se na tebe usmál. "Ano, půjdeš vetřelče. Ale stačíš vykročit jen jednou nohou, pak už padneš mrtvý k zemi!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60832 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~Vidíš mechanickou postavu s lávově rudou barvou na jedné paži. Sleduje tě obezřetným pohledem.~ */
  IF ~~ THEN REPLY #60834 /* ~"Zdravím."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~Nahnul hlavu na jednu stranu a upřel na tě tázavý pohled. "Proč se nás stále na něco vyptáváš? Tomu nerozumím."~ */
  IF ~~ THEN REPLY #60837 /* ~"Vždycky je tu šance, že se můžeš něco nového naučit."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"Kdo jsi?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"Co jsi?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"Co děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"Musím jít. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~Na chvíli se zamyšleně zahleděl stranou. Když pak vrátil pohled k tobě, lehce souhlasně pokýval hlavou. "Ano... připouštím že je to možné... co kdybych tě naučil něco o bolesti." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60843 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"Jsem služebník Zlého Čaroděje, a ten si přeje tvoji smrt." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60846 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"Jsem ten, kdo tě navždy srazí na kolena cizinče !" Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #60848 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"Varuji tě ve jménu Zlého Čaroděje..." Na chvíli se odmlčel. "Hotovo, teď přijde zabíjení." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60850 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"Odcházíš? Tak brzy? Ale pokud dovolíš, rád ti s odchodem pomůžu!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60852 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~Vidíš mechanickou postavu s lávově rudou barvou na jedné paži. Sleduje tě obezřetným pohledem.~ */
  IF ~~ THEN REPLY #60854 /* ~"Zdravím."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~Nahnul hlavu na jednu stranu a věnoval ti tázavý pohled. "Tvá vytrvalost je omračujicí cizinče a tvá pošetilost zrovna tak." ~ */
  IF ~~ THEN REPLY #60857 /* ~"Proč spolu máme bojovat? Vždyť k tomu nemáme žádný důvod."~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"Kdo jsi?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"Co jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"Co děláš?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"Musím jít. Sbohem."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~Než odpověděl, chvíli na tě zíral. "To tak pouze vypadá cizinče. Za naším šílenstvím se důvod skrývá..." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60863 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"Jako jedinec, nikdo. Ale jako část celku, jsem důležitý." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60865 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"Zprostředkovávám tvůj konec, cizinče." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60867 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"Zaznamenával jsem si každý tvůj úspěch, každou tvou porážku  a každý tvůj krok ke Zlému Čaroději. Učíme se od tebe. A díky tobě, se staneme lepšími." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60869 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"Ano... dokud se znovu nesetkáme cizinče." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60871 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
