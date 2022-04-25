# Keep-Citrix-Session-Alive-No-Timeout
This very simple powershell script will keep your citrix session alive

Make sure to have the following Registry Keys set or run AllowCitrix.reg

HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Citrix\ICA Client\CCM
AllowLiveMonitoring REG_DWORD 1
AllowSimulationAPI REG_DWORD 1

The script needs to be run in Powershell x86 since Citrix Workspace is using x86 librarys.
