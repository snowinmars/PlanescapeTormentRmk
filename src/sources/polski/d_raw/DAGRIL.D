// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~Widzisz potężną, pięciometrową istotę. Z jej masywnego korpusu wyrastają cztery ręce... dwie zakończone szczypcami i dwie pazurami. Głowę ma podobną do psa, łatwo można dostrzec ostre kły i fioletowe oczy. Wpatruje się prosto w ciebie.~ */
  IF ~~ THEN REPLY #57165 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~Zignoruj istotę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~Istota nie spuszcza z ciebie wzroku. W końcu czujesz drżenie w umyśle i w twojej głowie odzywa się głos. "Ty również witaj, człowieku. Jestem Agril-Szanak. Dlaczego tu jesteś?"~ */
  IF ~~ THEN REPLY #57168 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"Nieważne. Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"Pytania... to mnie bawi. Możesz pytać."~ */
  IF ~~ THEN REPLY #57171 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"Co tu robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"Co możesz mi powiedzieć o Donie Kiszał?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"Dona Kiszał wysłała mnie, aby cię uwolnić. Co ja z tego będę miał?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"Dona Kiszał wysłała mnie, aby cię uwolnić. Jak mam tego dokonać?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"Jak powiedziałem, jestem Agril-Shanak. Cóż jeszcze chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #57178 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"Niektórzy nazywają mnie biesem... inni przyjacielem. Jestem Agril-Szanak. Jestem tanar'ri. Osiągnąłem swoją pozycję ciężką pracą, zdradą, krwią i strachem. Jestem istotą z sennych koszmarów." Milknie.~ */
  IF ~~ THEN REPLY #57182 /* ~"Kto nazywa cię 'biesem'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"Kto nazywa cię 'przyjacielem'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"Ci, którzy pożądają mocy, często uważają mnie za środek do osiągnięcia celu. To ci nazywają mnie przujacielem."~ */
  IF ~~ THEN REPLY #57187 /* ~"Kto nazywa cię 'biesem'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"To wymijająca odpowiedź..."~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"Ignoranci, którzy nie potrafią wybiec wzrokiem poza strach i uprzedzenia. To ich krótkowzroczność sprawia, że tak mnie określają."~ */
  IF ~~ THEN REPLY #57192 /* ~"Kto nazywa cię 'przyjacielem'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"To wymijająca odpowiedź..."~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"Ach, ależ to jest odpowiedź." Pochyla się w twoją stronę. "To jedyna odpowiedź, jakiej ci udzielę..."~ */
  IF ~~ THEN REPLY #57197 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"Czekam aż ktoś da mi wolność. Może przybyłeś tu, aby to uczynić? Masz pergamin..." Wskazuje pazurem na pergamin, który dała ci Dona Kiszał.~ */
  IF ~~ THEN REPLY #57200 /* ~"W jaki sposób zostałeś tu uwięziony?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"Nie wiem..." Przerywa na długą chwilę. "Przyzwano mnie, a ja odpowiedziałem na wezwanie. Wtedy przejęła mnie potężniejsza siła i przybyłem tutaj. Od tego czasu jestem uwięziony."~ */
  IF ~~ THEN REPLY #57204 /* ~"Kto cię przyzwał?"~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"Kto cię przejął?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"Znasz odpowiedź, trzymasz w dłoni pergamin. To była Dona Kiszał."~ */
  IF ~~ THEN REPLY #57209 /* ~"Kto cię przejął?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"Nie wiem... Ten, kto mnie uwięził nie zdecydował się ujawnić swojej obecności."~ */
  IF ~~ THEN REPLY #57213 /* ~"Kto cię przyzwał?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~Słyszysz śmiech w swojej głowie. "Nie jestem miejscowy... Nie mogę powiedzieć nic wiarygodnego na temat Klątwy. Dla mnie jest to więzienie - nic więcej."~ */
  IF ~~ THEN REPLY #57217 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"Nie wiem o niej nic więcej poza tym, że mnie przyzwała... O tym już wiesz, trzymasz pergamin..." Wskazuje pazurem na pergamin, który dała ci Dona Kiszał.~ */
  IF ~~ THEN REPLY #57220 /* ~"Czemu cię przyzwała?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"Nie wiem. Przechwycono mnie, zanim przybyłem. Nigdy nie rozmawialiśmy..." Milknie.~ */
  IF ~~ THEN REPLY #57224 /* ~"Kto cię przejął?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"Moja wdzięczność nie będzie znała granic. Złożę same sfery u twoich stóp... uwolnij mnie!"~ */
  IF ~~ THEN REPLY #57228 /* ~"Potrzebuję czegoś bardziej konkretnego niż słowa... jeśli tego nie dostanę, po prostu odejdę."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"Dobrze..." Czujesz, jak jego oczy wwiercają się w ciebie. "Dam ci magiczną broń, broń o wielkiej mocy, broń, która pozwoli ci rzucić twych wrogów na kolana... Dam ci Kruszyciela Serc!"~ */
  IF ~~ THEN REPLY #57230 /* ~"Kruszyciela Serc?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"Tak... Broń mi drogą, ale taką, którą poświęciłbym w zamian za wolność. Co na to powiesz? Uwolnisz mnie za Kruszyciela Serc?"~ */
  IF ~~ THEN REPLY #57232 /* ~"Tak, powiedz mi jak."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"Nie, nie sądzę."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"Pomyślę nad tym. Żegnaj."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~Wskazuje pazurem krawędź pentagramu. "Po prostu przerwij symbol, wycierając jego część..." Patrzy na ciebie, a jego wzrok wwierca się w twoją czaszkę.~ */
  IF ~~ THEN REPLY #57236 /* ~Przerwij pentagram.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"Nie, nie sądzę."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Pomyślę nad tym, żegnaj."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~Klękasz, dotykasz symbolu i strumień energii przepływa przez twoją rękę. Szybkim ruchem wycierasz część znaku. Równie szybko energia odpływa, a ty słyszysz w swoim umyśle okrzyk triumfu. "W końcu wolny!"~ */
  IF ~~ THEN REPLY #57240 /* ~"Wezmę teraz Kruszyciela Serc."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"Tak... dotrzymam naszej umowy, człowieku. Broń jest twoja, a wolność moja. Korzystna wymiana..." Wpatruje się w ciebie przez chwilę, po czym w jego dłoni pojawia się zardzewiały topór. Daje ci go. "Wygląda jak nic... ale jest potężny."~ */
  IF ~~ THEN REPLY #57242 /* ~Weź topór.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"Oddałeś mi wielką przysługę i z wdzięczności nie zabiję cię." Wskazuje pazurem w twoją stronę. "Wiedz jednakże, że jeśli spotkamy się ponownie, pożałujesz tego dnia. Żegnaj."~ */
  IF ~~ THEN REPLY #57261 /* ~"Żegnaj."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"Bawisz się ze mną... jeśli nie dasz mi wolności, to odejdź!"~ */
  IF ~~ THEN REPLY #57246 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~Widzisz Agril-Szanaka, glabrezu. "Wracasz do mnie, człowieku. Dlaczego?"~ */
  IF ~~ THEN REPLY #57248 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"Rozważyłem kwestię uwolnienia ciebie."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"Nieważne, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"Czy masz zamiar to uczynić?" Wpatruje się w ciebie złowrogo.~ */
  IF ~~ THEN REPLY #57252 /* ~"Tak, powiedz mi jak."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"Nie, nie sądzę."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"Pomyślę nad tym, żegnaj."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~Widzisz potężną, pięciometrową istotę. Z jej masywnego korpusu wyrastają cztery ręce... dwie zakończone szczypcami i dwie pazurami. Głowę ma podobną do psa, łatwo można dostrzec ostre kły i fioletowe oczy. Gdy cię dostrzega, rusza do ataku.~ */
  IF ~~ THEN REPLY #57256 /* ~Broń się.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~Widzisz Agril-Szanaka, glabrezu. "Ostrzegałem cię, że gdy się spotkamy ponownie, pożałujesz tego dnia..." Rusza do ataku.~ */
  IF ~~ THEN REPLY #57259 /* ~Broń się.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~Wskazuje pazurem krawędź pentagramu. "Po prostu przerwij symbol, wycierając jego część..." Patrzy na ciebie, a jego wzrok wwierca się w twoją czaszkę.~ */
  IF ~~ THEN REPLY #57236 /* ~Przerwij pentagram.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"Nie, nie sądzę."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"Pomyślę nad tym, żegnaj."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~Klękasz, dotykasz symbolu i strumień energii przepływa przez twoją rękę. Szybkim ruchem wycierasz część znaku. Równie szybko energia odpływa, a ty słyszysz w swoim umyśle okrzyk triumfu. "W końcu wolny!"~ */
  IF ~~ THEN GOTO 21
END
