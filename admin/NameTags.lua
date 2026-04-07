local data = {}

data.Owners = {
    "Strixxsy"
}

data.CoOwner = {
    "e2edeq"
}

data.MysStaff = {
    ""
}

data.Advertisers = {
    ""
}

data.Helper = {
    ""
}

data.RankColors = {
    ["owner"] = {
        primary = Color3.fromRGB(255, 60, 60),
        accent = Color3.fromRGB(255, 200, 200)
    },

    ["co-owner"] = {
        primary = Color3.fromRGB(255, 140, 0),
        accent = Color3.fromRGB(255, 220, 180)
    },

    ["staff"] = {
        primary = Color3.fromRGB(0, 170, 255),
        accent = Color3.fromRGB(180, 230, 255)
    },

    ["advertiser"] = {
        primary = Color3.fromRGB(170, 0, 255),
        accent = Color3.fromRGB(220, 180, 255)
    },

    ["helper"] = {
        primary = Color3.fromRGB(0, 255, 100),
        accent = Color3.fromRGB(180, 255, 210)
    },

    ["mys.client user"] = {
        primary = Color3.fromRGB(0, 255, 255),
        accent = Color3.fromRGB(180, 255, 255)
    },

    ["mys.premium user"] = {
        primary = Color3.fromRGB(255, 215, 0),
        accent = Color3.fromRGB(255, 245, 180)
    }
}

local function containsIgnoreCase(tbl, name)
    name = name:lower()
    for _, v in ipairs(tbl) do
        if v:lower() == name then
            return true
        end
    end
    return false
end

data.getRank = function(playerName, positionTaggedPlayers)
    if containsIgnoreCase(data.Owners, playerName) then
        return "owner"
    elseif containsIgnoreCase(data.CoOwner, playerName) then
        return "co-owner"
    elseif containsIgnoreCase(data.MysStaff, playerName) then
        return "staff"
    elseif containsIgnoreCase(data.Advertisers, playerName) then
        return "advertiser"
    elseif containsIgnoreCase(data.Helper, playerName) then
        return "helper"
    elseif positionTaggedPlayers and positionTaggedPlayers[playerName:lower()] then
        return "mys.client user"
    end

    return nil
end

return data
