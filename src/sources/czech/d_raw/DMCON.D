// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~Vidíš mechanickou postavu s blědě žlutou barvou na jedné paži. Ačkoli je to očividně stroj, má velmi živoucí tvář, kterou na tebe zamračeně kouká.~ */
  IF ~~ THEN REPLY #60875 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~Se zadrnčením ozubených koleček se jeho oči zůžily, ale nepřestal na tebe zírat. Najednou si oběma rukama začal bít do hrudi, dělaje tak mocné dunivé zvuky a chvíli skákal nahoru a dolů. Nakonec se posadil, a nenápadně po tobě pokukoval. "Oook!"~ */
  IF ~~ THEN REPLY #60878 /* ~"Čeho jsi chtěl tímle počínáním dosáhnout?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"Kdo jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"Co jsi?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"Co děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"Na tohle vážne nemám čas. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~Když vstával, zmateně se na tebe podíval a poškrábal se na hlavě. "Bylo to určené k vyvolání strachové odezvy. Fungovalo to?"~ */
  IF ~~ THEN REPLY #60884 /* ~"V podstatě ne."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"Samozřejmě, udělal jsi to skvěle."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~Povzdechl si a na chvíli odklonil zrak. "Mrzí mne že to slyším. Doufal jsem, že si dostatně zvýším své životní vyhlídky, když ti díky překvapení zasadím pár extra zásahů. No budiž..." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60887 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~Usmál se a pokýval hlavou. "Skvělé. Tohle si zaznamenám jako dobrou techniku pro příští využití." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60889 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"Jsem tvůj zapřísáhlý nepřítel." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60891 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"Jsem stroj střední bojové konstrukce. Momentálně jsem vybaven: Průměrnými bojovými schopnostmi, průměrnou inteligencí a středně vysokou schopností použít zbraň dle mého výběru." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60893 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"Zrovna teď si tě ohodnocuji a zjišťuji tvé slabé stránky." Stroj se odmlčel. "Skončil jsem s ohodnocováním a nyní na tebe bez milosti zaútočím." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60895 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"Ty si troufáš odpoutat mou pozornost a tím mě jednoduše odbít? To si nemyslím!" Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60897 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~Vidíš mechanickou postavu s blědě žlutou barvou na jedné paži. Ačkoli je to očividně stroj, má velmi živoucí tvář, kterou na tebe zamračeně kouká.~ */
  IF ~~ THEN REPLY #60899 /* ~"Zdravím."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~Kouká na tebe a jak tě stále zkoumá, čím dál víc se šlebí. Nakonec vyštěkne. "Tohle je to nejlepší na co se zmůžou? Ha! Je mi těch bláznů líto." A zase na tebe zírá.~ */
  IF ~~ THEN REPLY #60903 /* ~"Kdo se má zmoct na to nejlepší?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"Kdo jsi?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"Co jsi?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"Co děláš?~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"Musím jít. Sbohem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~Zaklonil hlavu a zasmál se. "Ha! Ha! Tvá ubohá nevědomost te nezachrání. Věz, že jsi zatracen blázne!" Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60909 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"Nejsem skoro nic, jsem jen další kus železa, jež se ti postavil do cesty při zkoumání těchto chodeb." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60911 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~Na chvíli strnul a poškrábal se na hlavě. "Jsem monstrum které do tebe bude tlouct tak dlouho dokud neumřeš... ovšem za předpokladu, že mě nezabiješ první." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60915 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"Vytvářím jistou atmosféru důvěry, abych v tobě vyvolal pocit bezmoci v porovnání s mou dokonalostí. Pokud bych uspěl, určitě by mi to zajistilo vítěztví v nadcházejícím souboji." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60917 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"Ha! Myslel sis že unikneš mému hněvu a se svou nonšalantní pózou jednoduše zmizíš? Nikoliv ty blázne!" Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #60919 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~Vidíš mechanickou postavu s blědě žlutou barvou na jedné paži. Ačkoli je to očividně stroj, má velmi živoucí tvář, kterou na tebe zamračeně kouká.~ */
  IF ~~ THEN REPLY #60921 /* ~"Zdravím."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~Ignoruj to stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"Taktéž tě zdravím." Kouká na tebe s nepřítomným výrazem.~ */
  IF ~~ THEN REPLY #60924 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"Co jsi?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"Co děláš?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"Musím teď jít, sbohem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~Chvíli přemýšlel a pak pokrčil rameny. "Nemám ponětí." Zamračil se. "Nejsem si jistý, jestli jsem vůbec kdy věděl kdo jsem. Cítím, že má identita, můj smysl života, je poněkud nepodstatná. Cítím se sám... ztracený... mám pocit... že bych si měl na někom nebo na něčem vybít zlost..." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60930 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~Zamračil se. "Nejsem nic víc než pěšák v nějaký hrozný hře. Nemám žádnou identitu, žádný život a navíc si teď přijdeš ty a začneš mě otravovat s těma bezvýznamnýma otázkama. Nenávidím život a nenávidím tebe." Zaůtočil na tebe.~ */
  IF ~~ THEN REPLY #60932 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~Pohrdavě se na tebe podíval. "Čekám až skončíš s tímhle nesmyslným kecáním, abych tě mohl ztřískat do bezvědomí." Zůstal na tebe civět.~ */
  IF ~~ THEN REPLY #60934 /* ~"Proč chceš něco takového udělat?"~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~Zaútoč na něj.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~Pokrčil rameny. "Můj tvůrce mi nedal žádnou jinou volbu. Jakmile domluvím, začnu se s tebou bít." Vyrazil do útoku.~ */
  IF ~~ THEN REPLY #60938 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"Sbohem i tobě. Mimochodem - předtím než půjdeš, dovol mi, prosím, abych si na tobě vybil své frustrace, které se ve mně nakupily díky tvé přítomnosti."~ */
  IF ~~ THEN REPLY #60941 /* ~Braň se.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
