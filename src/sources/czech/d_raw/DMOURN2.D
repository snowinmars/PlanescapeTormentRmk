// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~Tato  Spalovačka je oděna v dlouhé a tmavé roucho, ruce ukryty v rukávech. Se skloněnou hlavou monotónně prozpěvuje v rovnoměrném rytmu společně s ostatními Spalovači kolem ní.~ */
  IF ~~ THEN REPLY #7081 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~Spalovačka tě nejspíš zaslechla, ale přesto nevzhlédla.~ */
  IF ~~ THEN REPLY #8242 /* ~"Chtěl bych s tebou na chvíli mluvit."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~Poslouchej jejich zpěv.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~Všichni Spalovači udržují stejný tón i rytmus. Každých pár minut vystoupá zpěv téměř ke křiku, pak ale opět utichne a připomíná ti hučení ozvěny. Když konečně ustane, Spalovači vyřknou pár vět vychvalujících Pravou smrt a poté se svým žalozpěvem začnou nanovo.~ */
  IF ~~ THEN REPLY #8251 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~Ponech je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~Spalovačka zatřásla hlavou. Nepřestala však zpívat a stále dodržuje ten samý tón i rytmus jako ostatní Spalovači kolem ní.~ */
  IF ~~ THEN REPLY #8253 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~"Truchlím za jednoho mrtvého."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~"Jsem tu kvůli někomu, kdo ztratil blízkého."~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~"Promiň, nerad jsem obtěžoval. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~Spalovačka tě nevnímá, místo toho opět sklopila svou hlavu a vrátila se ke zpívání.~ */
  IF ~~ THEN REPLY #8257 /* ~"Chtěl bych s tebou mluvit."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~Poslouchej jejich zpěv.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~Zanechej ji v pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~Truchlící náhle ustala a prohlédla si tě. "Cítíš utrpení pro toho, kdo zemřel?"~ */
  IF ~~ THEN REPLY #8266 /* ~"Ne. Ta smrt neprobouzí mé emoce."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~Pravda: "Ano... Jsem zodpovědný za smrt nevinné ženy, Deionarry. Ovšem nejsem znepokojen jen tím, ale cítím vinu i za zármutek, který jsem způsobil jejímu otci."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~Pravda: "Ano... Jsem zodpovědný za smrt nevinného muže, Xachariáše. Jeho odchod mě trápí."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~Pravda: "Ano... Jsem zodpovědný za smrt mnoha nevinných v mnoha sférách. Žal plynoucí z tohoto odhalení téměř nemůžu unést."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~"Nejde o mě. Je tu jedna žena, žena Angyarova, která ztratila syna. Teď jí sužuje bolest a žal."~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~Lež: "Ne, já, errr, vlastně jsem tu kvůli příteli, errr... Adahnovi -- On cítí ztrátu nad blízkým, který mu zemřel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~"Ano, ta nedávná smrt mi přinesla spoustu bolesti a utrpení."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Tedy, oh, předtím než k tomu dojdu, ještě bych se přeptal na..."~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~"Omlouvám se... ale spletl jsem se. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~"Budeme truchlit za tvou bolest a bolest jejího otce, pokud to tedy nevadí."~ */
  IF ~~ THEN REPLY #8274 /* ~"Kdybyste mohli, moc by to ulehčilo mé i její bolesti."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~"Budeme truchlit za tvou bolest, přeješ-li si tak."~ */
  IF ~~ THEN REPLY #8276 /* ~"Kdybyste byli tak hodní, hodně by mi to ulehčilo."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~"Budeme truchlit za tvou bolest, přeješ-li si tak."~ */
  IF ~~ THEN REPLY #8278 /* ~"Kdybyste byli tak hodní, hodně by mi to ulehčilo."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~"Budeme truchlit za její bolest, nebude-li jí to vadit."~ */
  IF ~~ THEN REPLY #8280 /* ~"Kdybyste byli tak hodní, hodně by jí to ulehčilo."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~"Budeme truchlit za jeho bolest, nebude-li mu to vadit."~ */
  IF ~~ THEN REPLY #8282 /* ~"Kdybyste byli tak hodní, hodně by mu to ulehčilo."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~"Ne, to není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~Spalovačka kývla o opět se vrátila k žalozpěvu.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~Poslouchej jejich zpěv.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~Poslouchej jejich zpěv.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~Spalovačka sklonila hlavu a opět se vrátila k žalozpěvu.~ */
  IF ~~ THEN REPLY #8292 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~"Truchlíme."~ */
  IF ~~ THEN REPLY #8293 /* ~"Kdo zemřel?"~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~"Myslel jsem, že vy Spalovači jste povzneseni nad truchlení a pocity."~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~"Tak to by prozatím bylo vše. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~"Netruchlíme za mrtvé. Truchlíme za živé."~ */
  IF ~~ THEN REPLY #8302 /* ~"Živé?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~"Emmm... aha. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~"Truchlíme za živé, jež cítí ztrátu nad tím, co odešel."~ */
  IF ~~ THEN REPLY #8311 /* ~"Proč?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~"Emmm... aha. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~"Duše odcházející vstříc Pravé smrti za sebou často zanechává živé pozůstalé. Je-li zemřelý milován, pak jeho odchod často doprovází žal a pocit ztráty."~ */
  IF ~~ THEN REPLY #8320 /* ~"Což je přirozeně..."~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~"Takže vy truchlíte za živé, protože..."~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~"Co je ta Pravá smrt?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~"Emmm... aha. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~"Žal a ztráta jsou velice silné pocity. Jako takové drží lidi v osidlech jejich existence a zabraňují jim dosáhnout Pravé smrti, když nadejde jejich čas. My truchlíme za živé, sklíčené podobnými pocity."~ */
  IF ~~ THEN REPLY #8331 /* ~"Co je ta Pravá smrt?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~"Emmm... aha. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~"Občas se jí říká konečná smrt. Pravá smrt je osvobozením od této stinné a bolestivé existence. Je osvobozením od pocitů. Osvobozením od smyslů. Osvobozením od těchto schránek."~ */
  IF ~~ THEN REPLY #8340 /* ~"To zní jako absolutní zapomenutí."~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~"A proto truchlíš za živé?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~"Emmm... aha. Měl bych ještě pár otázek..."~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~Spalovačka kývla. "Někteří to tak nazývají. Není to ale zcela výstižné."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~"Kvůli komu především truchlíte?"~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~"To není podstatné. Pověz mi ještě o něčem jiném..."~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~"Už jsem toho myslím slyšel dost. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~Spalovačka čeká.~ */
  IF ~~ THEN REPLY #8358 /* ~"Co to děláš?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~"Proč?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~"Truchlím za jednoho mrtvého."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~"Jsem tu kvůli jedné osobě, která ztratila blízkého."~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~"Chtěl bych poslouchat váš zpěv."~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~"Promiň, že jsem obtěžoval. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~Všichni Spalovači dodržují zcela stejný tón i rytmus. Avšak narozdíl od žalozpěvu, který jsi slyšel napoprvé, tento stále koluje, jako když vlny narážejí na pobřeží a opět se stahují. Při této myšlence se pohnula tvá paměť...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~Pokus se vzpomenout si...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~Pokus se vzpomenout si...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~Pokus se vzpomenout si...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~Pokus se vzpomenout si...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~Setřes vzpomínky.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~Neurčitě si vybavuješ, jak stojíš na vzdáleném pobřeží... někde jinde, někde daleko odsud. A někdo je s tebou, je to žena. Stojí po tvé levici, ale ty ji vidíš pouze koutkem oka a nedokážeš si vybavit její vzhled. Jak se snažíš obnovit si vzpomínky, náhle opadají...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~Vzpamatuj se.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~Vzpamatuj se.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~...a ty zase znovu stojíš se spalovačskými truchlícími. Jejich žalozpěv téměř zcela utichl. Náhle ustal, Spalovači promluvili několik vět o Pravé smrti a vrátili se zpět ke svému pění.~ */
  IF ~~ THEN REPLY #8370 /* ~Poslouchej znovu.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~Zanechej je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~Všichni Spalovači dodržují zcela stejný tón i rytmus. Avšak narozdíl od žalozpěvu, který jsi slyšel napoprvé, tento je zpíván mnohem výše, zní jako svištící šíp, jako vítr v kaňonu. Tento zpěv začal rychle a tak i skončil -- a když Spalovači utichli, promluvili několik slov o Pravé smrti a poté začali nanovo.~ */
  IF ~~ THEN REPLY #8372 /* ~"Mám na tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~Zanechej je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~Všichni Spalovači dodržují zcela stejný tón i rytmus. Avšak narozdíl od žalozpěvu, který si slyšel napoprvé, tento má jistý náboj a vitalitu -- tento zpěv je nepředvídatelný, tón jako by se měnil, když dorazí ke rtům zpívajících. Avšak přesto, že píseň se chvíli od chvíle mění, Spalovači pějí dokonale jako jeden. A když žalozpěv konečně téměř utichl, promluvila Spalovačka pár slov velebících Pravou smrt a poté začala píseň nanovo.~ */
  IF ~~ THEN REPLY #8374 /* ~"Mám na tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~Zanechej je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~Narozdíl od žalozpěvu, který jsi slyšel předtím, má tento stále stejný nádech a táhne se několik minut... připomíná ti vyzvánění mohutného zvonu. Po jeho skončení zůstali Spalovači na chvíli tišší, promluvili několik slov vychvalujících Pravou smrt a nato se opět vrátili ke zpívání.~ */
  IF ~~ THEN REPLY #8376 /* ~"Mám na tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~Zanechej je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~Narozdíl od žalozpěvu, který jsi slyšel předtím, je tento mnohem jemnější; chvílemi je dokonce tak tichý, že se mísí s hlukem ulice. Po dokončení písně upadli Spalovači do naprosté tichosti, vyřkli několik vět velebících Pravou smrt a opět začali zpívat.~ */
  IF ~~ THEN REPLY #8378 /* ~"Mám na tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~Zanechej je jejich zpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~Spalovačka se na tebe bezvýrazně podívala. "Náš zpěv se nezměnil. Od chvíle, co jsme začali, udržujeme stále ten samý."~ */
  IF ~~ THEN REPLY #8380 /* ~"Tvůj zpěv se změnil... Slyším rozdíly v tónech i rytmu."~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~"Výborně, nevadí."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~Spalovačka zatřásla hlavou. "Možná že jsi to ty, kdo se změnil." ~ */
  IF ~~ THEN REPLY #8382 /* ~"Mám jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~"Asi jo. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~"Truchlím za Iannise. Byl raněn ztrátou své první a poslední dcery, Deionarry."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~"Deionarra? Slyšel jsem o ní. Víš jak zemřela?"~ */ JOURNAL #27450 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který je nejspíš otec ducha, kterého jsem potkal v Márnici. Možná by Iannis mohl vědět něco více o vztahu mezi Deionarrou a mnou...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~"Mám ještě jiné otázky..."~ */ JOURNAL #27451 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který ztratil svou jedinou dceru Deionarru. Z nějakého důvodu mi ty jména připadají známá, ale nedokážu si je zařadit.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~"Děkuji. To je vše, co jsem potřeboval vědět."~ */ JOURNAL #27451 /* ~Spalovači mi řekli, že oplakávají muže jménem Iannis, který ztratil svou jedinou dceru Deionarru. Z nějakého důvodu mi ty jména připadají známá, ale nedokážu si je zařadit.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~"Truchlíme za tvou ztrátu nad odešlým."~ */
  IF ~~ THEN REPLY #8387 /* ~"Znovuzrodil jsem se. Ten, pro nějž jsi truchlil před naším rozhovorem, je ve větší nouzi než já."~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~"Mám ještě jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~"Děkuji. To je vše, co jsem potřeboval vědět."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~"Truchlíme za Ženu-Angyarovu, která cítí bolest nad odchodem svého blízkého."~ */
  IF ~~ THEN REPLY #8390 /* ~"Znovuzrodila se. Ten, pro nějž jsi truchlil před naším rozhovorem, je ve větší nouzi než ona."~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~"Mám ještě jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~"Děkuji. To je vše, co jsem potřeboval vědět."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~"Truchlíme za Adahna, který cítí bolest nad odchodem svého blízkého."~ */
  IF ~~ THEN REPLY #8393 /* ~"Oh... Adahn se znovuzrodil. Ten, pro nějž jsi truchlil před naším rozhovorem, je ve větší nouzi než on."~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~"Mám ještě jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~"Děkuji. To je vše, co jsem potřeboval vědět."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~Spalovačka kývla, poté sklonila hlavu a vrátila se k žalozpěvu.~ */
  IF ~~ THEN REPLY #8396 /* ~"Mám ještě jiné otázky..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~Poslouchej.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~Odejdi.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~Truchlící náhle ustala a začala si tě prohlížet. "Cítí ten, o kterém mluvíš, bolest a ztrátu k odešlému?"~ */
  IF ~~ THEN REPLY #8399 /* ~"Ne. To s jejich city nepohne."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~"Ano. Žena, manželka Angyarova, ztratila syna. Muka se nad ní vznáší."~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~Lež: "Oh, ano... můj příteli, oh... Adahn... právě ztratil někoho drahého. Cítí úzkost kvůli osobě, jenž zemřela."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~"Ano, tato nedávná smrt jim přinesla hodně úzkosti a bolesti."~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~"Omlouvám se... Pochybil jsem. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~"Budeme truchlit za tvou bolest, přeješ-li si tak."~ */
  IF ~~ THEN REPLY #8404 /* ~"Pokud můžeš, značně by to ulehčilo mé bolesti."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~"Ne, není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~"Události, jež doprovázeli její smrt, mi nejsou známé."~ */
  IF ~~ THEN REPLY #8406 /* ~"Mám ještě jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~"Výborně. To je vše, co jsem si přál vědět."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~"Budeme truchlit za její bolest, nebude-li to vadit."~ */
  IF ~~ THEN REPLY #8408 /* ~"Pokud můžeš, značně by to ulehčilo jejich bolesti."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~"Ne, není třeba. Sbohem."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~Na rozdíl od žalozpěvu, který jsi slyšel napoprvé, má tento mnohem hůře rozpoznatelný tón. Jak tak nasloucháš, uvědomuješ si, že tento zpěv zní podivně hluše, jako kdyby ho sám vítr pohlcoval. Přibližně po minutě ustali Spalovači ve svém pění, promluvili několik vět vychvalujících Pravou smrt a poté začali ze zpěvem od začátku.~ */
  IF ~~ THEN REPLY #8410 /* ~"Mám na tebe pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~Zanechej je jejich chvalozpěvu.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~"Truchlíme za toho, jenž podle tebe cítí žal ze ztráty blízkého."~ */
  IF ~~ THEN REPLY #8412 /* ~"Znovuzrodil se. Ten, pro koho jsi truchlil dříve je ve větší nouzi než-li ten o kom jsem mluvil já."~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~"Mám ještě jiné otázky..."~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~"Děkuji. To je vše, co jsem potřeboval vědět."~ */ GOTO 12
END
