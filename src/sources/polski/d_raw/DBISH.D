// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~Gdy wchodzisz do pokoju, potężny mężczyzna wstaje z krzesła i podchodzi do ciebie. "Heja! Bisz jestem. A kim tyś?"~ */
  IF ~~ THEN REPLY #34123 /* ~"Nie mam imienia."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Kłamstwo: "Mam na imię 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"To nie twoja sprawa."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Zignoruj mężczyznę i idź dalej.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"Cóż to znaczy, że nie masz imienia? Wrócił żeś z kąpieli w Styksie, tępy skurlu?!" Zauważasz, że Bisz powoli przesuwa dłonią w stronę broni. "A może po prostu nie chcesz mi powiedzieć? Ty coś ukrywasz, jak mnie siem zdaje."~ */
  IF ~~ THEN REPLY #34127 /* ~"Słuchaj, mówię prawdę. Nie znam swojego imienia."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"Nie mam nic do ukrycia i nie chcę sprawiać żadnych kłopotów. Chcę tylko przejść."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Kłamstwo: "Dobrze, dobrze... mam na imię 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"Chcę tylko przejść."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"Szukam dziennika."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"Powiedziano mi, że gdzieś tutaj można znaleźć Faroda."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"To nie twoja sprawa."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Zaatakuj Bisha.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Zignoruj Bisza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"Ad... co?" Bisz wpatruje się w ciebie z niezrozumieniem, po czym potrząsa mocno głową. "Nigdy cię wcześniej nie widziałem, a Farod nie mówił mi nic o żadnym 'Adanie' co by kręcił się w okolicy." Zauważasz, że jego dłoń powoli przesuwa się w stronę broni. "Lepiej powiedz mi, co tu robisz, trepie."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"Może zaufanie Faroda do ciebie nie rozciąga się tak daleko, jak mógłbyś sądzić."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"Szukam dziennika."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~"To nie twoja sprawa."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"Nie mam nic do ukrycia i nie chcę sprawiać żadnych kłopotów. Chcę tylko przejść."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"Chcę tylko przejść."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Zaatakuj Bisza.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Zignoruj Bisza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Bisz nagle wyciąga broń. "Dobra. Nie chcesz być ze mną szczery, to wszystko z cię wyduszę."~ */
  IF ~~ THEN REPLY #34147 /* ~"Tylko spróbuj..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~Gdy odwracasz się, by odejść, Bisz blokuje ci drogę. "Raz cię jeszcze pytam, trepie! Jak masz na IMIĘ?!"~ */
  IF ~~ THEN REPLY #34148 /* ~"Nie mam imienia."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Kłamstwo: "Mam na imię 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"To nie twoja sprawa."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Zaatakuj Bisza.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Dalej ignoruj Bisza i spróbuj przejść obok niego.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"Jeśli Farod chciały cię widzieć, to bym coś o tym wiedział." Bisz nagle wyciąga broń. "Zmęczonym tymi gierkami w zgadywanie, trepie. Po prostu poszukam odpowiedzi w twym martwym ciele."~ */
  IF ~~ THEN REPLY #34153 /* ~"Nie sądzę..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"Mówisz, żeś tu wcześniej był? Dziennik, czy nie, nigdy w życiu żem cię nie widział. Coś mi się widzi, żeś się tu skradał." Bisz nagle wyciąga broń. "Mam nadzieję, że było to warte twego życia, trepie."~ */
  IF ~~ THEN REPLY #34154 /* ~"Co tylko powiesz..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Bisz sfrustrowany wyrzuca dłonie w górę. "Zapomnij, trepie! I tak to nieważne." Potrząsa głową w tę i z powrotem. "Ważniejsze jest to, co tu robisz?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"Powiedziano mi, że gdzieś tutaj można znaleźć Faroda."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"Szukam człowieka o imieniu Farod."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"Szukam dziennika."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"To nie twoja sprawa."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"Nie chcę sprawiać żadnych kłopotów. Chcę tylko przejść."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"Chcę tylko przejść."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"Jeśli zaraz się nie odsuniesz, rozpęta się piekło."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Zaatakuj Bisza.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Zignoruj Bisza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Bisz marszczy się. "Dobra. Możesz iść dalej." Gdy przechodzisz obok niego, on pochyla się i cicho cię ostrzega. "Ale wiedz, trepie, że jeśli będziesz tu sprawiał kłopoty, to ci czaszkę rozłupię, jak tylko cię zobaczę."~ */
  IF ~~ THEN REPLY #34164 /* ~Żegnaj.~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"Zrobię, co będę chciał..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Bisz potrząsa głową. "Wszyscy chcemy wiele rzeczy, śmiałku." Zanosi się śmiechem. "Nie znam cię, nie lubię, więc mogę się z tobą układać. Twoje pieniądze albo głowa."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"Zatem moje pieniędze."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"Zatem moje pieniądze."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"Niczego ci nie oddam!"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"Jesteś bardziej tępy, niż myślałem, śmiałku!" Bisz wzrusza ramionami. "Dobra, chudzielcu, nie ma sprawy!"~ */
  IF ~~ THEN REPLY #34169 /* ~"Pokażę ci, kto jest tępy..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Bisz parska. "Wyglądasz jak niezły siepacz, o tak." Skłania głowę, po czym wyciąga broń. "Ale stąd se drogi nie wytniesz."~ */
  IF ~~ THEN REPLY #34170 /* ~"Ośmielę się nie zgodzić."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Bisz dokładnie przeszukuje twoje przedmioty. "Powinienem i tak zabrać twoją głowę, bo to wszystko, co jesteś wart! A teraz precz. Ostrzegam cię, jeśli tylko będziesz sprawiał jakieś kłopoty, upoluję cię i wytrząsnę tę resztę, która ci została!"~ */
  IF ~~ THEN REPLY #34171 /* ~"Już idę..."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"Drań..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~Widzisz Bisza, który pilnuje swego stanowiska. Gdy się zbliżasz, on spogląda na ciebie i kiwa głową. "Heja. Dalej."~ */
  IF ~~ THEN REPLY #34173 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Bisz przeszukuje twoje rzeczy w nadziei znalezienia miedziaków... ale nie osiąga pożądanych rezultatów. "Czy chciałeś marnować mój czas, czy myślałeś, że twoje gałgany są coś warte?" Obnaża broń. "Wygląda na to, że zamiast tego będę musiał sprzedać twego trupa!"~ */
  IF ~~ THEN REPLY #34174 /* ~"Spróbuj..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Bisz obraca się i staje przed tobą z wyciągniętą bronią! "Co żem ci mówił, trepie? Ty żeś siepał tam na dole, to ja ci teraz posiepię czaszkę!"~ */
  IF ~~ THEN REPLY #34175 /* ~"Co tylko powiesz..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Bisz parska na ciebie. "Cóż, powiedz mu, żeby lepiej zmienił do mnie swoje nastawienie, jeśli oczekuje, że ja i moi ludzie będziemy pilnować tego krwawiącego ścieku." Chowa broń do pochwy i gestem wskazuje drzwi w podłodze. "Dalej."~ */
  IF ~~ THEN REPLY #66910 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Bisz spogląda na ciebie podejrzliwie. "Farod przeważnie powiadamia mnie o gościach, a ja nie przypominam sobie, żeby coś o was wspominał." Szybko cię ogląda, po czym wzrusza powoli ramionami. "Ech, nie wyglądacie na takich, z którymi strażnicy nie mogliby sobie poradzić. Dalej."~ */
  IF ~~ THEN REPLY #66909 /* ~"Żegnaj."~ */ EXIT
END
