// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~Muž pomalu zvedl hlavu. Podíval se na tebe a znechuceně si odfrkl. "Co seš u všech čertů zač?" Ohrnul nad tebou nos. "Spalovákům asi zdrhl jeden z těch jejich hnijících poskoků." Zasmál se. "Ha! *Nikdy* sem eště neviděl něco tak hnusnýho."~ */
  IF ~~ THEN REPLY #1911 /* ~"Kromě svého odrazu?"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"Radši si dávej pozor na jazyk. Mohl by ti upadnout!"~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"Sbohem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~Muž je na chvíli překvapený, pak si ale znovu odfrkl a začal si pohrávat s dýkou. "Asi chceš pustit žilou, co, frajere?"~ */
  IF ~~ THEN REPLY #1915 /* ~"Vytáhni tu dýku a spácháš sebevraždu."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"Zklidni se. Nemám zájem o rvačku."~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~Sáhl po své zbrani. "Uvidíme, zdechlino, uvidíme..."~ */
  IF ~~ THEN REPLY #1945 /* ~"Varoval jsem tě..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"Tak nemáš, jo?" Plivl ti pod nohy. "Copak, v žilách ti koluje řídká krev zbabělce a posery, co, vole?"~ */
  IF ~~ THEN REPLY #1921 /* ~"Pokud si pamatuju, tak to tvoje matka měla v žilách řídkou krev zbabělce... a tak to podle mého odhadu znamená, že polovička bastardů tady ve městě má stejnou krev jako ty."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"Nechme toho, než z toho bude vážný problém."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~Muž zamrkal, jako by se snažil pochopit, co jsi mu to řekl, pak se mu tvář stáhla vztekem. Vytáhl dýku a vrhl se na tebe.~ */
  IF ~~ THEN REPLY #1946 /* ~Braň se...~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"Ne ne, vole, tak lehký to není. Musíš *zaplatit* za tu čest, kerou ti prokážu, když tě nebodnu nožem do zadku."~ */
  IF ~~ THEN REPLY #1927 /* ~"Tak dobře. Kolik?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"Ale tvá matka si nic neúčtuje. Tak proč ty ano?"~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~Jdi zkrátka pryč.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"Odhadoval bych to na všechno, co máš u sebe." Zasmál se. "A teď to sem naval."~ */
  IF ~~ THEN REPLY #1936 /* ~Dej mu všechny své peníze.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~Odejdi.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"Si příště možná rozmyslíš, než mě budeš otravovat, ty nahnilý potrate opičí kurvy."~ */
  IF ~~ THEN REPLY #1939 /* ~"*Co* jsi to řekl?"~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~Nechej to být a jdi pryč.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"Jo, tak jdi dál, k řezníkovi." Zasmál se.~ */
  IF ~~ THEN REPLY #1942 /* ~"*Co* jsi to řekl?"~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~Nechej to být a jdi pryč.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"Au... mnohokrát se omlouvám, kámo... seš hluchej?" Dívá se na tebe s opovržením "Ti někdo naklepal kebuli, nebo co?" Několikrát si zaťukal na čelo. "Musím na tebe mluvit pomalu a hlasitě, co, vole?"~ */
  IF ~~ THEN REPLY #1947 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~Když jsi sáhl pro peníze, zvedl ruce. "Ne, zbabělče, pohlídej mi je ještě chvíli... Vezmu si je, až tě rozpářu a ukážu ti to tvý zbabělý srdce." Vytáhl zbraň a usmál se. "Budeš eště hnusnější, než už seš, i když to se asi docela nadřu."~ */
  IF ~~ THEN REPLY #1950 /* ~Braň se...~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"Co?" Odfrkl si. "Zase ty, vole? Hledáš někoho, kdo ti dá do držky? Radši vodpal někam jinam." Pozorně si tě prohlédl a pak se s tebou podělil o výsledek své studie. "Něco hnusnějšího sem eště neviděl."~ */
  IF ~~ THEN REPLY #1953 /* ~"Kromě svého odrazu?"~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"Radši si dávej pozor na jazyk. Mohl by ti upadnout!"~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"Sbohem."~ */ GOTO 8
END
