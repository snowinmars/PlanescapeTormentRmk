// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~SKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~Vypadá to jako jakýsi druh deníku. Listy jsou z kusů lidské kůže napjaté v kostěných rámech. A co je zvláštní, zdá se, že se jednotlivé pruhy kůže na jedné straně zhojily dohromady a vytvořily tak hřbet provizorní knihy. Navíc kůže obálky je jiná, než ta, která tvoří stránky. ~ */
  IF ~~ THEN REPLY #60403 /* ~Prozkoumej obal.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~Prozkoumej kůži.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~Prozkoumej rámeček.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~Otevři kostěný rámeček. ~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~Nechej ten zvláštní deník být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~Povrch kožených listů je popsán shluky symbolů, psaných nejspíš krví, ale ať se snažíš sebevíc, nedávají smysl; vypadají jako zvláštní druh písma, ale zdá se, že jsou zapsány naruby, zprava doleva a tak klikatě, až tě z koukání na ně bolí oči. ~ */
  IF ~~ THEN REPLY #61192 /* ~Prozkoumej kůži.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~Prozkoumej rámeček.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~Otevři kostěný rámeček. ~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~Nechej ten prapodivný deník být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~Kůže má stejně bledou barvu, jako tvoje vlastní; tento zjizvený šedý povrch ti připomíná kůži zombie, a stránky samotné spíše vypadají, jako vyrobeny z vydělávané kožešiny, nežli z kůže.~ */
  IF ~~ THEN REPLY #61197 /* ~Prozkoumej povrch.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~Prozkoumej rámeček.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~Otevři kostěný rámeček.  ~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~Nechej ten prapodivný deník být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~Navzdory hrubému písmu musíš uznat, že konstrukce kostěných rámečků je docela komplikovaná; kosti byly vyřezány tak, aby všechny držely úhledně pohromadě. Vypadá to, že jedna kost od druhé může být uvolněna, a dovolí tak deník oteřít a číst. ~ */
  IF ~~ THEN REPLY #61202 /* ~Prozkoumej povrch.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~Prozkoumej kůži.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~Otevři kostěný rámeček. ~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~Nechej ten prapodivný deník být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~Za doprovodu jemného klapnutí jsi otevřel kostěný rámeček. Poté jsi začal studovat stránky knihy... jsou popsány stejnými shluky podivných symbolů jako vnější obal, a stějně tak ti nedávají žádný smyl. ~ */
  IF ~~ THEN REPLY #61207 /* ~Zkus rozluštit symboly.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~Zavři rámeček a nechej deník být.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~Zdá se, že symboly nemají žádný řád - aspoň ne takový, který bys dokázal postřehnout. Úhly písma a obrázků se zdají být naprosto svévolné, ale nemůžeš to říci zcela jistě.~ */
  IF ~~ THEN REPLY #61210 /* ~Pokus se opět rozluštit symboly.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~Zavři kostěný rámeček a dej ten deník stranou.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~Když jsi ho zavíral, napadla tě náhle zvlástní myšlenka - že stránky uvnitř deníku *nemají* dávat žádný smysl. Žes ty... ať užs byl tou dobou kdokoli... jsi tyhle podivné syboly zapsal, aby oklamaly každého, kdo by se pokusil odhalit tajemství deníku. To musí být ukryto někde jinde, nejpravděpodobněji v rámečku.~ */
  IF ~~ THEN REPLY #61213 /* ~Prozkoumej kostěný rámeček.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~Jak jsi zkoumal hranu rámečku, všiml sis, že jedna z kostí má na konci sotva patrnou zlomeninu; přejel jsi po jejím kraji rukou a vyškubl horní část kosti, která odhalila tajnou schánku. V ní jsi našel malý, srolovaný aršík kůže.~ */
  IF ~~ THEN REPLY #61215 /* ~Vyndej ho a zkus ho přečíst.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~Kožený list je pokryt písmem; zdá se, že ho někdo znovu a znovu přepisoval, dokud nebyl skoro nečitelný. Nicméně se ti podařilo rozlušit nejaká slova a symboly...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"UVězNěn UvěZněn Co SI PANÍ pŘála je naplněno Střez se hněvu... MNOHO jSeM ZABIL, Mnoho JSem zaškrtil, ZabiL a zastavil vzduch v jejich HRdleCH... tam je CESTA VEN vím to a pak se budu té OstNaté jenom smát..."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"...JEDEN z oblouků je cesta VEN, JEDEN z nich, JEDEN vede ven, Nemůžu projít VŠEMI najednou... jen jedním, možná - možná bych měl jedním projít a PAK vejít do stejného portálu..."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~Písmo vyůstilo v nečitelnou mazanici. Z nějakého důvodu máš pocit, že to byl poslední zápis... tvá inkarnace buď zemřela, nebo nějakým způsobem uprchla.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~Zavři deník a dej ho stranou.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~Našel jsem jeden svůj deník z bludiště Paní Bolesti. Byl v něm arch kůže, popsaný neuspořádaným a bláznivým záznamem. Ať už jsem byl při psaní toho záznamu kdokoli, určitě jsem byl už jen pár kroků od portálu.. ~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~Zavři deník a dej ho stranou.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~Tahle věc vypadá jako zvláštní deník. Listy z vysušené lidské kůže jsou napnuty přes kostěné rámečky a ve švech jsou zváštně scelené dohromady, vytvářejíce tak hřbet knihy. Zdá se, že vnějsí kožený obal slouží jenom jako ochrana před poškozením pro vnitřní archy z jemnější kůže, skryté uvnitř kostěného rámečku.~ */
  IF ~~ THEN REPLY #61225 /* ~Otevři kostěný rámeček a přečti si kožený útržek...~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~Dej ten zvláštní deník stranou.~ */ EXIT
END
