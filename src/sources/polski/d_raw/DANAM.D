// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~Odziany w łachmany, wyglądający na czterdzieści lat zbieracz zwraca się do ciebie, gdy tu wchodzisz. "Ja..." Szybko cię ogląda i parska. "...cię nie znam."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"Witaj."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"Mnie też nikogo znajomego nie przypominasz."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"Po prostu tędy przechodzę."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Zignoruj zbieracza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~Zbieracz dalej się w ciebie wpatruje.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"Czy widziałeś gdzieś tu dziennik?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"Czy jest jakiś problem?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Zignoruj zbieracza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"Nie obchodzi mnię czego szukasz, trepie." Spluwa. "To co mnię obchodzi to to, że ja tu jestem, a ty wcionż oddychasz."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"Jeśli nie dasz mi przejść, zbieraczu, to jeden z nas uda się do Kostnicy i to nie będę ja."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~"Jeśli nie dasz mi przejść, zbieraczu, to jeden z nas uda się do Kostnicy i to nie będę ja."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"Zbieranie ciał zanim staną się martwe to całkiem niezły sposób na spotkanie Pani."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"Zatem zostawiam cię, trepie."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~Zaatakuj zbieracza.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Zignoruj zbieracza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~Gdy zbliżasz się do zbieracza, on obdarza cię spojrzeniem pełnym obrzydzenia. "Dość już słów, śmiałku. Cienżko ci siem bendzie tutaj nimi targować." Zbieracz wyciąga nóż z kieszeni. "Obawiam siem, że twoje ciało jest jedynom twardom walutom jakom posiadasz."~ */
  IF ~~ THEN REPLY #32995 /* ~"Nie wydaje mi się..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"Ja to widzem tak, trepie, że problem... jest w tym, że ja tu jestem, a ty wcionż oddychasz." Spluwa.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"Jeśli nie dasz mi przejść, zbieraczu, to jeden z nas uda się do Kostnicy i to nie będę ja."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~"Jeśli nie dasz mi przejść, zbieraczu, to jeden z nas uda się do Kostnicy i to nie będę ja."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"Zbieranie ciał zanim staną się martwe to całkiem niezły sposób na spotkanie Pani."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"Zatem zostawiam cię, trepie."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Zaatakuj zbieracza.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Zignoruj zbieracza i idź dalej.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~Gdy odwracasz się, by odejść, zauważasz, że zbieracz wyciągnął nóż z jednej ze swoich kieszeni. "Nie wiem, o czym żeś myślał tu przychodzonc, ale teraz, śmiałku, pójdziesz tylko i wyłoncznie do Kostnicy."~ */
  IF ~~ THEN REPLY #33107 /* ~"Nie wydaje mi się..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Twoja groźba zdaje się zmiękczyć jego zachowanie. "Spadaj stond, śmiałku!" Syczy. "I na twoim miejscu uważałbym na plecy."~ */
  IF ~~ THEN REPLY #33108 /* ~"Nawzajem..."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~Zbieracz odpowiada na twoją groźbę wyciągając nóż z jednej ze swoich kieszeni. "Nie zgadzam siem z tobom, trepie. To TY wkrótce bendziesz brzdenkiem w moich kieszeniach!"~ */
  IF ~~ THEN REPLY #33109 /* ~"Spróbuj szczęścia..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~Wydaje się, że udało ci się coś przetłumaczyć temu zbieraczowi, ponieważ odwraca się on od ciebie. "Uważaj na plecy, śmiałku. Wienkszość tutaj bendzie rozmawiać z tobom trzymajonc kose przed trumnom, a jeśli zostaniesz tu dłużej, to ja zrobiem to samo."~ */
  IF ~~ THEN REPLY #33110 /* ~"Jasne..."~ */ EXIT
END
