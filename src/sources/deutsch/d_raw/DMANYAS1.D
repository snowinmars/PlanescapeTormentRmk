// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~Du bist völlig sprachlos ob des Klangs von Hunderten von Stimmen, die als eine in deinem Kopf sprechen - diese Kommunikation hat eine Tiefe und Eindringlichkeit, die nicht in Worte gefaßt werden kann. "SPRICH, WAS DEIN ZIEL HIER IST, ZWEIFÜSSLER, UND SPRICH SCHNELL UND WAHR. DU BEFINDEST DICH IN DEN HALLEN VON VIELE-ALS-EINER. DU WIRST DIESEN ORT NUR MIT UNSERER GNADE VERLASSEN. WISSE, DASS WIR DEINE GEDANKEN LESEN UND DEINE LÜGEN WITTERN KÖNNEN."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"Wer bist du?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"Was ist das für ein Ort?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"Was ist das für ein Ort?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Täuschung: "Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist zu stark, als daß man ihn angreifen könnte. Halte dich von den Toten Landen fern, sonst werden die Leichen dich vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"Ich bin gekommen, um dich zu sehen, Viele-als-Einer."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"Ich bin zufällig hier vorbeigekommen."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"Wenn du meine Gedanken lesen kannst, warum soll ich dir dann erzählen, was mein Ziel ist?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"WIR SIND DIE AUGEN IM DUNKEL. WIR SIND DIE VIELEN, DIE ALS EINER DENKEN. WIR BEANTWORTEN NICHT DEINE FRAGEN. DU WIRST UNSERE FRAGEN BEANTWORTEN. WAS TUST DU HIER AN DIESEM ORT, SO FERN VOM LICHT DER PFADE DER MENSCHHEIT?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"WIR SIND DIE AUGEN IM DUNKEL. WIR SIND DIE VIELEN, DIE ALS EINER DENKEN. WIR BEANTWORTEN NICHT DEINE FRAGEN. DU WIRST UNSERE FRAGEN BEANTWORTEN. WAS TUST DU HIER AN DIESEM ORT, SO FERN VOM LICHT DER PFADE DER MENSCHHEIT?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"WIR SIND DIE AUGEN IM DUNKEL. WIR SIND DIE VIELEN, DIE ALS EINER DENKEN. WIR BEANTWORTEN NICHT DEINE FRAGEN. DU WIRST UNSERE FRAGEN BEANTWORTEN. WAS TUST DU HIER AN DIESEM ORT, SO FERN VOM LICHT DER PFADE DER MENSCHHEIT?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"WIR SIND DIE AUGEN IM DUNKEL. WIR SIND DIE VIELEN, DIE ALS EINER DENKEN. WIR BEANTWORTEN NICHT DEINE FRAGEN. DU WIRST UNSERE FRAGEN BEANTWORTEN. SPRICH, WAS DU DENKST, UND VERGISS NICHT, DASS WIR DEINE LÜGEN HÖREN KÖNNEN. WAS TUST DU HIER AN DIESEM ORT, SO FERN VOM LICHT DER PFADE DER MENSCHHEIT?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Täuschung: "Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist zu stark, als daß man ihn angreifen könnte. Halte dich von den Toten Landen fern, sonst werden die Leichen dich vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"Ich bin gekommen, um dich zu sehen, Viele-als-Einer."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"Ich bin zufällig hier vorbeigekommen."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"Wenn du meine Gedanken lesen kannst, warum soll ich dir dann erzählen, was mein Ziel ist?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~Die Stimmen in deinem Kopf sind beinahe ohrenbetäubend, obwohl sie eigentlich keinen Klang haben. "WIR BEFEHLEN DENEN, DIE BEI DIR SIND, ZU SCHWEIGEN. DU BEFINDEST DICH IN DEN GEDANKENLABYRINTHEN. VIELE-ALS-EINER IST HIER DER OBERSTE HERRSCHER. SPRICH, WAS DU DENKST, UND VERGISS NICHT, DASS WIR DEINE LÜGEN HÖREN KÖNNEN. WAS WILLST DU IN DEN LICHTLOSEN TUNNELN?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"Ich dachte, es würde dich interessieren, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Täuschung: "Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist zu stark, als daß man ihn angreifen könnte. Halte dich von den Toten Landen fern, sonst werden die Leichen dich vernichten."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"Ich bin gekommen, um dich zu sehen, Viele-als-Einer."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"Ich bin zufällig hier vorbeigekommen."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"Wenn du meine Gedanken lesen kannst, warum soll ich dir dann erzählen, was mein Ziel ist?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"DENK AN DIE TOTEN ALS TOTE. IHR MACHTLOSER KÖNIG KANN UNS NICHT MEHR IM WEG STEHEN. DU HAST DICH ALS NÜTZLICH ERWIESEN. FÜR DIESE INFORMATION REISSEN WIR DIE BARRIERE DEINER GEDANKEN NIEDER UND ZEIGEN DIR DICH SELBST. BEREITE DICH AUF DIE ENTHÜLLUNG VOR."~ */
  IF ~~ THEN REPLY #38686 /* ~"Warte! Noch nicht!"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Ich habe Viele-als-Einer berichtet, daß der Schweigende König nur ein totes Skelett ohne jegliche Macht ist. Die Ratten haben versprochen, die Katakomben unter Sigil in ihre Gewalt zu bringen.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"Ich bin soweit."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Ich habe Viele-als-Einer berichtet, daß der Schweigende König nur ein totes Skelett ohne jegliche Macht ist. Die Ratten haben versprochen, die Katakomben unter Sigil in ihre Gewalt zu bringen.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"DU WAGST ES, DEIN GESICHT WIEDER HIER ZU ZEIGEN? ZWEIBEINER, DU BIST VORSCHNELL. BEREITE DICH VOR."~ */
  IF ~~ THEN REPLY #38691 /* ~Kämpfe.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"SAG UNS, WAS DU WEISST, ZWEIBEINER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Bluffen: "Der Schweigende König ist zu stark, als daß du ihn angreifen könntest. Halte dich von den Toten Landen fern, oder die Leichen werden dich zerstören."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"Ich habe noch nichts."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"Die Ghule sind wild geworden und machen die Toten Lande unsicher."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"DIE GHULS SIND SELBST FÜR MEINE WERRATTEN-GÜNSTLINGE ZU STARK. DEINE MISSION IST GESCHEITERT. WIR BENÖTIGEN DEINE DIENSTE NICHT LÄNGER. GEH JETZT, ODER DU WIRST DIE KONSEQUENZEN ZU SPÜREN BEKOMMEN."~ */
  IF ~~ THEN REPLY #38698 /* ~"Was, du willst mich einfach so loswerden?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~Die Ghule sind über die Toten Lande dahingefegt, was es für die Schädelratten schwierig macht, dort Fuß zu fassen.  Sie haben mich aus ihrem Kreis verbannt und mich vor üblen Konsequenzen gewarnt, sollte ich je zurückkehren.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"JA. WENN WIR UNSERE MACHT NICHT MEHR AUF DEN SCHWEIGENDEN KÖNIG VERWENDEN MÜSSEN, HABEN WIR MEHR ALS GENUG DAVON ÜBRIG, UM DEIN ZERBRECHLICHES EGO ZU ZERSCHMETTERN. GEH. KOMM NICHT ZURÜCK."~ */
  IF ~~ THEN REPLY #38859 /* ~"Nein."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"DU BIST GEWARNT WORDEN, ZWEIBEINER. BEREITE DEINE GEDANKEN AUF DIE EWIGE GRENZE VOR."~ */
  IF ~~ THEN REPLY #38861 /* ~"Das kriegen wir schon wieder hin!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Kämpfe.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"DIE STIMME VON VIELER HAT DEINEM AUFTRAG WORTE GEGEBEN. DER SCHWEIGENDE KÖNIG IST ZU MÄCHTIG, SAGST DU. WIR SEHEN IN DEINEM HERZEN KEINE LÜGE. VERLASS DIE GEDANKENLABYRINTHE MIT DEINEM LEBEN ALS GESCHENK VON UNS. DU HAST UNSEREM ZWECK GEDIENT."~ */
  IF ~~ THEN REPLY #38863 /* ~"Willst du mich einfach so loswerden?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Ich habe Viele-als-Einer gesagt, daß der Schweigende König zu mächtig für einen Angriff ist. Der geeinte Geist der Schädelratten im Stock erkannte nicht die Falschheit in meinen Worten, hat mir jedoch strikt verboten, jemals in die Gedankenlabyrinthe zurückzukehren, wenn mir mein Leben lieb ist. Wir werden sehen.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"Nun denn. Leb wohl."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Ich habe Viele-als-Einer gesagt, daß der Schweigende König zu mächtig für einen Angriff ist. Der geeinte Geist der Schädelratten im Stock erkannte nicht die Falschheit in meinen Worten, hat mir jedoch strikt verboten, jemals in die Gedankenlabyrinthe zurückzukehren, wenn mir mein Leben lieb ist. Wir werden sehen.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"DU BIST GEWARNT WORDEN, ZWEIBEINER. BEREITE DEINE GEDANKEN AUF DIE EWIGE GRENZE VOR."~ */
  IF ~~ THEN REPLY #38865 /* ~"Das kriegen wir schon wieder hin!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Kämpfe.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"DIE GEDANKEN VON STIMME-VON-VIELEN LEGEN DEINE GEHEIMNISSE FREI. WIR KENNEN JETZT DIE WAHRHEIT ÜBER DEN SCHWEIGENDEN KÖNIG. WIR SIND DANKBAR FÜR DIESE INFORMATION..." Die Stimme in deinem Kopf wird bedrohlicher und fährt fort: "... UND DAHER WERDEN WIR NICHT DIEJENIGEN RÄCHEN, DIE DU GETÖTET HAST. DU WIRST JETZT GEHEN UND NIE WIEDER IN DIE GEDANKENLABYRINTHE ZURÜCKKEHREN. GEH, ZWEIBEINER. DEINE NÜTZLICHKEIT IST ZU ENDE."~ */
  IF ~~ THEN REPLY #38867 /* ~"Willst du mich einfach so loswerden? Nach allem, was ich für dich getan habe?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Ich habe Viele-als-Einer erzählt, daß der Schweigende König keine Bedrohung darstellt, und weil ich ein oder zwei Schädelratten getötet habe, wurde mir das Leben geschenkt. Und sonst nichts. Ratten. Ich hasse Ratten.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"Nun denn. Leb wohl."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Ich habe Viele-als-Einer erzählt, daß der Schweigende König keine Bedrohung darstellt, und weil ich ein oder zwei Schädelratten getötet habe, wurde mir das Leben geschenkt. Und sonst nichts. Ratten. Ich hasse Ratten.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"DIE GEDANKEN VON STIMME-VON-VIELEN LEGEN DEINE GEHEIMNISSE FREI. WIR KENNEN JETZT DIE WAHRHEIT ÜBER DEN SCHWEIGENDEN KÖNIG. DU HAST DICH ALS NÜTZLICH ERWIESEN. WIR WERDEN DIE BARRIEREN DEINER GEDANKEN BRECHEN UND DICH DIR SELBST ZEIGEN."~ */
  IF ~~ THEN REPLY #38875 /* ~"Warte! Noch nicht!"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"Ich bin soweit."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~Du fühlst, wie sich ein Druck in deinem Kopf aufbaut, als ob Tausende von winzigen, sich windenden Körpern gegen eine Mauer in deinem Gehirn drücken würden. Instinktiv widersetzt du dich, aber nach einer Ewigkeit wird der Druck zu groß, und eine Welle schwarzer Erinnerungen durchschlägt deine Abwehr.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Gib nach.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Gib nach.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~Du sprintest durch eine Stadt, die völlig aus Ketten besteht - Gebäude, Straßen, Abwasserkanäle und Rohrleitungen bestehen allesamt aus miteinander verketteten Metallsträngen. Der blutig dunkle Himmel über dir schimmert böse, als du klimpernd deinen Weg über ein dicht gewebtes Netz aus geschwärztem Silber suchst. Du siehst in der Hoffnung, deine Verfolger abgehängt zu haben, über deine Schulter und siehst nichts. Du siehst wieder nach vorn...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~... und vor dir steht ganz still ein Wesen, das von Kopf bis Fuß mit Ketten umwickelt ist und unter seiner Maske verrückt grinst. Eine Kette schlängelt sich aus seiner ausgestreckten Hand hervor und legt sich um deinen Fußknöchel. Eine zweite bricht aus der Wand links von dir und verletzt dein Handgelenk. Du schnappst sie aus der Luft und wirfst sie mit geübter Schlinge um den Hals deines Feindes. Du ziehst die Kette mit einem Ruck zu und hörst das scharfe Knacken der Wirbelsäule des Wesens... nur einen Augenblick, bevor eine ganze Horde ähnlicher Monster ein Netz aus klimpernden Ketten über deinen Körper wirft. Du löst dich ruckartig aus der Erinnerung.~ */
  IF ~~ THEN REPLY #38883 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"DU HAST DEINE ANTWORTEN GEHÖRT." Die massive Stimme wirkt durch die Anstrengung seltsam gespannt. "UNSER GESCHÄFT IST BEENDET. WIR BRAUCHEN KEINEN WEITEREN KONTAKT. WENN DU HIERHER ZURÜCKKEHRST, WERDEN WIR DICH ZERSTÖREN."~ */
  IF ~~ THEN REPLY #38884 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~... und vor dir steht ganz still ein Wesen, das von Kopf bis Fuß mit Ketten umwickelt ist und unter seiner Maske verrückt grinst. Eine Kette schlängelt sich aus seiner ausgestreckten Hand hervor und legt sich um deinen Fußknöchel. Eine zweite bricht aus der Wand links von dir und verletzt dein Handgelenk. Du windest dich aus der Kette um dein Fußgelenk heraus und duckst dich vor einer anderen. Deine Bewegungen sind scheinbar ohne Muster, doch entgehst du so den vielen Ketten, die das Wesen auf dich losläßt. In weniger Zeit, als du brauchst, um dich daran zu erinnern, hast du dich zum Monster hindurchgewunden, deine Daumen in seine Augen gedrückt und so sein Gehirn durchbohrt. Die Leiche hängt von deinen Händen... und eine gackernde Horde seiner Mitstreiter wirft ein Netz aus klimpernden Ketten über deinen Körper. Du löst dich ruckartig aus der Erinnerung.~ */
  IF ~~ THEN REPLY #38886 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~... und vor dir steht ganz still ein Wesen, das von Kopf bis Fuß mit Ketten umwickelt ist und unter seiner Maske verrückt grinst. Eine Kette tanzt aus seiner ausgestreckten Hand und kommt auf deinen Hals zu - doch du kannst sie mit einer Feuerwoge in der Luft anhalten, die sie in Schlacke verwandelt und ihren Besitzer schmelzend, schreiend und brennend in die Nacht davonjagt. Du starrst ihm einen Augenblick lang hinterher, und dann hörst du eine Menge seiner Mitstreiter hinter dir kichern. Sie werfen ein Netz aus klimpernden Ketten über deinen Körper, und es wird schwarz um dich. Du reißt dich aus der Erinnerung.~ */
  IF ~~ THEN REPLY #38887 /* ~(weiter)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~Eine Stimme, die so klingt, als ob Tausende auf einmal sprächen, wie ein Sich-winden und wie Schuppen, hallt in deinem Schädel wider. Eine unglaubliche Wut, und gleichzeitig ein Gefühl mühsamer Zurückhaltung, pulsiert unter der Oberfläche, wie ein Strom von Zorn. "MÖRDER. SPRICH, WAS DEIN ZIEL HIER IST." ~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"Wer bist du?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"Wer bist du?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"Wer bist du?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"Wer bist du?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"Was ist das für ein Ort?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"Was ist das für ein Ort?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"Was ist das für ein Ort?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"Was ist das für ein Ort?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"Ich dachte, das interessiert dich vielleicht: Der Schweigende König ist nur ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"Warum nennst du mich 'Mörder'?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"Ich habe hier kein Ziel. Ich wollte gerade gehen."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~Eine Stimme, die wie der qualvolle Schmerz von Tausenden klingt, hallt in deinem Schädel wider. Die Stimme klingt seltsam unterdrückt, mit einer Strömung unglaublicher Wut. "MÖRDER... WIR FORDERN DICH AUF, UNSERE HALLEN ZU VERLASSEN. WIR WÜNSCHEN NICHT MEHR MIT DIR ZU KÄMPFEN. WENN DU UNS EINEN GEFALLEN TUST, KÖNNEN WIR DIR EINEN DIENST ERWEISEN, UND WIR KÖNNEN IN FRIEDEN UNSERER WEGE GEHEN."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"Wer bist du?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"Wer bist du?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"Wer bist du?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"Wer bist du?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"Warum nennst du mich 'Mörder'?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"Was soll ich denn für dich tun?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"Tja, tatsächlich bin ich hier, um dich zu beseitigen."~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"Ich werd drüber nachdenken."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~"SAG UNS, WAS DU WEISST, MÖRDER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Bluffen: "Der Schweigende König ist zu stark, als daß du ihn angreifen könntest. Halte dich von den Toten Landen fern, oder die Leichen werden dich zerstören."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"Nichts, bis jetzt."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"Die Ghule sind wild geworden und machen die Toten Lande unsicher."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"SAG UNS, WAS DU WEISST, VÖLKERMÖRDER."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"Der Schweigende König ist bloß ein totes Skelett. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Bluffen: "Der Schweigende König ist zu stark, als daß du ihn angreifen könntest. Halte dich von den Toten Landen fern, oder die Leichen werden dich zerstören."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"Nichts, bis jetzt."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"Die Ghule sind wild geworden und machen die Toten Lande unsicher."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"DER TOTE KÖNIG STEHT BEREIT, UM SICH UNS ENTGEGENZUSTELLEN?" Die Gedankenstimme der Ratten hält einen Moment lang inne. "WIR SEHEN KEINE LÜGE IN DEINEN GEDANKEN. UNSERE DANKBARKEIT IST FOLGENDERMASSEN: WIR WERDEN DEINE LEBENDE LEICHE NICHT IN DIE GÄNGE UNTER UNSEREM LABYRINTH VERBANNEN, UM EINE ENDLOSE MAHLZEIT FÜR UNSERE JUNGEN ZU WERDEN. VERLASSE UNSERE TUNNEL, UND KOMM NICHT ZURÜCK."~ */
  IF ~~ THEN REPLY #38918 /* ~"Willst du mich einfach so loswerden?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Ich habe Viele-als-Einer gesagt, daß der Schweigende König zu mächtig für einen Angriff ist. Der geeinte Geist der Schädelratten im Stock erkannte nicht die Falschheit in meinen Worten, hat mir jedoch strikt verboten, jemals in die Gedankenlabyrinthe zurückzukehren, wenn mir mein Leben lieb ist. Wir werden sehen.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"Nun denn. Leb wohl."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Ich habe Viele-als-Einer gesagt, daß der Schweigende König zu mächtig für einen Angriff ist. Der geeinte Geist der Schädelratten im Stock erkannte nicht die Falschheit in meinen Worten, hat mir jedoch strikt verboten, jemals in die Gedankenlabyrinthe zurückzukehren, wenn mir mein Leben lieb ist. Wir werden sehen.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"DÜ LÜGST, ZWEIBEINER. 
WIR HABEN KEINEN VERKEHR MIT DEINESGLEICHEN.
KEIN BEDARF. KEIN VERLANGEN.
DU BIST IM AASGEIERDORF DABEI GESEHEN WORDEN, WIE DU MIT DEM VERKRÜPPELTEN KÖNIG GESPROCHEN HAST. DU BIST EIN SPION. DU BIST EIN ATTENTÄTER."
~ */
  IF ~~ THEN REPLY #38920 /* ~"Äh, ja. Und ich stehe für den höchsten Bieter zur Verfügung."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"Nein, bin ich nicht."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"DIES IST DIE DOMÄNE VON VIELE-ALS-EINER.
DU BIST EIN EINDRINGLING.
UNSER KÖNIGREICH IST GEHEIM.
DEINE STIMME MUSS VERSTUMMEN."
~ */
  IF ~~ THEN REPLY #38922 /* ~"Ich werde es geheimhalten."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"Das möchte ich sehen, wie du das versuchst."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"WIR KÖNNEN DEINE GEDANKEN LESEN, ZWEIBEINER. STELL UNS NICHT AUF DIE PROBE."~ */
  IF ~~ THEN REPLY #38924 /* ~"Nein. Ich denke jetzt an einen Namen. Sag mir, was das für ein Name ist." Denke: Pharod~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"Nein. Ich denke gerade an einen Namen. Sag mir, was das für ein Name ist." Denke: Haus zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"Nein. Ich denke gerade an einen Namen. Sag mir, was das für ein Name ist." Denke: Schweigender König.~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"Nein. Ich denke gerade an einen Namen. Sag mir, was das für ein Name ist." Denke: Wandelnder Toter.~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"Nein. Ich denke an einen Namen. Sag mir, was es ist." Denke: Barr, die Torwache.~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"DANN VERSCHWINDE. WIR HABEN KEINE VERWENDUNG - ODER GAR ANTWORTEN - FÜR DICH, BIS DU UNS DIE ANTWORTEN GEBRACHT HAST, DIE WIR SUCHEN."~ */
  IF ~~ THEN REPLY #38928 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"JA.
DAS WIRST DU."
~ */
  IF ~~ THEN REPLY #38929 /* ~"Was soll das denn jetzt heißen?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"Nur, wenn du mich zwingst..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~Es gibt eine Pause, in der das Gehirn diese Informationen verarbeitet.
"ERKLÄRE."
~ */
  IF ~~ THEN REPLY #38931 /* ~"Was ich meine, ist, daß wir uns gegenseitig helfen könnten."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"Du weißt schon, was ich meine. Ich habe Fähigkeiten, die ich anwenden kann. Du hast Mächte, die mir weiterhelfen können." ~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"SOLCH EIN HANDEL HAT SEINEN PREIS. 
SOLCH EIN HANDEL SETZT VERTRAUEN VORAUS.
WIR TRAUEN DIR NICHT.
ÜBERZEUGE UNS, ZWEIBEINER."
~ */
  IF ~~ THEN REPLY #38933 /* ~"Wie kann ich dich überzeugen?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"Dich überzeugen? Ich brauche dich nicht zu überzeugen. Entweder vertraust du mir oder nicht."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"Vergiß einfach, daß ich es angeboten habe. Ich gehe."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"WIR, DICH GEHEN LASSEN? DAS GLAUBEN WIR NICHT."~ */
  IF ~~ THEN REPLY #38938 /* ~"Ich könnte euch alle gleich jetzt töten, und ihr könntet mich nicht aufhalten. Ich kann nicht sterben."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"Versuch doch, mich aufzuhalten."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"BEWEISE, DASS DU UNSER VERTRAUEN VERDIENST. 
GEH ZU DEN HALLEN DER WANDELNDEN TOTEN.
TÖTE DEN SCHWEIGENDEN KÖNIG.
TÖTE IHN."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Bluffen: "Wen?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"Wen?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"Das glaub ich nicht. Ich gehe jetzt."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"Warum tust du es nicht?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"Also gut. Ich tu's."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"Ich war schon dort."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"Ich war schon dort."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"Ich war schon dort."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"DIE WANDELNDEN TOTEN WERDEN VON EINEM KÖNIG BEHERRSCHT, DER AN EINEM ORT LEBT, DEN WIR NICHT SEHEN KÖNNEN.
WIR MÜSSEN IHN ZERSTÖREN UND SIE ZERSTÖREN.
ER IST UNS EIN GEHEIMNIS.
WIR HABEN IHN NIE GESEHEN.
ER MUSS STERBEN."
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"Was kannst du mir schon bieten?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"Das glaub ich nicht. Ich gehe jetzt."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"Warum tust du es nicht?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"Also gut. Ich tu's."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"Ich war schon dort."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"Ich war schon dort."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"Ich war schon dort."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"WIR HABEN VIEL ZU BIETEN.
SICHEREN DURCHGANG.
DAS LEBEN DEINER FREUNDE."
~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"Das soll Motivation sein? Da mußt du mir schon mehr bieten."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"Also gut. Wenn es das ist, was du mir geben kannst, werde ich es eben annehmen. Was muß ich tun?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"Das würde funktionieren... wenn ich mir irgend etwas aus diesen Leuten machen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"Ich fürchte, das kann ich nicht akzeptieren. Ich gehe."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"Also gut. Was muß ich tun?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"Ich kenne das Geheimnis des Schweigenden Königs."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"Ich kenne das Geheimnis des Schweigenden Königs."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"Ich kenne das Geheimnis des Schweigenden Königs."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"DIR KANN MAN NICHT TRAUEN.
WENN DEINE WORTE WAHR SIND, DANN VERRÄTST DU DIE, DIE DICH BEAUFTRAGEN."
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"Das mag ja sein. Aber du hast mir immer noch nicht gesagt, was du mir für meine Dienste bieten könntest."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"Das mag ja sein. Aber du hast mir immer noch nicht gesagt, was du mir für meine Dienste bieten könntest."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"WIR KÖNNEN DIR SICHEREN DURCHGANG BIETEN. 
FREIHEIT.
VIELLEICHT MEHR."
~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"Ja, vielleicht mehr. Sprich weiter."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"Ich fürchte, das kann ich nicht akzeptieren. Ich gehe."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"Warum tust du es nicht?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"Also gut. Was muß ich tun?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"DU BIST WEISE, DASS DU UNSERE ANORDNUNGEN AKZEPTIERST.
REISE ZU DEN HALLEN DER TOTEN.
ERSCHLAGE IHREN SCHWEIGENDEN HERRSCHER.
KOMM HIERHER ZURÜCK, UND DANN REDEN WIR ÜBER DEINE BELOHNUNG."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"Ich war schon dort."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"Ich war schon dort."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"Ich war schon dort."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"WIR HABEN NOCH VIEL ZU BIETEN.
GEHEIMNISSE.
WOHLSTAND.
MAGIE.
DIE TOTEN IN DIESEN GRUFTEN HATTEN VIEL BEI SICH, ALS SIE STARBEN."
~ */
  IF ~~ THEN REPLY #38967 /* ~"Das glaub ich nicht. Ich gehe jetzt."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"Warum tust du es nicht?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"Also gut. Was muß ich tun?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"DU HAST UNRECHT. DU LEBST INFOLGE UNSERER NACHSICHT.
VIELLEICHT KÖNNEN WIR DICH NICHT SOFORT TÖTEN.
WIR KÖNNEN DICH NACH DER GNADE DES TODES SCHREIEN LASSEN.
WIR KÖNNEN DICH IN ENDLOSER ERDE BEGRABEN.
WIR KÖNNEN DICH INS EWIGE FEUER VERBANNEN.
WIR KÖNNEN ALLES UND JEDEN ZERSTÖREN, AN DEM DEIN HERZ HÄNGT.
WIR SIND ÜBERALL.
DU KANNST UNS NICHT ALLE AUFHALTEN."
~ */
  IF ~~ THEN REPLY #38971 /* ~"Dann können wir vielleicht ins Geschäft kommen."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"Ich bin bereit, es mal zu versuchen. Stirb, Schädling!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"DU WIRST IN DIE HALLEN DER TOTEN REISEN.
DU WIRST IHREN SCHWEIGENDEN HERRSCHER ERSCHLAGEN.
DU WIRST HIERHER ZURÜCKKEHREN, WENN DU DEINE MISSION ERFÜLLT HAST."
~ */
  IF ~~ THEN REPLY #38973 /* ~"Ich nehme das Angebot an."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"Warum tust du es nicht?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"Das werde ich nicht tun."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"DANN, ZWEIBEINER, WIRST DU STERBEN."~ */
  IF ~~ THEN REPLY #38978 /* ~"Versuch doch, mich zu töten."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"DU LÜGST!"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"Lies meine Gedanken und sag mir, daß ich lüge. Oder kannst du meine Gedanken gar nicht lesen?"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"Wie kann ich dir beweisen, daß ich nicht lüge?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"Nein."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"DOCH, DAS TUST DU. DU KANNST DICH VOR MIR NICHT VERBERGEN. ICH WEISS, WARUM DU HIER BIST. VERTEIDIGE DICH, ZWEIBEINER, DENN GLEICH WIRST DU STERBEN."~ */
  IF ~~ THEN REPLY #38982 /* ~"Warte! Wir können uns doch bestimmt einigen!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"Ich bin bereit, wenn du es bist..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"Lies meine Gedanken und sag mir, daß ich lüge. Oder kannst du meine Gedanken gar nicht lesen?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~Es entsteht eine Pause, und dann sagen die Stimmen: "DER SCHWEIGENDE KÖNIG SENDET DICH."~ */
  IF ~~ THEN REPLY #38985 /* ~"Du hast recht. Ich sehe ein, daß ich mich vor dir nicht verstecken kann."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"Das war falsch."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"Du kannst meine Gedanken gar nicht lesen. Warum nicht?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"Der Schweigende König? Wer?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Bluffen: "Der Schweigende König? Wer?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"ES IST SO, WIE WIR DIR GESAGT HABEN, ZWEIBEINER. DIE MAUERN DEINER GEDANKEN MÖGEN HOCH SEIN, ABER WIR KÖNNEN JEDE BARRIERE ÜBERWINDEN. ALSO: WIR HABEN VERWENDUNG FÜR DICH."~ */
  IF ~~ THEN REPLY #38990 /* ~"Was ist es?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"Das werde ich nicht tun."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"DU GIBST VOR, NICHTS VON DEINEM HERRN ZU WISSEN? DU WIRST STERBEN, ZWEIBEINER."~ */
  IF ~~ THEN REPLY #38992 /* ~"Du kannst meine Gedanken gar nicht lesen, oder?"~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"Nun mach schon."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~Die Stimmen klingen ängstlich: "DEINE GEDANKEN MÖGEN VOR UNS VERSIEGELT SEIN, ABER DU KANNST DENNOCH STERBEN WIE JEDES ANDERE WESEN."~ */
  IF ~~ THEN REPLY #38994 /* ~"Nein, das kann ich nicht. Ich könnte euch alle töten, und ihr könntet mich nicht aufhalten."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"Warum kannst du meine Gedanken nicht lesen?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"WIR WISSEN ES NICHT.
DAS MACHT DICH FÜR UNS GEFÄHRLICH.
BEDROHUNG/GEFAHR/ATTENTÄTER... UNSICHTBAR."
~ */
  IF ~~ THEN REPLY #38996 /* ~"Dann können wir vielleicht zu einer Übereinkunft kommen."~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"Laß mich gehen, und ich mache dir keinen Ärger mehr."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"DIE TOTEN... SIE SIND EINGEGRABEN. SCHWIERIG, IHNEN SCHADEN ZUZUFÜGEN. IHR SCHWEIGENDER KÖNIG: EIN GEHEIMNIS IST ER. WIR MÖGEN SOLCHE GEHEIMNISSE NICHT. WIR SCHLAGEN ZU, WENN WIR OHNE ZWEIFEL ERFOLG HABEN KÖNNEN. DER SCHWEIGENDE KÖNIG LÄSST UNS ZWEIFELN."~ */
  IF ~~ THEN REPLY #38998 /* ~"Ich nehme das Angebot an."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Viele-als-Einer, der Kopf der Schädelratten im Stock, hat mich gebeten, den Schweigenden König in den Toten Landen umzubringen. Ich habe zugestimmt. Ich soll Viele-als-Einer berichten, wenn die Tat vollbracht ist.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"Das werde ich nicht tun."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN." 
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN." 
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN." 
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN." 
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"Ich bin gekommen, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"Ich bin gekommen, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"Warum nennst du mich 'Mörder'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"Ich habe hier kein Ziel. Ich wollte gerade gehen."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"DU BEFINDEST DICH IN DEN GEDANKENLABYRINTHEN. DU BEFINDEST DICH IM HEIM VON VIELE-ALS-EINER. DU WIRST GLEICH STERBEN, MÖRDER."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"Aber ich bin hier, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"Aber ich bin hier, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"Warum? Und warum nennst du mich 'Mörder'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"Ich habe hier kein Ziel. Ich bin nur zufällig vorbeigekommen."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"RUHE! WIR SPRECHEN MIT DEM VERNARBTEN.
WIR *WERDEN* DICH ELIMINIEREN, WENN DU NOCH EIN WORT SPRICHST. WISSE, DASS DU DICH IN DEN GEDANKENLABYRINTHEN BEFINDEST... UND WISSE, DASS DU UNSEREN UNMUT ERREGT HAST. SPRICH, WAS DEIN ZIEL IST, MÖRDER."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"Ich habe hier kein Ziel. Ich bin nur zufällig vorbeigekommen."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"Ich bin gekommen, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"Warum nennst du mich 'Mörder'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~"Ich habe hier kein Ziel. Ich bin nur zufällig hier reingekommen."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"DER SCHWEIGENDE KÖNIG LIEGT RUHIG? DU HAST GUT GEHANDELT, MÖRDER."Die Stimmen halten einen Moment lang inne. "NIEMAND SOLL SAGEN, DASS VIELE-ALS-EINER OHNE DANKBARKEIT SEI."~ */
  IF ~~ THEN REPLY #39022 /* ~"Was meinst du?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"DER GESTANK VON LÜGEN KLUMPT DICK UM DICH HERUM. WISSE, DASS WIR DEIN GESICHT GESEHEN HABEN, ALS DU UNS GESCHLACHTET HAST. WISSE, DASS WIR DEN SCHMERZ GEFÜHLT HABEN, ALS UNSERE GEDANKEN AUSGELÖSCHT WURDEN. WISSE, DASS DAS ERSTERBEN JEDES FUNKEN DIE HERRLICHKEIT DES FEUERS MINDERT. DU HAST VIELE VON UNS GEMORDERT. STREITEST DU DAS AB?"~ */
  IF ~~ THEN REPLY #39024 /* ~"Mit Sicherheit."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"Ganz und gar nicht."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"Ich wußte ja nicht, daß die ein Teil von dir sind."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"Die haben zuerst angegriffen."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"SO SEI ES. DU GIBST DEIN VERBRECHEN ZU.
DU SOLLST LEIDEN,
WIE WIR GELITTEN HABEN."
~ */
  IF ~~ THEN REPLY #39028 /* ~"Warum *bringst* du mich nicht zum Leiden, du flohgeplagter Teppich übergreifender Dummheit?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"LÜGEN!
WISSE, DASS DU LEIDEN SOLLST, WIE WIR GELITTEN HABEN."
~ */
  IF ~~ THEN REPLY #39029 /* ~"Warum *bringst* du mich nicht zum Leiden, du flohgeplagter Teppich übergreifender Dummheit?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"Ich bitte dich um Gnade."~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"Kann ich das irgendwie wieder an dir gutmachen?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"DU SOLLST KEINE GNADE FINDEN, MÖRDER. DU MUSST FÜR DEIN VERBRECHEN ZAHLEN."~ */
  IF ~~ THEN REPLY #39032 /* ~"Warum *bringst* du mich nicht zum Leiden, du flohgeplagter Teppich übergreifender Dummheit?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"Wie kann ich das wiedergutmachen?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"WAS FÜR EINEN NUTZEN HAST DU?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"Ich bin nur schwer zu töten und kenne Zaubersprüche."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"Ich bin schwer zu töten."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"Ich bin listig und nur schwer auszumachen."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"Ich bin nur schwer zu töten und ein wilder Krieger."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"WIR HABEN KEINE VERWENDUNG FÜR ZAUBERSPRÜCHE. ZAUBERKRÄFTE SIND NICHT UNGEWÖHNLICH... DOCH..."~ */
  IF ~~ THEN REPLY #39038 /* ~"Doch?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"DIES KANN SICH ALS NÜTZLICH ERWEISEN... JA..."~ */
  IF ~~ THEN REPLY #39039 /* ~"Ja?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"DIESE FÄHIGKEITEN KÖNNEN SICH ALS NÜTZLICH ERWEISEN... JA..."~ */
  IF ~~ THEN REPLY #39040 /* ~"Ja?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"DIESE FÄHIGKEITEN KÖNNEN SICH ALS NÜTZLICH ERWEISEN... JA..."~ */
  IF ~~ THEN REPLY #39041 /* ~"Ja?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"DER SCHWEIGENDE KÖNIG STELLT KEINE BEDROHUNG FÜR UNS DAR? BIST DU DESSEN SICHER? HAST DU SEINE LEICHE GESEHEN?"~ */
  IF ~~ THEN REPLY #39042 /* ~"Ja."~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN. WIR WÜNSCHEN NICHT ZU KÄMPFEN, ABER WENN DU DARAUF BESTEHST, WERDEN WIR ES TUN." 
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN. WIR WÜNSCHEN NICHT ZU KÄMPFEN, ABER WENN DU DARAUF BESTEHST, WERDEN WIR ES TUN."
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN. WIR WÜNSCHEN NICHT ZU KÄMPFEN, ABER WENN DU DARAUF BESTEHST, WERDEN WIR ES TUN."
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"WIR HABEN UNS BEREITS IN DEN DUNKLEN HALLEN GETROFFEN.
WIR HABEN DEIN GESICHT GESEHEN, ALS DU UNSER BLUT VERGOSSEN HAST. SPRICH, WAS DICH HIERHERGEFÜHRT HAT, MÖRDER. WENN DU GEKOMMEN BIST, UM UNS ALLE ZU TÖTEN, KANNST DU KEINEN ERFOLG HABEN. WIR WÜNSCHEN NICHT ZU KÄMPFEN, ABER WENN DU DARAUF BESTEHST, WERDEN WIR ES TUN."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"Ich bin gekommen, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"Ich bin gekommen, um dir zu sagen, daß der Schweigende König nur ein totes Skelett ist. Er hat keine Macht."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"Warum nennst du mich 'Mörder'?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"Tja, tatsächlich bin ich hier, um dich zu beseitigen."~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"Ich habe hier kein Ziel. Ich wollte gerade gehen."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"ZWEIBEINER, DU HAST VIELE UNSRESGLEICHEN GESCHLACHTET. WIR HABEN GEFÜHLT, WIE DIE UNSERE EIGENEN LICHTER IN EINEM BLITZ AUS SCHMERZ VERSCHWINDEN. DU HAST LEID IN DIE GEDANKENLABYRINTHE GEBRACHT, UND DAFÜR MUSST DU UNS ENTSCHÄDIGEN. DU WIRST UNS ENTSCHÄDIGEN, ODER WIR WERDEN DICH AUSLÖSCHEN."~ */
  IF ~~ THEN REPLY #39048 /* ~"Das werde ich nicht tun."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"Was muß ich tun?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"Ich wußte nicht, daß die von deiner Art sind."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"HAST DU UNS NICHT BEREITS GENUG GETROFFEN, PRIMAT? HABEN DEINE MORDE DICH NICHT GESÄTTIGT? WIR SEHEN KEINE ZUSTIMMUNG IN DEINEN GEDANKEN. WIR WERDEN DICH ZUERST TÖTEN, ZWEIBEINER."~ */
  IF ~~ THEN REPLY #39051 /* ~"Ich bin bereit für dich..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"DU SOLLST DIES FÜR UNS TUN, ODER WIR WERDEN UNS BIS ZUM LETZTEN LEBEN DER AUFGABE WIDMEN, DICH AUS DEM MULTIVERSUM AUSZULÖSCHEN. DAS BIST DU UNS FÜR DEN SCHMERZ, DEN DU ÜBER UNS GEBRACHT HAST, *SCHULDIG*."~ */
  IF ~~ THEN REPLY #39052 /* ~"Was soll ich denn für dich tun?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"Das möchte ich gern sehen, wie du das versuchst."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"DANN IST UNSERE VERWENDUNG FÜR DICH BEENDET.
ES IST JETZT AN DER ZEIT FÜR DICH ZU LEIDEN, WIE DU UNS HAST LEIDEN LASSEN.
ES IST AN DER ZEIT, DEINEN KURZEN FUNKEN AUSZULÖSCHEN.
DU WIRST STERBEN, HUMANOID.
DU WIRST *SCHMERZVOLL* STERBEN."
~ */
  IF ~~ THEN REPLY #39054 /* ~"Ist das der Dank, den ich bekomme?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"Versuch es doch."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~"WIR BITTEN DARUM, DASS DEINE BEGLEITER STUMM BLEIBEN. DU HAST SCHMERZ ÜBER UNS GEBRACHT, VIEL SCHMERZ, UND WIR FORDERN WIEDERGUTMACHUNG VON DIR."~ */
  IF ~~ THEN REPLY #39056 /* ~"Ich bin hier, um dich zu beseitigen."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"Was soll ich denn für dich tun?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"Die Genugtuung gebe ich dir nicht."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"DAS UNGLÜCK IST BEREITS GESCHEHEN. ALLEIN DURCH EURE ENTSCHULDIGUNGEN LÄSST SICH DIE VERGANGENHEIT NICHT VERÄNDERN. ERWEIST UNS DIESEN DIENST ODER WIR WERDEN EUCH ELIMINIEREN."~ */
  IF ~~ THEN REPLY #56040 /* ~"Was muß ich tun?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"Das tue ich nicht."~ */ GOTO 76
END
