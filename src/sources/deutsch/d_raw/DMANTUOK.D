// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~Du siehst eine Kreuzung aus Mensch und Ratte. In seinen roten Augen leuchtet etwas Listiges und er spricht mit einschmeichelnder Stimme. "Was haben wir denn da? Einen Zweifüßler, der bereitwillig die Hallen des Viele-als-Einer besucht? Was willst du, Mensch, und wohin gehst du? Sei vorsichtig, Eindringling, und sag' Mantuok die Wahrheit."~ */
  IF ~~ THEN REPLY #25665 /* ~"Ich wollte gerade gehen."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"Ich komme von der Begrabenen Stadt und hab' mich hier umgeschaut."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"Ich wollte dich sprechen."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"Wo ich herkomme, und wo ich hingehe, geht allein mich etwas an."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"Was *bist* du?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"Nein, Zweibeiner, das kannst du mir nicht erzählen. Und jetzt beantworte meine Frage: Was willst du, Zweibeiner, und wo willst du hin?"
~ */
  IF ~~ THEN REPLY #25670 /* ~"Ich komme vom Begrabenen Dorf und hab' mich hier umgeschaut."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"Wo ich herkomme, und wo ich hingehe, geht allein mich etwas an."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"Was *bist* du?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"Ich hab' gesagt, ich geh jetzt. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"Ah, dem Dorf. Hilf meinem Gedächtnis auf die Sprünge... die Aasgeier, stimmt's? Bist du zum Rumstöbern hierher gekommen?"~ */
  IF ~~ THEN REPLY #25674 /* ~"Ja, aber in diesem Loch lohnt sich das Rumstöbern ja nicht."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"Nein, bin ich nicht."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"Es lohnt sich nicht, Zweibeiner? Der einzige Abschaum, den ich in unserem schönen Zuhause ausmachen kann, bist DU. Und doch, fürchte ich, werden wir lernen müssen, mit dem Gestank zu leben, denn du wirst nie wieder das Tageslicht zu Gesicht bekommen."~ */
  IF ~~ THEN REPLY #25676 /* ~"Was meinst du damit?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"Willst du mir drohen?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"Da bin ich andrer Meinung."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"Nach dieser Antwort muß Mantuok wohl noch mal nachhaken: Warum bist du hier? Verlaufen, ein Fehltritt, eine Aneinanderkettung von Mißverständnissen, ja? Suchst du mich oder Viele-als-Einer? Oder womöglich weißt du gar nicht, warum du hier bist? Das wirst du mir jetzt mal erklären."~ */
  IF ~~ THEN REPLY #25679 /* ~"Es war eine Aneinanderkettung von Mißverständnissen."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"Ich suche Viele-als-Einer."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"Wer ist Viele-als-Einer?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"Ich wollte dich sprechen."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"Ich glaub, ich hab' hier gar nichts zu erledigen."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"Eine Aneinanderkettung von Mißverständnissen war es also, ja? Es wäre für dich viel besser gewesen, wenn es ein Mißverständnis weniger gegeben hätte, und du nicht hierher gekommen wärst."~ */
  IF ~~ THEN REPLY #25684 /* ~"Wie meinst du das?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"Dann stell ich das richtig, indem ich jetzt gehe..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"Sprich mit mir, Zweibeiner, und ich werde deine Botschaft den vielen übermitteln."
~ */
  IF ~~ THEN REPLY #25686 /* ~"Wie du meinst."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"Glaub ich nicht."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Mantuok beugt sich vor und spitzt die Ohren.~ */
  IF ~~ THEN REPLY #25688 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"Eigentlich hab' ich gar nichts zu sagen."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"Der Schweigende König ist zu stark, um angegriffen zu werden. Haltet euch von den Toten Landen fern, oder die Leichen werden euch vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~Er schnaubt verächtlich. "Das sagst du. Du wirst Zeit haben, diese Antwort zu überdenken - viel Zeit." Er hebt seine Hände, und aus den Fingern quillt Rauch hervor.~ */
  IF ~~ THEN REPLY #25693 /* ~"Was zum...?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"Du hast wirklich keinen blassen Schimmer, was? Klar ist, daß du aus Versehen hier hereingekommen bist. Du sollst nicht wieder gehen." Er hebt seine Hände, und aus den Fingern quillt Rauch hervor.~ */
  IF ~~ THEN REPLY #25695 /* ~"Wir können doch in Ruhe darüber sprechen..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"Was machst du da?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~Er hält inne und schlägt mit dem Schwanz. Er betrachtet dich eine Weile. "Hör ich schlecht, oder hast du mir eben gesagt, daß der Schweigende König nur ein Bluff der Totenbüchler ist? Ja, tatsächlich." Er schaut einen Moment zur Seite und dreht sich dann mit einem Siegesstrahlen in den Augen um. "Die Leichen werden bald keinen Mucks mehr machen, und wir werden uns an ihrem Fleisch satt essen..." Plötzlich schaut er dich mißtrauisch an: "... Wenn das kein fauler Trick ist. Du willst mit Viele-als-Einer sprechen, ja?"~ */
  IF ~~ THEN REPLY #25697 /* ~"Oh, kann ich jetzt endlich mit Viele-als-Einer sprechen?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"Ja. Denk dran: Sie kennen deine Worte bereits. Leb wohl. Wir sehen uns noch."~ */
  IF ~~ THEN REPLY #25698 /* ~"Na dann leb wohl."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Mantuok zischt. "Zu stark, ist er das? Hast du eine Demonstration seiner Macht gesehen? Bah! Erzähl das Viele-als-Einer. Diese Nachricht wirst du ihm persönlich überbringen! Komm mit."~ */
  IF ~~ THEN REPLY #25699 /* ~"Glaub ich nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"Gehen wir."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"Das war keine Bitte." Er hebt seine Hände, und aus den Fingern quillt Rauch hervor. Für einen Moment wird alles schwarz.~ */
  IF ~~ THEN REPLY #25701 /* ~"Was zum...?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"Du wolltest *mich* sprechen? Und wer hat dich mit diesem idiotischen Auftrag betraut?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"Soego."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"Niemand."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"Niemand. Ich hab' einfach angenommen, du seist hier der mit dem höchsten Rang."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~Er hält inne, als ob er dich einschätzen will. "Und warum hat der Priester des Staubs und der Asche das nicht auf dem üblichen Weg erledigt? Warum hat der Rattensohn Soego dafür keinen Kurier genommen? Bah. Egal. Mach hin, und sag, was du für eine Botschaft hast."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"Der Schweigende König ist zu stark, um angegriffen zu werden. Haltet euch von den Toten Landen fern, oder die Leichen werden euch vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"Er hat mir gesagt, daß ich nur mit Viele-als-Einer sprechen soll."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"Ich hab' eigentlich gar keine Botschaft."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~Der Schwanz der Werratte schlägt wild hin und her." Nun gut. Du sollst mit Viele-als-Einer sprechen. Tisch ihm keine Lügen auf, Zweibeiner, denn der Viele kann deine Gedanken so leicht lesen wie er deine Stimme hören kann."~ */
  IF ~~ THEN REPLY #25710 /* ~"Ich werd's mir merken."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"Deine Zunge ist im Ungleichgewicht zwischen Lüge und Lob, das Kennzeichen eines Betrügers. Sprich offen, ja, oder leide. Was willst du hier, und was suchst du? Hat dich vielleicht eine Aneinanderkettung von Mißverständnissen zu mir geführt? Was willst du hier?"~ */
  IF ~~ THEN REPLY #25711 /* ~"Es war eine Aneinanderkettung von Mißverständnissen."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"Ich suche Viele-als-Einer."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"Wer ist Viele-als-Einer?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"Ich glaub, ich hab' hier gar nichts zu erledigen."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"Und warum das? Was willst du von Viele-als-Einer?"~ */
  IF ~~ THEN REPLY #25715 /* ~"Ich hab' Neuigkeiten."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"Was ich hier will, geht dich gar nichts an."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"Nichts Besonderes."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~Er öffnet seinen Mund, um einen Schwall von Beschimpfungen über dich zu ergießen, doch dann blicken seine Augen in die Ferne, und er neigt seinen Kopf, als ob er eine Botschaft empfängt. Als sich seine Augen wieder auf dich richten, spuckt er aus: "Es wäre besser, du bringst deine Neuigkeiten vor, Zweibeiner, oder deine Folterqualen gehen in die Geschichte ein."
~ */
  IF ~~ THEN REPLY #25718 /* ~"Erspar mir die Drohungen. Gehen wir."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~"Ich bin die Stimme von Viele-als-Einer! Du wirst mir sagen, was dein Geschäft ist! Seine Stimme senkt sich und wirkt zunehmend glatt. "Du solltest es mir sagen, sonst solltest du... Schwierigkeiten bekommen, jaaa?""~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"Viele-als-Einer wird dich leiden lassen, wenn du versuchst, mir ein Haar zu krümmen, Mantuok."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"Ich will eigentlich gar nichts hier."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"Der Schweigende König ist zu stark, um angegriffen zu werden. Haltet euch von den Toten Landen fern, oder die Leichen werden euch vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~Mantuok fährt hoch und zischt. "Du widerlicher, ekelhafter Mensch. Bedrohst Mantuok. Bringst Mantuok keinen Respekt entgegen. Pfeifst auf seine Pflichten. Sprichst scharfe Drohungen gegen Mantuok aus. Du hast dir heut keine Freunde gemacht, Mensch. Geh zu Viele-als-Einer, und sag deinen Spruch auf."~ */
  IF ~~ THEN REPLY #25724 /* ~"Danke. Du warst wirklich eine große Hilfe."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~Du siehst einen Hybriden, der halb Mensch und halb Ratte ist. Aus seinen funkelnden roten Augen spricht eine gewisse Schläue und seine Stimme klingt ölig und schmeichelnd. "Schau an... da hat sich doch ein Zweibeiner ins Nest von Lothars Dienern eingeschlichen. Was willst du, Mensch, und wo willst du hin? Bedenke deine Worte, Eindringling, und sag Mantuok die Wahrheit."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"Ich erledige ein Aufgabe für Lothar. Ich muß einen Schädel besorgen."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"Wer bist du?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"Ich will mit der Person sprechen, die hier das Sagen hat."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~Der Rattenmensch zieht den Kopf ein, als du Lothar erwähnst, und zischt dich an. "Schicken sie jetzt schon einen Haarlosen, um die Arbeit des Rattenvolks zu machen? Unmöglich!"~ */
  IF ~~ THEN REPLY #29356 /* ~"Er sagte, du seist nutzlos und er brauche jemanden, dem er trauen könne. Und zwar mich."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"Was dagegen?"~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"Möchtest du etwas Käse, Mantuok?" Reich ihm den vergifteten Käse.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"Möchtest du etwas Käse, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Mantuok zischt dich erneut an. "Verschwinde und komm erst zurück, wenn der Schädel in deinen Händen ist." Er hält inne und sieht dich mißtrauisch an. "Hast du schon einen Schädel?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Reich ihm den vergifteten Käse hin. "Möchtest du etwas Käse, Mantuok?" ~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Reich ihm den Käse. "Möchtest du etwas Käse, Mantuok?" ~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"Ja."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"Noch nicht. Aber ich komme wieder und bringe ihn dir."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~Der Rattenmensch schnappt sich den vergifteten Käse aus deiner ausgestreckten Hand, schnuppert vorsichtig daran und beobachtet dich dabei voller Mißtrauen. Er verschlingt ihn und sein Körper wird von Krämpfen geschüttelt. Er fällt zuckend zu Boden und ein dünner Strom blutigen Speichels tritt aus seinem Mund. "Aaaah..."~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"Leb wohl, Rattenmensch."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"Fahr zur Hölle, Mantuok."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Mantuok schnappt sich den Käse aus deiner ausgestreckten Hand und schnuppert mißtrauisch daran. Er beugt sich über ihn und sagt: "Geh jetzt, Fremdling. Wir reden weiter, wenn du zurückkommst." Er fängt an, am Käse zu knabbern.~ */
  IF ~~ THEN REPLY #29370 /* ~"Guten Appetit, Mantuok."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~"Ich bin Mantuok. Ich bin die Stimme von Viele-als-Einer und der Gesandte von Lothar, dem Herrn der Knochen. Ich stelle hier die Fragen und du antwortest. Was willst du hier?"~ */
  IF ~~ THEN REPLY #29371 /* ~"Wer ist Viele-als-Einer?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"Wer ist Lothar?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"Du arbeitest für beide? Bekommst du da keine Probleme mit deiner Loyalität?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"Ich suche den Meister dieses Ortes."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"Das geht dich nichts an."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"Alles, was hier vor sich geht, geht mich was an. Sprich, oder mein Rattenvolk wird auf ewig von deinem Fleisch zehren."~ */
  IF ~~ THEN REPLY #29378 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"Ich suche den Meister dieses Ortes."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"Ich hab' schon mal gesagt, daß dich das nichts angeht."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Mantuok preßt seinen Mund zusammen und zischt zu sich selbst. "Also gut. Dann werde ich dein Blut schmecken und das Geheimnis deines Fleisches kennenlernen. Ratten! Zu mir!" Er schlägt zu.~ */
  IF ~~ THEN REPLY #29382 /* ~"Komm schon, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"An diesem Ort, Fleisch, stelle ich die Fragen. Ich beantworte keine. Was...willst... du... hier?"~ */
  IF ~~ THEN REPLY #29383 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"Ich suche den Meister dieses Ortes."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"Das geht dich nichts an."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"Du suchst Lothar? Du bist doch aus seinem Sanktuarium gekommen. Geh jetzt, und ich vergeß, daß ich dich gesehen hab'."~ */
  IF ~~ THEN REPLY #29388 /* ~"Wie du meinst."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"Den plappernden Schädel? Bah. Reine Zeitverschwendung. Ich hoffe nur, daß du dich mit dem Meister geeinigt hast, was du tun mußt, um deinen Freund zu retten. Denn anders kriegst du ihn nicht zurück."~ */
  IF ~~ THEN REPLY #29389 /* ~"Ich werd's mir merken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"Das kaufe ich dir nicht ab. Du mußt irgendwas im Rattennest vorhaben."~ */
  IF ~~ THEN REPLY #29390 /* ~"Dann gehe ich jetzt."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"Ja. Tu das. Und komm ja nicht zurück."~ */
  IF ~~ THEN REPLY #29391 /* ~"Ja ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Mantuok mustert dich genau und wägt seine Worte ab. "Glaub nicht, daß ich deine Worte vergessen werde, Mensch. Komm rein, wenn du willst, und sprich mit dem Meister. Aber denk dran, daß du bis ans Ende deiner Tage beobachtet wirst." Er tritt zur Seite.~ */
  IF ~~ THEN REPLY #29392 /* ~"Ich werd's mir merken."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"Und? Hast du den Schädel besorgt, den der Meister haben will?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"Ich habe einen Schädel."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"Ja, von einem Skelett."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"Ja, von einem Zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"Ja, von einem Ghul."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"Ja, von einer Werratte."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"Ja, von einem Skelett, das schon lange tot ist."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"Noch nicht."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"Aus dem Weg, Mantuok, oder ich töte dich an Ort und Stelle."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"Möchtest du etwas Käse, Mantuok?" Reich ihm den vergifteten Käse.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"Möchtest du etwas Käse, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"Und wieso sollte es, hä? Der Meister kennt die Geheimnisse der Macht. Viele-als-Einer kennt die Geheimnisse der Stadt. Vielleicht spiele ich sie eines Tages gegeneinander aus und bin der lachende Dritte. Viele-als-Einer sieht viele Vorteile in solch einer Zusammenarbeit... und die Bekehrung der Bewohner des Begrabenen Dorfes kann dazu beitragen, den Einfluß von Lothar und Viele-als-Einer zu vergrößern. Damit ziehen alle einen Nutzen daraus, nicht wahr? Aber... was willst du hier?"~ */
  IF ~~ THEN REPLY #29403 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"Ich suche den Meister dieses Ortes."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"Das geht dich nichts an."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~Er schnappt sich den Käse aus deiner Hand und schlingt ihn auf einmal hinunter. "Der Schädel, Mensch. Hast du ihn?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"Ich habe einen Schädel."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"Ja, von einem Skelett."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"Ja, von einem Zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"Ja, von einem Ghul."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"Ja, von einer Werratte."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"Ja, von einem Skelett, das schon lange tot ist."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"Noch nicht."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"Aus dem Weg, Mantuok, oder ich töte dich an Ort und Stelle."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"Möchtest du noch etwas Käse, Mantuok?" Gib ihm den vergifteten Käse.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"Ist es der, den der Meister haben wollte?"~ */
  IF ~~ THEN REPLY #29416 /* ~"Ja."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"Nein."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~Mantuoks Lippen kräuseln sich. "Dann zeig ihm dem Meister. Er wird sich freuen, dich wiederzusehen."~ */
  IF ~~ THEN REPLY #29418 /* ~"Danke, Mantuok."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"Gib ihn mir. Ich bringe ihn zum Meister. Deine Dienste werden nicht länger benötigt."~ */
  IF ~~ THEN REPLY #29419 /* ~"Nein, ich bring ihn lieber selbst zu ihm."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"Möchtest du etwas Käse, Mantuok?" Reich ihm den vergifteten Käse.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"Möchtest du etwas Käse, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Gib ihm den namenlosen Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Gib ihm Hargrimms Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Gib ihm den Schädel der Muffigen Mary: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Gib ihm Akastes Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Gib ihm Soegos Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Gib ihm den Schädel des Schweigenden Königs: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"Du verstehst wohl nicht..." Mantuok zeigt seine Krallen und sein Schwanz wedelt hin und her. "Das war keine Bitte. Gib mir den Schädel. Wir wollen hier keinen Ärger... Zweibeiner. Wenn's hier Ärger gibt, dann würdest selbst du ins Schwitzen kommen."~ */
  IF ~~ THEN REPLY #29428 /* ~"Vielleicht hat deine jämmerliche Krankheit ja auch dein Gehör geschädigt. Ich hab' gesagt, daß ich den Schädel zu Lothar bringe."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"Ich habe doch schon mal gesagt, daß ich Lothar den Schädel bringen werde."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"Laß mich vorbei oder ich töte dich an Ort und Stelle."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"Möchtest du etwas Käse, Mantuok?" Reich ihm den vergifteten Käse.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"Möchtest du etwas Käse, Mantuok?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"Lothar hat mir versprochen, daß ich hier gefahrlos durchreisen kann. Wenn du mich nicht durchläßt, wird er das erfahren... entweder von mir, oder von meinem Schädel, wenn ein Wunder geschieht und du mich doch umlegen solltest."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Gib ihm den namenlosen Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Gib ihm Hargrimms Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Gib ihm den Schädel der Muffigen Mary: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Gib ihm Akastes Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Gib ihm Soegos Schädel: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Gib ihm den Schädel des Schweigenden Königs: "Hier. Da hast du den Schädel."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"Dann *hol* ihn, Zweibeiner, und komm erst zurück, wenn du ihn hast. Und beeil dich!"~ */
  IF ~~ THEN REPLY #29440 /* ~"Ich werde ihn nicht viel länger warten lassen. Ich muß einfach mit ihm sprechen."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"Nicht ich werde heute sterben, Menschenwesen. Wenn du erst mal tot bist, werde ich den Schädel aus deinen kalten toten Fingern nehmen und ihn dem Meister bringen."~ */
  IF ~~ THEN REPLY #29441 /* ~"Versuch's doch."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"Dann bringe ich dich um und vergrabe deinen Schädel und deine Leiche an einem Ort, wo man sie nie mehr wiederfindet."~ */
  IF ~~ THEN REPLY #29442 /* ~"Versuch's doch, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Mantuok nimmt den Schädel und beschnüffelt ihn. "In den Katakomben gibt's viele abgelegene Ecken, Zweibeiner... wo wir dich einmauern können und keiner deine Schreie hört. Dort sollst du sein und leiden." Er wendet sich an seine Werratten-Kumpane. "Stecht auf den Zweibeiner ein, bis er umfällt. Dann bringt ihn in die Katakomben und begrabt ihn bei lebendigem Leibe."~ */
  IF ~~ THEN REPLY #29443 /* ~"Du Scheiß..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"Dann läßt du mir keine Wahl." Er wendet sich an seine Werratten-Kumpane. "Stecht auf ihn ein, bis er umfällt. Dann bringt ihn in die Katakomben und mauert ihn irgendwo ein. Er soll für immer und ewig lebendig begraben sein."~ */
  IF ~~ THEN REPLY #29444 /* ~"Du Scheiß..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"Ich bin nicht krank! Ich bin gesegnet! Ich bin viel besser als du. Du bist ja mehr Leiche als Mensch."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"Und weil du besser bist als ich, darfst du in Kloaken hocken, Dreck oder manchmal auch einen Totenbüchler fressen, um am Leben zu bleiben, und dich in prächtigen Lumpen kleiden, wobei dein nackter, schuppiger Schwanze hinter dir durch den Schmutz schleift? Du bist Ungeziefer, ein Schatten der Menschen, zu denen du gehören willst. Jämmerlich."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"Du bist nicht mir nicht ebenbürtig."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~Während du redest, werden Mantuoks Augen glasig vor Wut. Wortlos stürzt er sich auf dich.~ */
  IF ~~ THEN REPLY #29447 /* ~"Lieber nur du als die ganze Horde..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"Nein, wir sind dir überlegen. Wir sind Jäger. Wir jagen Zweibeiner. Du bist Nahrung für uns."~ */
  IF ~~ THEN REPLY #29448 /* ~"Und du bist eine gute Zielscheibe für mich."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~Er wendet sich an seine Werratten-Kumpane. "Stecht auf den Zweibeiner ein, bis er umfällt. Dann bringt ihn in die Katakomben und mauert ihn ein. Er soll für immer und ewig lebendig begraben sein."
~ */
  IF ~~ THEN REPLY #29449 /* ~"Das will ich erst mal sehen..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"Du bist wieder da, Menschenwesen. Was willst du?"
~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"Ich erledige eine Aufgabe für Lothar. Ich muß einen Schädel besorgen."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"Ich will mit der Person sprechen, die hier das Sagen hat."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"Ich suche meinen Freund Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"Ich guck mich einfach nur um."~ */ GOTO 33
END
