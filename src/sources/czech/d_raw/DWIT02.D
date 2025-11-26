// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~Tato osoba těžce dýchá a je pokryta jemným povlakem potu, jako kdyby právě skončila s nějakým usilovným cvičením. Pak, jak jsi se přiblížil, se obrátila k tobě. "Ano?"~ */
  IF ~~ THEN REPLY #43026 /* ~"Co je to tu za místo?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"Nic... jen procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~Kývl směrem k výcvikovým figurínám. "Výcviková komora bojovníků."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"Kde je trenér?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~Dostal jsem se do cvičební komnaty válečníkú v Hale, ale nenašel jsem žádného trenéra. Jeden z trénujících mi řekl, že učitel Qui-Sai bude někde v Hale. Prý ho snadno poznám, protože má kůži jako šedý kámen. ~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"Kde je cvičitel?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"Qui-Sai?" Pokrčil rameny, a setřel si pot z obočí. "Nejspíš někde v Hale. Jeho je těžké minout... jeho kůže je jako šedý kámen."~ */
  IF ~~ THEN REPLY #43032 /* ~"To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END
