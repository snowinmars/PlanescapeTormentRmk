// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCINDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCINDER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34264 /* ~Vidíš velkého, vztekajícího se obchodníka. Je úplně plešatý a jeho světle žlutá kůže je zjizvená, jakoby od popálenin. Soustředěně na tebe zírá.~ */
  IF ~~ THEN REPLY #34265 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #34266 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34267 /* ~Usmál se na tebe. "Zdravím, já jsem Cinder. Slyšel jsem o tobě. Ty seš ten zjizvenej bezradnej, co pobíhá po Čtvrtích a ptá se kdekoho na kdeco. S čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #34268 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34269 /* ~"Sám vypadáš, že sis taky nějaké jizvy pořídil."~ */ GOTO 13
  IF ~~ THEN REPLY #34270 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 5.0 9.0 10.0 13.1 14.1 15.0 16.0 17.1 18.2 20.1 21.2 22.2 23.1 24.2 25.1 26.1 28.1
  SAY #34271 /* ~"Rád ti odpovím na otázky..." Lstivě se usmál. "O obchodě a zboží. Nejsem turistický průvodce."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34272 /* ~"Hledám někoho jménem Lothar, nebo se mu taky říká Pán Kostí..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34273 /* ~"Měl jsem lebku a někdo mi ji ukradl. Neznáš někoho, kdo by mohl něco takového udělat?"~ */ GOTO 4
  IF ~~ THEN REPLY #34274 /* ~"Chtěl bych si koupit nějaké zbraně."~ */ GOTO 9
  IF ~~ THEN REPLY #34275 /* ~"Chtěl bych si koupit nějaké magické předměty."~ */ GOTO 10
  IF ~~ THEN REPLY #34276 /* ~"Zajímám se o kouzla."~ */ GOTO 11
  IF ~~ THEN REPLY #34277 /* ~"Co je tohle za místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #34278 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34279 /* ~Zamračil se a přemýšlí. "Lothar... Pán... ne, nic mi to neříká."~ */
  IF ~~ THEN REPLY #34280 /* ~"Aha. Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #34281 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #34282 /* ~Zamračil se. "Lebku?l? Myslíš... lebku?"~ */
  IF ~~ THEN REPLY #34283 /* ~"Ano, lebku."~ */ GOTO 5
  IF ~~ THEN REPLY #34284 /* ~"Ne, dělám si legraci."~ */ GOTO 6
  IF ~~ THEN REPLY #34285 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34286 /* ~Zmateně se na tebe podíval. "Nevidím žádnej důvod, proč bys měl mít lebku a už vůbec nechápu, proč by ti ji měl někdo ukrást."~ */
  IF ~~ THEN REPLY #34287 /* ~"Aha. Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #34288 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #34289 /* ~Naštvaně se podíval. "Je jasný, že ty mluvíš o koze a já o voze, kámo. Přijď zpátky, až budeš chtít udělat nějakej kšeft."~ */
  IF ~~ THEN REPLY #34290 /* ~"Mám na tebe ještě pár dalších otázek..."~ */ GOTO 7
  IF ~~ THEN REPLY #34291 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #34292 /* ~Vypadá vztekle. "Nestarám se o tvý otázky. Chceš si něco *koupit*? Nejsem člověk, kterej by měl čas postávat tady pár století a odpovídat na tvý pitomý otázky. Jestli si chceš pokecat, promluv si s tím neschopným klukem Lazlem. Ten je na tom ještě hůř než ty, taky by vykecal z jalový krávy tele."~ */
  IF ~~ THEN REPLY #34293 /* ~"Lazlo?"~ */ GOTO 8
  IF ~~ THEN REPLY #34294 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34295 /* ~Přikývl. "Většinou se stará o pec."~ */
  IF ~~ THEN REPLY #34296 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #34297 /* ~Mávl rukou a ukázal na tržiště. "Tak to chceš, Anze. Je támdle u pece."~ */
  IF ~~ THEN REPLY #34298 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34299 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #34300 /* ~Mávl rukou a ukázal na tržiště. "Tak to chceš, Aaleka. Je támdle na konci u pece."~ */
  IF ~~ THEN REPLY #34301 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34302 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.4 16.1
  SAY #34303 /* ~Usmál se. "Myslím, že ti můžu pomoct. Ukážu ti své zboží."~ */
  IF ~~ THEN REPLY #34304 /* ~"Dobře."~ */ DO ~StartStore("Cindstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34305 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #34306 /* ~Prázdný uzel~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #34310 /* ~Zamračil se a pak se málem rozesmál. "Jo, to jo. Před pár lety jsem měl bejvák v Úlu. Nějakej bláznivej mágusák se rozhod, že mi tu díru vypálí. Málem mě dostal taky. Byl jsem mimo měsíc."~ */
  IF ~~ THEN REPLY #34311 /* ~"Měsíc? To není moc dlouho."~ */ GOTO 14
  IF ~~ THEN REPLY #34312 /* ~"Aha. Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34313 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34314 /* ~Přikývl a na chvíli se zahleděl do dáli. "Jo, mohlo to bejt horší. Místní mág mě vyléčil, vyhladil jizvy a tak. Mohl mi nechat narůst i vlasy, ale mě se to nějak zalíbilo."~ */
  IF ~~ THEN REPLY #34315 /* ~"Myslíš, že by mi ten mág mohl pomoci s mými jizvami?"~ */ GOTO 15
  IF ~~ THEN REPLY #34316 /* ~"Aha. Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34317 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34318 /* ~Prohlédl si tě a pak pokrčil rameny. "Nevidím důvod, proč ne. Nevypadají tak zle..." Prohlíží si tě zblízka. "I když já se v tom nevyznám. Promluv si s ním sám. Jmenuje se Sebastion, má místo támdle u pece."~ */
  IF ~~ THEN REPLY #34319 /* ~"Možná to udělám. Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34320 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #34321 /* ~Cinder se na tebe usmál. "Zase zpátky, co? Co ti můžu ukázat tentokrát?"~ */
  IF ~~ THEN REPLY #34322 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34323 /* ~"Potřebuju nějaká kouzla."~ */ GOTO 11
  IF ~~ THEN REPLY #34324 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.5
  SAY #34325 /* ~Pyšně ukázal kolem sebe. "Je to tržiště pod otevřeným nebem, nejlepší obchoďák v Sigilu. Máš štěstí, že jsi sem dorazil, kámo. Máme prázdnej stánek." Ukázal na vedlejší stánek. "Pokud chceš zkusit štěstí jako obchodník, přidej se k nám a kšeftuj s náma, pokud nebudeš moc hlasitej nebo otravnej..."~ */
  IF ~~ THEN REPLY #34326 /* ~"Proč je ten stánek prázdný?"~ */ GOTO 18
  IF ~~ THEN REPLY #34327 /* ~"Zapamatuju si to. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34328 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34329 /* ~Blýsknul okem na stánek. "Bejval tam obchodník Zac. Nedávno se nechal zapsat do Knihy mrtvejch." Zamračil se. "Podivnej příběh."~ */
  IF ~~ THEN REPLY #34330 /* ~"Jak podivný?"~ */ GOTO 19
  IF ~~ THEN REPLY #34331 /* ~"Kniha mrtvých?"~ */ GOTO 25
  IF ~~ THEN REPLY #34332 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34333 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 25.0
  SAY #34334 /* ~Chvíli přemýšlí. "No... nevím o tom všechno, ale Zac měl trochu finanční problémy. Vzal si půjčky od Byrona Pikita, lichváře. Pak se Pikit pokoušel převzít Zacův kšeft, ale Zac odmítl." Odmlčel se.~ */
  IF ~~ THEN REPLY #34335 /* ~"Pokračuj."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #34336 /* ~Povzdychl si a zavrtěl hlavou. "Chvíli po tom byl Zac mrtvej. Pikit vzal jeho vdovu Trist k soudu, aby dostal prachy, co mu Zac dlužil. Prohlásila, že půjčka byla zaplacená a že má papíry, které to dokážou... ale ty se nějak ztratily."~ */
  IF ~~ THEN REPLY #34337 /* ~"Tak co se stalo?"~ */ GOTO 21
  IF ~~ THEN REPLY #34338 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34339 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34340 /* ~Pokrčil rameny. "Bez důkazu, že je dluh zaplacenej, byl kšeft prodanej a vdova Trist je zodpovědná za zbytek dluhu. Nemohla zaplatit, takže je to pro ní bloknutý."~ */
  IF ~~ THEN REPLY #34341 /* ~"Bloknuté?"~ */ GOTO 22
  IF ~~ THEN REPLY #34342 /* ~"Řekls něco o ztracených papírech."~ */ JOURNAL #31880 /* ~Někdo jménem Byron Pikit asi dělá nějaké pochybné obchodní dohody. Vypadá to, že asi zabil obchodníka jménem Zac a ukradl Trist, vdově po Zacovi, nějaké dokumenty. Bez těchto dokumentů nemůže Trist prokázat, že zaplatila nějaké půjčky a bude prodána do otroctví, aby se dluh pokryl. Možná bych se na to měl podívat.~ */ GOTO 24
  IF ~~ THEN REPLY #34343 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34344 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #34345 /* ~"Jó, aukční blok. Pokaď nemůžeš zaplatit dluhy, prodaj tě za trest do služby na pár let." Smutně zavrtěl hlavou.~ */
  IF ~~ THEN REPLY #34346 /* ~"Kde můžu najít aukční blok?"~ */ GOTO 23
  IF ~~ THEN REPLY #34347 /* ~"Řekls něco o ztracených papírech."~ */ JOURNAL #31880 /* ~Někdo jménem Byron Pikit asi dělá nějaké pochybné obchodní dohody. Vypadá to, že asi zabil obchodníka jménem Zac a ukradl Trist, vdově po Zacovi, nějaké dokumenty. Bez těchto dokumentů nemůže Trist prokázat, že zaplatila nějaké půjčky a bude prodána do otroctví, aby se dluh pokryl. Možná bych se na to měl podívat.~ */ GOTO 24
  IF ~~ THEN REPLY #34348 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34349 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34350 /* ~"Jdi na sever vod tržnice. Nemůžeš to minout, je tam spousta lidí."~ */
  IF ~~ THEN REPLY #34351 /* ~"Řekls něco o ztracených papírech."~ */ JOURNAL #31880 /* ~Někdo jménem Byron Pikit asi dělá nějaké pochybné obchodní dohody. Vypadá to, že asi zabil obchodníka jménem Zac a ukradl Trist, vdově po Zacovi, nějaké dokumenty. Bez těchto dokumentů nemůže Trist prokázat, že zaplatila nějaké půjčky a bude prodána do otroctví, aby se dluh pokryl. Možná bych se na to měl podívat.~ */ GOTO 24
  IF ~~ THEN REPLY #34352 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34353 /* ~"Děkuju ti, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1 23.0
  SAY #34354 /* ~"Jo, Trist říkala, že její manžel Zac zaplatil celou půjčku a že má papíry, co to dokážou. Když pro ně zašla, byly fuč." Odfrkl si a vypadá vztekle. "Vsadím boty, že je za tím Pikit."~ */
  IF ~~ THEN REPLY #34355 /* ~"Kde můžu najít toho Pikita?"~ */ GOTO 26
  IF ~~ THEN REPLY #34356 /* ~"Stará se někdo o tuhle záležitost?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34357 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #66229 /* ~"Děkuju ti. Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY #34358 /* ~Divně se na tebe podíval. "Jo, seš blbej? Neváhal se zabít a zapsat do knihy mrtvejch."~ */
  IF ~~ THEN REPLY #34359 /* ~"Aha. Takže, říkal jsi mi něco o tom prázdném stánku."~ */ GOTO 19
  IF ~~ THEN REPLY #34360 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34361 /* ~"Děkuju ti. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 28.0
  SAY #34362 /* ~"Najdeš ho přímo před tržištěm, kámo. Nemůžeš to minout."~ */
  IF ~~ THEN REPLY #34356 /* ~"Stará se někdo o tuhle záležitost?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34363 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #34364 /* ~"Děkuju ti. Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.0
  SAY #66230 /* ~"Jo, Harmonium..." Odmlčel se na chvíli, pak si povzdychl. "Ale není žádný důkaz. Corvus, jeden ze strážců Harmonia na tržišti se velice zajímá o to, co se stalo se Zacem. Pokud by se něco našlo, měl by to vidět..."~ */
  IF ~~ THEN REPLY #66231 /* ~"Kde najdu Corvuse?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #66232 /* ~"Většinou ho najdeš támhle, blízko západního východu." Povzdychl si. "Chceš vědět ještě něco?"~ */
  IF ~~ THEN REPLY #66233 /* ~"Kde najdu Byrona Pikita?"~ */ GOTO 26
  IF ~~ THEN REPLY #66234 /* ~"Aha. Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #66235 /* ~"Děkuju ti. Teď budu muset jít. Sbohem."~ */ EXIT
END
