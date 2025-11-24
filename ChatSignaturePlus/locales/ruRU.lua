local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "ruRU", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "Новый профиль |cFFC6A15B" .. profile_name .. "|r создан при миграции со старой версии"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "Миграция настроек этого персонажа завершена"
        if(created_new_profile) then
            text = text .. ". Был создан новый профиль из-за конфликта с активным профилем"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "Гильдия"
    L["channel.OFFICER.name"]      = "Офицеры"
    L["channel.RAID.name"]         = "Рейд"
    L["channel.PARTY.name"]        = "Группа"
    L["channel.INSTANCE_CHAT.name"]= "Подземелье"
    L["channel.WHISPER.name"]      = "Шёпот"
    L["channel.SAY.name"]          = "Сказать"
    L["channel.YELL.name"]         = "Крик"
    L["channel.BN_WHISPER.name"]   = "Шёпот Battle.net"
    
    L["options.name"]              = "Общие настройки"
    L["options.version.name"]      = function(version) return "Chat Signature Plus версия " .. version end
    L["options.enable.name"]       = "Включить"
    L["options.enable.desc"]       = "Включить/выключить Chat Signature Plus"
    L["options.fun.name"]          = "Развлечение"
    L["options.fun.desc"]          = "Включить забавные идентичности в особые дни"
    L["options.format.name"]       = "Формат"
    L["options.format.desc"]       =
        "Задаёт формат, используемый для отображения вашей личности. По умолчанию: [%s]\n\n" ..
        "Допустимые токены для использования в формате:\n" ..
        "    %s -> Будет заменён на идентичность\n\n" ..
        "    %z -> Будет заменён на название текущей зоны\n\n" ..
        "    %l -> Будет заменён на уровень персонажа\n\n" ..
        "    %g -> Будет заменён на название гильдии\n\n" ..
        "    %r -> Будет заменён на название игрового мира"
    L["options.identity.name"]     = "Идентичность"
    L["options.identity.desc"]     = "Задаёт строку, используемую как ваша идентичность"
    L["options.default_channels.name"]           = "Стандартные каналы"
    L["options.custom_channels.name"]            = "Пользовательские каналы"
    L["options.custom_channels.add.name"]        = "Добавить канал"
    L["options.custom_channels.add.desc"]        = "Введите имя канала и нажмите ОК"
    L["options.custom_channels.error.empty"]     = "Имя канала не может быть пустым"
    L["options.custom_channels.error.already_exists"] = "Канал с таким именем уже зарегистрирован"
    L["options.communities.name"]                = "Сообщества"
    L["options.communities.error.empty"]         = "Имя сообщества не может быть пустым"
    L["options.communities.error.already_exists"]= "Сообщество с таким именем уже зарегистрировано"
    L["options.communities.add.name"]           = "Добавить сообщество"
    L["options.communities.add.desc"]           = "Выберите сообщество, которое нужно добавить"
    L["options.communities.no_streams"]         = "В этом сообществе пока нет каналов или персонаж в него не входит"
    L["options.communities.remove.name"]        = "Удалить сообщество"
    L["options.community.enable.name"]          = "Включить сообщество"
    L["options.community.enable.desc"]          = function(community) return "Включить/выключить " .. community end
    L["options.channels.enable.name"]           = "Включить канал"
    L["options.channels.enable.desc"]           = function(channel) return "Включить/выключить канал " .. channel end
    L["options.channels.identity.name"]         = "Идентичность канала"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "Задаёт строку для канала " .. channel .. " вместо " .. main_identity
    end
    L["options.channels.preview_header"]        = "Предпросмотр идентичности"
    L["options.channels.preview.message"]       = "Это предпросмотр текущей идентичности"
    L["options.channels.remove.name"]           = "Удалить канал"
    
    L["profiles.name"]             = "Профили"
    
    L["initialization.loaded"]     = function(version) return "Загружена версия " .. version .. "." end
    L["initialization.updated"]    = function(version) return "Обновлено до версии " .. version .. "." end
    
    L["fun.prank.jenkins"]         = " Дженкинс"
    L["fun.prank.guldan_start"]    = "Гул'"
    L["fun.prank.guldan_end"]      = "Дан"
    L["fun.prank.the_cute"]        = function() return " Милашка" end
    L["fun.prank.magnificient"]    = "Великолепный "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("Лорд ", "Леди ") .. identity .. " III"
    end
    L["fun.prank.prince"]          = "Тот, кого раньше знали как "
    L["fun.prank.master_roshi"]    = "Мастер Роши"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#ВСТАВЬТЕ_ИДЕНТИЧНОСТЬ_ЗДЕСЬ#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "Житель Даларана" end
    L["fun.prank.not"]             = "Не "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("Позолоченный ", "Посеребрённый ", "Медный ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "Артефакт (золотой) ",
            "Наследуемый (циановый) ",
            "Легендарный (оранжевый) ",
            "Эпический (фиолетовый) ",
            "Редкий (синий) ",
            "Необычный (зелёный) ",
            "Обычный (белый) ",
            "Низкого качества (серый) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("Маленький ", "Большой ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "Санта " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " Клаус" end
    L["fun.hohoho.red_nose"]       = function(identity) return identity .. " с красным носом" end
end
