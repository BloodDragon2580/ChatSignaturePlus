local L = LibStub("AceLocale-3.0"):NewLocale("ChatSignaturePlus", "koKR", false)

if L then
    L["migration.created_new_profile"] = function(profile_name)
        return "이전 버전에서 마이그레이션하여 새 프로필 |cFFC6A15B" .. profile_name .. "|r 을(를) 생성했습니다."
    end

    L["migration.finished"] = function(created_new_profile)
        local text = "이 캐릭터의 설정 마이그레이션이 완료되었습니다."
        if(created_new_profile) then
            text = text .. " 활성 프로필과 충돌하여 새 프로필이 생성되었습니다."
        end
        return text
    end
    
    L["channel.GUILD.name"]        = "길드"
    L["channel.OFFICER.name"]      = "관리자"
    L["channel.RAID.name"]         = "공격대"
    L["channel.PARTY.name"]        = "파티"
    L["channel.INSTANCE_CHAT.name"]= "인스턴스"
    L["channel.WHISPER.name"]      = "귓속말"
    L["channel.SAY.name"]          = "대화"
    L["channel.YELL.name"]         = "외침"
    L["channel.BN_WHISPER.name"]   = "Battle.net 귓속말"
    
    L["options.name"]              = "일반 설정"
    L["options.version.name"]      = function(version) return "Chat Signature Plus 버전 " .. version end
    L["options.enable.name"]       = "사용"
    L["options.enable.desc"]       = "Chat Signature Plus를 사용/사용 안 함으로 전환합니다."
    L["options.fun.name"]          = "재미 모드"
    L["options.fun.desc"]          = "특별한 날에 재미있는 별칭을 사용합니다."
    L["options.format.name"]       = "형식"
    L["options.format.desc"]       =
        "대화에 표시할 정체성 형식을 설정합니다. 기본값: [%s]\n\n" ..
        "사용 가능한 형식 토큰:\n" ..
        "    %s -> 정체성으로 대체됩니다.\n\n" ..
        "    %z -> 현재 지역 이름으로 대체됩니다.\n\n" ..
        "    %l -> 캐릭터 레벨로 대체됩니다.\n\n" ..
        "    %g -> 길드 이름으로 대체됩니다.\n\n" ..
        "    %r -> 서버( realms ) 이름으로 대체됩니다."
    L["options.identity.name"]     = "정체성"
    L["options.identity.desc"]     = "대화에 사용할 정체성 문자열을 설정합니다."
    L["options.default_channels.name"]           = "기본 채널"
    L["options.custom_channels.name"]            = "사용자 설정 채널"
    L["options.custom_channels.add.name"]        = "채널 추가"
    L["options.custom_channels.add.desc"]        = "추가할 채널 이름을 입력하고 확인을 누르세요."
    L["options.custom_channels.error.empty"]     = "채널 이름은 비워둘 수 없습니다."
    L["options.custom_channels.error.already_exists"] = "이 이름의 채널이 이미 등록되어 있습니다."
    L["options.communities.name"]                = "커뮤니티"
    L["options.communities.error.empty"]         = "커뮤니티 이름은 비워둘 수 없습니다."
    L["options.communities.error.already_exists"]= "이 이름의 커뮤니티가 이미 등록되어 있습니다."
    L["options.communities.add.name"]           = "커뮤니티 추가"
    L["options.communities.add.desc"]           = "추가할 커뮤니티를 선택하세요."
    L["options.communities.no_streams"]         = "해당 커뮤니티에 현재 채널이 없거나 캐릭터가 소속되어 있지 않습니다."
    L["options.communities.remove.name"]        = "커뮤니티 제거"
    L["options.community.enable.name"]          = "커뮤니티 사용"
    L["options.community.enable.desc"]          = function(community) return community .. " 사용/사용 안 함" end
    L["options.channels.enable.name"]           = "채널 사용"
    L["options.channels.enable.desc"]           = function(channel) return channel .. " 사용/사용 안 함" end
    L["options.channels.identity.name"]         = "채널 정체성"
    L["options.channels.identity.desc"]         = function(channel, main_identity)
        return channel .. " 채널에서 " .. main_identity .. " 대신 사용할 문자열을 설정합니다."
    end
    L["options.channels.preview_header"]        = "정체성 미리보기"
    L["options.channels.preview.message"]       = "현재 정체성의 미리보기입니다."
    L["options.channels.remove.name"]           = "채널 제거"
    
    L["profiles.name"]             = "프로필"
    
    L["initialization.loaded"]     = function(version) return "버전 " .. version .. " 이(가) 로드되었습니다." end
    L["initialization.updated"]    = function(version) return "버전 " .. version .. " 으로 업데이트되었습니다." end
    
    L["fun.prank.jenkins"]         = " 젠킨스"
    L["fun.prank.guldan_start"]    = "굴'"
    L["fun.prank.guldan_end"]      = "단"
    L["fun.prank.the_cute"]        = function() return " 귀여운" end
    L["fun.prank.magnificient"]    = "위대한 "
    L["fun.prank.the_third"]       = function(identity)
        return GetRandomArgument("로드 ", "레이디 ") .. identity .. " 3세"
    end
    L["fun.prank.prince"]          = "이전에 알려졌던 이름: "
    L["fun.prank.master_roshi"]    = "무천도사"
    L["fun.prank.whats_the_name_of_the_song"] = "Darude - Sandstorm"
    L["fun.prank.404"]             = "#여기에_정체성_입력#"
    L["fun.prank.univere_life_everything_else"] = "42"
    L["fun.prank.rhonin_best_quote"] = function() return "달라란의 시민" end
    L["fun.prank.not"]             = "아닌 "
    L["fun.prank.plated"]          = function(identity)
        return GetRandomArgument("금도금된 ", "은도금된 ", "구리도금된 ") .. identity
    end
    L["fun.prank.item_quality"]    = function(identity)
        return GetRandomArgument(
            "유물 (금색) ",
            "계승 (청록색) ",
            "전설 (주황색) ",
            "영웅 (보라색) ",
            "희귀 (파란색) ",
            "고급 (녹색) ",
            "일반 (흰색) ",
            "하급 (회색) "
        ) .. identity
    end
    L["fun.prank.size"]            = function()
        return GetRandomArgument("작은 ", "큰 ")
    end
    
    L["fun.hohoho.santa"]          = function(identity) return "산타 " .. identity end
    L["fun.hohoho.claus"]          = function(identity) return identity .. " 클로스" end
    L["fun.hohoho.red_nose"]       = function(identity) return "빨간 코의 " .. identity end
end
