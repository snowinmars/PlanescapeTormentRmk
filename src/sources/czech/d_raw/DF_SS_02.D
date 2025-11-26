// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~Je to zvláštní, světlemodrý kámen. Pevně spočívá přikován na podstavci.~ */
  IF ~~ THEN REPLY #47111 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~Tenhle světlomodrý kámen je jeden z těch, nimž tě poslal úředník. V jeho nitru leží prožitek 'něžné lásky.'~ */
  IF ~~ THEN REPLY #47113 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~Máš zavřené oči; cítíš, že stojíš na špičkách, pevně přitisknut k tělu někoho druhého. Jemné, měkké vlhké rty tě líbají tak něžně... až ti srdce hrozí vybuchnout v hrudi a máš chuť po zádech spadnout do prázdna a prostě se nechat věčně unášet...~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~Tenhle světlomodrý kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'sžíravé žárlivosti.'~ */
  IF ~~ THEN REPLY #47119 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~Pevně jsi semkl rty, když ten mladý světlovlasý hrdina, ve zbroji vyleštěné jak stříbrné zrcadlo, opět vstoupil do tvé krčmy. Jak zavěšuje svůj sametový plášť na hák na zdi, párem očí barvy nebe prozkoumal tvé přátele a usmál se tak, až na obsluhující děvčata šly mrákoty. Dočistil jsi džbánek a pořádně jím *práskl* o stůl, přemýšlíš, jaké by asi bylo obrátit toho panáka hlavou dolů a vykoupat ho v sudu s dešťovou vodou...~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47125 /* ~Odejdi.~ */ EXIT
END
