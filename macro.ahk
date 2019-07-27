; Last updated 7/27/2019
/*
This is a test
*/

Update:
URLDownloadToFile, https://raw.githubusercontent.com/smileyhogue/AHK-macro/master/macro.ahk, update.txt
FileReadLine, update, update.txt, 1
if (update = "; Last updated 7/27/2019") {
  FileDelete, update.txt
  GoTo NoUpdate
} else {
  FileReadLine, reason, update.txt, 3
  msgbox, A new version of this script has been released!  Please press F6 to update to the latest version, or F4 to continue with this version.`n`nReson for update: %reason%
  F6::
  FileCopy, update.txt, macro.ahk, 1
  FileDelete, update.txt
  msgbox, The script will now close.  Please restart it to apply the update!
  ExitApp
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
