-- Define sets and vars used by this job file.
-- visualized at http://www.ffxiah.com/node/194
-- Happo
-- Hachiya

function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    -- Precast sets to enhance JAs
    sets.precast.JA['Mijin Gakure'] = { legs="Mochizuki Hakama +1" }
    sets.precast.JA['Futae'] = { hands="Iga Tekko +2" }
    sets.precast.JA['Provoke'] = { 
        ear1="Friomisi Earring",
        ear2="Trux Earring", 
        feet="Mochizuki Kyahan +1"
    }
    sets.precast.JA.Sange = { body="Mochizuki Chainmail +1" }
    
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {
      head="Felistris Mask",
      body="Mochizuki Chainmail +1",
      hands="Mochizuki Tekko +1",
      legs="Nahtirah Trousers",
      feet="Otronif Boots +1"
    }
      
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
    
    sets.TreasureHunter = { waist="Chaac Belt" }
    sets.CapacityMantle = { back="Mecistopins Mantle" }
    sets.WSDayBonus     = { head="Gavialis Helm" }
    sets.WSBack         = { head="Trepidity Mantle" }
    sets.Rajas          = { ring1="Rajas Ring" }

    sets.EmptyAmmo      = { ammo="" }
    sets.HachiAmmo      = { ammo="Hachiya Shuriken" }
    sets.SuppaAmmo      = { ammo="Suppa Shuriken" }

    -- Set for acc on steps, since Yonin drops acc a fair bit
    sets.precast.Step = {
        head="Ptica Headgear",
        body="Mochizuki Chainmail +1",
        neck="Iqabi Necklace",
        hands="Buremte Gloves",
        back="Yokaze Mantle",
        waist="Anguinus Belt",
        legs="Hachiya Hakama +1",
        feet="Mochizuki Kyahan +1"
    }
    -- Ranged
    sets.precast.RA = {
        head="Uk'uxkaj Cap",
        hands="Buremte Gloves",
        legs="Nahtirah Trousers",
        feet="Wurrukatte Boots"
    }
    sets.midcast.RA = {
        head="Umbani Cap",
        neck="Iqabi Necklace",
        body="Mochizuki Chainmail +1",
        hands="Hachiya Tekko +1",
        ring1="Longshot Ring",
        ring2="Hajduk Ring",
        back="Yokaze Mantle",
        --waist="Hurling Belt",
        legs="Hachiya Hakama +1",
        feet="Scopuli Nails +1"
    }
    sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
        body="Mekosuchinae Harness"
    })
    sets.midcast.RA.TH = set_combine(sets.midcast.RA, set.TreasureHunter)
    
    -- Fast cast sets for spells
    sets.precast.FC = {
        --head="Uk'uxkaj Cap",
        ear1="Loquacious Earring",
        ring1="Prolix Ring",
        hands="Buremte Gloves",
        body="Dread Jupon",
        legs="Kaabnax Trousers",
        feet="Mochizuki Kyahan +1" -- special enhancement for casting ninjutsu III
    }
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, { neck="Magoraga Beads", body="Mochizuki Chainmail +1" })
    
    -- Midcast Sets
    sets.midcast.FastRecast = {
        head="Uk'uxkaj Cap",
        body="Mochizuki Chainmail +1",
        ear1="Loquacious Earring",
        ring1="Prolix Ring",
        legs="Wukong's Hakama +1",
        feet="Mochizuki Kyahan +1"
    }
      
    -- any ninjutsu cast on self
    sets.midcast.SelfNinjutsu = sets.midcast.FastRecast
    
    sets.midcast.Utsusemi = set_combine(sets.midcast.SelfNinjutsu, {feet="Iga Kyahan +2"})

    -- skill ++ 
    sets.midcast.Ninjutsu = {
        head="Hachiya Hatsuburi +1",
        ear1="Lifestorm Earring",
        ear2="Psystorm Earring",
        body="Mekosuchinae Harness",
        hands="Mochizuki Tekko +1",
        ring1="Sangoma Ring",
        ring2="Perception Ring",
        back="Yokaze Mantle",
        waist="Chaac Belt",
        legs="Wukong's Hakama +1",
        feet="Mochizuki Kyahan +1"
    }
    -- Nuking Ninjutsu (skill & magic attack)
    sets.midcast.ElementalNinjutsu = {
        head="Mochizuki Hatsuburi +1",
        ear1="Friomisi Earring",
        ear2="Crematio Earring",
        neck="Stoicheion Medal",
        body="Mekosuchinae Harness",
        hands="Mochizuki Tekko +1",
        back="Aput Mantle",
        ring1="Sangoma Ring",
        ring2="Acumen Ring",
        waist="Caudata Belt",
        legs="Shneddick Tights +1",
        feet="Hachiya Kyahan +1"
    }
    
    sets.idle = {
        --ammo="Yetshila",
        head="Ptica Headgear",
        neck="Twilight Torque",
        ear1="Brutal Earring",
        ear2="Trux Earring",
        body="Mes'yohi Haubergeon",
        hands="Otronif Gloves +1",
        ring1="Patricius Ring",
        ring2="Dark Ring",
    	back="Repulse Mantle",
        waist="Windbuffet Belt +1",
        legs="Hachiya Hakama +1",
        feet="Danzo Sune-ate"
     }

    sets.idle.Regen = {
        head="Ocelomeh Headpiece +1",
        neck="Twilight Torque",
        ear1="Brutal Earring",
        ear2="Trux Earring",
        body="Kheper Jacket",
        hands="Otronif Gloves +1",
        ring1="Dark Ring",
        ring2="Paguroidea Ring",
        back="Repulse Mantle",
        waist="Windbuffet Belt +1",
        legs="Hachiya Hakama +1",
        feet="Danzo Sune-ate"
    }
    
    sets.idle.Town = set_combine(sets.idle, {
        head="Ptica Headgear",
        neck="Hope Torque",
        body="Mes'yohi Haubergeon",
        hands="Sasuke Tekko +1",
        ring1="Ramuh Ring +1",
        ring2="Epona's Ring",
        legs="Hachiya Hakama +1",
        back="Vellaunus' Mantle +1"
    })
    
    sets.idle.Weak = sets.idle

    -- Defense sets
    sets.defense.PDT = {
        head="Ptica Headgear",
        neck="Twilight Torque",
        body="Otronif Harness +1",
        hands="Otronif Gloves +1",
        ring1="Patricius Ring",
        ring2="Dark Ring",
        back="Repulse Mantle",
        legs="Otronif Brais +1",
        feet="Otronif Boots +1"
    }
    
    sets.defense.MDT = set_combine(sets.defense.PDT, {
        head="Felistris Mask",
        neck="Twilight Torque",
        hands="Otronif Gloves +1",
        feet="Otronif Boots +1"
    })
    
    sets.DayMovement = {feet="Danzo sune-ate"}
    sets.NightMovement = {feet="Hachiya Kyahan +1"}

    -- Normal melee group without buffs
    sets.engaged = {
        ammo="Happo Shuriken",
        head="Ptica Headgear",
        neck="Asperity Necklace",
        ear1="Dudgeon Earring",
        ear2="Heartseeker Earring",
        body="Hachiya Chainmail +1",
        hands="Otronif Gloves +1",
        ring1="Oneiros Ring",
        ring2="Epona's Ring",
        back="Vellaunus' Mantle +1",
        waist="Patentia Sash",
        legs="Mochizuki Hakama +1",
        feet="Otronif Boots +1"
    }
    
    -- serious event set
    sets.engaged.Mid = set_combine(sets.engaged, {
        ammo="Happo Shuriken",
        neck="Iga Erimaki",
        body="Mochizuki Chainmail +1",
        hands="Sasuke Tekko +1",
        back="Yokaze Mantle",
        feet="Mochizuki Kyahan +1",
    })

    sets.engaged.Acc = set_combine(sets.engaged.Mid, {
        ammo="Happo Shuriken",
        neck="Iqabi Necklace",
        ring1="Ramuh Ring +1",
        waist="Olseni Belt"
    })

    sets.engaged.NormalPDT = {
        head="Ptica Headgear",
        body="Otronif Harness +1",
        neck="Agitator's Collar",
        hands="Otronif Gloves +1",
        ring1="Patricius Ring",
        back="Repulse Mantle",
        legs="Otronif Brais +1",
        feet="Otronif Boots +1"
    }

    sets.engaged.PDT = set_combine(sets.engaged, sets.engaged.NormalPDT)
    sets.engaged.Mid.PDT = set_combine(sets.engaged.Mid, sets.engaged.NormalPDT)
    sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, sets.engaged.NormalPDT)

    sets.engaged.HastePDT = {
        neck="Agitator's Collar",
        hands="Otronif Gloves +1",
        body="Otronif Harness +1",
        ring1="Patricius Ring",
        legs="Otronif Brais +1",
        feet="Otronif Boots +1"
    }

    -- Delay Cap from spell + songs alone
    sets.engaged.MaxHaste = set_combine(sets.engaged, {
        head="Felistris Mask",
        ear1="Brutal Earring",
        ear2="Trux Earring",
        body="Thaumas Coat",
        back="Rancorous Mantle",
        waist="Windbuffet Belt +1",
        legs="Otronif Brais +1"
    })

    sets.engaged.Mid.MaxHaste = set_combine(sets.engaged.MaxHaste, {
        head="Whirlpool Mask",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Mes'yohi Haubergeon",
        hands="Sasuke Tekko +1",
        back="Yokaze Mantle",
        legs="Wukong's Hakama +1"
    })
    sets.engaged.Acc.MaxHaste = set_combine(sets.engaged.Mid.MaxHaste, {
        neck="Iqabi Necklace",
        ear1="Zennaroi Earring",
        ear2="Trux Earring",
        hands="Sasuke Tekko +1",
        ring1="Ramuh Ring +1",
        waist="Olseni Belt",
        legs="Wukong's Hakama +1",
        feet="Mochizuki Kyahan +1"
    })
    sets.engaged.PDT.MaxHaste = set_combine(sets.engaged.MaxHaste, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.MaxHaste = set_combine(sets.engaged.Mid.MaxHaste, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.MaxHaste = set_combine(sets.engaged.Acc.MaxHaste, sets.engaged.HastePDT)

    -- Haste 40 to 43%
    sets.engaged.Haste_40 = set_combine(sets.engaged.MaxHaste, {
        legs="Hachiya Hakama +1"
    })
    sets.engaged.Mid.Haste_40 = set_combine(sets.engaged.Mid.MaxHaste, {
        legs="Hachiya Hakama +1"
    })
    sets.engaged.Acc.Haste_40 = set_combine(sets.engaged.Acc.MaxHaste, { 
        legs="Hachiya Hakama +1"
    })
    sets.engaged.PDT.Haste_40 = set_combine(sets.engaged.Haste_40, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.Haste_40 = set_combine(sets.engaged.Mid.Haste_40, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.Haste_40 = set_combine(sets.engaged.Acc.Haste_40, sets.engaged.HastePDT)
     
    -- 35% Haste
    sets.engaged.Haste_35 = set_combine(sets.engaged.Haste_40, {
        head="Ptica Headgear",
        legs="Mochizuki Hakama +1"
    })
    sets.engaged.Mid.Haste_35 = set_combine(sets.engaged.Mid.Haste_40, {
        head="Ptica Headgear",
        legs="Mochizuki Hakama +1",
        feet="Mochizuki Kyahan +1"
    })
    sets.engaged.Acc.Haste_35 = set_combine(sets.engaged.Acc.Haste_40, {
        head="Ptica Headgear",
        ear1="Dudgeon Earring",
        ear2="Heartseeker Earring",
        legs="Wukong's Hakama +1"
    })
    sets.engaged.PDT.Haste_35 = set_combine(sets.engaged.Haste_35, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.Haste_35 = set_combine(sets.engaged.Mid.Haste_35, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.Haste_35 = set_combine(sets.engaged.Acc.Haste_35, sets.engaged.HastePDT)
    
    -- 30% Haste
    sets.engaged.Haste_30 = set_combine(sets.engaged.Haste_35, {
        body="Mochizuki Chainmail +1"
    })
    sets.engaged.Mid.Haste_30 = set_combine(sets.engaged.Mid.Haste_35, {
        body="Mochizuki Chainmail +1"
    })
    sets.engaged.Acc.Haste_30 = set_combine(sets.engaged.Acc.Haste_35, {
        body="Mochizuki Chainmail +1"
    })
    sets.engaged.PDT.Haste_30 = set_combine(sets.engaged.Haste_30, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.Haste_30 = set_combine(sets.engaged.PDT.Haste_30, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.Haste_30 = set_combine(sets.engaged.Acc.Haste_30, sets.engaged.HastePDT)
    
    -- 25% Haste
    sets.engaged.Haste_25 = set_combine(sets.engaged.Haste_30, {
        ear2="Suppanomimi"
    })
    sets.engaged.Mid.Haste_25 = set_combine(sets.engaged.Mid.Haste_30, {
        neck="Iga Erimaki",
        ear1="Brutal Earring",
        ear2="Suppanomimi"
    })
    sets.engaged.Acc.Haste_25 = set_combine(sets.engaged.Acc.Haste_30, {
        legs="Hachiya Hakama +1"
    })
    sets.engaged.PDT.Haste_25 = set_combine(sets.engaged.Haste_25, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.Haste_25 = set_combine(sets.engaged.PDT.Haste_25, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.Haste_25 = set_combine(sets.engaged.Acc.Haste_25, sets.engaged.HastePDT)
    
    -- 5 - 20% Haste 
    sets.engaged.Haste_20 = set_combine(sets.engaged.Haste_25, {
        back="Vellaunus' Mantle +1",
        waist="Patentia Sash"
    })
    sets.engaged.Mid.Haste_20 = set_combine(sets.engaged.Mid.Haste_25, {
        ear1="Dudgeon Earring",
        ear2="Heartseeker Earring",
        waist="Patentia Sash"
    })
    sets.engaged.Acc.Haste_20 = set_combine(sets.engaged.Acc.Haste_25, {
        legs="Mochizuki Hakama +1"
    })
    sets.engaged.PDT.Haste_20 = set_combine(sets.engaged.Haste_20, sets.engaged.HastePDT)
    sets.engaged.Mid.PDT.Haste_20 = set_combine(sets.engaged.PDT.Haste_20, sets.engaged.HastePDT)
    sets.engaged.Acc.PDT.Haste_20 = set_combine(sets.engaged.Acc.Haste_20, sets.engaged.HastePDT)
    
    sets.buff.Migawari = {body="Iga Ningi +2"}
    
    -- Weaponskills 
    sets.precast.WS = {
        head="Felistris Mask",
        neck="Asperity Necklace",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Mes'yohi Haubergeon",
        hands="Mochizuki Tekko +1",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Windbuffet Belt +1",
        legs="Manibozho Brais",
        feet="Mochizuki Kyahan +1"
    }

    sets.precast.WS.Mid = set_combine(sets.precast.WS, {
        head="Whirlpool Mask",
        back="Yokaze Mantle",
    })
    sets.precast.WS.Acc = set_combine(sets.precast.WS.Mid, {
        hands="Sasuke Tekko +1",
        legs="Wukong's Hakama +1",
        ring1="Ramuh Ring +1"
    })
    
    -- BLADE: JIN
    sets.Jin = {
        ammo="Yetshila",
        neck="Breeze Gorget",
        waist="Thunder Belt",
        back="Rancorous Mantle",
        feet="Mochizuki Kyahan +1"
    }
    sets.precast.WS['Blade: Jin'] = set_combine(sets.precast.WS, sets.Jin)
    sets.precast.WS['Blade: Jin'].Mid = set_combine(sets.precast.WS.Mid, sets.Jin)
    sets.precast.WS['Blade: Jin'].Acc = set_combine(sets.precast.WS.Acc, sets.Jin)
    
    -- BLADE: HI
    sets.Hi = {
        ammo="Yetshila",
        head="Uk'uxkaj Cap",
        neck="Shadow Gorget",
        body="Dread Jupon",
        hands="Sasuke Tekko +1",
        ring1="Garuda Ring",
        back="Rancorous Mantle",
        legs="Otronif Brais +1",
        waist="Windbuffet Belt +1",
        feet="Mochizuki Kyahan +1"
    }
    sets.precast.WS['Blade: Hi'] = set_combine(sets.precast.WS, sets.Hi)

    sets.precast.WS['Blade: Hi'].Mid = set_combine(sets.precast.WS['Blade: Hi'], {
        body="Mochizuki Chainmail +1",
        legs="Wukong's Hakama +1",
        waist="Soil Belt"
    })
    sets.precast.WS['Blade: Hi'].Acc = set_combine(sets.precast.WS['Blade: Hi'].Mid, {
        head="Ptica Headgear",
        back="Yokaze Mantle"
    })

    -- BLADE: SHUN
    sets.Shun = {
        --ammo="Jukukik Feather",
        neck="Flame Gorget",
        waist="Light Belt",
        back="Yokaze Mantle",
        ring1="Ramuh Ring +1",
    }
    sets.precast.WS['Blade: Shun'] = set_combine(sets.precast.WS, sets.Shun)
    sets.precast.WS['Blade: Shun'].Mid = set_combine(sets.precast.WS.Mid, sets.Shun)
    sets.precast.WS['Blade: Shun'].Acc = set_combine(sets.precast.WS.Acc, sets.Shun)
    
    -- BLADE: Rin
    sets.Rin = {
        neck="Iga Erimaki",
        waist="Windbuffet Belt +1",
        back="Yokaze Mantle",
    }
    sets.precast.WS['Blade: Rin'] = set_combine(sets.precast.WS, sets.Rin)
    sets.precast.WS['Blade: Rin'].Mid = set_combine(sets.precast.WS.Mid, sets.Rin)
    sets.precast.WS['Blade: Rin'].Acc = set_combine(sets.precast.WS.Acc, sets.Rin)
    
    -- BLADE: KU 
    sets.Ku = {
        --ammo="Aqreqaq Bomblet",
        neck="Shadow Gorget",
        waist="Soil Belt",
    }
    sets.precast.WS['Blade: Ku'] = set_combine(sets.precast.WS, sets.Ku)
    sets.precast.WS['Blade: Ku'].Mid = set_combine(sets.precast.WS.Mid, sets.Ku)
    sets.precast.WS['Blade: Ku'].Acc = set_combine(sets.precast.WS.Acc, sets.Ku)
    
    sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
        head="Umbani Cap",
        ear1="Crematio Earring",
        ear2="Moonshade Earring",
        neck="Stoicheion Medal",
        ring1="Garuda Ring",
        ring2="Acumen Ring",
        back="Argochampsa Mantle",
        legs="Shneddick Tights +1",
        waist="Thunder Belt",
        feet="Mochizuki Kyahan +1"
     })
    sets.precast.WS['Blade: Chi'] = sets.precast.WS['Aeolian Edge']
    sets.precast.WS['Blade: To'] = sets.precast.WS['Aeolian Edge']

end

