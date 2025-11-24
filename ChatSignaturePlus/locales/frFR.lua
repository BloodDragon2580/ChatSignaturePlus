local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "frFR", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "Nouveau profil |cFFC6A15B" .. profile_name .. "|r créé lors de la migration depuis une ancienne version"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "Migration de la configuration de ce personnage terminée"
        if(created_new_profile) then
            text = text .. ". Un nouveau profil a été créé en raison de conflits avec le profil actif"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "Guilde"
    L["channel.OFFICER.name"]      = "Officiers"
    L["channel.RAID.name"]         = "Raid"
    L["channel.PARTY.name"]        = "Groupe"
    L["channel.INSTANCE_CHAT.name"]= "Instance"
    L["channel.WHISPER.name"]      = "Chuchoter"
    L["channel.SAY.name"]          = "Dire"
    L["channel.YELL.name"]         = "Crier"
    L["channel.BN_WHISPER.name"]   = "Chuchotement Battle.net"
    
    L["options.name"]              = "Options générales"
    L["options.version.name"]      = function(version) return "Chat Signature Plus version " .. version end
    L["options.enable.name"]       = "Activer"
    L["options.enable.desc"]       = "Active/désactive Chat Signature Plus"
    L["options.fun.name"]          = "Amusant"
    L["options.fun.desc"]          = "Active des identités amusantes lors de jours spéciaux"
    L["options.format.name"]       = "Format"
    L["options.format.desc"]       =
        "Définit le format utilisé pour afficher votre identité. Par défaut : [%s]\n\n" ..
        "Jetons valides à utiliser dans le format :\n" ..
        "    %s -> Sera remplacé par l'identité\n\n" ..
        "    %z -> Sera remplacé par le nom de la zone actuelle\n\n" ..
        "    %l -> Sera remplacé par le niveau du personnage\n\n" ..
        "    %g -> Sera remplacé par le nom de la guilde\n\n" ..
        "    %r -> Sera remplacé par le nom du royaume"
    L["options.identity.name"]     = "Identité"
    L["options.identity.desc"]     = "Définit le texte utilisé comme votre identité"
    L["options.default_channels.name"]           = "Canaux par défaut"
    L["options.custom_channels.name"]            = "Canaux personnalisés"
    L["options.custom_channels.add.name"]        = "Ajouter un canal"
    L["options.custom_channels.add.desc"]        = "Saisissez le nom du canal à ajouter et cliquez sur OK"
    L["options.custom_channels.error.empty"]     = "Le nom du canal ne peut pas être vide"
    L["options.custom_channels.error.already_exists"] = "Un canal portant ce nom est déjà enregistré"
    L["options.communities.name"]                = "Communautés"
    L["options.communities.error.empty"]         = "Le nom de la communauté ne peut pas être vide"
    L["options.communities.error.already_exists"]= "Une communauté portant ce nom est déjà enregistrée"
    L["options.communities.add.name"]           = "Ajouter une communauté"
    L["options.communities.add.desc"]           = "Sélectionnez la communauté à ajouter"
    L["options.communities.no_streams"]         = "Aucun canal dans cette communauté pour le moment ou le personnage n'en fait pas partie"
    L["options.communities.remove.name"]        = "Supprimer la communauté"
    L["options.community.enable.name"]          = "Activer la communauté"
    L["options.community.enable.desc"]          = function(community) return "Activer/désactiver " .. community end
    L["options.channels.enable.name"]           = "Activer le canal"
    L["options.channels.enable.desc"]           = function(channel) return "Activer/désactiver " .. channel end
    L["options.channels.identity.name"]         = "Identité du canal"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "Définit un texte à utiliser dans " .. channel .. " à la place de " .. main_identity
    end
    L["options.channels.preview_header"]        = "Aperçu de l'identité"
    L["options.channels.preview.message"]       = "Ceci est un aperçu de l'identité actuelle"
    L["options.channels.remove.name"]           = "Supprimer le canal"
    
    L["profiles.name"]             = "Profils"
    
    L["initialization.loaded"]     = function(version) return "Version " .. version .. " chargée." end
    L["initialization.updated"]    = function(version) return "Mise à jour vers la version " .. version .. "." end
    
    L["fun.prank.jenkins"]         = " Jenkins"
    L["fun.prank.guldan_start"]    = "Gul'"
    L["fun.prank.guldan_end"]      = "'Dan"
    L["fun.prank.the_cute"]        = function() return " le Mignon" end
    L["fun.prank.magnificient"]    = "Le Magnifique "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("Lord ", "Lady ") .. identity .. " III"
    end
    L["fun.prank.prince"]          = "Celui anciennement connu sous le nom de "
    L["fun.prank.master_roshi"]    = "Maître Roshi"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#INSÉRER_IDENTITÉ_ICI#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "Citoyen de Dalaran" end
    L["fun.prank.not"]             = "Pas "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("Doré ", "Argenté ", "Cuivré ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "Artéfact (Or) ",
            "Héritage (Cyan) ",
            "Légendaire (Orange) ",
            "Épique (Violet) ",
            "Rare (Bleu) ",
            "Inhabituel (Vert) ",
            "Commun (Blanc) ",
            "Mauvais (Gris) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("Petit ", "Grand ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "Père " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " Claus" end
    L["fun.hohoho.red_nose"]       = function(identity) return identity .. " au Nez Rouge" end
end
