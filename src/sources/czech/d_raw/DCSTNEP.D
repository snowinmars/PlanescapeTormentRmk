// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~Vidíš hezkého mladého muže oblečeného v parádních šatech. Vypadá docela vzrušeně.~ */
  IF ~~ THEN REPLY #9790 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~Otočil se na tebe a podrážděně se na tebe dívá. "Zmizni, vole. Takovým, jako seš ty nemám co říct." Odvrátil od tebe pohled.~ */
  IF ~~ THEN REPLY #9797 /* ~"Hele, mám pro tebe jenom pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"Promiň, že otravuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~Znovu se na tebe otočil a vypadá docela rozzuřeně. "Nech toho. Snažím se sledovat popravu a ty na mě tady klapeš hubou. Nech mě být." Znovu se od tebe odvrátil.~ */
  IF ~~ THEN REPLY #9800 /* ~Poplácej ho po rameni: "Už tě mám dost. Odpověz mi na mé otázky, nebo ten tvůj hezký ksichtík rozflákám."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"Velmi dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~Otočil se na tebe, tvář zarudlá hněvem. "To se neopovážíš! Jsem totiž synovec..."~ */
  IF ~~ THEN REPLY #9806 /* ~Přeruš ho: "Nezajímá mě to, i kdybys byl příbuzný samotné Pani. Další slova z tvé držky budou znít 'jak ti můžu pomoct', nebo uvidíš."~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~Přeruš ho: "To nic. Nestojíš mi za tu námahu."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~Mladý muž vypadá, že brzy vybuchne. Rychle se rozhlédl kolem, ale nikdo v davu se netváří, že by se mu chystal pomoct. "J-jak ti můžu... pomoct?"~ */
  IF ~~ THEN REPLY #9812 /* ~"Hele... vidíš, ani to nebylo tak těžké, co? Mám pro tebe nějaké otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~Usměj se: "Už jsi mi pomohl. Ten výraz pokory na tvé tváři, to je něco. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"Poslouchám."~ */
  IF ~~ THEN REPLY #9817 /* ~"Co se to děje?"~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"Kdo tomu tady šéfuje."~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"Hledám devu. Prý je někde ve městě."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"Nějaké místní novinky?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"To nic. Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"Obyčejná poprava. To je vše."~ */
  IF ~~ THEN REPLY #9825 /* ~"Jaký zločin spáchal?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"Aha. Mám další otázku."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"Nevím. Můžeš se zeptat v administrativním úřadě."~ */
  IF ~~ THEN REPLY #9831 /* ~"Dobře. Udělám to. Chci se zeptat ještě na něco jiného."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~Zle se na tebe usmál. "Tak to bude můj strýc, Tovus Giljaf. "~ */
  IF ~~ THEN REPLY #9836 /* ~"Přestaň se tak ksichtit, nebo se nebudeš brzy mít *čím* ksichtit."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~Jeho úsměv vybledl. Zamračil se na tebe, ale nic neříká.~ */
  IF ~~ THEN REPLY #9839 /* ~"To je lepší. Mám pro tebe ještě víc otázek."~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"Už tě mám dost. Sbohem."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"Ty se taky měj. Zmíním se o tobě strýčkovi... zjizvenče." Obrátil svou pozornost zpět k davu.~ */
  IF ~~ THEN REPLY #9845 /* ~"Udělej to."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~Pohrdavě se na tebe dívá "Hmph. Deva v Curstu. Tak to je něco, co se jen tak nevidí. Řekl bych, že ses spletl, nebo zbláznil."~ */
  IF ~~ THEN REPLY #9847 /* ~"Velmi dobře, další otázka."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~Pokrčil rameny. "Žádné mě nenapadají."~ */
  IF ~~ THEN REPLY #9850 /* ~"Aha. Možná mi můžeš říct ještě něco."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"Sbohem tedy."~ */ EXIT
END
