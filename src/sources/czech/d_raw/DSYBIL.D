// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~Vidíš postavu ukrytou ve stínech v rohu místnosti. Když ses přiblížil, ze stínu vystoupila mladá žena. Je oblečená ve volné tunice, což jí spolu s krátce ostříhanými vlasy a štíhlou postavou dodává spíše chlapeckého vzezření. "Na tvém místě bych tam nechodila." Ukázala směrem ke dveřím v jižní stěně.~ */
  IF ~~ THEN REPLY #36189 /* ~"Proč? Co je za těmi dveřmi?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"Kdo jsi?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Ignoruj dívku a jdi dál.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~Ucukla při zvuku tvého hlasu a prstem na rtech ti ukazuje, že máš být tiše. Chvilku čeká, potom ti tiše odpovídá. "Celá banda vyjících šílenců. Vypadá to, že tam mají nějaký sraz. Dokud nevypadnou, nemůžu se dostat do uličky."~ */
  IF ~~ THEN REPLY #36192 /* ~"Vyjící šílenci?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"Jmenuju se Sybil." Šeptá tiše, potom si plivla do dlaně a podala ti ji.~ */
  IF ~~ THEN REPLY #36195 /* ~"Co tady děláš?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"Díky za varování, Sybil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"Je tady ozvěna nebo co? Ano, vyjící šílenci. Patří ke gangu Hladových psů, bandě šílených Chaotiků, kteří zamořují tuhle část Úlu."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"Chaotici? Patřím k nim. Nechají mě projít."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"Kolik jich tam je?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"Nechápeš to, co? Psi jsou ještě šílenější, než průměrní Chaotici. Člen nebo ne, jdi tam a seš mrtvola."~ */
  IF ~~ THEN REPLY #36200 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"Kolik jich tam je?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"Napočítala jsem jich asi tucet. Samozřejmě, jenom jsem nakoukla škvírou ve dveřích, takže jich tam může být o pár víc."~ */
  IF ~~ THEN REPLY #36203 /* ~"Tucet nebo tak? To nic není."~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"Vypadá to, že si budeme muset cestu probojovat."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"Není jiný způsob, jak se dostat do uličky?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"Hele, jdi si hrát na hrdinu, jestli chceš, ale mě z toho vynechej. Já zůstávám tady. Jestli ti nějakým zázrakem nevyrvou vnitřnosti, možná se ještě uvidíme." Otočila se a znovu se ukryla ve stínu.~ */
  IF ~~ THEN REPLY #36207 /* ~"Když se nad tím zamyslím... asi bych tam neměl jít."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"Možná existuje další cesta, jak se kolem těch zvířat dostat bez boje. Vedou tam další dveře. Viděla jsem tam dřevěné bedny, u té stěny, kde by měly být ty dveře. Možná by se dalo proplížit z tamtěch dveří do východu na druhé straně místnosti. Je tu jenom jeden problém..."~ */
  IF ~~ THEN REPLY #36209 /* ~"A to je?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"Vždycky jsou problémy... jinak by nebyla žádná sranda."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"To nic. Já mám vlastních problémů dost."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"Dveře jsou zamčené. Zkoušela jsem to. Tipla bych si, že klíč má některej hajzl nahoře. Ale já nejsem dost šílená na to, abych se jich šla zeptat." Založila si ruce a dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #36212 /* ~"Jestli je klíč nahoře... najdu ho. Sbohem."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~V Doupěti Hrdlořezů jsem narazil na dívku jménem Sybil. Je uvnitř v pasti, kvůli gangu Chaotiků, kteří mají nějaký sraz v místnosti, ze které vede východ do Uličky neustálých vzdechů. Řekla mi o dalších dveřích do té místnosti, pomocí kterých by se dalo proklouznout kolem hrdlořezů bez boje. Souhlasil jsem, že najdu klíč k těmto dveřím, které by měl u sebe nejspíš mít některý z chlápků ve vyšších patrech Doupěte.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"Tak nic. Zkusím to s těmi šílenci."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"Jak ti připadá to, co tu dělám? Schovávám se. Přišla jsem sem pro... jídlo." Všiml sis, že se jí při řeči ruka instinktivně přiblížila k váčku u pasu. "Jenomže se tam objevili ti štěkající hňupové a rozhodli se, že si tam udělají párty, takže jsem v pasti a nemůžu se dostat ven."~ */
  IF ~~ THEN REPLY #36214 /* ~"Štěkající idioti?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"Hledáš jídlo, jo? A co máš v tom váčku?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"Lžeš. Jsi zloděj."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~Je tady ozvěna nebo co? Ano, štěkající idioti. Patří ke gangu Hladových psů, bandě šílených Chaotiků, kteří zamořují tuhle část Úlu."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"Chaotici? Patřím k nim. Nechají mě projít."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"Kolik jich tam je?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"Nechápeš to, co? Psi jsou ještě šílenější, než průměrní Chaotici. Člen nebo ne, jdi tam a seš mrtvola."~ */
  IF ~~ THEN REPLY #36221 /* ~"Kolik jich tam je?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"Díky za varování. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~Málem odpověděla, ale zarazila se. Chvíli si tě prohlíží a pak pokrčí rameny. "Dobře, dobře... jsem zlodějka. Děvče si musí nějak vydělávat. Co je ti po tom? Nejseš určitě Harmoniák, a už vůbec nepatříš k těm divochům támhle."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"Máš pravdu... Ani já sem nepatřím. Nevíš o jiném způsobu, jak se dostat do uličky?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"Vždycky bych tě mohl vydat grázlům... možná že mě za odměnu nechají projít."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"Kolik jich tam je?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"Ha! To neuděláš. Ta zvířata ti dřív rozbijou lebku. Kromě toho... můžu ti pomoct."~ */
  IF ~~ THEN REPLY #36227 /* ~"Pomoct mi? Jak?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"Nemám zájem o pomoc od kapsářského kousku shnilých odpadků. Dám tě těm grázlům."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"Tak nic. Zkusím to s těmi šílenci."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"Zase ty?" Sybil vypadá podrážděně, ale taky to vypadá, že se ji trochu ulevilo, když tě uviděla. "U vybuchujícího Baatoru, kámo! Nemůžeš dělat ještě větší randál? Slyšela jsem tě celou dobu, cos šel po hale."~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"Co je za dveřmi?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"Je to ten klíč, o kterém jsi mluvila?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"Postaral jsem se o ty grázly, co blokovali východ. Už můžeš odejít."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"Jak to mám vědět? Proč nejdeš za roh a nezkusíš ty dveře otevřít? Budu to sledovat tady škvírou ve dveřích. Jestli se ti podaří dostat se do uličky v jednom kuse, půjdu hned za tebou."~ */
  IF ~~ THEN REPLY #36235 /* ~"Sbohem tedy."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"Musím říct, kámo... děláš na mě dojem. Byla jsem si jistá, že tě ta zvířata sežerou zaživa. No, asi bych ti měla poděkovat." Na chvíli se odmlčela a pak z váčku vytáhla malý, zelený kámen. "Tady... to je za psy. Měj se, kámo."~ */
  IF ~~ THEN REPLY #36236 /* ~"Sbohem, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~Díky mé snaze se Sybil podařilo bezpečně uprchnout z Doupěte Hrdlořezů. Mám tak nějak pocit, že se brzy zase dostane do nějakého problému.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"Jestli budeš žít tak dlouho, abys našel ten klíč, pak najdeš dveře v jihovýchodní místnosti. Budu to sledovat ze stínů. Když se ti podaří dveře odemknout a dostat se do Uličky v jednom kuse, budu hned za tebou."~ */
  IF ~~ THEN REPLY #50009 /* ~"Takže sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"Musím říct, kámo... jsem ohromena. Byla jsem si jistá, že tě ta zvířata úplně roztrhají. No, asi bych ti měla poděkovat." Na chvilku se odmlčela, pak sáhla do svého váčku a vytáhla malý zelený drahokam. "Tady... ten jde na Psy. Měj se, kámo."~ */
  IF ~~ THEN REPLY #50011 /* ~"Sbohem, Sybilo."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
