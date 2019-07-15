// ---------------------------------------------
// Athkatla
// ---------------------------------------------

// Slums

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") IsGabber("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaSalvanas","GLOBAL",0)~ THEN SALVANAS salvanas
@0 /* Ahh, a more bewitching creature I could not hope to meet. You must be an enchantress of great skill, my elven beauty. */ 
DO ~SetGlobal("rh#EvaSalvanas","GLOBAL",1)~ 
== RH#EVAJ @1 /* Mm, and what exactly gives you that impression, good sir? */
== SALVANAS @2 /* The moment you walked in, it was as if a spell was cast upon me... all I could see was you. */
== RH#EVAJ @3 /* Come now, we elves are barely susceptible to enchantment, though if you truly care to experiment, I suppose I could oblige. */
== SALVANAS @4 /* I... er, what are you proposing, dearest? */
== RH#EVAJ @5 /* Why, a simple Domination spell, of course. It may take several tries to have an effect, but if you've a taste for bewitchment... well. */
== SALVANAS @6 /* Er... I think I'll, um... pass on your offer. For the moment. */
== RH#EVAJ @7 /* That's very sensible of you. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#EvaWaylane","GLOBAL",0)~ THEN WAYLANE waylane
@8 /* Hey! Hey, you there! Elf lady in red! */
DO ~SetGlobal("rh#EvaWaylane","GLOBAL",1)~
== RH#EVAJ @9 /* I assume there's some purpose to your wild gesturing? */
== WAYLANE @10 /* Yes, you! See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say? */
== RH#EVAJ @11 /* I could have it for my very own simply by walking inside. */
== WAYLANE @12 /* But, um... first you'd need to open it, and for that I'd have to sell you the magic word! */
== RH#EVAJ @13 /* And what might that be? "Gullible fool?" */
== WAYLANE @14 /* Erm, well... maybe we could compromise at 250 gold? */
EXIT

I_C_T LEHTIN 17 lehtin
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@15 /* Mm, there's quite a bit here that meets the eye... provided one knows what one is looking for. */
END

I_C_T COPGREET 7 copgreet
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@16 /* (laugh) A rose by any other name would smell as fair... or foul, as the case may be. */
END

I_C_T HENDAK 19 hendak
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@17 /* Mm, defenses exist to be thrown down... particularly in cases like this. */
END

I_C_T HENDAK 35 hendak
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@18 /* Death almost seems the kinder fate. */
END

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(1,2) Global("rh#EvaSlumf1","GLOBAL",0)~ THEN SLUMF1 slumf1
@19 /* An elven lass like ye, girl, you could do well for yourself, ye knows. The boys love the lure of the exotic. */
DO ~SetGlobal("rh#EvaSlumf1","GLOBAL",1)~
== RH#EVAJ @20 /* Oh, I know. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(1,2) Global("rh#EvaSlumm1","GLOBAL",0)~ THEN SLUMM1 slumf1
@21 /* Ye scared me there for a minute, lassie. Decked out in scarlet like that, ye could pass for one o' them mad Thayvians. */
DO ~SetGlobal("rh#EvaSlumm1","GLOBAL",1)~
== RH#EVAJ @22 /* Really? You make them sound almost interesting. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @23 /* Oh, of course. Ignore me and focus on the girl instead. (One day they'll all pay for these slights.) */
EXIT

// Waukeen's Promenade

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") See("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#EvaBelmin","GLOBAL",0)~ THEN BELMIN belmin
@24 /* You! Vile elven witch! You may beguile others, but I see through you, you loathsome creature! */
DO ~SetGlobal("rh#EvaBelmin","GLOBAL",1)~ 
== RH#EVAJ @25 /* I'd suggest you measure your next words carefully, human. */
== BELMIN @26 /* What is this, a threat!? Your elven pride is plain enough for anyone to see, harlot! */
== RH#EVAJ @27 /* And your mediocrity even more so. Now begone, lest I make your dreams even less pleasant than they no doubt already are. */
== BELMIN @28 /* Yet more demonic threats! One day others will see you for what you really are, and then you will be cleansed, elf! ALL OF YOU! */
EXIT

I_C_T AERIE 33 aerie
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@29 /* Hm. The greatest of illusionists are capable of... very nearly everything, to put it mildly. */
== AERIE @30 /* I... I know, but Kalah... no! It's not possible. */
END

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") See("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,2) Global("rh#EvaMurtlen","GLOBAL",0)~ THEN MURTLEN murtlen
@31 /* You! Have you ever been cheated, here? I bet ye have! */
DO ~SetGlobal("rh#EvaMurtlen","GLOBAL",1)~
== RH#EVAJ @32 /* Mm, in this land I'm not sure I would even know if I were being cheated or not. */
EXIT

// Docks

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Eva") InParty("rh#Eva") !See([ENEMY]) !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,2) Global("rh#EvaCelvan","AR0300",0)~ THEN CELVAN celvan
@33 /* There once was an elf-maid so proud,
by hardship she would not be cowed.
Now afar she has fled,
In strange lands she will tread,
To dream now will she be allowed? */
DO ~SetGlobal("rh#EvaCelvan","AR0300",1)~
== RH#EVAJ @34 /* Strange words. A touch addled, perhaps, but... hm. */
EXTERN CELVAN 1

I_C_T SBWENCH 8 sbwench
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@35 /* My, Eddie, it seems that this one has taken quite a liking to you. */
END

I_C_T RENAL 30 renal
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@36 /* Working for these thieves, are we now? I hope this game of intrigue isn't as exhausting as it sounds likely to be. */
END

I_C_T MAEVAR 16 maevar1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@37 /* Hm. If this church is as mild as I've heard, perhaps if we ask nicely enough, they'll simply hand the thing over. */
END

I_C_T MAEVAR 17 maevar2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@38 /* The Storm God, if I am not mistaken? Be very careful--they would no doubt make for dangerous enemies. */
END

I_C_T EDWIN 8 edwin1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@39 /* I don't care for the sound of this, <CHARNAME>. Whatever this man's quarrel with the Cowled Wizard might be, I doubt he's the injured party. */
END

I_C_T EDWIN 27 edwin2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@40 /* I would usually welcome the company of another mage, whatever his colors, but this one... hm. I'm not so certain. */
== EDWIN @41 /* Fortunately the decision is not yours, wench. What say you, <CHARNAME>? */
END

I_C_T EDWIN 49 edwin3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@42 /* Hm. No doubt we could always simply charm the man. */
END

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(1,2) Global("rh#EvaDsailor2","GLOBAL",0)~ THEN DSAILOR2 dsailor2
@43 /* *hic* You're a real beauty, lassie... like an elf maiden out o' a dream... *hic* The type a man wishes he'd never wake from! */
DO ~SetGlobal("rh#EvaDsailor2","GLOBAL",1)~ 
== RH#EVAJ @44 /* You're going to have to do considerably better than that, dear man. */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(1,2) Global("rh#EvaDftown1","GLOBAL",0)~ THEN DFTOWN1 dftown1
@45 /* Why, I never! Even ye wizard folk are wandering around openly in this part o' town now, are ye? What is this country comin' to? */
DO ~SetGlobal("rh#EvaDftown1","GLOBAL",1)~
== RH#EVAJ @46 /* Mm, if there were more wizards here, there would probably be less thieves. */
== DFTOWN1 @47 /* Pfeh! Little enough difference between the two. */
EXIT

I_C_T ARNBOY01 0 arnboy01
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@48 /* It certainly is ghastly, I'll say that much. */
END

I_C_T ARNMAN01 4 arnman01
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@49 /* Poor man. Being locked away from the sun for a time... well, it's certainly trying. */
END

I_C_T ARNMAN04 0 arnman04
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@50 /* Are we? Well, that was certainly a quick enough initiation. */
END

I_C_T2 ARNTRA05 0 arntra05
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@51 /* True growth cannot come without danger, but this... this is a waste. */
END

// Temple

I_C_T GAAL 4  gaal
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@52 /* You Faerûnians truly worship the strangest of things. */
END

I_C_T RIFTG03 18 avatar
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@53 /* Strange, isn't it? The type of power that something as simple as belief might hold. */
== RIFTG03 @54 /* Stranger than you will ever know, mortal. */
END

// Government District

I_C_T SAFE VICG2 1 viconia
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@55 /* A dark elf, I take it? I don't like the looks of this, <CHARNAME>. Not at all. */
END

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,2) Global("rh#EvaGftown01","GLOBAL",0)~ THEN GFTOWN01 gftown01
@56 /* Yet another elf, and a mage at that! Who sent you up here to spy on us today, woman? The Cowled Wizards or your wretched elven kin? */
DO ~SetGlobal("rh#EvaGftown01","GLOBAL",1)~
== RH#EVAJ @57 /* Oh... both, surely. And no doubt the Shadow Thieves as well. */
EXIT

// Bridge

I_C_T RAELIS 41 raelis
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@58 /* I'm beginning to wonder if there's any wizard native to this city who *isn't* in the business of kidnapping people. */
== RAELIS @59 /* That I cannot answer, child. */
END

I_C_T HAERDA 199 haerdalis
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@60 /* A... nexus? You mean to say that this jewel is for planar travel? */
== HAERDA @61 /* Aye, that it is. */
END

I_C_T HAERDAJ 49 haerdalis
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@60 /* A... nexus? You mean to say that this jewel is for planar travel? */
== HAERDAJ @62 /* Aye, my mockingbird, though 'twould be of little use to you. */
END

I_C_T HAERDAJ 55 haerdalis
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@63 /* I don't know what half of that means, but it certainly sounds like you know how to get yourself into trouble, Haer'dalis. */
== HAERDAJ @64 /* You do not know the half of it, my dear. */
END

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#EvaBftown1","GLOBAL",0)~ THEN BFTOWN1 bftown1
@65 /* I bet you anything we'd be a lot better off if we just gathered up all those books of magic and burned them! And maybe put some of the mages on the bonfire as well while we're at it! */ 
DO ~SetGlobal("rh#EvaBftown1","GLOBAL",1)~
== RH#EVAJ @66 /* What utter ignorance! If I could shove someone onto a bonfire, it would be this fool! */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#EvaFfcust08","GLOBAL",0)~ THEN FFCUST08 ffcust08
@67 /* Hey, you! Yeah you, elf lady! I know your type--you think you're so high and mighty compared to me, don't you!? */
DO ~SetGlobal("rh#EvaFfcust08","GLOBAL",1)~
== RH#EVAJ @68 /* I might not have before, but I certainly do now. */
EXIT

// ---------------------------------------------
// Amn
// ---------------------------------------------

// De'Arnise Keep

I_C_T2 DELCIA 16 delcia
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@69 /* And I really had thought I'd seen everything as far as the human race was concerned. Quite the singular specimen, that one. */
END

// Umar Hills

I_C_T UHMAY01 18 mayor
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@70 /* Hm. I wonder if there's another legendary wizard--or witch, as it so happens--waiting at the end of this particular tale. */
END

// Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("rh#Eva",LastTalkedToBy)~ THEN GOTO gypsy
END

CHAIN TRGYP02 gypsy
@71 /* You stand on the border between two worlds, my child, as you always have. What you seek will soon be in your grasp... when the time comes you will need to decide what it is you truly want. */
== RH#EVAJ @72 /* Cryptic enough to please any diviner. And I should know--I grew up amongst them. */
EXIT

I_C_T CELOGAN 40 coprith
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@73 /* Rightly, I think. No normal forest would behave in such a fashion. */
END

I_C_T TRFUED01 8 lurraxol
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#trademeet_feud","locals",0)~ THEN
@74 /* Ah, humans and their squabbles... it really always is the same thing, over and over again. I would stay away from it, <CHARNAME>, unless you care for the gold. */
DO ~SetGlobal("rh#trademeet_feud","locals",1)~
== TRFUED01 @75 /* Consider the offer carefully, if you please. */
END

I_C_T TRFUED05 8 alibakkar
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#trademeet_feud","locals",0)~ THEN
@74 /* Ah, humans and their squabbles... it really always is the same thing, over and over again. I would stay away from it, <CHARNAME>, unless you care for the gold. */
DO ~SetGlobal("rh#trademeet_feud","locals",1)~
== TRFUED05 @76 /* I would consider the offer carefully. */
END

// Windspear Hills

I_C_T GARREN 1 garren1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@77 /* Illusory magic, <CHARNAME>... and powerful, to have fooled even me. */
END

I_C_T GARREN 35 garren2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@78 /* A task I at least would be pleased to take up, not least of all to discover what power lay behind those illusions. */
END

I_C_T FIRKRA02 19 firkraag1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@79 /* Trust a dragon to have a strange approach to entertainment. Tread carefully, <CHARNAME>. */
END

I_C_T FIRKRA02 37 firkraag2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@80 /* Do what you will with the deed, <CHARNAME>, but I want no part of this. If you mean to fight any former companion, it will be without my aid. */
DO ~SetGlobal("rh#EvaJoined","GLOBAL",0) 
LeaveParty()
EscapeArea()~
END

// ---------------------------------------------
// Chapter 3
// ---------------------------------------------

// working for Aran

I_C_T ARAN 53 aran1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@81 /* Tasks, is it to be? Ah, these thieves really do have a most curious way of *not* following through with what was promised. */
END

I_C_T NALIAJ 311 aran2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@82 /* I wouldn't be so sure. When you have few other options, you learn to love whatever path you've been forced onto. */
== NALIAJ @83 /* Perhaps, but they seem to love it a little too much, if you ask me. */
END

I_C_T ARAN 18 aran3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@84 /* This certainly seems a simple enough game of trickery. */
END

I_C_T ARAN 41 aran4
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@85 /* (sigh) Yet more incompetence and irresponsibility from the Cowled ones. */
END

// working for Bodhi

I_C_T BODHI 6 bodhi1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@86 /* This woman, <CHARNAME>... few things make me uncomfortable, but she does. I would sooner take my chances with the Shadow Thieves. */
END

I_C_T BODHI 47 bodhi2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@87 /* Cold and cunning, but such is to be expected when you choose to work with vampires. */
END

I_C_T BODHI 56 bodhi3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@88 /* A very calculated rescue mission, is it to be? Still better than the alternative, I've no doubt. */
END

I_C_T BODHI 74 bodhi4
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@89 /* Mm, she doesn't ask for much, does she? */
END

I_C_T BODHI 107 bodhi5
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@85 /* (sigh) Yet more incompetence and irresponsibility from the Cowled ones. */
END

// ---------------------------------------------
// Chapter 4
// ---------------------------------------------

I_C_T PPCOWLED 1 ppcowled
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@90 /* Enchantment hangs about this man like a cloak, <CHARNAME>. I would not get too close. */
END

I_C_T PPAPHRIL 4 aphril1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@91 /* What a fascinating gift this one has. She speaks like a diviner, but she's clearly something else entirely. */
END

I_C_T PPAPHRIL 5 aphril2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@91 /* What a fascinating gift this one has. She speaks like a diviner, but she's clearly something else entirely. */
END

I_C_T PPAPHRIL 6 aphril3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@91 /* What a fascinating gift this one has. She speaks like a diviner, but she's clearly something else entirely. */
END

I_C_T PPDILI 2 dili
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@92 /* My, this one is quite the young illusionist. It's a pity she's trapped in here. */
END

I_C_T PPWANEV 2 wanev
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@93 /* It isn't just the inmates here who are mad, it would seem. */
END

I_C_T2 PPSAEM2 8 saemonmages
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@94 /* Hm... mad they may be, but a powerful asset all the same. I'd consider the pirate's suggestion carefully. */
END

I_C_T YOSHJ 113 yoshbetrayal
== RH#EVAJ IF ~ InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) !IfValidForPartyDialog("JAHEIRA")~ THEN
@95 /* I've known scoundrels in the past, but this, Yoshimo... I hadn't expected this of you. */
END

I_C_T JAHEIRAJ 524 yoshbetrajah
== RH#EVAJ IF ~ InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@95 /* I've known scoundrels in the past, but this, Yoshimo... I hadn't expected this of you. */
END

INTERJECT PLAYER1 3 slayer1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaRomanceActive","GLOBAL",1)~ THEN 
@96 /* Are you alright, <CHARNAME>? Perhaps you should rest for a moment... I don't think I've ever seen you so pale before. */
END
	++ @97 /* It must be the lighting down here. Don't worry. */ EXTERN RH#EVAJ slayer1.1
	++ @98 /* I felt... strange. Distant. But it's passed now. */ EXTERN RH#EVAJ slayer1.1
	++ @99 /* It's nothing, Evandra. Let's get moving. */ EXTERN RH#EVAJ slayer1.1

APPEND RH#EVAJ

IF ~~ slayer1.1
  SAY @100 /* As you say... but make sure you don't push yourself too far. That ritual seems to have had some side effects. */
COPY_TRANS PLAYER1 3 
END 
END

I_C_T PLAYER1 5 slayer2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN 
@101 /* By Lunitari, <CHARNAME>, whatever mad transformation just took hold of you, I'd suggest against a repeat performance! */
END

INTERJECT PLAYER1 7 slayer3 
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaRomanceActive","GLOBAL",1)~ THEN 
@102 /* <CHARNAME>... <CHARNAME>, can you hear me? You appear to be trapped in some sort of nightmare... */
END 
	++ @103 /* Stand back, Evandra! I think it's happening again! */ EXTERN RH#EVAJ slayer3.1
	++ @104 /* Don't get any closer... I don't think I can control it! */ EXTERN RH#EVAJ slayer3.1
	++ @105 /* Get away from me, woman, if you value your life! */ EXTERN RH#EVAJ slayer3.1

CHAIN RH#EVAJ slayer3.1
@106 /* What... what madness is this? Your lips are moving, but there's no sound...! */
DO ~SetGlobal("rh#EvaEndangerLovedOne","GLOBAL",1) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ 
EXIT

EXTEND_BOTTOM PLAYER1 10 
IF ~Global("rh#EvaEndangerLovedOne","GLOBAL",1) OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ GOTO 12  
IF ~Global("rh#EvaEndangerLovedOne","GLOBAL",1) InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN RH#EVAJ slayer3.2 
END 

CHAIN RH#EVAJ slayer3.2
@107 /* <CHARNAME>, you... at least you're yourself again. But had I gotten any closer, I think you would have stricken me down! */
= @108 /* Whatever is going on here, you need to do find some way to control it... otherwise, we may not last long enough to find Irenicus at all! */
EXIT

I_C_T SAHKNG01 15 sahkng
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@109 /* Are we to serve as entertainment now for this... creature? */
END

I_C_T SAHPR1 10 sahpr1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@110 /* Ancient? Perhaps the water conceals as much as it reveals, because this place doesn't look particularly old at all. */
END

// ---------------------------------------------
// Chapter 5
// ---------------------------------------------

I_C_T UDVITH 15 udvith1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@111 /* Your book of rituals? That certainly sounds intriguing. */
== UDVITH @112 /* Oh, it is a thing of beauty, my lady, though it's unfortunately not in my possession at the moment. */
END

I_C_T UDVITH 41 udvith2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@113 /* A sentiment I can certainly sympathize with. */
END

I_C_T UDSIMYAZ 5 simyaz
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@114 /* They're certainly a single-minded group, aren't they? */
END

I_C_T UDILSLA2 4 udilsla
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@115 /* What a strange thought... if we had time, I might be tempted to test it myself. Well, almost. */
END

I_C_T UDPHAE01 88 phaere
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) !IfValidForPartyDialog("Jaheira")
!IfValidForPartyDialog("HaerDalis")
!IfValidForPartyDialog("Imoen2")~ THEN
@116 /* Don't be too quick to dance to this one's tune, my friend. Other options may yet present themselves. */
END

I_C_T UDPHAE01 136 phaere2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@117 /* A demon? I cannot say I care for the sound of this at all. */
END

I_C_T JAHEIRAJ 473 phaerejah
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@118 /* Indeed, let's not be too quick to dance to this one's tune. Other options may yet present themselves. */
END

I_C_T HAERDAJ 113 phaerehae
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@118 /* Indeed, let's not be too quick to dance to this one's tune. Other options may yet present themselves. */
END

I_C_T IMOEN2J 23 phaereimo
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@118 /* Indeed, let's not be too quick to dance to this one's tune. Other options may yet present themselves. */
END

// ---------------------------------------------
// Chapter 6 & 7
// ---------------------------------------------

I_C_T C6ELHAN2 28 elhan1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@119 /* I... no. No, your manner would be different if the city were truly destroyed. */
END

I_C_T C6ELHAN2 45 elhan2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@120 /* Isolated and distrusted in any realm, I see. */
END

I_C_T C6ELHAN2 60 elhan3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@121 /* A geas? In my realm this would be the darkest of magics... even the suggestion might get an elven wizard exiled. */
== C6ELHAN2 @122 /* It is not ideal, I admit, but the situation warrants it. */
END

I_C_T C6BODHI 0 bodhi1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@123 /* No doubt the smell would have given you away no matter where you hid. */
END

I_C_T C6BODHI 19 bodhi2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@124 /* Oh... oh. I don't care for the sound of this at all. */
END

I_C_T SUDEMIN 15 sudemin1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@125 /* To rise so high and fall so low... at this point, perhaps I should not be surprised. */
END

I_C_T SUDEMIN 23 sudemin2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@126 /* I... I see. That sounds more like *defilement* than exile. */
END

I_C_T SUDEMIN 40 sudeminattack
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@127 /* There's a great deal I'll put up with, <CHARNAME>, but here I draw the line. */
DO ~SetGlobal("rh#EvaJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
END

I_C_T SUAVATAR 5 suavatar
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@128 /* To think that even an elf would wish for something so foolish... */
END

// ---------------------------------------------
// Tree of Life
// ---------------------------------------------

INTERJECT PLAYER1 33 tree1
== PLAYER1 IF ~!Global("rh#EvaRomanceActive","GLOBAL",2) InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@129 /* Evandra, the Wizard of High Sorcery, has slowly come to appreciate what this world has to offer, but it is not and will never be hers. Is she truly ready to risk everything for it? */ 
END
	++ @130 /* Evandra, this is my fight, not yours. You have the means to return home now, you don't need to stay here. */ EXTERN RH#EVAJ tree1.1
	++ @131 /* Irenicus is powerful, Evandra. More so than anything we've faced so far. You don't need to endanger yourself. */ EXTERN RH#EVAJ tree1.1
	++ @132 /* You know what lies ahead, Evandra. Are you prepared to face it? I need to know that you're committed. */ EXTERN RH#EVAJ tree1.1

INTERJECT PLAYER1 33 tree2
== PLAYER1 IF ~Global("rh#EvaRomanceActive","GLOBAL",2) InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@133 /* Evandra: Not quite a lover, but perhaps more than a friend, the nature of your relationship is not quite clear to either of you. Whatever doubts have plagued her in the past, there are none in her eyes as she gazes at you now. */ 
END
	++ @134 /* Evandra... I --- */ EXTERN RH#EVAJ tree2.1

APPEND RH#EVAJ

IF ~~ tree1.1
 SAY @135 /* Do I strike you as the type to give up right at the very end, <CHARNAME>? Even if I were willing to watch as this city burned... no. This wizard must be stopped, once and for all. */
COPY_TRANS PLAYER1 33
END

IF ~~ tree2.1
 SAY @136 /* Whatever you mean to say, <CHARNAME>, there's no need. Not at this point, at least. If anything, it's I who needs to speak right now. */
 = @137 /* My friend... I've called you that so often since we first met, even at times when other words might have fit better. Perhaps that was easier than admitting what you really are to me. */
 = @138 /* Shalori... beloved, in my own language. I've never used that word before, with you or with anyone else, but here, surrounded by our own people, I don't think it could be more appropriate. */
 = @139 /* Once we get through this, <CHARNAME>, once we defeat Irenicus, once we save both your soul and Suldanessellar, there will be time to speak. That much you can be sure of. */
COPY_TRANS PLAYER1 33
END
END

// ---------------------------------------------
// Hell
// ---------------------------------------------

I_C_T PLAYER1 25 hell
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@140 /* We... died? We must have, to find ourselves here, and yet... it's still not over, it would seem. Oh, <CHARNAME>, only with you could a conflict not end at the grave. */
END

I_C_T HELLJON 7 helljon1
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@141 /* No more tricks, no more trials... here at the end, it will just be your power against ours, wizard, and by Lunitari, yours will prove the lesser! */
END

I_C_T HELLJON 8 helljon2
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@141 /* No more tricks, no more trials... here at the end, it will just be your power against ours, wizard, and by Lunitari, yours will prove the lesser! */
END

I_C_T HELLJON 9 helljon3
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@141 /* No more tricks, no more trials... here at the end, it will just be your power against ours, wizard, and by Lunitari, yours will prove the lesser! */
END

I_C_T HELLJON 10 helljon4
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@141 /* No more tricks, no more trials... here at the end, it will just be your power against ours, wizard, and by Lunitari, yours will prove the lesser! */
END

// ---------------------------------------------
// Watcher's Keep
// ---------------------------------------------

I_C_T GORAPR 5 gorapr
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@142 /* Seeking long-forbidden knowledge... yes, I've heard this story many times before. */
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@142 /* Seeking long-forbidden knowledge... yes, I've heard this story many times before. */
END

I_C_T GORCAMB 18 gorcamb
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@143 /* A deck of many things... fascinating. I can't say I'm entirely averse to seeing such a thing first hand. */
== GORCAMB @144 /* The lady has good taste. And yourself, <CHARNAME>? Are you interested as well? */
END

I_C_T GORCAMB 18 gorcamb
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@143 /* A deck of many things... fascinating. I can't say I'm entirely averse to seeing such a thing first hand. */
== GORCAMB @144 /* The lady has good taste. And yourself, <CHARNAME>? Are you interested as well? */
END

I_C_T GORDEMO 2 gordemo
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@145 /* By Lunitari, I have never sensed anything like *this* before. Tread carefully, <CHARNAME>. */
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@145 /* By Lunitari, I have never sensed anything like *this* before. Tread carefully, <CHARNAME>. */
END

I_C_T GORODR1 19 gorodr
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@146 /* I don't care for the sound of that. */
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@146 /* I don't care for the sound of that. */
END

// ---------------------------------------------
// ToB
// ---------------------------------------------


I_C_T2 SAREV25A 61 sarevok1
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@147 /* A strange choice of companion, <CHARNAME>, though I have no objections. */
END

I_C_T SAREV25A 69 sarevok2
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@148 /* I hope the geas does not prove to be a mistake, <CHARNAME>. I would trust a man more without it. */
END

I_C_T AMSAEMON 4 saemon
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@149 /* By Lunitari, how utterly predictable. */
END

I_C_T AMBAR01 17 ambar01
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@150 /* Strange that she didn't think such a detail worth mentioning. */
END

I_C_T BAZEYE01 12 bazeye
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@151 /* This man calls himself a wizard and yet can't handle a simple kobold infestation? */
END

I_C_T2 BAZMONK 3 bazmonk
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@152 /* Of all the terrible things we've seen, <CHARNAME>, this one... I think this one will stay with me for quite some time to come. */
END

I_C_T BAZPAT01 16 bazpat01
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@153 /* In case the robes and the elven features didn't give it away, I suppose. */
END

I_C_T HGNYA01 6 nyalee
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@154 /* Divination tinged with madness, is it to be? Be wary, <CHARNAME>... whatever else this witch might be, she's clearly dangerous. */
END

I_C_T SARBAR01 8 sarbar01
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@155 /* Mm, unfortunately it happens far more often than one might expect. */
END

I_C_T SARBUL05 1 sarbully1
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@156 /* We won't get hurt, will we? I don't think we're the ones in danger here. */
== SARBUL05 @157 /* Don't get fresh, pointy-ears. Stick to your own affairs. */
END

I_C_T SAFE SARBUL05 2 sarbully2
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@158 /* Don't think I'm going to let you commit this... this barbarity, <CHARNAME>. */
DO ~SetGlobal("rh#EvaJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
END

I_C_T SARKIS01 28 kiser
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@159 /* My, this story grows more convoluted with every second that passes. */
END

I_C_T SARMEL01 48 melissan
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@160 /* Secret glades in enchanted forests... though I doubt what lies ahead of us will be quite as pleasant as that. */
END

I_C_T SARPEL01 6 sarpel
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@161 /* You'd think a coven of vampires had better things to do than hunt this poor fool. */
END

I_C_T SARTEM01 11 sartem
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@162 /* Being forewarned is a protection in and of itself. */
END

I_C_T VALYG25J 21 valygar1
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@163 /* Of course, Valygar, let's take the sleazy merchant's word for it. */
END

I_C_T VALYG25J 23 valygar2
== RH#EV25J IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN
@164 /* It was more than his experiments that were mad, Valygar. Unless you think it normal for wizards to befriend eyestalks? */
== VALYG25J @165 /* Nothing a wizard does is ever normal, elf. */
END

// Volo

EXTEND_BOTTOM SARVOLO 9 #2
+ ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + @166 /* Tell me about Evandra. */ + eva
END

CHAIN SARVOLO eva
@167 /* A wanderer from another world, Evandra has begun to make a name for herself here as well, as her skill at magic is only surpassed by the mysteries surrounding her. Perhaps that is only fitting for an illusionist. */
== SARVOLO IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ THEN @168 /* She is widely expected to become a planeswalker without peer, though where she ultimately chooses to make her home remains to be seen. */
== SARVOLO IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ THEN @169 /* Whether the love of <CHARNAME> and friendship of the people of Suldanessellar are enough to anchor her to this realm remains to be seen, though perhaps there is no need to choose. She is widely expected to become a planeswalker without peer. */
== RH#EV25J @170 /* Planeswalking, is it? An intriguing idea, to be sure. */
EXTERN SARVOLO 9

// Solar

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") !Global("rh#EvaRomanceActive","GLOBAL",2) ~ DO ~SetGlobal("rh#EvaSolarChoice","GLOBAL",1)~ EXTERN RH#EV25J solar1
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2) Global("rh#EvaSolarChoice","GLOBAL",0)~ DO ~SetGlobal("rh#EvaSolarChoice","GLOBAL",1)~ EXTERN RH#EV25J solar2
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2) Global("rh#EvaSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#EvaSolarLeave","GLOBAL",1)~ EXTERN RH#EV25J solar3
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2) Global("rh#EvaSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#EvaSolarLeave","GLOBAL",1)~ EXTERN RH#EV25J solar3
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2) Global("rh#EvaSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#EvaSolarLeave","GLOBAL",1)~ EXTERN RH#EV25J solar3
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) InMyArea("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2) Global("rh#EvaSolarStay","GLOBAL",0) ~ DO ~SetGlobal("rh#EvaSolarStay","GLOBAL",1)~ EXTERN RH#EV25J solar4
END

APPEND RH#EV25J

IF ~~ solar1
 SAY @171 /* Destiny has treated you cruelly so far, <CHARNAME>, and I don't think ascending to godhood will change that. Choose as you will, but sometimes the best thing to do is to forge your own path, away from the expectations of others. */
COPY_TRANS FINSOL01 27
END

IF ~~ solar2
 SAY @172 /* Mortality or divinity, shalori... a part of my had guessed that it would always come to this, but I didn't want to believe it. */
 	++ @173 /* Evandra... what do you think I should do? */ + solar2.1
 	++ @174 /* Nor did I. I don't want to leave you behind. */ + solar2.2
 	++ @175 /* If this is my birthright, what choice do I have? */ + solar2.3
END

IF ~~ solar2.1
 SAY @176 /* I could only tell you to stay, <CHARNAME>. */
IF ~~ + solar2.4
END

IF ~~ solar2.2
 SAY @177 /* I could follow you many places, <CHARNAME>, but not this far. */
IF ~~ + solar2.4
END

IF ~~ solar2.3
 SAY @178 /* I don't know, <CHARNAME>. That's for you to decide. */
IF ~~ + solar2.4
END

IF ~~ solar2.4
 SAY @179 /* To think of how recently we were discussing wandering the planes together... I knew you were moving beyond reach, but I hadn't realized... hadn't guessed quite what that would mean. */
 = @180 /* If this is the path you think correct, then... then I will not try to convince you otherwise. I've faced loss in the past, and I'll face it again in the future. I will miss you, but... I'll cherish what we had all the same. */
COPY_TRANS FINSOL01 27
END

IF ~~ solar3
 SAY @181 /* I had hoped... well, I suppose it does not matter now. I wish you the best, <CHARNAME>. Farewell. */
COPY_TRANS FINSOL01 29
END

IF ~~ solar4
 SAY @182 /* Mortality and freedom... as gifts go, shalori, this is a very interesting one. But I'm glad of it. Gladder than I could put into words. */
COPY_TRANS FINSOL01 32
END
END