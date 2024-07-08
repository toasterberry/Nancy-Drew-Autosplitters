// Nancy Drew: The Phantom of Venice
// Written by Toasterberry, Scenes by Yandema
// https://linktr.ee/toasterberry

state("PhantomOfVenice") {
    string5 scene : 0xFDE30, 0x4, 0x8, 0x10, 0xC, 0x0;
}

startup {
    var universal = new Dictionary<string, string>
    {
        { "s1271", "Colin" },
        { "s2320", "Helena" },
        { "s2333", "Banco Del Oro Card" },
        { "s4121", "Pick up Binoculars" },
        { "s2949", "Fango�s Door is Locked" },
        { "s1000", "Margherita" },
        { "s2070", "Spy on Fango" },
        { "s1611", "Answer Prudence Call" },
        { "s3544", "Hairpin" },
        { "s4724", "Found Bug" },
        { "s2925", "In Fango�s Office" },
        { "s2943", "Hidden in the Closet" },
        { "s4421", "Correct Pigeon" },
        { "s4419", "Translated Samantha Quick Note" },
        { "s5227", "Sunglasses" },
        { "s2334", "More Chocolates" },
        { "s1300", "Enrico" },
        { "s4460", "Scopa Explanation Start" },
        { "s1317", "Scopa Start" },
        { "s1314", "Scopa Done" },
        { "s2930", "Fango�s Computer" },
        { "s3545", "Attacked by Phantom" },
        { "s2037", "Margherita in Argon Office" },
        { "s5819", "Rialto Market Bottle" },
        { "s3252", "Tesserae 1 Start" },
        { "s3253", "Tesserae 2 Start" },
        { "s3254", "Tesserae 3 Start" },
        { "s3255", "Tesserae 4 Start" },
        { "s3251", "Tesserae Done" },
        { "s2602", "Dancing Start" },
        { "s2750", "Dancing Won" },
        { "s5005", "Falling Urn" },
        { "s3800", "At Zattere" },
        { "s3805", "Zattere Unlocked" },
        { "s3872", "(Zattere) Top Middle Room" },
        { "s3873", "(Zattere) Top Right Room" },
        { "s3891", "Levers 1" },
        { "s3876", "(Zattere) Middle Right Room" },
        { "s3879", "(Zattere) Bottom Right Room" },
        { "s3893", "Levers 2" },
        { "s3878", "(Zattere) Middle Bottom Room" },
        { "s3877", "(Zattere) Bottom Left Room" },
        { "s3892", "Levers 3" },
        { "s3874", "(Zattere) Middle Left Room" },
        { "s3871", "(Zattere) Top Left Room" },
        { "s3890", "Levers 4" },
        { "s3851", "Got Sapphire" },
        { "s4126", "ATM Bugs" },
        { "s1332", "Delivered Sapphire" },
        { "s3272", "Puzzle Box Opened" },
        { "s3235", "Pen Bug Planting" },
        { "s1045", "See Back of Flyer" },
        { "s2911", "See Scopa Cards" },
        { "s3000", "111#046" },
        { "s3573", "Last Page of Italian Guide" },
        { "s5617", "Stakeout" },
        { "5621", "Stakeout Done" },
        { "s4422", "Propano Key" },
        { "s6730", "Drains Start" },
        { "s6616", "Drains Done" },
        { "s6709", "Locked in Safe Room" },
        { "s6719", "Escaped from Tunnels" },
        { "s5490", "Captured Helena" }.
        { "s6500", "End" }
    };

    var death = new Dictionary<string, string>
    {
        { "s1202", "Colin" },
        { "s2322", "Helena" },
        { "s5812", "Translate Sign" },
        { "s1010", "Margherita" },
        { "s2048", "BEES" },
        { "s2074", "End" }
    };

    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("deathp", false, "Death%");

    foreach (var entry in universal)
        settings.Add(entry.Key, false, entry.Value);

    foreach (var entry in death)
        settings.Add(entry.Key, false, entry.Value);

    vars.completed = new HashSet<string>();
}

onStart {
    vars.completed.Clear();
}

start {
    return old.scene != current.scene
        && current.scene == "s6420";
}

split {
    return old.scene != current.scene
        && settings[current.scene]
        && vars.completed.Add(current.scene);
}

reset {
    return old.scene != current.scene
        && current.scene == "s6455";
}
