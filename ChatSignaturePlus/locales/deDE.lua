local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "deDE", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "Neues Profil |cFFC6A15B" .. profile_name .. "|r durch Migration der alten Version erstellt"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "Migration der Einstellungen dieses Charakters abgeschlossen"
        if(created_new_profile) then
            text = text .. ". Es wurde ein neues Profil erstellt, da Konflikte mit dem aktiven Profil bestanden"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "Gilde"
    L["channel.OFFICER.name"]      = "Offizier"
    L["channel.RAID.name"]         = "Schlachtzug"
    L["channel.PARTY.name"]        = "Gruppe"
    L["channel.INSTANCE_CHAT.name"]= "Instanz"
    L["channel.WHISPER.name"]      = "Flüstern"
    L["channel.SAY.name"]          = "Sagen"
    L["channel.YELL.name"]         = "Schreien"
    L["channel.BN_WHISPER.name"]   = "Battle.net-Flüstern"
    
    L["options.name"]              = "Allgemeine Optionen"
    L["options.version.name"]      = function(version) return "Chat Signature Plus Version " .. version end
    L["options.enable.name"]       = "Aktivieren"
    L["options.enable.desc"]       = "Chat Signature Plus aktivieren/deaktivieren"
    L["options.fun.name"]          = "Spaßmodus"
    L["options.fun.desc"]          = "Aktiviert besondere, spaßige Identitäten an bestimmten Tagen"
    L["options.format.name"]       = "Format"
    L["options.format.desc"]       =
        "Legt das Format fest, mit dem deine Identität angezeigt wird. Standard: [%s]\n\n" ..
        "Gültige Platzhalter im Format:\n" ..
        "    %s -> Wird durch die Identität ersetzt\n\n" ..
        "    %z -> Wird durch den Namen der aktuellen Zone ersetzt\n\n" ..
        "    %l -> Wird durch die Charakterstufe ersetzt\n\n" ..
        "    %g -> Wird durch den Gildennamen ersetzt\n\n" ..
        "    %r -> Wird durch den Realmnamen ersetzt"
    L["options.identity.name"]     = "Identität"
    L["options.identity.desc"]     = "Legt den Text fest, der als deine Identität verwendet wird"
    L["options.default_channels.name"]           = "Standard-Kanäle"
    L["options.custom_channels.name"]            = "Eigene Kanäle"
    L["options.custom_channels.add.name"]        = "Kanal hinzufügen"
    L["options.custom_channels.add.desc"]        = "Gib den Namen des Kanals ein und drücke „Okay“"
    L["options.custom_channels.error.empty"]     = "Der Kanalname darf nicht leer sein"
    L["options.custom_channels.error.already_exists"] = "Ein Kanal mit diesem Namen ist bereits registriert"
    L["options.communities.name"]                = "Communitys"
    L["options.communities.error.empty"]         = "Der Community-Name darf nicht leer sein"
    L["options.communities.error.already_exists"]= "Eine Community mit diesem Namen ist bereits registriert"
    L["options.communities.add.name"]           = "Community hinzufügen"
    L["options.communities.add.desc"]           = "Wähle die Community aus, die hinzugefügt werden soll"
    L["options.communities.no_streams"]         = "Keine Kanäle in dieser Community vorhanden oder der Charakter ist kein Mitglied"
    L["options.communities.remove.name"]        = "Community entfernen"
    L["options.community.enable.name"]          = "Community aktivieren"
    L["options.community.enable.desc"]          = function(community) return community .. " aktivieren/deaktivieren" end
    L["options.channels.enable.desc"]           = function(channel) return channel .. " aktivieren/deaktivieren" end
    L["options.channels.enable.name"]           = "Kanal aktivieren"
    L["options.channels.identity.name"]         = "Kanal-Identität"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "Legt einen Text fest, der in " .. channel .. " anstelle von \"" .. main_identity .. "\" verwendet wird"
    end
    L["options.channels.preview_header"]        = "Vorschau der Identität"
    L["options.channels.preview.message"]       = "Dies ist eine Vorschau der aktuellen Identität"
    L["options.channels.remove.name"]           = "Kanal entfernen"
    
    L["profiles.name"]             = "Profile"
    
    L["initialization.loaded"]     = function(version) return "Version " .. version .. " geladen." end
    L["initialization.updated"]    = function(version) return "Auf Version " .. version .. " aktualisiert." end
    
    L["fun.prank.jenkins"]         = " Jenkins"
    L["fun.prank.guldan_start"]    = "Gul'"
    L["fun.prank.guldan_end"]      = "'Dan"
    L["fun.prank.the_cute"]        = function() return " der Niedliche" end
    L["fun.prank.magnificient"]    = "Der Prächtige "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("Lord ", "Lady ") .. identity .. " III."
    end
    L["fun.prank.prince"]          = "Der ehemals bekannte "
    L["fun.prank.master_roshi"]    = "Meister Roshi"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#IDENTITÄT_HIER_EINFÜGEN#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "Bürger von Dalaran" end
    L["fun.prank.not"]             = "Nicht "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("Gold", "Silber", "Kupfer") .. "beschichtetes " .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "Artefakt (Gold) ",
            "Erbstück (Cyan) ",
            "Legendär (Orange) ",
            "Episch (Lila) ",
            "Rar (Blau) ",
            "Ungewöhnlich (Grün) ",
            "Gewöhnlich (Weiß) ",
            "Minderwertig (Grau) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("Kleiner ", "Großer ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "Weihnachtsmann " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " Claus" end
    L["fun.hohoho.red_nose"]       = function(identity) return identity .. ", die Rotnase" end
end
