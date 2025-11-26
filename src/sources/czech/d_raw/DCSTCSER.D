// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~Vidíš ustaraného muže středního věku. Když si všiml pozornosti, kterou mu věnuješ, lehce se ti uklonil.~ */
  IF ~~ THEN REPLY #9999 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~Nedívá se ti do očí, místo toho se soustředil na zemi před tvýma nohama. "Dobrý den. Jak ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #10002 /* ~"Můžeš se na mě dívat, když už se mnou mluvíš."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"Mám pro tebe nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~Na chvíli zvedl pohled, ale pak jej vrátil na zem před tvé nohy. "Jsem služebník, nehodí se, abych se ti díval do očí."~ */
  IF ~~ THEN REPLY #10006 /* ~"Dobře. Znáš své místo, tak je to správné."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"No, můj služebník nejsi, takže se na mě budeš dívat jako na sobě rovného."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"No jo. Mám pro tebe nějaké otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~Přikývl, ale stále drží pohled dole. "Ano, pane."~ */
  IF ~~ THEN REPLY #10011 /* ~"Hledám devu. Prý je tady v Curstu. Viděl jsi ho?"~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"Pověz mi o Curstu."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"Co se tady děje v poslední době?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"Kdo je tady šéf?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"To nic."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"O žádném devovi nevím, pane. Nedovedu si představit, že by nějaký byl v Curstu, nebo dokonce přímo ve městě." Na chvíli se odmlčel a přemýšlí. "Zeptal bych se v administrativní budově na náměstí. Ti by o takovém návštěvníkovi měli vědět."~ */
  IF ~~ THEN REPLY #10017 /* ~"Díky. Ale mám ještě pár dalších otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"Byl jsi velmi nápomocný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"Není toho moc co říct. Curst je bránové město na okraji Pustin. Je v něm brána do Carceri, kterou můžeš najít na náměstí..." Soustředěně svrašťuje obočí. "Nemyslím si ale, že je brána ještě otevřená. Má to něco společného s karanténou kvůli moru..."~ */
  IF ~~ THEN REPLY #10020 /* ~"Mor?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~Tón tvého hlasu ho donutil, aby rychle vše vysvětlil. "Ano, pane, ale nestarej se s tím. Zasažené oblasti města byly zapečetěné a všechno je pod kontrolou."~ */
  IF ~~ THEN REPLY #10022 /* ~"Uh... Fajn. Tak bych se tě chtěl zeptat ještě na něco dalšího."~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"Byl jsi velmi nápomocný. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"Novinky... no, slyšel jsem, že brzo bude nějaká poprava... jinak nic."~ */
  IF ~~ THEN REPLY #10025 /* ~"Kdo bude popraven a proč?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"Dobře. Potřebuju se tě zeptat ještě na něco."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"Aha. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~Pokrčil rameny. "Nevím. Nejsi to ani ty ani já, takže... záleží na tom vůbec?"~ */
  IF ~~ THEN REPLY #10029 /* ~"... řekl bych, že ne. Chci se zeptat ještě na něco jiného."~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"Aha. Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"To bude Tovus Giljaf. Najdeš ho v administrativním úřadě na náměstí."~ */
  IF ~~ THEN REPLY #10032 /* ~"Aha. Co mi můžeš říct o Tovusovi?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"Mnohé díky. Potřebuju se tě zeptat ještě na něco."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~V podstatě poprvé zvedl pohled a podíval se ti do očí. "Nic. Vůbec nic. Pokud máš otázky o jeho lordstvu, měl bys s nimi zajít za ním." Znovu snížil svůj pohled.~ */
  IF ~~ THEN REPLY #10035 /* ~"Dobře, Možná to udělám. Ještě se tě chci na něco zeptat."~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"Aha. No, budu muset jít. Sbohem."~ */ EXIT
END
