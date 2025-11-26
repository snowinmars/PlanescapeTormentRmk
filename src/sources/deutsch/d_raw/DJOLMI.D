// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~Diese finster dreinblickende alte Frau scheint jemanden zu suchen. Ihr Blick fixiert dich, als du näherkommst. "Du da... Kann ich mal kurz mit dir sprechen?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"Sicherlich..."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"Was willst du?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"Ja... Du bist Jolmi, stimmt's? Ich habe mit deinem Boten gesprochen."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~Eine Edelfrau namens Jolmi hat mir einen seltsamen Vorschlag gemacht... sie möchte mich für das Privileg bezahlen, mich 'ermorden' zu dürfen. Ein leichter Weg, meinen Geldbeutel zu füllen, nehme ich an, wenn alles glatt geht...~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"Ich bin Jolmi, eine Edelfrau aus dem Hause Syrma. Ich suche einen Mann, von dem es heißt, er könne nicht sterben... Er hat furchtbar viele Narben, und der Tod ist für ihn nicht weiter als ein lästiger Zwischenfall. Die vage Beschreibung, die ich von ihm habe, scheint ziemlich gut auf dich zu passen... Bist du dieser Mann?"~ */
  IF ~~ THEN REPLY #43856 /* ~"Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Eine Edelfrau namens Jolmi hat mir einen seltsamen Vorschlag gemacht... sie möchte mich für das Privileg bezahlen, mich 'ermorden' zu dürfen. Ein leichter Weg, meinen Geldbeutel zu füllen, nehme ich an, wenn alles glatt geht...~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~Sie nickt heftig. "Wenn das so ist... Danke für deine Zeit. Leb wohl."~ */
  IF ~~ THEN REPLY #43859 /* ~"Warte... ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~Jolmi schüttelt den Kopf. "Ich bin nicht da, um deine Fragen zu beantworten. Such dir einen andern, der dir hilft, und laß mich weitersuchen. Leb wohl."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"Wenn ich ganz ehrlich sein soll: Ich *bin* der Mann, den du suchst."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Eine Edelfrau namens Jolmi hat mir einen seltsamen Vorschlag gemacht... sie möchte mich für das Privileg bezahlen, mich 'ermorden' zu dürfen. Ein leichter Weg, meinen Geldbeutel zu füllen, nehme ich an, wenn alles glatt geht...~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"Dann bin ich froh, dich gefunden zu haben." Sie verneigt sich leicht. "Ich würde dir gern einen etwas ungewöhnlichen Vorschlag machen... Aber gewiß bist du auch ein ungewöhnlicher Mann. Ich gebe dir tausend einfache Kupfermünzen... wenn ich dich dafür töten darf. Würdest du dich eventuell darauf einlassen?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"Aber sicher, warum nicht?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"Aber sicher, warum nicht?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"Aber sicher, warum nicht?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"Aber... Weshalb?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~Jolmi zuckt nicht mit der Wimper. "Aber warum nicht? Es ist doch eine interessante Vorstellung, jemanden für das Privileg zu bezahlen, daß man ihn umbringen darf. Wie hätte ich widerstehen sollen, als ich die ersten Gerüchte über dich hörte? Nun... Was sagst du? Sollen wir die Sache ausführlicher besprechen?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"Moment mal... Wo hast du diese Gerüchte gehört?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"Ohne mich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~Jolmi runzelt die Stirn. "Ach, in der Festhalle kriegt man so einiges mit. Es ist fast unmöglich, *nicht* von einem Mann wie dir zu hören. Ich frag dich noch einmal: Wirst du über meinen Vorschlag nachdenken?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"Ja. Besprechen wir die Details."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"Ohne mich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~Nach einer kurzen Diskussion einigt ihr euch auf die folgenden Bedingungen: Jolmi gibt dir tausend einfache Kupfermünzen; dafür darf sie dir einen Dolch ins Herz stoßen. Dann wartet sie, bis du aufwachst, um dir die Münzen zu überreichen.

"Heißt das, du bist einverstanden?"
~ */
  IF ~~ THEN REPLY #43883 /* ~"Ja... Mach wir's."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~Nach einer kurzen Diskussion einigt ihr euch auf die folgenden Bedingungen: Jolmi gibt dir fünfzehnhundert einfache Kupfermünzen; dafür darf sie dir einen Dolch ins Herz stoßen. Dann wartet sie, bis du aufwachst, um dir die Münzen zu überreichen.

"Heißt das, du bist einverstanden?"
~ */
  IF ~~ THEN REPLY #43886 /* ~"Ja... Mach wir's."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~Nach einer kurzen Diskussion einigt ihr euch auf die folgenden Bedingungen: Jolmi gibt dir zweitausend einfache Kupfermünzen; dafür darf sie dir einen Dolch ins Herz stoßen. Dann wartet sie, bis du aufwachst, um dir die Münzen zu überreichen.

"Heißt das, du bist einverstanden?"
~ */
  IF ~~ THEN REPLY #43889 /* ~"Ja... Mach wir's."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~Die Tat ist im Nu vollführt... Als du wieder zu dir kommst, hat sie bereits ihre Klinge gesäubert und und weggesteckt. Du rappelst dich vom Boden der Festhalle auf. Jolmi steckt dir ein paar Rollen Kupfermünzen zu, während du dir die schmerzende Brust reibst.

"Irgendwie enttäuschend, wie ich finde. Na ja... Wenigstens ist der Klimper nicht verschwendet. Leb wohl."
~ */
  IF ~~ THEN REPLY #43892 /* ~"Ja... Leb wohl."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~Ich habe Jolmi gestattet, mir durchs Herz zu stechen, wenn sie mir ein hübsches Sümmchen dafür gibt... Sie schien ziemlich enttäuscht von der Erfahrung zu sein, aber ich bin ganz schön zufrieden mit der Bezahlung.~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~Jolmi sieht dich mit harten Augen an. "Ja?"~ */
  IF ~~ THEN REPLY #43894 /* ~"Ich bin der Mann, den du suchst."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Eine Edelfrau namens Jolmi hat mir einen seltsamen Vorschlag gemacht... sie möchte mich für das Privileg bezahlen, mich 'ermorden' zu dürfen. Ein leichter Weg, meinen Geldbeutel zu füllen, nehme ich an, wenn alles glatt geht...~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"Nichts... Leb wohl."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~Du gehst zu Jolmi hin. Ihre kalten Augen funkeln, als sie dich wiedererkennen. "Hast du's dir etwas anders überlegt? Tausend Kupfermünzen für die Erlaubnis, dich zu töten?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"Ja. Sprechen wir darüber."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"Ja. Sprechen wir darüber."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"Ja. Sprechen wir darüber."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"Sag mir zuerst, weshalb du das tun willst."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~Jolmi sieht dich mit ihrem harten Blick an. Ihre Augen funkeln, als sie dich wiedererkennen. "Ja?"~ */
  IF ~~ THEN REPLY #43904 /* ~"Ich hatte ein paar Fragen, Jolmi..."~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"Bin nur zufällig vorbeigekommen... Leb wohl."~ */ EXIT
END
