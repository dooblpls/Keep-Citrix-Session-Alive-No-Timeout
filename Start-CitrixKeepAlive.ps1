while(1){
[System.Reflection.Assembly]::LoadFile("C:\Program Files (x86)\Citrix\ICA Client\WfIcaLib.dll")
$ICA = New-Object WFICALib.ICAClientClass

$handle= $ICA.EnumerateCCMSessions()
$sessionCount = $ICA.GetEnumNameCount($handle)

for($i=0;$i -lt $sessionCount;$i++){
$session = $ICA.GetEnumNameByIndex($handle, 0)
$ICA.SetProp("OutputMode", "1")
$ICA.StartMonitoringCCMSession($session, $true)
$ICA.Session.Keyboard.SendKeyDown(66)
$ICA.StopMonitoringCCMSession($session)

}


$ICA.CloseEnumHandle($handle)

sleep 30

}