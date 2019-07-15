// ---------------------------------------------
// Fate Spirit
// ---------------------------------------------

EXTEND_TOP FATESP 6 #4
+ ~!Dead("rh#Eva") !InMyArea("rh#Eva") Global("rh#EvaSummoned","GLOBAL",0)~ + @0 /* Bring me Evandra, the elven mage. */ 
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("rh#ev25",[1999.1228],1)
	SetGlobal("rh#EvaSummoned","GLOBAL",1)~ GOTO 8
END