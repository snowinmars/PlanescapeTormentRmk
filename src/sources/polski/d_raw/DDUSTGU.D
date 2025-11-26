// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~Widzisz surowo wyglądającego mężczyznę noszącego czarne szaty. Przygląda ci się podejrzliwie.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"Witaj."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"Witaj."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"Witaj."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~"Zachowuj się, jakbyś był jednym z tutejszych. Zignoruj go i idź dalej."~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Spróbuj go zignorować i idź dalej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~Grabarz zerka na ciebie gniewnie, gdy przechodzisz... Zdaje się, że chce cię zawołać, rezygnuje jednak. Być może twa postura powstrzymała jego język.~ */
  IF ~~ THEN REPLY #387 /* ~Idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~Grabarz spogląda gniewnie, gdy przechodzisz, po czym zwraca się do ciebie. "Ty tam! Co tu robisz?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"Kluczę tak między tymi salami... Są tu gdzieś jacyś przewodnicy, którzy mogliby pokierować odwiedzających?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"Zdaje... się, że się zgubiłem."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"To moja sprawa, co robię. Dobrze byś uczynił, gdybyś pilnował WŁASNYCH interesów, Grabarzu."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"Robię jedynie to, że staram się znaleźć wyjście. Nie chcę sprawiać żadnych kłopotów."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"Nic. Zgubiłem się, teraz jednak kieruję się już w stronę wyjścia."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~Grabarz marszczy brwi. Zdaje się być sceptycznie nastawiony. "W przedsionku znajdują się przewodnicy, którzy cię pokierują. Nie musisz włóczyć się po Kostnicy samemu."~ */
  IF ~~ THEN REPLY #1415 /* ~"Dziękuję za pomoc. Pójdę porozmawiać z przewodnikami."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"Będę się włóczył tam, gdzie będę chciał... Dobrze byś zrobił, gdybyś się zajmował własnymi sprawami, Grabarzu."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"Rzeczywiście wyglądasz na takiego, który się zgubił. Oczy grabarza stają się wąskie niczym szparki, zaś jego dłoń spada na znajdujący się przy boku sztylet. "Poczekaj tu. Wezwę straż, by cię wyprowadziła." Wygląda na to, że chce wezwać straż.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"Wezwij przyjaciół, Grabarzu... Nie mogę się już ich doczekać..."~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Uciekaj.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Poczekaj.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~Oczy grabarza stają się wąskie niczym szparki, zaś jego dłoń spada na znajdujący się przy boku sztylet. Wygląda na to, że chce wezwać straż.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"Wezwij przyjaciół, Grabarzu... Nie mogę się już ich doczekać..."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Uciekaj.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Poczekaj.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~Gdy się przybliżasz, by mu coś wyszeptać, on również się przybliża. Gdy tylko wkracza w zasięg twych ramion, zaciskasz swe dłonie wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #4156 /* ~"Nie mogę pozwolić, byś powiadomił swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Nim ma szansę wypowiedzieć choćby słowo, twe dłonie zaciskają się wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.~ */
  IF ~~ THEN REPLY #4157 /* ~"Nie mogę pozwolić, byś powiadomił swoich przyjaciół..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~Następuje *chrupnięcie* i Grabarz upada bezwładnie w twe ramiona.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"Lepiej ty niż ja, Grabie."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"Lepiej ty niż ja, Grabie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~Ku twemu zdziwieniu wykonałeś to instynktownie, jakbyś już wcześniej robił to wiele razy... Przemyśleniu temu towarzyszą przebłyski wspomnień, są jednak zbyt słabe, by wydrzeć się na powierzchnię.~ */
  IF ~~ THEN REPLY #4160 /* ~Ukryj ciało w cieniu i idź dalej.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~Nie okazujesz się dostatecznie szybki i Grabarz wykonuje unik, gdy się na niego rzucasz. Następnie cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego, żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #4161 /* ~"Mam nadzieję, że uregulowałeś swe powinności wobec swoich bogów, Grabarzu..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~Grabarz klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.~ */
  IF ~~ THEN REPLY #4162 /* ~"Mam nadzieję, że uregulowałeś swe powinności wobec swoich bogów, Grabarzu..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~Grabarz marszczy czoło, gdy przemówiasz do niego. "Co tu robisz?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"Kluczę tak między tymi salami... Są tu gdzieś jacyś przewodnicy, którzy mogliby pokierować odwiedzających?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"Zdaje... się, że się zgubiłem."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"To moja sprawa, co robię. Dobrze byś uczynił, gdybyś pilnował WŁASNYCH interesów, Grabarzu."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"Robię jedynie to, że staram się znaleźć wyjście. Nie chcę sprawiać żadnych kłopotów."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"Nic. Zgubiłem się, teraz jednak kieruję się już w stronę wyjścia."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~Widzisz surowo wyglądającego mężczyznę noszącego czarne szaty. Patrzy przed siebie i zdaje się nawet ciebie nie zauważać.~ */
  IF ~~ THEN REPLY #4170 /* ~"Witaj."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Przemknij się, idąc posuwistym krokiem.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~Grabarz podskakuje zaskoczony, gdy do niego przemawiasz, po czym cofa się o krok. "Nie jesteś zombie... Kim jesteś... i jak się tu dostałeś?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Skręć mu kark, zanim zdąży zawołać.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"Mogę to wyjaśnić... Rozumiesz, wszystko zaczęło się, kiedy obudziłem się z martwych na jednym ze stołów... Była tam gadająca czaszka i..."~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Uciekaj.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~Widzisz surowo wyglądającego mężczyznę noszącego czarne szaty. Gdy cię dostrzega, wykonuje skinięcie głową.~ */
  IF ~~ THEN REPLY #4176 /* ~"Witaj."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Odwzajemnij ukłon i idź dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"Witaj, bracie wtajemniczony."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"Może będziesz w stanie mi pomóc. Zdaje się, że się zgubiłem. Czy mógłbyś mnie nakierować?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"Zdaje... się, że się zgubiłem."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"Trzymaj się, bracie wtajemniczony."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"Przewodnicy znajdują się w przedsionku. Powinni potrafić skierować cię odpowiednio."~ */
  IF ~~ THEN REPLY #4181 /* ~"Dziękuję. Poszukam ich."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Ukrywasz bezwładne ciało w cieniu.~ */
  IF ~~ THEN REPLY #61285 /* ~Idź dalej.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~Widzisz surowo wyglądającego mężczyznę noszącego czarne szaty. Przygląda ci się podejrzliwie. "Ty! Powiedz, co tu robisz."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"Jestem świeżo Wtajemniczonym we frakcji Grabarzy. Zwiedzam jedynie Kostnicę."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"Kluczę tak między tymi salami... Są tu gdzieś jacyś przewodnicy, którzy mogliby pokierować odwiedzających?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"Z... daje się, że się zgubiłem."~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"To moja sprawa, co robię. Dobrze byś uczynił, gdybyś pilnował WŁASNYCH interesów, Grabarzu."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"Robię jedynie to, że staram się znaleźć wyjście. Nie chcę sprawiać żadnych kłopotów."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"Nic. Zgubiłem się, teraz jednak kieruję się już w stronę wyjścia."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~Strażnik przygląda ci się przez chwilę, po czym kiwa głową. "Postaraj się, by twój pobyt tutaj nie przeszkodził nikomu w jego obowiązkach."~ */
  IF ~~ THEN REPLY #66701 /* ~"Dobrze. Odejdę już."~ */ EXIT
END
