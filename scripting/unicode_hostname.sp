#include <sdkhooks>
#include <sdktools>
#include <sourcemod>
#pragma newdecls required
#pragma semicolon 1

#define KEYVALUE_FILENAME	"unicode_hostname"
#define KEYVALUE_ROOTNAME	"Settings"
#define KEYVALUE_HOSTNAME	"hostname"


static char str_DataPath[PLATFORM_MAX_PATH];
static char str_HostName[256];

ConVar g_cvHostname;

public Plugin myinfo =
{
	name = "unicode_hostname",
	author = "Huimao",
	description = "Set Server's hostname.",
	version = "1.0.0",
	url = "https://github.com//srcds-unicode-hostname"
};

public void OnPluginStart()
{
	BuildPath(Path_SM, str_DataPath, PLATFORM_MAX_PATH, "gamedata/%s.txt", KEYVALUE_FILENAME);

	KeyValues kv = new KeyValues(KEYVALUE_ROOTNAME);
	kv.ImportFromFile(str_DataPath);
	kv.GetString(KEYVALUE_HOSTNAME, str_HostName, sizeof(str_HostName));
	TrimString(str_HostName);

	delete kv;

	g_cvHostname = FindConVar("hostname");
	g_cvHostname.SetString(str_HostName);
}
