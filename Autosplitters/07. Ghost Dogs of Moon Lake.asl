// Nancy Drew: Ghost Dogs of Moon Lake Autosplitter
// Written by Toasterberry, Splits by Yandema
// https://linktr.ee/toasterberry

state("Game")
{
	uint sceneval : 0x690C, 0x0;
}

startup
{
	// Autosplitter settings
	settings.Add("salcall",true,"Sally Call");
	settings.Add("vivcall",true,"Vivian Call");
	settings.Add("red1",true,"Red Knott 1");
	settings.Add("doggrr",true,"Ghost Dogs Attack!");
	settings.Add("red2",true,"Red Knott 2");
	settings.Add("rbirbscr",true,"Red Bird Scared");
	settings.Add("fixboat",true,"Fixed Boat");
	settings.Add("meetem",true,"Meet Em");
	settings.Add("ylwbirb",true,"Yellow Bird");
	settings.Add("sndppr",true,"Sandpaper");
	settings.Add("gotpic",true,"Got Picture");
	settings.Add("camogear",true,"Camo Gear");
	settings.Add("meetjeff",true,"Meet Jeff");
	settings.Add("blbirb",true,"Blue Bird");
	settings.Add("orbirb",true,"Orange Bird");
	settings.Add("brbirb",true,"Brown Bird");
	settings.Add("jeffpic",true,"Give Jeff Picture");
	settings.Add("hawk",true,"Hawk");
	settings.Add("fireesc",true,"Escaped Fire");
	settings.Add("fireout",true,"Put Out Fire");
	settings.Add("bldopen",true,"Baldo Opened");
	settings.Add("ccola",true,"Combo Cola");
	settings.Add("batt",true,"Batteries");
	settings.Add("speakez",true,"Speakeasy");
	settings.Add("passage",true,"Passage Opened");
	settings.Add("mmkey",true,"MM Key");
	settings.Add("wtrdrain",true,"Water Drained");
	settings.Add("clprt",true,"Culprit Appears");
}

start
{
	if (current.sceneval == 6000) //Begining Scene Value
	{
		vars.salcall = !settings["salcall"];
		vars.vivcall = !settings["vivcall"];
		vars.red1 = !settings["red1"];
		vars.doggrr = !settings["doggrr"];
		vars.red2 = !settings["red2"];
		vars.rbirbscr = !settings["rbirbscr"];
		vars.fixboat = !settings["fixboat"];
		vars.meetem = !settings["meetem"];
		vars.ylwbirb = !settings["ylwbirb"];
		vars.sndppr = !settings["sndppr"];
		vars.gotpic = !settings["gotpic"];
		vars.camogear = !settings["camogear"];
		vars.meetjeff = !settings["meetjeff"];
		vars.blbirb = !settings["blbirb"];
		vars.orbirb = !settings["orbirb"];
		vars.brbirb = !settings["brbirb"];
		vars.jeffpic = !settings["jeffpic"];
		vars.hawk = !settings["hawk"];
		vars.fireesc = !settings["fireesc"];
		vars.fireout = !settings["fireout"];
		vars.bldopen = !settings["bldopen"];
		vars.ccola = !settings["ccola"];
		vars.batt = !settings["batt"];
		vars.speakez = !settings["speakez"];
		vars.passage = !settings["passage"];
		vars.mmkey = !settings["mmkey"];
		vars.wtrdrain = !settings["wtrdrain"];
		vars.clprt = !settings["clprt"];
		
		return true;
	}
}

split
{
	uint s = current.sceneval;
	switch (s) {
		case 6010: // End
			return true;
			
		case 1600:
			if (!vars.salcall) { vars.salcall = true; return true; }
			break;
			
		case 1900:
			if (!vars.vivcall) { vars.vivcall = true; return true; }
			break;
			
		case 1400:
			if (!vars.red1) { vars.red1 = true; return true; }
			break;
				
		case 2090:
			if (!vars.doggrr) { vars.doggrr = true; return true; }
			break;
				
		case 1500:
			if (!vars.red2) { vars.red2 = true; return true; }
			break;
				
		case 5497:
			if (!vars.rbirbscr) { vars.rbirbscr = true; return true; }
			break;
				
		case 2421:
			if (!vars.fixboat) { vars.fixboat = true; return true; }
			break;
				
		case 1000:
			if (!vars.meetem) { vars.meetem = true; return true; }
			break;
				
		case 5491:
			if (!vars.ylwbirb) { vars.ylwbirb = true; return true; }
			break;
				
		case 1515:
			if (!vars.sndppr) { vars.sndppr = true; return true; }
			break;
				
		case 2091:
			if (!vars.gotpic) { vars.gotpic = true; return true; }
			break;
				
		case 1029:
			if (!vars.camogear) { vars.camogear = true; return true; }
			break;
				
		case 1200:
			if (!vars.meetjeff) { vars.meetjeff = true; return true; }
			break;
				
		case 5489:
			if (!vars.blbirb) { vars.blbirb = true; return true; }
			break;
				
		case 5495:
			if (!vars.orbirb) { vars.orbirb = true; return true; }
			break;
				
		case 5493:
			if (!vars.brbirb) { vars.brbirb = true; return true; }
			break;
				
		case 1277:
			if (!vars.jeffpic) { vars.jeffpic = true; return true; }
			break;
				
		case 2786:
			if (!vars.hawk) { vars.hawk = true; return true; }
			break;
				
		case 2886:
			if (!vars.fireesc) { vars.fireesc = true; return true; }
			break;
				
		case 2871:
			if (!vars.fireout) { vars.fireout = true; return true; }
			break;
				
		case 4440:
			if (!vars.bldopen) { vars.bldopen = true; return true; }
			break;	
			
		case 3415:
			if (!vars.ccola) { vars.ccola = true; return true; }
			break;
				
		case 3425:
			if (!vars.batt) { vars.batt = true; return true; }
			break;
				
		case 3815:
			if (!vars.speakez) { vars.speakez = true; return true; }
			break;
				
		case 3870:
			if (!vars.passage) { vars.passage = true; return true; }
			break;
				
		case 4630:
			if (!vars.mmkey) { vars.mmkey = true; return true; }
			break;
				
		case 4266:
			if (!vars.wtrdrain) { vars.wtrdrain = true; return true; }
			break;
				
		case 4390:
			if (!vars.clprt) { vars.clprt = true; return true; }
			break;
	}
}