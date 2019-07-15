// ---------------------------------------------
// Bodhi Abduction
// ---------------------------------------------

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("rh#Eva")
!Global("rh#EvaRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 bodhinap1
== BODHIAMB IF ~Global("rh#EvaRomanceActive","GLOBAL",2)
InParty("rh#Eva")~ THEN @0 /* You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. */
END IF ~OR(2)
!InPartyAllowDead("rh#Eva")
Dead("rh#Eva")~ THEN EXTERN BODHIAMB 6
IF ~InPartyAllowDead("rh#Eva")
!Dead("rh#Eva")~ THEN EXTERN BODHIAMB bodhinap2

CHAIN BODHIAMB bodhinap2
@1 /* Consider your dear friend Evandra. How unfortunate that elves are so slow to decide what they truly want. */
== RH#EVAJ @2 /* Your insinuations don't interest me, witch. */
== BODHIAMB @3 /* Oh, but perhaps they should. Follow me further, <CHARNAME>, and you will lose more than you can imagine! Starting now! */
END
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#evct4")~
UNSOLVED_JOURNAL @4 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Evandra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! */ EXIT

//Bodhi abduction: Oghma

ADD_TRANS_TRIGGER IMNBOOK1 0
~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("rh#evbdy")~

EXTEND_BOTTOM IMNBOOK1 0
IF ~PartyHasItem("rh#evbdy")
Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

EXTEND_BOTTOM DOGHMA 0 #5
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#evbdy")~ + @5 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#evbdy")~ + @5 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("rh#evbdy")~ + @6 /* I lost a loved one in a battle with his sister, Bodhi.  I seek a means of curing her. */ GOTO 3
END

APPEND OGHMONK1
IF WEIGHT #-1
~Global("RevealUmar","GLOBAL",1)
PartyHasItem("rh#evbdy")~ THEN BEGIN oghmamonk
 SAY @7 /* Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready. */
	++ @8 /* No, thank you, I have no need of help at the moment. */ EXTERN OGHMONK1 5
	++ @5 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ EXTERN OGHMONK1 6
END
END

// Bodhi abduction: Elhan

EXTEND_BOTTOM C6ELHAN2 70
	+ ~PartyHasItem("rh#evbdy")~ + @9 /* Elhan! I've the half vampire body of Evandra here because of you! You'll tell me now! */ + 76
END

EXTEND_BOTTOM WARSAGE 0
	+ ~!Dead("c6bodhi") Global("rh#EvaVampire","GLOBAL",2)~ + @10 /* A loved one was taken by a vampire. What can I expect when I find her? */ + 6
END

EXTEND_BOTTOM WARSAGE 0
	+ ~PartyHasItem("rh#evbdy")~ + @11 /* Someone I care about has fallen to a vampire. Is there any way to save her? */ + 5
END

// Final battle

// Bodhi section 2
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("rh#EvaVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 bodhinap3
  == C6BODHI IF ~Global("rh#EvaVampire","GLOBAL",2)~ THEN
@12 /* But... no, I have already prepared much for this meeting, <CHARNAME>. I did warn you that you would suffer great loss if you continued your push towards me.  I did not lie. */
END
	+ ~Global("rh#EvaVampire","GLOBAL",2)~ + @13 /* You have taken too much already!  You will return both Imoen's soul and Evandra! */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#EvaVampire","GLOBAL",2)~ + @14 /* And you have delivered on that promise. Return Evandra and perhaps I will be merciful. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#EvaVampire","GLOBAL",2)~ + @15 /* I would have hunted you for your theft of Evandra alone. She is very important to me. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#EvaVampire","GLOBAL",2)~ + @16 /* You place too much confidence in sentiment.  The theft of Evandra will not save you. */ EXTERN C6BODHI bodhinap5

APPEND C6BODHI

IF ~~ bodhinap4
 SAY @17 /* Ah, yes... the lovely Evandra. She reminded me of myself, once upon a time, and I have made the likeness even stronger now. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze. */
IF ~~ UNSOLVED_JOURNAL @18 /* The Final Battle with Bodhi.

Bodhi has turned Evandra into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done.  Perhaps the elven war sage might know some way of restoration ... or Elhan... */
EXTERN RH#EVAMP bodhinap7
END

IF ~~ bodhinap5
SAY @19 /* An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not. */
= @20 /* She reminded me of myself, once upon a time, and I have made the likeness even stronger now. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze. */
IF ~~ UNSOLVED_JOURNAL @18 /* The Final Battle with Bodhi.

Bodhi has turned Evandra into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done.  Perhaps the elven war sage might know some way of restoration ... or Elhan... */
EXTERN RH#EVAMP bodhinap7
END

IF ~~ bodhinap6
SAY @21 /* Do you see that, <CHARNAME>? She is not yet fully turned, and yet she is already mine to use against you. Perhaps your connection was as illusory as everything else about her. */
IF ~~ EXTERN C6BODHI 28
END
END

BEGIN RH#EVAMP

IF ~~ bodhinap7
SAY @22 /* I am... yours to command, mistress. */
IF ~~ EXTERN C6BODHI bodhinap6
END

// ---------------------------------------------
// Rescue
// ---------------------------------------------

APPEND RH#EVAP

IF WEIGHT #-1 ~OR(2) Global("rh#EvaVampire","GLOBAL",3) Global("rh#EvaVampire","GLOBAL",4)~ THEN BEGIN v1
 SAY @23 /* <CHARNAME>? By Lunitari, never in my life have I had such strange dreams... */
IF ~~ DO ~ChangeAIScript("rh#eva",OVERRIDE) SetGlobal("rh#EvaVampire","GLOBAL",5)
EraseJournalEntry(@4 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Evandra. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible. I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! */)

EraseJournalEntry(@18 /* The Final Battle with Bodhi.

Bodhi has turned Evandra into a vampire! Or... or very nearly. The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done. Perhaps the elven war sage might know some way of restoration ... or Elhan... */)~
SOLVED_JOURNAL @24 /* The Final Battle with Bodhi.

While I had feared for some time that Bodhi's final revenge on me would be to take away Evandra forever, it seems that the information in the lorebook was right... Amaunator's idol has restored Evandra not only to life, but has removed the vampiric curse from her, as well. */ + v1.1
END

IF ~~ v1.1
 SAY @25 /* Though... perhaps I'm still dreaming. This is as much a crypt as that vampire's lair, and... <CHARNAME>? What is going on? */
	++ @26 /* Snap out of it, Evandra. This is real. */ + v1.2
	++ @27 /* It was no dream. Bodhi turned you into a vampire. */ + v1.2
	++ @28 /* Come on, let's go. We still have an archmage to kill. */ + v1.2
END

IF ~~ v1.2
 SAY @29 /* I... oh. Listen to me babbling like a disoriented fool. I'm still not quite myself yet, but... I should thank you. */
 = @30 /* Freeing me from that... curse... could not have been easy. What ancient magic have you dug up to make such a thing possible at all? */
	++ @31 /* Divine magic. We're in the temple of a long-lost sun god. */ + v1.3
	+ ~Class(Player1,MAGE_ALL)~ + @32 /* Don't sound surprised. You're not the only wizard here. */ + v1.4
	+ ~!Class(Player1,MAGE_ALL)~ + @33 /* I have my ways. You don't need to be a wizard to be resourceful. */ + v1.4
	++ @34 /* It's a long story, and one I'd rather share once we're outside. */ + v1.5
END

IF ~~ v1.3
 SAY @35 /* I... see. It would need to be a sun god to dispell such darkness, I suppose. */
IF ~~ + v1.6
END

IF ~~ v1.4
 SAY @36 /* I know, but... oh, never mind. However you managed it, thank you. */
IF ~~ + v1.6
END

IF ~~ v1.5
 SAY @37 /* Truth be told, I would rather leave as soon as possible myself. Shall we be away from here? */
 	++ @38 /* I'm ready when you are, Evandra. Let's get out of here. */ + v1.7
 	++ @39 /* I actually don't have room for you right now. I'm sorry. */ + v1.8
END

IF ~~ v1.6
 SAY @40 /* Shall we be away from here? I think I'd rather not tarry any longer. */
 	++ @38 /* I'm ready when you are, Evandra. Let's get out of here. */ + v1.7
 	++ @39 /* I actually don't have room for you right now. I'm sorry. */ + v1.8
END

IF ~~ v1.7
 SAY @41 /* I'd like nothing better, my friend. */
IF ~~ DO ~SetGlobal("rh#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ v1.8
 SAY @42 /* Truly? That was awfully short-sighted of you, but never mind. I can find my own way out. */
IF ~~ DO ~EscapeAreaMove("AR0700",3457,1482,10)~ EXIT
END
END