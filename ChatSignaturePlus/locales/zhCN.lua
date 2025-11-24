local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "zhCN", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "从旧版本迁移时创建了新配置文件 |cFFC6A15B" .. profile_name .. "|r"
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "当前角色的配置迁移已完成"
        if(created_new_profile) then
            text = text .. "。由于与当前配置文件冲突，已创建新的配置文件"
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "公会"
    L["channel.OFFICER.name"]      = "官员"
    L["channel.RAID.name"]         = "团队"
    L["channel.PARTY.name"]        = "小队"
    L["channel.INSTANCE_CHAT.name"]= "副本"
    L["channel.WHISPER.name"]      = "密语"
    L["channel.SAY.name"]          = "说"
    L["channel.YELL.name"]         = "大喊"
    L["channel.BN_WHISPER.name"]   = "战网密语"
    
    L["options.name"]              = "常规选项"
    L["options.version.name"]      = function(version) return "Chat Signature Plus 版本 " .. version end
    L["options.enable.name"]       = "启用"
    L["options.enable.desc"]       = "启用/禁用 Chat Signature Plus"
    L["options.fun.name"]          = "趣味模式"
    L["options.fun.desc"]          = "在特殊日期使用有趣的身份名称"
    L["options.format.name"]       = "格式"
    L["options.format.desc"]       =
        "设置用于显示身份的格式。默认值：[%s]\n\n" ..
        "可用占位符：\n" ..
        "    %s -> 替换为身份字符串\n\n" ..
        "    %z -> 替换为当前区域名称\n\n" ..
        "    %l -> 替换为角色等级\n\n" ..
        "    %g -> 替换为公会名称\n\n" ..
        "    %r -> 替换为服务器名称"
    L["options.identity.name"]     = "身份"
    L["options.identity.desc"]     = "设置作为你身份的字符串"
    L["options.default_channels.name"]           = "默认频道"
    L["options.custom_channels.name"]            = "自定义频道"
    L["options.custom_channels.add.name"]        = "添加频道"
    L["options.custom_channels.add.desc"]        = "输入要添加的频道名称并点击“确定”"
    L["options.custom_channels.error.empty"]     = "频道名称不能为空"
    L["options.custom_channels.error.already_exists"] = "已存在同名频道"
    L["options.communities.name"]                = "社区"
    L["options.communities.error.empty"]         = "社区名称不能为空"
    L["options.communities.error.already_exists"]= "已存在同名社区"
    L["options.communities.add.name"]           = "添加社区"
    L["options.communities.add.desc"]           = "选择要添加的社区"
    L["options.communities.no_streams"]         = "当前社区中没有频道，或角色不在该社区中"
    L["options.communities.remove.name"]        = "移除社区"
    L["options.community.enable.name"]          = "启用社区"
    L["options.community.enable.desc"]          = function(community) return "启用/禁用 " .. community end
    L["options.channels.enable.name"]           = "启用频道"
    L["options.channels.enable.desc"]           = function(channel) return "启用/禁用频道 " .. channel end
    L["options.channels.identity.name"]         = "频道身份"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return "设置一个在频道 " .. channel .. " 中替代 " .. main_identity .. " 的字符串"
    end
    L["options.channels.preview_header"]        = "身份预览"
    L["options.channels.preview.message"]       = "这是当前身份的预览"
    L["options.channels.remove.name"]           = "移除频道"
    
    L["profiles.name"]             = "配置文件"
    
    L["initialization.loaded"]     = function(version) return "已加载版本 " .. version .. "。" end
    L["initialization.updated"]    = function(version) return "已更新到版本 " .. version .. "。" end
    
    L["fun.prank.jenkins"]         = " 詹金斯"
    L["fun.prank.guldan_start"]    = "古尔'"
    L["fun.prank.guldan_end"]      = "丹"
    L["fun.prank.the_cute"]        = function() return "·可爱鬼" end
    L["fun.prank.magnificient"]    = "华丽的 "
    L["fun.prank.the_third"]       = function(identity)
        return identity .. " 三世"
    end
    L["fun.prank.prince"]          = "曾用名为 "
    L["fun.prank.master_roshi"]    = "龟仙人"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#在此插入身份#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "达拉然的市民" end
    L["fun.prank.not"]             = "非 "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("镀金的 ", "镀银的 ", "镀铜的 ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "神器（金色） ",
            "传家宝（青色） ",
            "传奇（橙色） ",
            "史诗（紫色） ",
            "精良（蓝色） ",
            "优秀（绿色） ",
            "普通（白色） ",
            "粗糙（灰色） "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("小号 ", "大号 ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "圣诞老人·" .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. "·克劳斯" end
    L["fun.hohoho.red_nose"]       = function(identity) return "红鼻子·" .. identity end
end
