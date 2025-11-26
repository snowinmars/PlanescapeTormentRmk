// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~Z tohohle muže je cítit pach zkaženého masa, dokonce i z dálky. I když je viditelně slabý a neschopný, jeho hrubé prsty a hladové oči způsobují, že vypadá nebezpečně, zatímco se prohrabává odpadky kolem. Způsob, jakým slintá a kroutí očima tě přivedl k myšlence, jestli náhodou není šílený.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"Zdravím..."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"Zdravím..."~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~Snaží se na tebe zaostřit, ale jeho oči mají vlastní rozum. Má hluboké oční důlky, oči jsou jakoby zapadlé až do lebky, jeho kůže je neuvěřitelně bledá a nemocná, pokrytá vyrážkami a nažloutlými oblastmi zkažené kůže, která brzy z těla odpadne. Pach, který z něj doslova vyzařuje, je příšerný. Když jsi otevřel ústa, abys promluvil, olízl si rty a polknul. "Séééš mrtvéééj?"~ */
  IF ~~ THEN REPLY #17231 /* ~"Cos to řekl?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"Jsi v pořádku"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"Tyyyy..." Znovu si olízl rty a dlouhými, vyzáblými prsty se začal škrábat a začal na tebe civět. "Tyyy mrt-váák?" jeho pohled na chvilku sklouzl k tvé levici, aby se pak opět zabodl do tebe. "Kaa-put? Kaput? Hhh-laaád." Natáhl ruku, aby se tě dotkl a přitom si oblízl drsné rty.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~Nechej ho dotknout se tě.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~Nechej ho dotknout se tě.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~Nenechej ho dotknout se tě.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~Jeho prsty putují po tvojí ruce podobny pavouku, snad jakoby hledaly kousek, co by mohly utrhnout. Znovu si oblízl popraskané rty a přitom mu z nich skanula nažloutlá slina. S nervy drásajícím zasténáním najednou jeho prsty pronikly tvojí pokožkou na ruce a kousek odtrhly. Poranění je minimální, ale při tvém současném zdravotním stavu toho víc ani nepotřebuješ. Hroutíš se, padáš na zem, mrtvý.~ */
  IF ~~ THEN REPLY #17237 /* ~Hotovo.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~Jeho prsty putují po tvojí ruce podobny pavouku, snad jakoby hledaly kousek, co by mohly utrhnout. Znovu si oblízl popraskané rty a přitom mu z nich skanula nažloutlá slina. S nervy drásajícím zasténáním najednou jeho prsty pronikly tvojí pokožkou na ruce a kousek odtrhly.~ */
  IF ~~ THEN REPLY #17239 /* ~Ustup.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~Jeho ruce uloví toliko vzduch v místě, kde jsi ještě před okamžikem postával. Sklíčeně zakňučí, podobně nakopnutému psu. "Hhh-hhl-áád."~ */
  IF ~~ THEN REPLY #17242 /* ~Ustup.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~Sleduješ ho a cítíš podivné hnutí v žaludku. V tomtéž čase se on zakousl do toho, co ještě před chvilkou patřilo tobě. Žvýká ten kousek pomalu, chvíli to trvá, než ho polkne. "Tyyy zhebl?"~ */
  IF ~~ THEN REPLY #17245 /* ~"Ne, já nejsem mrtvý."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"To ne, ale za chviličku budeš..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~Vymrštil ruku a drapl vykrmenou, tučnou ponravu, co se promenovala na poblíž stojící hromadě odpadků zjevně organického původu. Tvůj žaludek si o tom myslí svoje a důrazně tě varuje před napodobováním. On zatím tu lahůdku pomaličku rozkousal a polkl. "Tyyy kaput?" vyšlo z něj.~ */
  IF ~~ THEN REPLY #17249 /* ~"Ne, já nejsem mrtvý."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"Tyyy zhébl. Chuť tak." Poškrábal se pod hadry, přičemž jsi postřehl prst zavěšený na jeho krku, jednoduchý přívěšek vytvořený pomocí provázku. Ten prst má na sobě navlečený prsten. "Furt h-hl-laád."~ */
  IF ~~ THEN REPLY #17252 /* ~"Co tak obvykle jíš?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"Co je to zač ten prst s prstenem?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"Tyyy zdechl. Vidim." Poškrábal se pod hadry, přičemž jsi postřehl prst zavěšený na jeho krku, jednoduchý přívěšek vytvořený pomocí provázku. Ten prst má na sobě navlečený prsten. "Furt h-hl-laád."~ */
  IF ~~ THEN REPLY #17257 /* ~"Co tak obvykle jíš?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"Co je to zač ten prst s prstenem?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~Začenichal, znělo to jako podobné zvuky co vydává prase. "Zdechl."~ */
  IF ~~ THEN REPLY #17260 /* ~"Co je to zač ten prst s prstenem?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~Pohlédl dolů, rysy jeho tváře poničené nemocemi a těžkým životem se poskládaly do příšerného napodobení úsměvu, ve kterém bylo možno provést dentální prohlídku. Téměř kompletni. "Ssssváča." Vypadá, že po těch slovech by něco zakousl.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~Zastav ho.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~Zastav ho.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"Nežer to, radši si kousni do mě. Jsem čerstvější."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~"Lež:  Nejez to, já ti přinesu sakumprásk celé tělo. To bude lepší dlabanec než toto."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~Popadl jsi ho za ruku, což ho vyprovokovalo k útoku. V jeho rámci se ti zakousl do ruky a vyrval z ní pěkný kousek masa. Překvapilo tě to natolik, že jsi ho pustil... Poranění není nijak hrozné, ale při tvém současném zdravotním stavu toho víc ani nepotřebuješ. Hroutíš se, padáš na zem, mrtvý.~ */
  IF ~~ THEN REPLY #17273 /* ~Temnota tě přemáhá...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~Popadl jsi ho za ruku, což ho vyprovokovalo k útoku. V jeho rámci se ti zakousl do ruky a vyrval z ní pěkný kousek masa. Překvapilo tě to natolik, že jsi ho pustil... ani ne tak kvůli bolesti, co ti způsobil, jako spíš kvůli obavě, aby se mu něco nestalo. V zápalu boje bys ho totiž snadno přetrhl napůl, ani by nemrkl. On zatím pečlivě rozkousává svoji kořist a jeho zrak se vrátil k prstu-přívěšku.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~Zabraň mu ve snězení prstu s prstenem.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~Zabraň mu ve snězení prstu s prstenem.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"Nežer to, radši si kousni do mě. Jsem čerstvější."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~"Lež:  Nejez to, já ti přinesu sakumprásk celé tělo. To bude lepší dlabanec než toto."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~Usmál se a natáhl k tobě rozevřené ruce.~ */
  IF ~~ THEN REPLY #17281 /* ~"Napřed mi dej ten tvůj přívěšek, 'Morkožroute'~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~Nechej ho kousnout si.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~Nechej ho kousnout si.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Příliš pozdě sis uvědomil, že tvé tělo není ve stavu, kdy by mohlo přijmout další, byť jen jedinou ránu a zhroutil ses mrtvý na zem.~ */
  IF ~~ THEN REPLY #17286 /* ~Temnota tě přemáhá...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Bolest je trýznivá, ale Morkožrout v klidu sedí na zadku, jakoby se nechumelilo a s mlaskáním likviduje pochoutku, co právě získal.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"Tak... dej sem ten prst."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"Eh... Díky. Sbohem."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~Odejdi.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~Dychtivě přitakal a dovolil ti vzít si přívěšek.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~Nechej ho kousnout si.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~Nechej ho kousnout si.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~Nenechej se kousnout, odejdi.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~Jakmile jsi ustoupil a dostal se z jeho dosahu, počal lítostivě kňučet podoben psu odkopnutému svým pánem...~ */
  IF ~~ THEN REPLY #17294 /* ~Odejdi.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~Chňapl po svém přívěšku z prstu a přitiskl ho na hrudník. V tu chvíli vypadal vskutku dojemně. Zavrtěl hlavou. "Ne-e. Hll-laad!"~ */
  IF ~~ THEN REPLY #17295 /* ~"Když mi dáš svůj přívěšek, můžeš si ještě hryznout."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~Odejdi.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~Jeho oči se zaleskly a přestal myslet na prst visící mu na krku. "Tak jo."~ */
  IF ~~ THEN REPLY #17298 /* ~"Půjdu ti obstarat nějaké... maso... . Hlavně *nežer* ten prst, nebo ti nic nedám. Rozumíš?"~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~Zakňoural zničeně: "Hll-laad. Tyyy mrt-váák?" Rychle se přiblížil, zíraje na tvé ruce. "Kaput? Hll-llaaád." Napřáhl se aby se tě mohl dotknout, nažloutlá slina mu skanula po bradě.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~Dovolit mu dotknout se tě.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~Dovolit mu dotknout se tě.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~Nedovolit mu dotknout se tě.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~V okamžiku kdy odcházíš si strhl prst z krku a tento přívěšek spolkl, sakumprásk i s prstenem.~ */
  IF ~~ THEN REPLY #17307 /* ~Odejdi.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~Zakňučel bídně: "Hll-laaád."~ */
  IF ~~ THEN REPLY #17308 /* ~"Na... jen si ukousni z mého těla."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"To zamrzí. Sbohem."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~Rychle se k tobě přiblížil, přičemž zkormouceně skučel: "Hll-llaaád."~ */
  IF ~~ THEN REPLY #17313 /* ~"Proč mě sleduješ?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~Pravda: "Okamžitě za mnou přestaň lézt, nebo tě zabiju. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~Bluf:: "Okamžitě za mnou přestaň lézt, nebo tě zabiju. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"Přestaň mě sledovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~Poukázal na tvé ruce, přičemž začal produkovat sliny ve velkém. "P-Prst... hll-laaád!"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"Tak dobře, tady máš, kousni si do mojí ruky."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"Tak dobře, tady máš, kousni si do mojí ruky."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~Pravda: "Okamžitě za mnou přestaň lézt, nebo tě zabiju. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~Bluf: : "Okamžitě za mnou přestaň lézt, nebo tě zabiju. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"Přestaň mě pronásledovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Příliš pozdě sis uvědomil, že tvé tělo není ve stavu, kdy by mohlo přijmout další, byť jen jedinou ránu a zhroutil ses mrtvý na zem.~ */
  IF ~~ THEN REPLY #17329 /* ~Temnota tě přemáhá...~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Bolest je trýznivá, ale Morkožrout v klidu sedí na zadku, jakoby se nechumelilo a s mlaskáním likviduje pochoutku, co právě obdržel.~ */
  IF ~~ THEN REPLY #17330 /* ~"Už mě přestaň sledovat, řekl jsem to dost jasně? Sbohem."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~Zakňučel bídně: "Hll-laaád."~ */
  IF ~~ THEN REPLY #17331 /* ~"Tak na, tady máš... můžeš si ukousnout z mého těla."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"To zamrzí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"Mmm... mmasso. Už ne hll-laaád..?" Postava se natahuje po tvé ruce, přičemž jí sliny vytékají koutky úst zkroucenými do nepříčetného úsměvu.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~Nechej ho kousnout si.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~Nechej ho kousnout si.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~Vytrhni se mu a odejdi. ~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~Spráskl ruce v lakotném gestu. Povšiml sis, že už *hodně* dlouho nepodstoupil manikůru. "Hll-laaád! Tyyyy mmaš mmmaso ?" Vypadá skoro rozdováděně; žluté sliny stékají z jeho zbrázděných rtů.~ */
  IF ~~ THEN REPLY #17338 /* ~Lež: "Jasně, ale napřed sem dej ten přívěšek."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"Ne, doposud ne."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~Dychtivě přikývne, pak se zastaví a čenichá. "Tyyy ne-mmmáš mmaso! Tyyy lžeššš... lžeššš!"~ */
  IF ~~ THEN REPLY #17340 /* ~Lež: "Já... někde mi to muselo vypadnout. Hned jsem zpátky."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"Víš co... místo toho si ukousni kus z mého těla."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"Ne-e? Hll-laaád mmoc..." Pohlédl na přívešek, na prst a zažloutlým jazykem si olízl rty místy pokryté strupy.~ */
  IF ~~ THEN REPLY #17343 /* ~"Nežer to... hned se vrátím."~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"Víš co... místo toho si ukousni kus z mého těla."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Příliš pozdě sis uvědomil, že tvé tělo není ve stavu, kdy by mohlo přijmout další, byť jen jedinou ránu a zhroutil ses mrtvý na zem.~ */
  IF ~~ THEN REPLY #17346 /* ~Temnota tě přemáhá...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~Jeho zuby vnikly do masa tvého předloktí a jediným škubnutím odtud vytrhly žvanec masa. Bolest je trýznivá, ale Morkožrout v klidu sedí na zadku, jakoby se nechumelilo a s mlaskáním likviduje pochoutku, co právě obdržel.~ */
  IF ~~ THEN REPLY #17347 /* ~"Doufám... že to pomůže. Sbohem."~ */ EXIT
END
