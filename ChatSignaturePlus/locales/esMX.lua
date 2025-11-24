local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "esMX", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "Nuevo perfil |cFFC6A15B" .. profile_name .. "|r creado al migrar desde la versión anterior"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "Migración de la configuración de este personaje completada"
        if(created_new_profile) then
            text = text .. ". Se creó un nuevo perfil debido a conflictos con el perfil activo"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "Hermandad"
    L["channel.OFFICER.name"]      = "Oficiales"
    L["channel.RAID.name"]         = "Banda"
    L["channel.PARTY.name"]        = "Grupo"
    L["channel.INSTANCE_CHAT.name"]= "Estancia"
    L["channel.WHISPER.name"]      = "Susurro"
    L["channel.SAY.name"]          = "Decir"
    L["channel.YELL.name"]         = "Gritar"
    L["channel.BN_WHISPER.name"]   = "Susurro de Battle.net"
    
    L["options.name"]              = "Opciones generales"
    L["options.version.name"]      = function(version) return "Chat Signature Plus versión " .. version end
    L["options.enable.name"]       = "Activar"
    L["options.enable.desc"]       = "Activa/desactiva Chat Signature Plus"
    L["options.fun.name"]          = "Diversión"
    L["options.fun.desc"]          = "Activa identidades divertidas en días especiales"
    L["options.format.name"]       = "Formato"
    L["options.format.desc"]       =
        "Establece el formato usado para mostrar tu identidad. Predeterminado: [%s]\n\n" ..
        "Fichas válidas para usar en el formato:\n" ..
        "    %s -> Se reemplazará por la identidad\n\n" ..
        "    %z -> Se reemplazará por el nombre de la zona actual\n\n" ..
        "    %l -> Se reemplazará por el nivel del personaje\n\n" ..
        "    %g -> Se reemplazará por el nombre de la hermandad\n\n" ..
        "    %r -> Se reemplazará por el nombre del reino"
    L["options.identity.name"]     = "Identidad"
    L["options.identity.desc"]     = "Establece el texto que se usará como tu identidad"
    L["options.default_channels.name"]           = "Canales predeterminados"
    L["options.custom_channels.name"]            = "Canales personalizados"
    L["options.custom_channels.add.name"]        = "Añadir canal"
    L["options.custom_channels.add.desc"]        = "Escribe el nombre del canal que quieres añadir y pulsa Aceptar"
    L["options.custom_channels.error.empty"]     = "El nombre del canal no puede estar vacío"
    L["options.custom_channels.error.already_exists"] = "Ya existe un canal registrado con ese nombre"
    L["options.communities.name"]                = "Comunidades"
    L["options.communities.error.empty"]         = "El nombre de la comunidad no puede estar vacío"
    L["options.communities.error.already_exists"]= "Ya existe una comunidad registrada con ese nombre"
    L["options.communities.add.name"]           = "Añadir comunidad"
    L["options.communities.add.desc"]           = "Selecciona la comunidad que quieres añadir"
    L["options.communities.no_streams"]         = "No hay canales en esta comunidad por el momento o el personaje no pertenece a ella"
    L["options.communities.remove.name"]        = "Eliminar comunidad"
    L["options.community.enable.name"]          = "Activar comunidad"
    L["options.community.enable.desc"]          = function(community) return "Activa/desactiva " .. community end
    L["options.channels.enable.name"]           = "Activar canal"
    L["options.channels.enable.desc"]           = function(channel) return "Activa/desactiva " .. channel end
    L["options.channels.identity.name"]         = "Identidad del canal"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "Establece un texto para usar en " .. channel .. " en lugar de " .. main_identity
    end
    L["options.channels.preview_header"]        = "Vista previa de la identidad"
    L["options.channels.preview.message"]       = "Esta es una vista previa de la identidad actual"
    L["options.channels.remove.name"]           = "Eliminar canal"
    
    L["profiles.name"]             = "Perfiles"
    
    L["initialization.loaded"]     = function(version) return "Versión " .. version .. " cargada." end
    L["initialization.updated"]    = function(version) return "Actualizado a la versión " .. version .. "." end
    
    L["fun.prank.jenkins"]         = " Jenkins"
    L["fun.prank.guldan_start"]    = "Gul'"
    L["fun.prank.guldan_end"]      = "'Dan"
    L["fun.prank.the_cute"]        = function() return " el Adorable" end
    L["fun.prank.magnificient"]    = "El Magnífico "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("Lord ", "Lady ") .. identity .. " III"
    end
    L["fun.prank.prince"]          = "El anteriormente conocido como "
    L["fun.prank.master_roshi"]    = "Maestro Roshi"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#INSERTAR_IDENTIDAD_AQUÍ#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "Ciudadano de Dalaran" end
    L["fun.prank.not"]             = "No "
    L["fun.prank.plated"]          = function(identity)
        return identity .. " bañado en " .. GetRandomArgument("oro", "plata", "cobre")
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "Artefacto (Dorado) ",
            "Herencia (Cian) ",
            "Legendario (Naranja) ",
            "Épico (Morado) ",
            "Raro (Azul) ",
            "Poco común (Verde) ",
            "Común (Blanco) ",
            "Pobre (Gris) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("Pequeño ", "Grande ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "Santa " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " Claus" end
    L["fun.hohoho.red_nose"]       = function(identity) return identity .. " de la Nariz Roja" end
end
