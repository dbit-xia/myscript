#!/bin/bash
#/home/dbit/.deepinwine/Deepin-WXWork/drive_c/users/dbit/Application Data/Tencent/WXWork/upgrade/xxx/courgette.exe

WXWorkWeb=`ls /home/dbit/.deepinwine/Deepin-WXWork/drive_c/Program\ Files/WXWork/*/compatible_web/WXWorkWeb.exe`;
echo $WXWorkWeb;
[ "$WXWorkWeb" ] && echo "123" > "$WXWorkWeb";

WXDrive=`ls /home/dbit/.deepinwine/Deepin-WXWork/drive_c/Program\ Files/WXWork/*/WXDrive.exe`;
echo $WXDrive;
[ "$WXDrive" ] && echo "123" > "$WXDrive";

WeMail=`ls /home/dbit/.deepinwine/Deepin-WXWork/drive_c/Program\ Files/WXWork/*/wemail/WeMail.exe`;
echo $WeMail;
[ "$WeMail" ] && echo "123" > "$WeMail";

WeMailNode=`ls /home/dbit/.deepinwine/Deepin-WXWork/drive_c/Program\ Files/WXWork/*/WeMailNode.exe`;
echo $WeMailNode;
[ "$WeMailNode" ] && echo "123" > "$WeMailNode";

crashpad_handler=`ls /home/dbit/.deepinwine/Deepin-WXWork/drive_c/Program\ Files/WXWork/*/bugly/x86/crashpad_handler.exe`;
echo "$crashpad_handler";
[ "$crashpad_handler" ] && echo "123" > "$crashpad_handler";

killall winedevice.exe;
killall wineserver;
killall winedbg;
killall WXWork.exe;
killall plugplay.exe;
killall svchost.exe;
killall rpcss.exe;
killall WXWorkWeb.exe;
killall WXDrive.exe;
killall WeMail.exe;
killall WeMailNode.exe;
killall explorer.exe;
killall services.exe;
killall courgette.exe;
killall crashpad_handle;

