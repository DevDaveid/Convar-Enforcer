#include <sourcemod>

public Plugin myinfo = {
    name        = "Convar Enforcer",
    author        = "Dave",
    description    = "Enforce em convars!",
    version        = "1.0.0",
    url            = "https://github.com/DevDaveid"
};

public void OnPluginStart()
{
    Handle cv_Mute = FindConVar("sv_mute_players_with_social_penalties");
    if(cv_Mute != INVALID_HANDLE)
        SetConVarInt(cv_Mute, 0);
    CloseHandle(cv_Mute);

    ServerCommand("sv_full_alltalk 1");
}
