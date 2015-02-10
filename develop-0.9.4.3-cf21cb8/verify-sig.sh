#!/bin/tcsh

set MD5 = "openssl md5"
set SHA1 = "openssl sha1"

set DMG = Anoncoin.dmg
set ANONCOIND = anoncoind
set ANONCOIN_CLI = anoncoin-cli
set ANONCOIN_QT = anoncoin-qt

gpg --verify $DMG.sig 
gpg --verify $ANONCOIND.sig
gpg --verify $ANONCOIN_CLI.sig
gpg --verify $ANONCOIN_QT.sig

rm -f verify-checksums.txt

$SHA1 $DMG > verify-checksums.txt
$MD5 $DMG >> verify-checksums.txt
$SHA1 -sha1 $ANONCOIND >> verify-checksums.txt
$MD5 $ANONCOIND >> verify-checksums.txt
$SHA1 -sha1 $ANONCOIN_CLI >> verify-checksums.txt
$MD5 $ANONCOIN_CLI >> verify-checksums.txt
$SHA1 -sha1 $ANONCOIN_QT >> verify-checksums.txt
$MD5 $ANONCOIN_QT >> verify-checksums.txt

diff checksums.txt verify-checksums.txt
if ($status == 0) then
	echo "Checksums are identical"
else
	echo "Checksums are NOT identical!"
endif
