// ---------------------------------------------
// SoA
// ---------------------------------------------

BEGIN RH#EVA

IF ~NumTimesTalkedTo(0) !Dead("Lavok02")~ introa
 SAY @0 /* Another victim of the sphere, I take it. Whatever strange path brought you here, I'm afraid it's likely to be a one way voyage. */
 	++ @1 /* We'll see about that. I'm not the type to stay a victim for long. */ + intro1
 	++ @2 /* I didn't expect to find company here. Who exactly are you? */ + intro2
	++ @3 /* I don't have time to talk right now. */ + exit
END

IF ~NumTimesTalkedToGT(0) !Dead("Lavok02")~ introa
 SAY @4 /* I hadn't expected to see you again so soon. Was there something you needed? */
	+ ~Global("rh#EvaIntro","GLOBAL",0)~ + @5 /* Who did you say you were again? */ + intro11
	+ ~Global("rh#EvaIntro","GLOBAL",1)~ + @5 /* Who did you say you were again? */ + intro12
	+ ~Global("rh#EvaIntro","GLOBAL",2)~ + @6 /* Does your offer of help still stand? */ + intro13
	++ @3 /* I don't have time to talk right now. */ + exit
END

IF ~~ intro1
 SAY @7 /* That attitude will serve you well here, I think. */
 = @8 /* But forgive my rudeness. I'm Evandra, Wizard of High Sorcery... though if the sphere has shifted planes once more, that is unlikely to mean anything to you. */
IF ~~ + intro3
END

IF ~~ intro2
 SAY @9 /* Forgive my rudeness, I'm Evandra, Wizard of High Sorcery... though if the sphere has shifted planes once more, that is unlikely to mean anything to you. */
IF ~~ + intro3
END

IF ~~ intro3
SAY @10 /* I came here some time ago hoping to study this strange device, but so far it's proven rather reluctant to give up its secrets. And even more so to give up its prisoners, unfortunately. */
	++ @11 /* Do you have any advice for surviving this place? */ + intro4
	++ @12 /* Wizard of High Sorcery? */ + intro5
	++ @13 /* I see. I really need to be moving on. */ + intro6
END

IF ~~ intro4
SAY @14 /* If you want advice, I'd suggest speaking with Reyna. She and her knights have explored the sphere somewhat more extensively than I have. */
IF ~~ + intro7
END

IF ~~ intro5
SAY @15 /* Yes, an organization of mages dedicated to preserving and governing magic in the land of Ansalon, though I don't expect that name to mean much of anything here either. */
IF ~~ + intro7
END

IF ~~ intro6
SAY @16 /* I'm sure you do, but if you'd indulge my curiosity for a moment longer, you appear to be more than a mere passerby yourself. Might I ask what brings you here? */ 
	++ @17 /* There's an ancient necromancer here I've come to stop. */ + intro8
	+ ~!Dead("Valygar")~ + @18 /* It's a long story, but I'm here on behalf of a friend. */ + intro9
	++ @19 /* You know... gold, jewels, magical items. The usual. */ + intro9
	++ @20 /* No, you may not. I'm leaving now. */ DO ~SetGlobal("rh#EvaIntro","GLOBAL",1)~ + exit
END

IF ~~ intro7
SAY @21 /* As for you, stranger... you appear to be something more than a mere passerby yourself. Might I ask what brings you here? */ 
	++ @17 /* There's an ancient necromancer here I've come to stop. */ + intro8
	+ ~!Dead("Valygar")~ + @18 /* It's a long story, but I'm here on behalf of a friend. */ + intro9
	++ @19 /* You know... gold, jewels, magical items. The usual. */ + intro9
	++ @20 /* No, you may not. I'm leaving now. */ DO ~SetGlobal("rh#EvaIntro","GLOBAL",1)~ + exit
END

IF ~~ intro8
SAY @22 /* I see. That would explain a great deal. */
IF ~~ + intro9
END

IF ~~ intro9
SAY @23 /* Hm. I'm usually not one to admit defeat, but your arrival here may well prove fortuitous. Another pair of eyes could be just what we need to solve the riddles of this place. */
= @24 /* And perhaps the same goes for you as well. If you've a need for additional help, I would be willing to accompany you. */
	++ @25 /* Your aid would be most appreciated. */ + intro10
	++ @26 /* I could use a good wizard for this, I suppose. */ + intro10
	++ @27 /* Another time, perhaps. */ DO ~SetGlobal("rh#EvaIntro","GLOBAL",2)~ + exit
END

IF ~~ intro10
SAY @28 /* Excellent. Standing about out here was becoming wearying anyway. */
IF ~~ DO ~SetGlobal("rh#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ intro11
SAY @29 /* Time for introductions, is it? I'm Evandra, Wizard of High Sorcery... though if the sphere has shifted planes once more, that is unlikely to mean anything to you. */
IF ~~ + intro3
END

IF ~~ intro12
SAY @30 /* You have a short memory, stranger. I'm Evandra, Wizard of High Sorcery, and if you mean to solve the riddles of this place, I would be willing to accompany you. There's little more I can study in these outer chambers. */
	++ @31 /* Your help would be most appreciated. */ + intro10
	++ @27 /* Another time, perhaps. */ DO ~SetGlobal("rh#EvaIntro","GLOBAL",2)~ + exit
END

IF ~~ intro13
SAY @32 /* Well, I don't exactly look busy here, do I? Does this mean that you've changed your mind? */
	++ @33 /* I have. Your help would be most appreciated. */ + intro10
	++ @27 /* Another time, perhaps. */ + exit
END

IF ~~ exit
SAY @34 /* As you wish. */
IF ~~ EXIT
END

// Evandra Rejoining

BEGIN RH#EVAP

IF ~Global("rh#EvaJoined","GLOBAL",0) AreaCheck("AR0411") !Dead("Lavok02")~ p1
 SAY @35 /* I hadn't expected to see you again so soon, <CHARNAME>. Was there something you needed? */
 	++ @36 /* I could use your help. Is it still on offer? */ + p2
 	++ @37 /* No, I can handle this on my own. */ + p3
END

IF ~~ p2
 SAY @38 /* I don't see any other pressing business at hand. Shall we be off, then? */
IF ~~ DO ~SetGlobal("rh#EvaLeftParty","GLOBAL",0) SetGlobal("RH#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p3
 SAY @39 /* I wish you luck, then. For all of our sakes. */
IF ~~ EXIT
END

// ---------------------------------------------
// Planar Sphere Interjections
// ---------------------------------------------

// Reyna

EXTEND_BOTTOM OBSSOL01 1
+ ~!InParty("rh#Eva")~ + @40 /* What about the elven wizard standing in the corner? */ + evandra1
END

EXTEND_BOTTOM OBSSOL01 2
+ ~!InParty("rh#Eva")~ + @40 /* What about the elven wizard standing in the corner? */ + evandra1
END

CHAIN OBSSOL01 evandra1
@41 /* The Red Robe is not associated with us, though she hails from our world as well. If you wish to speak with her, you are welcome to do so. */
END
	++ @42 /* Thanks. I'll do so. */ + 3
	++ @43 /* Do you have any advice for surviving this strange place? */ + 8
	++ @44 /* I need to be on my way now. */ + 3

BEGIN RH#EVAJ

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0) InParty("rh#Eva") See("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaObssol01","GLOBAL",0) !Dead("Lavok02")~ THEN OBSSOL01 rh#evaobssol01
@45 /* Greetings once more. I see that you have convinced the Red Robe to aid you. This is good, though I would recommend caution. They are not always to be trusted. */
DO ~SetGlobal("rh#EvaObssol01","GLOBAL",1)~
== RH#EVAJ @46 /* Oh, Reyna. So much time spent together and you can't even think of a more specific warning to offer? */
== OBSSOL01 @47 /* It is all that needs to be said, wizard. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") See("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaObssol02","GLOBAL",0) !Dead("Lavok02")~ THEN OBSSOL02 rh#evaobssol02
@48 /* By my Oath, Evandra, I never expected to see you willing to venture further into this place. */
DO ~SetGlobal("rh#EvaObssol02","GLOBAL",1)~
== RH#EVAJ @49 /* Well, even I get bored eventually, you know. */
== OBSSOL02 @50 /* Indeed. Fare thee well, my Lady. */
EXIT

// ---------------------------------------------
// Lavok Dead
// ---------------------------------------------

CHAIN IF ~Global("rh#EvaPostLavok","GLOBAL",2)~ THEN RH#EVAJ postA
@51 /* And so this long nightmare is finally over... for the necromancer as well as for those of us who were trapped alongside him. */
DO ~SetGlobal("rh#EvaPostLavok","GLOBAL",3)~
= @52 /* Or perhaps I should say that one nightmare has ended and another is about to begin. This cursed device's power is almost certainly spent. If there's a way home, I won't find it here. */
END
IF ~OR(3) !Dead("obssol01") !Dead("obssol02") !Dead("obssol03")~ + post1
IF ~!Dead("obssol01") !Dead("obssol02") !Dead("obssol03")~ + post2

// Evandra Resurrected
CHAIN IF ~Global("rh#EvaPostLavok","GLOBAL",4)~ THEN RH#EVAJ postB
@53 /* I... I'm alive? By Lunitari, what a strange experience that was. */
DO ~SetGlobal("rh#EvaPostLavok","GLOBAL",3)~
= @54 /* The necromancer... he's been defeated, I take it? Yes, I can see from your expression that he has. And that any chance of going home has died with him. */
END
IF ~OR(3) !Dead("obssol01") !Dead("obssol02") !Dead("obssol03")~ + post1
IF ~!Dead("obssol01") !Dead("obssol02") !Dead("obssol03")~ + post2

APPEND RH#EVAJ

IF ~~ post1
 SAY @55 /* Thank you for everything you've done, <CHARNAME>. I suppose... well. I suppose it's time that I tried to make some sense of this strange world of yours. Farewell. */
IF ~~ DO ~SetGlobal("rh#EvaLeavesSphere","GLOBAL",2) SetGlobal("RH#EvaJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ post2
 SAY @56 /* I suppose... well. I suppose I'll have to make the best of this strange world of yours, and with any luck, sooner or later discover the magic necessary to return home again. */
= @57 /* In the meantime, however... tell me, <CHARNAME>, we've worked well together thus far. Would you have me remain in your company for a while longer? */
	++ @58 /* I would be glad to have you alongside me, Evandra. */ + post3
	++ @59 /* Perhaps later, but I think it's better if we part ways for now. */ + post4
	++ @60 /* I don't think so, mage. Get lost, would you? */ + post5
END

IF ~~ post3
 SAY @61 /* I'm pleased to hear it. It'll be good to have a guide of some sort in this foreign land of yours. */
 	++ @62 /* I ought to tell you that my ultimate goal is to rescue a childhood friend from the Cowled Wizards. It might be dangerous. */ + post6
 	++ @63 /* You should know that I mean to hunt down a powerful wizard called Irenicus. I don't expect it to be easy. */ + post7
 	+ ~!Global("rh#EvaReynaTalk","GLOBAL",2)~ + @64 /* Alright, let's go, Evandra. */ + post8
 	+ ~Global("rh#EvaReynaTalk","GLOBAL",2)~ + @64 /* Alright, let's go, Evandra. */ EXIT
 END 

IF ~~ post4
 SAY @65 /* As you would have it. If you change your mind, I expect you'll find me away from the noise of the city. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0) LeaveParty() EscapeAreaMove("AR0700",3457,1482,10)~ EXIT
END

IF ~~ post5
 SAY @66 /* Gladly, if that's the way it's to be. I don't think we'll meet again. */
IF ~~ DO ~SetGlobal("rh#EvaLeavesSphere","GLOBAL",2) SetGlobal("RH#EvaJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ post6
 SAY @67 /* I see. I know little of the Cowled Wizards, though I'm certainly keen to learn more. */
IF ~!Global("rh#EvaReynaTalk","GLOBAL",2)~ + post9
IF ~Global("rh#EvaReynaTalk","GLOBAL",2)~ EXIT
END

IF ~~ post7
 SAY @68 /* Another renegade mage, is it to be? You'll have my assistance, then. Of that I can assure you. */
IF ~!Global("rh#EvaReynaTalk","GLOBAL",2)~ + post9
IF ~Global("rh#EvaReynaTalk","GLOBAL",2)~ EXIT
END

IF ~~ post8
 SAY @69 /* Of course, but first I'd like to return to Reyna and the others and let them know what has happened. For all of our problems, I'd rather not keep them in the dark. */
IF ~~ EXIT
END

IF ~~ post9
 SAY @70 /* But first I'd like to return to Reyna and the others and let them know what has happened. For all of our problems, I'd rather not keep them in the dark. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Post Planar Sphere, no mage stronghold
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("rh#EvaReynaTalk","GLOBAL",1)~ THEN OBSSOL01 a1
@71 /* Evandra, loath as I am to ask for your aid, I trust that you have no greater desire to remain in this strange land than we do. Will you be seeking the means to return home? */
DO ~SetGlobal("rh#EvaReynaTalk","GLOBAL",2)~ 
== RH#EVAJ @72 /* Interplanar travel is beyond my abilities, Reyna... at least for the moment. But if that should change, I'll be sure to let you know. */
== OBSSOL01 @73 /* Then I can ask for nothing more. In the meantime, we shall strive to make ourselves useful in this realm. <CHARNAME>, might you know of a paladin order that would accept our services? */
END
	++ @74 /* You could present yourselves before the Radiant Heart. */ + a2
	++ @75 /* I'm not sure. I haven't been in this country very long. */ + a3

CHAIN OBSSOL01 a2
@76 /* Then we shall do as you recommend. Good day to you, <PRO_SIRMAAM>, and I hope we meet again under more favorable circumstances. */
DO ~SetGlobal("SolamnicPrelate","GLOBAL",2)
ActionOverride("obssol02",EscapeAreaObject("Tran0400"))
ActionOverride("obssol03",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~ EXIT

CHAIN OBSSOL01 a3
@77 /* Then we shall seek one out and send word once we have found it. Good day to you, <PRO_SIRMAAM>, and I hope we meet again under more favorable circumstances. */
DO ~SetGlobal("SolamnicPrelate","GLOBAL",2)
ActionOverride("obssol02",EscapeAreaObject("Tran0400"))
ActionOverride("obssol03",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~ EXIT

// Evandra not in party

ALTER_TRANS OBSSOL01 // file name
BEGIN 25 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "EPILOGUE" ~GOTO a4~
END

CHAIN OBSSOL01 a4
@78 /* Then we are trapped here. As Knights of Solamnia, we shall bear this with good grace. We will travel your world and lend our swords and our souls to the cause of the right. Might you know of a paladin order that would accept our services? */
DO ~SetGlobal("rh#EvaReynaTalk","GLOBAL",2)~
END
	++ @74 /* You could present yourselves before the Radiant Heart. */ + a2
	++ @75 /* I'm not sure. I haven't been in this country very long. */ + a3

// ---------------------------------------------
// Mage Stronghold
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("PCSphere","GLOBAL",1)
Global("TalkedPCSphere","LOCALS",0) InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN OBSSOL01 a5
@79 /* It seems you are now master here, oh wizard of great power. I trust that between you and the Red Robe, it will not be difficult to return us all to where we belong. */
DO ~SetGlobal("TalkedPCSphere","LOCALS",1)
SetGlobal("rh#EvaReynaTalk","GLOBAL",2)~ 
== RH#EVAJ @80 /* Interplanar travel is well beyond my abilities, Reyna. As for <CHARNAME>... well, <PRO_HESHE> can speak for <PRO_HIMHER>self. */
END
	++ @81 /* I know nothing about interplanar travel. What do you expect me to do? */ EXTERN OBSSOL01 14
	++ @82 /* It's beyond mine as well, though I will see what can be done. */ EXTERN OBSSOL01 15
	++ @83 /* None of you have experienced this plane of existence yet. Perhaps you would like it. */ EXTERN OBSSOL01 16

// Evandra not in party

ALTER_TRANS OBSSOL01 // file name
BEGIN 13 END // state number (can be more than one)
BEGIN 0 1 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("TalkedPCSphere","LOCALS",1)
SetGlobal("rh#EvaReynaTalk","GLOBAL",2)~
END

EXTEND_BOTTOM OBSSOL01 15
IF ~!Global("rh#EvaLeftParty","GLOBAL",1) InMyArea("rh#Eva") !InParty("rh#Eva") !Dead("rh#Eva")~ THEN DO ~AddJournalEntry(55643,QUEST)~ EXTERN RH#EVA a1
IF ~Global("rh#EvaLeftParty","GLOBAL",1) InMyArea("rh#Eva") !InParty("rh#Eva") !Dead("rh#Eva")~ THEN DO ~AddJournalEntry(55643,QUEST)~ EXTERN RH#EVAP a1
END

EXTEND_BOTTOM OBSSOL01 16
IF ~!Global("rh#EvaLeftParty","GLOBAL",1) InMyArea("rh#Eva") !InParty("rh#Eva") !Dead("rh#Eva")~ THEN DO ~AddJournalEntry(55643,QUEST)~ EXTERN RH#EVA a1
IF ~Global("rh#EvaLeftParty","GLOBAL",1) InMyArea("rh#Eva") !InParty("rh#Eva") !Dead("rh#Eva")~ THEN DO ~AddJournalEntry(55643,QUEST)~ EXTERN RH#EVAP a1
END

CHAIN RH#EVA a1
@84 /* As for myself, if there's a means of returning home, I suspect I can find it on my own. I've no desire to remain here a moment longer than necessary, at least. */
 = @85 /* My thanks for what you've done here, stranger. Perhaps we'll meet again. */
DO ~SetGlobal("rh#EvaLeavesSphere","GLOBAL",2) SetGlobal("SpawnTeos","AR0411",1) EscapeAreaObject("Tran0400")~ 
EXIT

CHAIN RH#EVAP a1
@84 /* As for myself, if there's a means of returning home, I suspect I can find it on my own. I've no desire to remain here a moment longer than necessary, at least. */
 = @86 /* My thanks for what you've done here, <CHARNAME>. Perhaps we'll meet again. */
DO ~SetGlobal("rh#EvaLeavesSphere","GLOBAL",2) SetGlobal("SpawnTeos","AR0411",1) EscapeAreaObject("Tran0400")~
EXIT

// Disabling sending the Knights home

ALTER_TRANS RIBALD // file name
BEGIN 27 END // state number (can be more than one)
BEGIN 0 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InPartyAllowDead("rh#Eva") OR(2) Dead("rh#Eva") Global("rh#EvaLeavesSphere","GLOBAL",2)~
END

EXTEND_BOTTOM RIBALD 27
+ ~!Global("rh#EvaLeavesSphere","GLOBAL",2)~ + #42008 + a1
+ ~!Global("rh#EvaLeavesSphere","GLOBAL",2)~ + #42009 + a1
END

CHAIN RIBALD a1
@87 /* Hm... I can ask around, but I can't think of anyone offhand who might be able to help ye. */
= @88 /* If yer friends be knights, I suggest ye talk to the folk at the Radiant Heart. They need all the help they can get, I reckon. */
DO ~SetGlobal("SolamnicKnights","GLOBAL",6)
SetGlobal("rh#EvaPostRibald","GLOBAL",1) 
AddJournalEntry(@89 /* Mage stronghold: Ribald cannot help

Ribald does not know of anyone who might be able to send the Knights of Solamnia home. He suggests speaking with the Radiant Heart. */,QUEST)~
EXIT

CHAIN IF ~Global("rh#EvaPostRibald","GLOBAL",2)~ THEN RH#EVAJ ribald
@90 /* I never really expected it was going to be that simple, but false hope... well. It can be cruel at times. */
DO ~SetGlobal("rh#EvaPostRibald","GLOBAL",3)~
== RH#EVAJ IF ~Global("SolamnicPrelate","GLOBAL",1)~ THEN @91 /* We might as well let the Solamnics know what their best option is. Then they'll be the Radiant Heart's concern instead of ours. */
== RH#EVAJ IF ~!Global("SolamnicPrelate","GLOBAL",1)~ THEN @92 /* We might as well speak with the Radiant Heart. If we're to be trapped here for the moment, I'd rather someone else take charge of the Solamnics. */
EXIT

// Evandra after speaking to Radiant Heart
CHAIN IF ~Global("rh#EvaPostPrelate","GLOBAL",2)~ THEN RH#EVAJ prelate
@93 /* I do hope that you'll speak to this Ribald as well. If he has the means of sending us home, I would really like to know about it. */
DO ~SetGlobal("rh#EvaPostPrelate","GLOBAL",3)~
EXIT

EXTEND_BOTTOM HPRELATE 26
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)
  Global("SolamnicKnights","GLOBAL",1)~ THEN DO ~SetGlobal("rh#EvaPostPrelate","GLOBAL",1)~ GOTO 27
END

// Return to Reyna
EXTEND_BOTTOM OBSSOL01 22
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + a6
END

CHAIN OBSSOL01 a6
@94 /* Evandra, loath as I am to intrude, I assume that you have no greater desire to remain in this land than we do. Is there any chance that you might discover something? */
== RH#EVAJ @95 /* There's always a chance, Reyna. And if I do, I'll be sure to let you know. */
== OBSSOL01 @96 /* Then I can ask for nothing more. In the meantime, we must move on. We will go to this Order, and we will offer our lives to their cause. */
DO ~SetGlobal("SolamnicKnights","GLOBAL",9)
EraseJournalEntry(@89 /* Mage stronghold: Ribald cannot help

Ribald does not know of anyone who might be able to send the Knights of Solamnia home. He suggests speaking with the Radiant Heart. */)~
END
IF ~~ + 24

ALTER_TRANS OBSSOL01 // file name
BEGIN 23 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~EraseJournalEntry(@89 /* Mage stronghold: Ribald cannot help

Ribald does not know of anyone who might be able to send the Knights of Solamnia home. He suggests speaking with the Radiant Heart. */)
EscapeAreaObject("Tran0400")~
END

// Sleep in Sphere

CHAIN IF ~Global("rh#EvaSphereRest","GLOBAL",1)~ THEN RH#EVAJ sphere
@97 /* <CHARNAME>, I know you appreciate the stability of having a base of operations, but I hope we're not going to be making a habit of resting here. */
DO ~SetGlobal("rh#EvaSphereRest","GLOBAL",2)~
END
	++ @98 /* Did you not sleep well? */ + sphere1
	++ @99 /* It's a bit eerie, but we'll get used to it. */ + sphere2
	++ @100 /* Would you prefer a different inn every night? */ + sphere3
	++ @101 /* I'm not interested in complaints. */ + sphere4

APPEND RH#EVAJ

IF ~~ sphere1
 SAY @102 /* Would you have really expected me to? */
IF ~~ + sphere5
END

IF ~~ sphere2
 SAY @103 /* I'm altogether too used to it already, as you really ought to remember. */
IF ~~ + sphere5
END

IF ~~ sphere3
 SAY @104 /* Does that really surprise you? */
IF ~~ + sphere5
END

IF ~~ sphere4
 SAY @105 /* Nor for the wellbeing of your companions, apparently. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceCheck","GLOBAL",2)~ + sphere5
END

IF ~~ sphere5
 SAY @106 /* After spending *months* in this place, with no means of escape... frankly, I would rather have slept in the gutter. */
 = @107 /* (sigh) No matter. If I have to spend half the night in the entryway next time, overlooking the city slums, I suppose that will have to do. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// ToB
// ---------------------------------------------

BEGIN RH#EV25A

IF ~NumTimesTalkedTo(0)~ j1
 SAY @108 /* By Lunitari, <CHARNAME>... you certainly know how to get yourself into the strangest of situations. What level of the Abyss is this? */
	 ++ @109 /* Believe me, it's a long story. */ + j2
	 ++ @110 /* I'm sure you can figure that out for yourself. */ + j3
	 ++ @111 /* It's nice to see you too, Evandra. */ + j4
END

IF ~~ j2
 SAY @112 /* With you it usually is. But I trust there's a reason you've summoned me here? */
	 ++ @113 /* Indeed, there is. I could use a good mage. */ + j5
	 ++ @114 /* Wait here. I might need you later. */ + j6
END

IF ~~ j3
 SAY @115 /* Knowing you... yes, I suppose I can. But I trust there's a reason you've summoned me here? */
	 ++ @113 /* Indeed, there is. I could use a good mage. */ + j5
	 ++ @114 /* Wait here. I might need you later. */ + j6
END

IF ~~ j4
 SAY @116 /* That almost goes without saying. But I trust there's a reason you've summoned me here? */
	 ++ @113 /* Indeed, there is. I could use a good mage. */ + j5
	 ++ @114 /* Wait here. I might need you later. */ + j6
END

IF ~~ j5
 SAY @117 /* Could you, then? That's hardly surprising, though I'm certainly intrigued enough to see what problems you've gotten yourself into this time. */
IF ~~ DO ~SetGlobal("rh#EvaJoined","GLOBAL",1) SetGlobal("rh#EvaFriendshipActive","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ j6
 SAY @118 /* Very well... I'll wait. At least for the moment. */
IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ j7
 SAY @119 /* Welcome back, <CHARNAME>. I trust you've a need for me now? */
	++ @120 /* Yes, I think I just might. */ + j8
	++ @121 /* Not just yet, I'm afraid. */ + j9
END

IF ~~ j8
 SAY @122 /* I'm glad to hear it. Shall we be going, then? */
IF ~~ DO ~SetGlobal("rh#EvaJoined","GLOBAL",1) SetGlobal("rh#EvaFriendshipActive","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ j9
 SAY @123 /* This is getting rather tedious, you know. */
IF ~~ EXIT
END