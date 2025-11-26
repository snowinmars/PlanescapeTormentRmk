// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~Tato malá kovová hračka je replika tvora vypadajícího jako krychle a má obrovské oči na jedné ze stran. Hračka má dvě nohy, dvě ruce, dvě složená křídla a alespoň osmnáct kloubů. Možná je to sběratelský předmět.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Manipuluj s hračkou a hledej nějakou reakci.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Zahýbej rukama a vyvolej hluk jako při šermování.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Ohni levé koleno, aby noha svírala úhel patnáct stupňů, roztáhni obě křídla na maximum a nakonec otoč pravou rukou o 180 stupňů.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Dej krychli pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~Jak pohybuješ mechanickým strojkem, hračka *cvaká* a *bzučí*. Během chvilky přemůže drobná krychle každého imaginárního nepřítele, kterého si proti ní poslal a vrátí se do normální pozice. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Manipuluj s hračkou a hledej nějakou reakci.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Zatřes tomu rukama a řekni nazdar.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Zatřes tomu rukama a řekni nazdar.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Zatřes tomu rukama a řekni nazdar.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Zatřes tomu rukama a řekni nazdar.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Ohni levé koleno, aby noha svírala úhel patnáct stupňů, roztáhni obě křídla na maximum a nakonec otoč pravou rukou o 180 stupňů.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů. ~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Dej krychli pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Hordy imaginárních příšerek provolávají slávu vítězství krychle. Téměř až vidíš malou olejnatou slzu tekoucí z jejích očí... to je hrdina, největší krychle, která kdy putovala Sférami a všichni ji milují. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Manipuluj s hračkou a hledej nějakou reakci.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Ohni levé koleno, aby noha svírala úhel patnáct stupňů, roztáhni obě křídla na maximum a nakonec otoč pravou rukou o 180 stupňů.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Dej krychli pryč pro budoucí boje proti mnohovesmíru.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Dej krychli pryč pro budoucí boje proti mnohovesmíru.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Hordy imaginárních příšerek všech Sfér provolávají slávu vítězství krychle. Téměř až vidíš malou olejnatou slzu tekoucí z jejích očí... to je hrdina, největší krychle, která kdy putovala Sférami a všichni ji milují. Ve tvých představách se s ní Fall-from-Grace a Annah objímají a v polibcích mizí ve sprše.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Manipuluj s hračkou a hledej nějakou reakci.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Ohni levé koleno až do úhlu patnácti stupňů, roztáhni obě křídla na maximální délku, potom otoč pravou paží v její objímce o 180 stupňů.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Ohni levé koleno, aby noha svírala úhel patnáct stupňů, roztáhni obě křídla na maximum a nakonec otoč pravou rukou o 180 stupňů.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Ohnout levé koleno tak, až k noze zaujme patnácti-stupňový úhel, rozvinout obě křídla do maximální šíře, pravou ruku pak v kloubu otočit o 180 stupňů.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Zanaříkej a dej krychli pryč pro budoucí boje proti mnohovesmíru.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Zanaříkej a dej krychli pryč pro budoucí boje proti mnohovesmíru.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~Ozve se *whirrrr* a *klik* a pak v tvých rukou najednou exploduje oslepující bílé světlo...~ */
  IF ~~ THEN REPLY #22847 /* ~"Což...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~Ozve se *whirrrr* a *klik* a pak *klik-klik-klik* a pak hluboké *whirrr.* Nic se nestalo. ~ */
  IF ~~ THEN REPLY #22869 /* ~Utěš se tím, že pohneš rukama a vytvoříš zvuk, jaký vydává meč v boji.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"Fajn, nefunguje to. Dám tě pryč a zkusím to na jiném místě."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~Ohýbáš, kroužíš a točíš hračce s různými klouby, shledáváš, že končetiny se často náhle vracejí do svých původních pozic. Nakonec, jak jsi ohnul její levé koleno, hračka udělala zvláštní *třesk!* a zachvěla se ti v rukou...~ */
  IF ~~ THEN REPLY #42940 /* ~Otoč levou paží.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Otoč pravou paží.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Roztáhni levé křídlo.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Roztáhni pravé křídlo.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Ohni pravé koleno.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Odlož krychli.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~Končetiny hračky se náhle vracejí na své původní pozice s jemným *cvak.*~ */
  IF ~~ THEN REPLY #42952 /* ~Otoč levou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Otoč pravou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Natáhni levé křídlo.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Natáhni pravé křídlo.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Ohni levé koleno.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Ohni pravé koleno.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Odlož krychli.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~Hračka slabě *bouchá!* a chvěje se v tvých rukou.~ */
  IF ~~ THEN REPLY #42964 /* ~Otoč levou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Otoč pravou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Natáhni levé křídlo.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Natáhni pravé křídlo.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Ohni pravé koleno.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Odlož krychli.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~Hračka dělá jemný *vrčivý* zvuk.~ */
  IF ~~ THEN REPLY #42976 /* ~Otoč levou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Otoč pravou paži.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Natáhni pravé křídlo.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Ohni pravé koleno.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Odlož krychli.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~Hračka udělala jemně *hmmmm*, je čím dál teplejší na dotek.~ */
  IF ~~ THEN REPLY #42987 /* ~Otoč levou paži.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Otoč pravou paži.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Otoč pravou paží.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Otoč pravou paží.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Ohni pravé koleno.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Odlož krychli.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~Ozvalo se *vrrr,* *cvak,* pak náhle v tvých rukou vybuchlo oslepující bílé světlo...~ */
  IF ~~ THEN REPLY #42999 /* ~"Co...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
