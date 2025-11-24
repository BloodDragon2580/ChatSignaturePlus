local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "itIT", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "Nuovo profilo |cFFC6A15B" .. profile_name .. "|r creato dalla migrazione della vecchia versione"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "Migrazione della configurazione di questo personaggio completata"
        if(created_new_profile) then
            text = text .. ". È stato creato un nuovo profilo a causa di conflitti con il profilo attivo"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "Gilda"
    L["channel.OFFICER.name"]      = "Ufficiali"
    L["channel.RAID.name"]         = "Incursione"
    L["channel.PARTY.name"]        = "Gruppo"
    L["channel.INSTANCE_CHAT.name"]= "Istanza"
    L["channel.WHISPER.name"]      = "Sussurro"
    L["channel.SAY.name"]          = "Dire"
    L["channel.YELL.name"]         = "Urlo"
    L["channel.BN_WHISPER.name"]   = "Sussurro Battle.net"
    
    L["options.name"]              = "Opzioni generali"
    L["options.version.name"]      = function(version) return "Chat Signature Plus versione " .. version end
    L["options.enable.name"]       = "Abilita"
    L["options.enable.desc"]       = "Abilita/Disabilita Chat Signature Plus"
    L["options.fun.name"]          = "Divertimento"
    L["options.fun.desc"]          = "Abilita identità divertenti in giorni speciali"
    L["options.format.name"]       = "Formato"
    L["options.format.desc"]       =
        "Imposta il formato usato per mostrare la tua identità. Predefinito: [%s]\n\n" ..
        "Token validi da usare nel formato:\n" ..
        "    %s -> Verrà sostituito dall'identità\n\n" ..
        "    %z -> Verrà sostituito dal nome della zona attuale\n\n" ..
        "    %l -> Verrà sostituito dal livello del personaggio\n\n" ..
        "    %g -> Verrà sostituito dal nome della gilda\n\n" ..
        "    %r -> Verrà sostituito dal nome del reame"
    L["options.identity.name"]     = "Identità"
    L["options.identity.desc"]     = "Imposta il testo usato come tua identità"
    L["options.default_channels.name"]           = "Canali predefiniti"
    L["options.custom_channels.name"]            = "Canali personalizzati"
    L["options.custom_channels.add.name"]        = "Aggiungi canale"
    L["options.custom_channels.add.desc"]        = "Digita il nome del canale da aggiungere e premi OK"
    L["options.custom_channels.error.empty"]     = "Il nome del canale non può essere vuoto"
    L["options.custom_channels.error.already_exists"] = "Esiste già un canale registrato con questo nome"
    L["options.communities.name"]                = "Comunità"
    L["options.communities.error.empty"]         = "Il nome della comunità non può essere vuoto"
    L["options.communities.error.already_exists"]= "Esiste già una comunità registrata con questo nome"
    L["options.communities.add.name"]           = "Aggiungi comunità"
    L["options.communities.add.desc"]           = "Seleziona la comunità da aggiungere"
    L["options.communities.no_streams"]         = "Nessun canale in questa comunità al momento o il personaggio non ne fa parte"
    L["options.communities.remove.name"]        = "Rimuovi comunità"
    L["options.community.enable.name"]          = "Abilita comunità"
    L["options.community.enable.desc"]          = function(community) return "Abilita/Disabilita " .. community end
    L["options.channels.enable.name"]           = "Abilita canale"
    L["options.channels.enable.desc"]           = function(channel) return "Abilita/Disabilita " .. channel end
    L["options.channels.identity.name"]         = "Identità del canale"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "Imposta un testo da usare in " .. channel .. " al posto di " .. main_identity
    end
    L["options.channels.preview_header"]        = "Anteprima identità"
    L["options.channels.preview.message"]       = "Questa è un'anteprima dell'identità attuale"
    L["options.channels.remove.name"]           = "Rimuovi canale"
    
    L["profiles.name"]             = "Profili"
    
    L["initialization.loaded"]     = function(version) return "Versione " .. version .. " caricata." end
    L["initialization.updated"]    = function(version) return "Aggiornato alla versione " .. version .. "." end
    
    L["fun.prank.jenkins"]         = " Jenkins"
    L["fun.prank.guldan_start"]    = "Gul'"
    L["fun.prank.guldan_end"]      = "'Dan"
    L["fun.prank.the_cute"]        = function() return " il Carino" end
    L["fun.prank.magnificient"]    = "Il Magnifico "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("Lord ", "Lady ") .. identity .. " III"
    end
    L["fun.prank.prince"]          = "Colui precedentemente conosciuto come "
    L["fun.prank.master_roshi"]    = "Maestro Muten"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#INSERISCI_IDENTITÀ_QUI#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "Cittadino di Dalaran" end
    L["fun.prank.not"]             = "Non "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("Dorato ", "Argentato ", "Ramato ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "Artefatto (Oro) ",
            "Reliquia (Ciano) ",
            "Leggendario (Arancione) ",
            "Epico (Viola) ",
            "Raro (Blu) ",
            "Non comune (Verde) ",
            "Comune (Bianco) ",
            "Scadente (Grigio) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("Piccolo ", "Grande ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "Babbo " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " Claus" end
    L["fun.hohoho.red_nose"]       = function(identity) return identity .. " dal Naso Rosso" end
end
