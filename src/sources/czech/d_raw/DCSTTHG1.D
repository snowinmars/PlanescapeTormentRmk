// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Vidíš mladého muže se špatně padnoucími šaty. Dívá se na tebe znuděným pohledem.~ */
  IF ~~ THEN REPLY #3165 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~Prohlédl si tě od hlavy k patě, než odpověděl na tvůj pozdrav. "Taky tě zdravím, kámo. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #9928 /* ~"Chtěl jsem se tě zeptat na pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~Chvíli na tebe zírá, než se začal usmívat. "Nevím nic, nevidím nic a ani nic neslyším. Takže ti nemůžu na nic odpovědět. A teď utíkej, nebo ti budu muset ublížit."~ */
  IF ~~ THEN REPLY #9931 /* ~"Neublíží ti to, když mi zkusíš odpovědět na pár jednoduchých otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"Pokud z tebe budu muset odpovědi vytřískat, tím líp, to mi vyhovuje."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"Fajn. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~Zamračil se na tebe. "Nemám ti co říct, vole. Máš poslední šanci odejít v jednom kousku."~ */
  IF ~~ THEN REPLY #9935 /* ~"Pokud z tebe budu muset odpovědi vytřískat, tím líp, to mi vyhovuje."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~Prohlédl si tě od hlavy k patě, pozornost věnoval především tvým jizvám, pak se přátelsky usmál. "Dobře, nenecháš se jen tak zastrašit. Možná bych si s tebou mohl vyměnit pár slov. Co chceš?"~ */
  IF ~~ THEN REPLY #9938 /* ~"Jenom pár odpovědí."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~Pokrčil rameny. "Jistě. Ptej se."~ */
  IF ~~ THEN REPLY #9941 /* ~"Hledám devu. Řekli mi, že prý je tady v Curstu."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"Kdo je tady šéf?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"Co se v poslední době děje v městě?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~Ušklíbl se. "Nepravděpodobné, kámo. Pochybuju, že by do tohohle města deva strčil nohu, pokud by ho pochopitelně nechtěl vymazat z povrchu. Myslím, že jenom plýtváš časem."~ */
  IF ~~ THEN REPLY #9947 /* ~"Aha. Další otázka."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"Co tím myslíte?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~Pokrčil rameny. "Slyšel jsem, jak jim někteří říkaj andělé. Curst není zrovna město, ve kterém by se dal nějaký 'anděl' najít. Tohle je špatná strana Prstence."~ */
  IF ~~ THEN REPLY #9951 /* ~"Jakého prstence?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"Aha. Další otázka."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"Prstenec Vnějších Sfér. Právo na jedné straně, chaos na druhé, zlo mezi těma dvěma. Seš tady novej, nebo co?" Zkoumavě si tě prohlíží.~ */
  IF ~~ THEN REPLY #9954 /* ~"Dalo by se to tak říct. Potřebuju se tě zeptat ještě na něco."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~Pokrčil rameny a usmál se. "Je to dobrý místo pro ten správnej druh lidí. Záleží na tobě a na tom, koho znáš."~ */
  IF ~~ THEN REPLY #9957 /* ~"A koho bych, podle tvého názoru, měl znát?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"Dobře, další otázka."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"Aha. No, já budu muset jít."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~Chvíli přemýšlí. "Chlápka jako ty by mohla zajímat hospoda u Zrádcovy brány. Vede to tam chlápek jménem Zkažený Vrdel." Usmál se na tebe. "Neříkej mu, že tě posílám já."~ */
  IF ~~ THEN REPLY #9961 /* ~"Jak to místo najdu?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"Aha. Další otázka."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"Díky. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~Pokrčil rameny. "To rovna nevím. Mám pocit, že je to támhle tím směrem." Ukázal napravo. "Zkrátka se rozhlídni kolem, určitě to najdeš."~ */
  IF ~~ THEN REPLY #9965 /* ~"Dobře. Další otázka.~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"Tovus Giljaf. Najdeš ho v administrativním úřadě na náměstí."~ */
  IF ~~ THEN REPLY #9968 /* ~"Co mi můžeš říct o Tovusovi?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"Další otázka."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"Děkuju ti. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"Nikdy jsem s ním nic neměl. Nebýt toho, že šéfuje téhle hromadě, ani bych neznal jeho jméno." Vypadá znuděně.~ */
  IF ~~ THEN REPLY #9972 /* ~"Velmi dobře. Odpověz mi ještě na něco."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"Tak se teda měj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~Vypadá znuděně, pohledem přejíždí okolí. "Vlastně nic. V poslední době je to tady docela klidné."~ */
  IF ~~ THEN REPLY #9975 /* ~"Aha. Mám pro tebe další otázku."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"Už musím jít. Měj se."~ */ EXIT
END
