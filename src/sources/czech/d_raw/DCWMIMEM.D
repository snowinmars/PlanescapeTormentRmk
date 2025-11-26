// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~Tento gentleman pečlivě sleduje něco jako pantomimického umělce a v obličeji má zmatený výraz.~ */
  IF ~~ THEN REPLY #49757 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~Nechej muže být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~Muž se k tobě otočil, ale herec stále poutá většinu jeho pozornosti. "Zvláštní, ne? Chudák."~ */
  IF ~~ THEN REPLY #49760 /* ~"Co se děje?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"Zapomeň na to. Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~Dál sleduje toho tichého, černě oděného muže a v odpověď zakroutí hlavou: "Teď ne, pane, prosím. Sbohem."~ */
  IF ~~ THEN REPLY #49764 /* ~"Počkej... aspoň mi řekni, co se tu děje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"Jenom pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"Opravdu, pane, nechej toho. Jsem si jist, že je tu spousta jiných lidí, co by si s tebou povídali raději, než já. Nechej mě to v  klidu sledovat, ano? Sbohem."~ */
  IF ~~ THEN REPLY #49768 /* ~"Počkej... aspoň mi řekni, co se tu děje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"Vždyť vidíš... ten muž je mim. Jeho představení se skládá z různých tichých zosobnění spolu s fyzickými akcemi - šplhem na lano, chycením do neviditelné klece - a imitace procházejících. Přihodilo se mu, že imitoval chůzi kolemjdoucího mága a teď je asi proklet: teď skutečně *je* uvězněn v neviditelné kleci a nemůže mluvit. Ironické, ne?"~ */
  IF ~~ THEN REPLY #49771 /* ~"Ano, tak trochu. Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"To je opravdu zvláštní. Sbohem."~ */ EXIT
END
