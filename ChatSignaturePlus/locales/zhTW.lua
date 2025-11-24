local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "zhTW", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "從舊版本移轉時建立了新的設定檔 |cFFC6A15B" .. profile_name .. "|r"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "此角色的設定移轉已完成"
        if(created_new_profile) then
            text = text .. "。由於與現有設定檔衝突，已建立新的設定檔"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "公會"
    L["channel.OFFICER.name"]      = "幹部"
    L["channel.RAID.name"]         = "團隊"
    L["channel.PARTY.name"]        = "隊伍"
    L["channel.INSTANCE_CHAT.name"]= "副本"
    L["channel.WHISPER.name"]      = "悄悄話"
    L["channel.SAY.name"]          = "說"
    L["channel.YELL.name"]         = "大喊"
    L["channel.BN_WHISPER.name"]   = "Battle.net 悄悄話"
    
    L["options.name"]              = "一般選項"
    L["options.version.name"]      = function(version) return "Chat Signature Plus 版本 " .. version end
    L["options.enable.name"]       = "啟用"
    L["options.enable.desc"]       = "啟用/停用 Chat Signature Plus"
    L["options.fun.name"]          = "趣味模式"
    L["options.fun.desc"]          = "在特殊節日使用有趣的身分名稱"
    L["options.format.name"]       = "格式"
    L["options.format.desc"]       =
        "設定顯示身分時使用的格式。預設值：[%s]\n\n" ..
        "可用的格式代碼：\n" ..
        "    %s -> 會被替換為身分文字\n\n" ..
        "    %z -> 會被替換為目前區域名稱\n\n" ..
        "    %l -> 會被替換為角色等級\n\n" ..
        "    %g -> 會被替換為公會名稱\n\n" ..
        "    %r -> 會被替換為伺服器名稱"
    L["options.identity.name"]     = "身分"
    L["options.identity.desc"]     = "設定作為你身分的文字"
    L["options.default_channels.name"]           = "預設頻道"
    L["options.custom_channels.name"]            = "自訂頻道"
    L["options.custom_channels.add.name"]        = "新增頻道"
    L["options.custom_channels.add.desc"]        = "輸入要新增的頻道名稱並按下「確定」"
    L["options.custom_channels.error.empty"]     = "頻道名稱不能為空白"
    L["options.custom_channels.error.already_exists"] = "已經存在同名頻道"
    L["options.communities.name"]                = "社群"
    L["options.communities.error.empty"]         = "社群名稱不能為空白"
    L["options.communities.error.already_exists"]= "已經存在同名社群"
    L["options.communities.add.name"]           = "新增社群"
    L["options.communities.add.desc"]           = "選擇要新增的社群"
    L["options.communities.no_streams"]         = "此社群目前沒有可用頻道，或角色不在該社群內"
    L["options.communities.remove.name"]        = "移除社群"
    L["options.community.enable.name"]          = "啟用社群"
    L["options.community.enable.desc"]          = function(community) return "啟用/停用 " .. community end
    L["options.channels.enable.name"]           = "啟用頻道"
    L["options.channels.enable.desc"]           = function(channel) return "啟用/停用頻道 " .. channel end
    L["options.channels.identity.name"]         = "頻道身分"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "在頻道 " .. channel .. " 中使用此文字來取代 " .. main_identity
    end
    L["options.channels.preview_header"]        = "身分預覽"
    L["options.channels.preview.message"]       = "這是目前身分的預覽"
    L["options.channels.remove.name"]           = "移除頻道"
    
    L["profiles.name"]             = "設定檔"
    
    L["initialization.loaded"]     = function(version) return "已載入版本 " .. version .. "。" end
    L["initialization.updated"]    = function(version) return "已更新至版本 " .. version .. "。" end
    
    L["fun.prank.jenkins"]         = " 珍金斯"
    L["fun.prank.guldan_start"]    = "古爾'"
    L["fun.prank.guldan_end"]      = "丹"
    L["fun.prank.the_cute"]        = function() return " 小可愛" end
    L["fun.prank.magnificient"]    = "華麗的 "
    L["fun.prank.the_third"]       = function(identity)
        return identity .. " 三世"
    end
    L["fun.prank.prince"]          = "以前稱作 "
    L["fun.prank.master_roshi"]    = "龜仙人"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#在此插入身分#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "達拉然的市民" end
    L["fun.prank.not"]             = "不是 "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("鍍金的 ", "鍍銀的 ", "鍍銅的 ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "神器（金色） ",
            "傳家寶（青色） ",
            "傳奇（橘色） ",
            "史詩（紫色） ",
            "精良（藍色） ",
            "優秀（綠色） ",
            "普通（白色） ",
            "粗糙（灰色） "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("小巧的 ", "巨大的 ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "聖誕老人·" .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. "·克勞斯" end
    L["fun.hohoho.red_nose"]       = function(identity) return "紅鼻子·" .. identity end
end
