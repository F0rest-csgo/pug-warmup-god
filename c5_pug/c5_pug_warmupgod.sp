#pragma semicolon 1

#include <sourcemod>
#include <c5_pug>
#include <sdkhooks>

#pragma newdecls required

public Plugin myinfo = 
{
	name = "CS:GO PugSetup: Warmup God",
	author = "F0rest",
	description = "",
	version = "beta",
	url = "https://github.com/F0rest-csgo"
};

public void OnClientPostAdminCheck(int client){
	SDKHook(client, SDKHook_OnTakeDamage, OnTakeDamage);
}

public Action OnTakeDamage(int victim, int &attacker, int &inflictor, float &damage, int &damagetype, int &weapon, float damageForce[3], float damagePosition[3]){
	if(C5_PUG_IsWarmup()) return Plugin_Handled;
	
	return Plugin_Continue;
}