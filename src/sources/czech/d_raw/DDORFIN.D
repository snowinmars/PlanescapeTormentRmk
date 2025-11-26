// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~Vidíš svalnatého mladíka ve špinavých pracovních šatech. Podle seznamu kontroluje obsah beden.~ */
  IF ~~ THEN REPLY #57996 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~Na chvíli se zarazil, než se k tobě otočil. "Ano? Můžu ti nějak pomoct?"~ */
  IF ~~ THEN REPLY #58001 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"Ne, vlastně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~Rozhlédl se. "Dobrá..."~ */
  IF ~~ THEN REPLY #58010 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"Hledám devu. Řekli mi, že je v Curstu."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"Jsem Dorfin, jeden ze skladníků." Přátelsky se usmál.~ */
  IF ~~ THEN REPLY #58021 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"Inventura." Zamračil se. "Potřetí tenhle měsíc."~ */
  IF ~~ THEN REPLY #58025 /* ~"To je nezvyklé?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~Povzdychl si. "Ne, šéf je úplný otrokář. Nutí nás dřít jako koně." Pokrčil rameny. "Z něčeho žít musím."~ */
  IF ~~ THEN REPLY #58031 /* ~"Když je takový otrokář, proč pro něj pracuješ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~Naklonil se k tobě, aby ti mohl zašeptat: "Máme jeden den v týdnu volnej... placenej. Nestěžujeme si na to."~ */
  IF ~~ THEN REPLY #58037 /* ~"Zajímavé. Proč to dělá?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~Pokrčil rameny. "Nemám tušáka a ani se o to nestarám."~ */
  IF ~~ THEN REPLY #58043 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~Zmateně se podíval, pak pokrčil rameny. "Je to akorát skladiště. Mám tady běžný věci. Však víš, nářadí, zbraně, žrádlo a tak..."~ */
  IF ~~ THEN REPLY #58046 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"Vážně?" Vypadá překvapeně. "Nedokážu si představit... víš, proč by sem deva chodil?" Na chvíli se odmlčel, pak se rozesmál. "Ha! Snad jedině, kdyby tady měla pršet *svatá spravedlnost*."~ */
  IF ~~ THEN REPLY #58051 /* ~'Co tím myslíš?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"Občané Curstu nejsou zrovna proslulí dobrotou a velkomyslností. Deva je na tohle místo příliš dobrý. Není důvod, aby tady byl, pokud by ho sem pochopitelně neposlala nějaká mocnost. To by se mohlo stát pouze ve jménu nějaké *vyšší* spravedlnosti."~ */
  IF ~~ THEN REPLY #58057 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~Vidíš skladníka Dorfina. Kývl na tebe. "Vítej."~ */
  IF ~~ THEN REPLY #58062 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"To nic. Sbohem."~ */ EXIT
END
