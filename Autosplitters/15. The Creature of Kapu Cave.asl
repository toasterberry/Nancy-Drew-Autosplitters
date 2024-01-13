// Nancy Drew: The Creature of Kapu Cave Autosplitter
// Written by Toasterberry, scene values & splits by Yandema
// https://linktr.ee/toasterberry

state("Game")
{
	uint sceneval : 0xDCDC0, 0xE;
}

startup
{
	// Autosplitter settings
	settings.Add("mike",true,"Mike");
	settings.Add("nedcall",true,"Ned Call");
	settings.Add("neckstart",true,"Start Necklace");
	settings.Add("neckfinish",true,"Finish Necklace");
	settings.Add("bridge",true,"Bridge Cutscene");
	settings.Add("trunkopen",true,"Opened Trunk");
	settings.Add("carlift",true,"Lifted Car");
	settings.Add("meetcraven",true,"Meet Craven");
	settings.Add("seedf",true,"Finished Seeds");
	settings.Add("radf",true,"Radio Fixed");
	settings.Add("fstart",true,"Fishing Start");
	settings.Add("MIKEKARAgone",true,"Mike Gone");
	settings.Add("joebleh",true,"Joe Knocked Out");
	settings.Add("rock3f",true,"Three Finger Rock");
	settings.Add("kimeet",true,"Meet Dr. Kim");
	settings.Add("YOUAREFRANK",true,"You are Frank");
	settings.Add("thehoss",true,"Pawnbroker");
	settings.Add("pua",true,"Pua");
	settings.Add("shicecor",true,"Shave Ice Correct");
	settings.Add("seechart",true,"See Chart");
	settings.Add("REEEEEEE",true,"Craven Rage");
	settings.Add("kapucave",true,"Kapu Cave");
	settings.Add("numbers",true,"119,456");
	settings.Add("zzz",true,"Craven Asleep");
	settings.Add("lockeropen",true,"Locker Open");
	settings.Add("computer",true,"Computer");
	settings.Add("lhilhilhi",true,"Tested Hilihili Plant");
	settings.Add("flagbeets",true,"Fritillated Flag Beetles");
	settings.Add("noser",true,"Nose Ring");
	settings.Add("caveopen",true,"Kapu Cave Open");
	settings.Add("dodge",true,"Dodge Boulder");
	settings.Add("snork",true,"Snorkeling Equipment");
	settings.Add("currents",true,"Currents Done");
	settings.Add("seebeets",true,"See Beetles");
}

start
{
	if (current.sceneval == 6510) //Begining Scene Value
	{
		vars.mike = !settings["mike"];
		vars.nedcall = !settings["nedcall"];
		vars.neckstart = !settings["neckstart"];
		vars.neckfinish = !settings["neckfinish"];
		vars.bridge = !settings["bridge"];
		vars.trunkopen = !settings["trunkopen"];
		vars.carlift = !settings["carlift"];
		vars.meetcraven = !settings["meetcraven"];
		vars.seedf = !settings["seedf"];
		vars.radf = !settings["radf"];
		vars.fstart = !settings["fstart"];
		vars.MIKEKARAgone = !settings["MIKEKARAgone"];
		vars.joebleh = !settings["joebleh"];
		vars.rock3f = !settings["rock3f"];
		vars.kimeet = !settings["kimeet"];
		vars.YOUAREFRANK = !settings["YOUAREFRANK"];
		vars.thehoss = !settings["thehoss"];
		vars.pua = !settings["pua"];
		vars.shicecor = !settings["shicecor"];
		vars.seechart = !settings["seechart"];
		vars.REEEEEEE = !settings["REEEEEEE"];
		vars.kapucave = !settings["kapucave"];
		vars.numbers = !settings["numbers"];
		vars.zzz = !settings["zzz"];
		vars.lockeropen = !settings["lockeropen"];
		vars.computer = !settings["computer"];
		vars.lhilhilhi = !settings["lhilhilhi"];
		vars.flagbeets = !settings["flagbeets"];
		vars.noser = !settings["noser"];
		vars.caveopen = !settings["caveopen"];
		vars.dodge = !settings["dodge"];
		vars.snork = !settings["snork"];
		vars.currents = !settings["currents"];
		vars.seebeets = !settings[""];
		
		return true;
	}
}

split
{
	uint s = current.sceneval;
	switch (s) {
		case 6500: // End
			return true;
			
		case 1013:
			if (!vars.mike) { vars.mike = true; return true; }
			break;
					
		case 2324:
			if (!vars.nedcall) { vars.nedcall = true; return true; }
			break;
			
		case 3176:
			if (!vars.neckstart) { vars.neckstart = true; return true; }
			break;
				
		case 3178:
			if (!vars.neckfinish) { vars.neckfinish = true; return true; }
			break;
				
		case 3817:
			if (!vars.bridge) { vars.bridge = true; return true; }
			break;
				
		case 2634:
			if (!vars.trunkopen) { vars.trunkopen = true; return true; }
			break;
				
		case 2734:
			if (!vars.carlift) { vars.carlift = true; return true; }
			break;
				
		case 1100:
			if (!vars.meetcraven) { vars.meetcraven = true; return true; }
			break;
				
		case 1124:
			if (!vars.seedf) { vars.seedf = true; return true; }
			break;
				
		case 2651:
			if (!vars.radf) { vars.radf = true; return true; }
			break;
				
		case 2410:
			if (!vars.fstart) { vars.fstart = true; return true; }
			break;
				
		case 2990:
			if (!vars.MIKEKARAgone) { vars.MIKEKARAgone = true; return true; }
			break;
				
		case 1842:
			if (!vars.joebleh) { vars.joebleh = true; return true; }
			break;
				
		case 4710:
			if (!vars.rock3f) { vars.rock3f = true; return true; }
			break;
				
		case 1300:
			if (!vars.kimeet) { vars.kimeet = true; return true; }
			break;
				
		case 1435:
			if (!vars.YOUAREFRANK) { vars.YOUAREFRANK = true; return true; }
			break;
				
		case 1560:
			if (!vars.thehoss) { vars.thehoss = true; return true; }
			break;
				
		case 1200:
			if (!vars.pua) { vars.pua = true; return true; }
			break;
				
		case 1909:
			if (!vars.shicecor) { vars.shicecor = true; return true; }
			break;
				
		case 2977:
			if (!vars.seechart) { vars.seechart = true; return true; }
			break;
				
		case 3548:
			if (!vars.REEEEEEE) { vars.REEEEEEE = true; return true; }
			break;
				
		case 3201:
			if (!vars.kapucave) { vars.kapucave = true; return true; }
			break;
				
		case 2742:
			if (!vars.numbers) { vars.numbers = true; return true; }
			break;
				
		case 3516:
			if (!vars.zzz) { vars.zzz = true; return true; }
			break;
				
		case 3596:
			if (!vars.lockeropen) { vars.lockeropen = true; return true; }
			break;
				
		case 2016:
			if (!vars.computer) { vars.computer = true; return true; }
			break;
				
		case 2761:
			if (!vars.lhilhilhi) { vars.lhilhilhi = true; return true; }
			break;
				
		case 2767:
			if (!vars.flagbeets) { vars.flagbeets = true; return true; }
			break;
				
		case 3240:
			if (!vars.noser) { vars.noser = true; return true; }
			break;
				
		case 3228:
			if (!vars.caveopen) { vars.caveopen = true; return true; }
			break;
				
		case 3372:
			if (!vars.dodge) { vars.dodge = true; return true; }
			break;
				
		case 1832:
			if (!vars.snork) { vars.snork = true; return true; }
			break;
				
		case 3401:
			if (!vars.currents) { vars.currents = true; return true; }
			break;
				
		case 3473:
			if (!vars.seebeets) { vars.seebeets = true; return true; }
			break;
	}
}
