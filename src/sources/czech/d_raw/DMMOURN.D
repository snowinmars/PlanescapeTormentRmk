// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~Kolem této ženy visí temná aura těžké ztráty, jako temný plášť. Zatímco jí sleduješ, z jejích rtů vyšel dlouhý, těžký povzdech.~ */
  IF ~~ THEN REPLY #34082 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~Vzhlédla vzhůru a dívá se ti do obličeje. Zamlžené oči mrkají, jak se snaží vidět tě lépe. "Odpusť mi mladíku, ale já jsem stará žena a už moc dobře nevidím... znám tě?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"Ne."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"Možná, ale já tě neznám."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"Už jsme na sebe narazili předtím."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~Chvíli přemílá tvou odpověď a pak přikývla. "Co tedy chceš?"~ */
  IF ~~ THEN REPLY #34089 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"Otázky?" Její výraz zmrzl. "Ó, ne... ty jsi dobrodruh, viď? Slavné jméno i práce, obojí smrdí, eh? No, já o tebe nestojím! Zmiz!"~ */
  IF ~~ THEN REPLY #34092 /* ~"Nejsem dobrodruh."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"Ne, Já nejsem... no ve skutečnosti, alespoň..."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"To určitě!" Žena na tebe ukázala prstem. "Viděla jsem, jak Spalovači zapisují na Památník jméno mého muže, prokleta buď jeho duše, mého syna a obou dcer, všichni byli 'dobrodruhové'! Já taky kdysi dokázala docela máchat mečem, takže dobrodruha poznám, když ho potkám!" Stará žena vypadá, že dostala nějaký záchvat. Její tvář zrudla a od jejích rtů odletují kapičky slin, jak na tebe ječí.~ */
  IF ~~ THEN REPLY #34096 /* ~Nechej ji, ať se svou tirádou pokračuje.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"Vsadím se, že máš nejrůznější bláznivý otázky!" Napodobuje tvůj hrdinský postoj: "Zdravím, mám nějaké otázky... můžeš mi říct o tomhle místě? Kdo je Paní Bolesti? Hledám magický podvazkový pás Napařenýho Železa, nevidělas ho? Nevíš, kde je portál do 2817. Sféry Abyssu? Nevíš, kde je Svatě-plápolající-mrazem-zabíjející Kladivo Zraňování a Návratu a Střílející Blesk ze zadku?" Odplivla si. "Jsou to sračky, všechno! Jenom tě to dostane do Knihy mrtvých! Měla bych tě nakopat jenom za to, že otravuješ starou ženu! A teď zmizni a nech mě být!"~ */
  IF ~~ THEN REPLY #34099 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~Když stará žena rozeznala tvůj obličej, zatvářila se kysele. "Ne, ne, ne! Už zase ty! Už s tebou nepromluvím ani slovo, takže vypadni! *VYPADNI!*"~ */
  IF ~~ THEN REPLY #34101 /* ~Odejdi.~ */ EXIT
END
