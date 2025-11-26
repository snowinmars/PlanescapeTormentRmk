// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK1~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64225 /* ~Tyhle velké hodiny vypadají, že byly do černého kamene zčásti zataveny... ale zem okolo se zdá narušená, jako by se po nich 'nedávno' někdo procházel -- možná v posledních málo letech. ~ */
  IF ~~ THEN DO ~SetGlobal("Clock_1","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64226 /* ~Do povrchu hodin je něco hrubě naškrábáno, náhle cítíš podivný, plíživý pocit, provrtávající si cestu zadní částí tvé hlavy - víš, že to, co je napsáno na hodinách je vzkaz pro tebe... od tebe.~ */
  IF ~~ THEN REPLY #64229 /* ~Prozkoumej své písmo.~ */ JOURNAL #63983 /* ~Našel jsem mně určený vzkaz, jedna z mých předešlých inkarnací ho vyškrábala do povrchu hodin ve sklepení Pevnosti. Říká "BĚŽ - DVEŘE jsou LŽI - POUŽIJ děla - pak PORTÁL." Myslím, že šipka směřovala někam k severovýchodní části hodinové místnosti, jako by tam něco bylo. ~ */ GOTO 2
  IF ~~ THEN REPLY #64230 /* ~Nech hodiny být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #64227 /* ~Zpráva na hodinách se zdá být vyškrábána dýkou: 

BĚŽ - DVEŘE jsou LŽI - POUŽIJ děla - pak PORTÁL

Vypadá to, jako by vzkaz byl napsán ve spěchu. Za zprávou následuje hrubě vyškrábaná šipka ukazující na opačnou stranu, než velká hodinová ručička.~ */
  IF ~~ THEN REPLY #64231 /* ~"Díky za radu..."~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64228 /* ~Tyhle velké hodiny vypadají, že byly do černého kamene zčásti zataveny... ale zem okolo se zdá narušená, jako by se po nich 'nedávno' někdo procházel -- možná v posledních málo letech. Na jejich povrchu je vzkaz od tebe samého... pro sebe.~ */
  IF ~~ THEN REPLY #64232 /* ~Prozkoumej své písmo.~ */ JOURNAL #63983 /* ~Našel jsem mně určený vzkaz, jedna z mých předešlých inkarnací ho vyškrábala do povrchu hodin ve sklepení Pevnosti. Říká "BĚŽ - DVEŘE jsou LŽI - POUŽIJ děla - pak PORTÁL." Myslím, že šipka směřovala někam k severovýchodní části hodinové místnosti, jako by tam něco bylo. ~ */ GOTO 2
  IF ~~ THEN REPLY #64233 /* ~Nech hodiny být.~ */ EXIT
END
