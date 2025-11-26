// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~Když ses přiblížil, muž ustoupil. V očích má zbabělý, ale dravý lesk, jako u nějaké mrchožrouta. Uvědomil sis, že si tě prohlíží a přemýšlí, jestli na tebe má - ale v jeho hlase je slyšet nejistota. "Nech mě bejt, j-j-já ti nic neudělal."~ */
  IF ~~ THEN REPLY #1957 /* ~"Ať tě ani nenapadne nějak mě otravovat, nebo bude mít moje zbraň nové místečko na odpočinek."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"*Hledáš* rvačku?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"Nechci se rvát..." Od úst mu odletují sliny. "... ale ty by sis měl dávat majzla, jestli si myslíš, že na mně máš!"~ */
  IF ~~ THEN REPLY #1961 /* ~"*Nikdo* se mnou takhle mluvit nebude a *nikdo* mi nebude nevyhrožovat. Vezmi zpátky, cos řekl, nebo druhou šanci nedostaneš, protože budeš mrtvý."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"Jo, jo. Udržuj si odstup, nebo toho budeš litovat."~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"Takže sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~Mrzutě se na tebe dívá.~ */
  IF ~~ THEN REPLY #1966 /* ~"*Rozumíš* mi? Vezmi zpátky, cos řekl, jinak tě rozpářu."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~Mrzutě se na tebe dívá.~ */
  IF ~~ THEN REPLY #1968 /* ~"*Rozumíš* mi? Udržuj si odstup, nebo toho budeš litovat."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~Hlas se mu třepe. "Já... odvolávám, co jsem řekl. Nechtěl jsem tě urazit."~ */
  IF ~~ THEN REPLY #1974 /* ~"Tak dobře. Zmiz mi z očí."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"Kliď se mi z očí."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Stejně na něj zaútoč.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"Už se teda nesejdeme. Nechtěl jsem tě nijak urazit."~ */
  IF ~~ THEN REPLY #1978 /* ~"Tak dobře. A teď mi zmiz z očí."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"Kliď se mi z očí."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Stejně na něj zaútoč. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
