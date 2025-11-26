// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~Widzisz czerwonego abiszai. Istota jest gadem o wężowatym ciele, czterech pazurzastych stopach, skórzanych skrzydłach i smoczej głowie. Łuski pokrywające jego ciało są w kolorze wyblakłej czerwieni. Stoi wyprostowany na tylnych nogach, utrzymując równowagę przy pomocy chwytliwego ogona. Gdy się zbliżasz, jego oczy zwężają się w szparki, a z ust wydobywa się syk.~ */
  IF ~~ THEN REPLY #58137 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~Zignoruj istotę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~Abiszai wpatruje się w ciebie i syczy w jakimś gardłowym języku. Zdajesz sobie sprawę, że nie mówi do ciebie, gdy słyszysz odpowiedź dochodzącą zza niego. Po chwili odwraca on głowę na bok i syczy do ciebie: "Czego ty chcieć?"~ */
  IF ~~ THEN REPLY #58140 /* ~"Mam kilka pytań..."~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~Abiszai wydaje z siebie serię syknięć, po czym chwilę później z niewiadomego źródła dochodzi odpowiedź. "Nie... Ty mówić Tek'elach." Wskazuje gdzieś za siebie. "On zgoda gadać ty..."~ */
  IF ~~ THEN REPLY #58143 /* ~"Czemu nie możesz odpowiedzieć na moje pytania?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"Rozumiem. Zatem pójdę porozmawiać z tym Tek'elachem."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~Abiszai wpatruje się w ciebie przez chwilę, po czym odpowiada: "Tek'elach chcieć ty gadać. Nie ja. Ty iść."~ */
  IF ~~ THEN REPLY #58147 /* ~"Rozumiem. Zatem pójdę porozmawiać z tym Tek'elachem."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~Gdy abiszai pochyla się, by z tobą rozmawiać, czujesz bijącą od niego falę ciepła. "Ty okazywać szacunek... Ty być ostrożny... Ja patrzeć. Ja zabić cię, jeśli ty źle czynić." Uśmiechając się złowrogo, pokazuje rzędy ostrych jak brzytwa kłów. "Ty rozumieć?"~ */
  IF ~~ THEN REPLY #58150 /* ~"Tak, rozumiem. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"Nie, jestem głupi. Czemu mi tego nie wyjaśnisz?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~Abiszai syczy na ciebie i sięga w stronę pobliskiego muru. Jego oczy cały czas wpatrują się w twoje, gdy pojedynczym ruchem pazurów zostawia w kamieniu głębokie rysy. "Teraz rozumieć? Czy pragnąć bliższe, osobiste wyjaśnienie?"~ */
  IF ~~ THEN REPLY #58153 /* ~"Rozumiem doskonale. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~Zaatakuj abiszai: "Zobaczmy, jak sobie poradzisz z prawdziwym przeciwnikiem."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~Abiszai syczy na ciebie gniewnie. "Ty powiedzieć gadać Tek'elach... iść!"~ */
  IF ~~ THEN REPLY #58156 /* ~"W porządku. Żegnaj."~ */ EXIT
END
