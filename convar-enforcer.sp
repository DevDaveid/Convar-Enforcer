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
    Handle cvar = FindConVar("sv_mute_players_with_social_penalties");
    SetConVarInt(cvar, 0);

    cvar = FindConVar("sv_full_alltalk");
    SetConVarInt(cvar, 1);

    CloseHandle(cvar);
}