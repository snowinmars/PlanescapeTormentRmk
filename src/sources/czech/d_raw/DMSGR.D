// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~Tento mladý muž se k tobě přiblížil a váhavě se zeptal: "Tisíckrát se omlouvám, pane, ale hledám jistého muže a zdá se mi, že vy byste mi mohl pomoct..."~ */
  IF ~~ THEN REPLY #43385 /* ~"Eh? Jakpak?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"O tom pochybuji. Sbohem."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"Jestli mi věnuješ jenom minutku... Nebude to trvat déle než pár nadechnutí..."~ */
  IF ~~ THEN REPLY #43819 /* ~"Dobrá... co to je?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"Nech mě být hochu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"Jsem posel, který hledá člověka, který prý nemůže zemřít... zjizveného muže, pro něhož není smrt nic než nejvšednější nepříjemnost. Hodíš se k nejasnému popisu, který jsem obdržel, a nedivil bych se, kdybys to byl ty."~ */
  IF ~~ THEN REPLY #43822 /* ~"Ano, jsem to já."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"Ne, já to nejsem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"Kdo to chce vědět?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~Přikývl a pak se ti hluboce uklonil. "Tak tedy vzkaz pro tebe: Poslala mě paní Jolmi z rodu Syrmů, dáma vysokého postavení. Paní Jolmi by se s tebou chtěla setkat v Městské hale, kde by ti dala nabídku, o které já už nic nevím. Pokud bys ji chtěl vyhledat, je oděna do zeleného hedvábí zdobeného zlatem a vlasy má ocelově modré barvy. To je vše z mého vzkazu... sbohem."~ */
  IF ~~ THEN REPLY #43826 /* ~"Počkej... kde je Městská hala?"~ */ JOURNAL #39487 /* ~Dostal jsem zprávu, že žena zvaná Jolmi z Rodu Syrma si přeje předložit mi návrh. Mám ji vyhledat v Městské hale - je oblečená v zeleném hedvábí se zlatým vyšíváním a má vlasy barvy modré oceli.~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~Dostal jsem zprávu, že žena zvaná Jolmi z Rodu Syrma si přeje předložit mi návrh. Mám ji vyhledat v Městské hale - je oblečená v zeleném hedvábí se zlatým vyšíváním a má vlasy barvy modré oceli.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"V severovýchodním rohu této části Úřednické čtvrti. Je to velká budova a mělo by být jednoduché najít ji. Teď už sbohem."~ */
  IF ~~ THEN REPLY #43829 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"Tak to je škoda. Sbohem - omlouvám se, že jsem tě obtěžoval. Sbohem."~ */
  IF ~~ THEN REPLY #43831 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"Jsem najat zámožnou šlechtičnou, Jolmi z rodu Syrmů."~ */
  IF ~~ THEN REPLY #43833 /* ~"Jsem člověk, kterého hledáš."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"Inu, narazil jsi na nesprávného člověka."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~Mladý posel se zdvořile uklonil. "Ještě se setkáme."~ */
  IF ~~ THEN REPLY #43836 /* ~"Chtěl jsem ti říct, že vlastně já jsem člověk, kterého hledáš."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"Ano... Jen jsem šel kolem. Sbohem."~ */ EXIT
END
