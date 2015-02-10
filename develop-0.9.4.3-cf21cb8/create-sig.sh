#!/bin/tcsh

set MD5 = "openssl md5"
set SHA1 = "openssl sha1"

set DMG = Anoncoin.dmg
set ANONCOIND = anoncoind
set ANONCOIN_CLI = anoncoin-cli
set ANONCOIN_QT = anoncoin-qt

echo $DMG
echo $SHA1
echo $SHELL
rm -f $DMG.sig
rm -f $ANONCOIND.sig
rm -f $ANONCOIN_CLI.sig
rm -f $ANONCOIN_QT.sig
rm -f checksums.txt

gpg -u Lunokhod -b $DMG 
gpg -u Lunokhod -b $ANONCOIND
gpg -u Lunokhod -b $ANONCOIN_CLI 
gpg -u Lunokhod -b $ANONCOIN_QT

$SHA1 $DMG > checksums.txt
$MD5 $DMG >> checksums.txt
$SHA1 $ANONCOIND >> checksums.txt
$MD5 $ANONCOIND >> checksums.txt
$SHA1 $ANONCOIN_CLI >> checksums.txt
$MD5 $ANONCOIN_CLI >> checksums.txt
$SHA1 $ANONCOIN_QT >> checksums.txt
$MD5 $ANONCOIN_QT >> checksums.txt
