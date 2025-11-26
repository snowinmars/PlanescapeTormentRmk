// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~Velké stvoření se tyčí do výšky devíti stop. Ohromné svaly obalují masivní kostru. Když ses přiblížil, zasmál se.~ */
  IF ~~ THEN REPLY #51206 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~Ignoruj stvoření.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~Podíval se dolů, na tebe, a přátelsky se přitom usmál. "Co tu chceš, malinkej?"~ */
  IF ~~ THEN REPLY #51209 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"Nic, sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"Ty máš otázku, možná Thorp má odpověď." Usmál se na tebe.~ */
  IF ~~ THEN REPLY #51212 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"Co tady děláš?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"Co mi můžeš říct o téhle čtvrti?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"Říkal jsi, že budeš bojovat s abishaiem?"~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"Mluvil jsem s Xanthiou. Říkala, že budeš bojovat s abishaiem?"~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~Bouchl se do hrudi, zahřmělo to jako při bouřce. "Thorp." Zvedl ruce nad hlavu a zatnutými pěstmi pohrozil obloze. "Mocnej bojovník, to Thorp být. Všickni Thokola oni mocnej bojovníci." Založil si ruce v bok a zadíval se na tebe. "A ty kdo?"~ */
  IF ~~ THEN REPLY #51219 /* ~Lži: "Jsem Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"Nepamatuju si své jméno."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~Chvíli přemýšlí a pak kývne. "To dobrej méno pro maličkej. Hezkej cink má. Thorp líbíš."~ */
  IF ~~ THEN REPLY #51222 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~Pokýval hlavou, zatímco si prohlédl tvé jizvy. "U tebe mocný jizvy. Ty seš velkej bojovník... jako Thorp!" Zamračil se a vědoucně pokýval hlavou. "Ty mlátiš se do hlavy moc mockrát. Nepamatuješ méno. To stává ono se. Začas ty vzpomeneš. Nebo až někdo zase bušíš do hlavy tebe tak rozsvítíš se ti v kebule."~ */
  IF ~~ THEN REPLY #51225 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~Vyštěkl smíchy. Pak se na tebe usmál. "Thorp tady s kámošema." Ukázal na druhé dva thokoly. "My zmlátíš e e... lítající ještěřica." Zařval a začal bušit ohromnými pěstmi do svého hrudníku.~ */
  IF ~~ THEN REPLY #51228 /* ~"Uh... lítající ještěrka?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~Přikývnul a začal předvádět plazivý pohyb. "Ještěřica, ty znáš... ale tadle lítáš." Začal mávat rukama jako obrovský pták. Nakonec se uklidnil a s očekáváním se na tebe dívá.~ */
  IF ~~ THEN REPLY #51232 /* ~"Myslíš draka?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~Odfrkl si a vztyčil se v celé své výšce. "Thorp, on dobré, ale von né tak dobrej. Možná jednou Thorp chceš rozbít hubu dragonovi..." Zadíval se do dálky s toužebným výrazem, pak si smutně povzdychl. "Ale todle eště nebýt ten den."~ */
  IF ~~ THEN REPLY #51236 /* ~"No, tak jestli to není drak, tak co to teda je?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"Thorp nepamatuješ, jak Xanthia říkáš mu..." Odmlčel se a přemýšlí. "To ještěřica, vysokej jak Thorp. Chodíš po zadních, máš křídla... máš pařáta... a červenej barva. Myslíš, ona říkáš oni... ábišaj?" Odmlčel se, pak pokrčil rameny.~ */
  IF ~~ THEN REPLY #51241 /* ~"Slyšel jsem o něčem jménem abishai. O tomhle mluvíš?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~Thokola jménem Thorp a jeho dva thokolí přátelé budou bojovat s abishaiem. Thokolové nevypadají zrovna na nějaké chytráky, ale o to víc vypadají tvrdě. Možná to zvládnou. ~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~Jeho oči se rozzářily, nadšeně se na tebe usmál a zuřivě zakýval hlavou. "Jo! Abishai... Lítající ještěřica. Thorp a Thorp kámoši rozbijou hubu jí moc. A Thorp pak opravdovej mlátič, bojovník. Xanthia pak omluvování přijmeš...~ */
  IF ~~ THEN REPLY #51246 /* ~"Co to bylo s Xanthií a omluvou?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"Thorp vemeš kámoše do hospy včera. Thorp ožralej jak bomba a práskneš hubou o stůl od Xanthia a ona celej politá chlastem." Vypadá rozpačitě. "Xanthia řekneš, ona nepřijímá omluva, pokud Thorp on opravdovej válečník."~ */
  IF ~~ THEN REPLY #51250 /* ~"Takže když zabiješ abisahie, budeš opravdový bojovník?"~ */ JOURNAL #67300 /* ~Vypadá to, že se Thorp a jeho přátelé opili a urazili v taverně dámu - celou ji polili pitím. Dáma jménem Xanthia odmítla přijmout Thorpovu omluvu, pokud neprokáže, že je opravový a statečný bojovník. Aby to dokázal, musí zabít abishaie.~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~Pokrčil rameny. "Xanthia říkáš tak. Thorp nevíš."~ */
  IF ~~ THEN REPLY #51254 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~Chvíli na tebe zírá, pak pokrčil rameny. "Thorp nevíš. Thorp novej." Usmál se na tebe jako děcko, které dostalo sadu pro malého popravčího. "Thorp tady kvůlivá sranda!"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"Jaká sranda?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"Ano, jdeš rozbít hubu abishaiovi."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"Jo, dete nabít hubu abishai."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~Usmál se a nadšeně zakýval hlavou. "Tak! Thorp a kámoši biješ hubu ábi-šaj!"~ */
  IF ~~ THEN REPLY #51260 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"Teď už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~Usmál se a nadšeně zakýval hlavou. "Tak! Thorp a kámoši biješ hubu ábi-šaj!"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"No, užij si to. Sbohem."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~Varuj Thorpa: "Zjistil jsem, že abishaiům můžeš ublížit jenom magickými zbraněmi."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~Varoval jsem Thorpa, že abishaiovi může ublížit pouze magií nebo magickou zbraní. Dobře jsem udělal, jinak by abishai určitě zabil jeho i s přáteli.~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~Nevaruj Thorpa: "No, užij si to. Určitě vyhraješ. Sbohem."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~Thorp zřejmě neví, že abishai je nezranitelný normálními zbraněmi. Mohl jsem ho varovat, ale proč ksakru? Může to být docela zábavný boj.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~Znepokojeně se na tebe podíval: "Potřebuješ magia? Jak ty víš?"~ */
  IF ~~ THEN REPLY #51267 /* ~"Ptal jsem se kolem, Thorpe. To mi řekli lidi."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"Mluvil jsem s Xanthií. Ona mi to řekla."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"Thorp nemáš magii. Kámoši nemáš magii. My chcípneš, když my jdeš na abishai..." Povzdychl si. "Thorp nebýt opravdovej bojovník. Xanthia nepřijmeš omluva."~ */
  IF ~~ THEN REPLY #51270 /* ~"Byl jsi ochotný riskovat život kvůli cti dámy, Thorpe. To udělá jenom opravdový bojovník."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~Chvíli na tebe prázdně zírá, pak se na jeho tváři objevil ohromný úsměv. "Vážně? Thorp a kámoši teď opravdoví bojovník?"~ */
  IF ~~ THEN REPLY #51272 /* ~"Ano. Považuj omluvu za přijatou."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"Thorp děkuješ ti. Ty zachráníš život. Ty zachráníš kámoše." Otočil se k ostatním thokolům a rychle jim něco řekl. Po chvíli se ti všichni tři uklonili a každý ti podal váček s mincemi.~ */
  IF ~~ THEN REPLY #51274 /* ~"Děkuju ti."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~Usmál se. "Ty dobrej kámoš. Ty zasloužíš."~ */
  IF ~~ THEN REPLY #51277 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~Chvíli vypadá zmateně, ale pak se mu na tváři objevilo porozumění. "Xanthia oblbneš Thorp... Ona lžeš, zkoušíš Thorp a kámoši zabitej..."~ */
  IF ~~ THEN REPLY #51279 /* ~"Obávám se, že je to tak, Thorpe."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~Přikývl. "Xanthia nezasloužíš omluva. Thorp volnej od ní."~ */
  IF ~~ THEN REPLY #51281 /* ~"Ano, už jí nic nedlužíš."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~Vidíš thokolu Thorpa. Přátlesky se na tebe zasmál. "Malej zpátky! Co malej chceš od Thorp?"~ */
  IF ~~ THEN REPLY #51283 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"Nic, sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~Vidíš thokolu Thorpa. Přátlesky se na tebe zasmál. "Malej zpátky! Co malej chceš od Thorp?"~ */
  IF ~~ THEN REPLY #66163 /* ~"Nic, jenom čekám na slavnou bitvu mezi tebou a tím abishaiem."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~Thorp ze sebe vypravil hromový výkřik a začal si bušit do prsou. "Thorp mocný válečník! Brzo Thorp věhlasný být." Uklidnil se a vážně se na tebe podíval. "Pak paní odpustit Thor hloupý být."~ */
  IF ~~ THEN REPLY #63466 /* ~"Sbohem, Thorpe."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~Vidíš Thorpa, thokolu. Obdaroval tě vstřícným úsměvem. "Přítel mrňous být zpět! Co on chtít od Thorp?" Nádherně se usmál. "Thor nezapomínat ty zachránit život."~ */
  IF ~~ THEN REPLY #66164 /* ~"Nic, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~Vidíš thokolu Thorpa. Přátelsky se na tebe zasmál. "Thorp děkovala, malinkej. Ty pomůžeš Thorp!"~ */
  IF ~~ THEN REPLY #66166 /* ~"Nemáš zač, Thorpe. Sbohem."~ */ JOURNAL #67303 /* ~Někdy se sám sobě divím. Bylo mi líto Thorpa a jeho přátel, tak jsem jim pomohl zabít abishaie. Co říct... Chvilková slabost na mé straně?~ */ EXIT
END
