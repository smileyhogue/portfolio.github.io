; Last updated 7/26/2019
/*
This is a test
*/

Update:
URLDownloadToFile, https://raw.githubusercontent.com/smileyhogue/smileyhogue.github.io/master/macro.ahk, update.txt
FileReadLine, update, update.txt, 1
if (update = "; Last updated 7/26/2019") {
  FileDelete, update.txt
  GoTo NoUpdate
} else {
  FileReadLine, reason, update.txt, 3
  msgbox, A new version of this script has been released!  Please press F6 to update to the latest version, or F4 to continue with this version.`n`nReson for update: %reason%
  F6::
  FileCopy, update.txt, macro.ahk, 1
  FileDelete, update.txt
  Reload
  Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
  MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
  IfMsgBox, Yes, Edit
return
  F4::
  msgbox, This script will not be updated!
  FileDelete, update.txt
  GoTo NoUpdate
  return
}

NoUpdate:
:*:rvalue::mid={{}source_board.id{}}

:*:rtarget::mid=
