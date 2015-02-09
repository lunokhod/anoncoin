#!/bin/bash

MD5 = openssl dgst -md5
SHA1 = openssl dgst -sha1

DMG = Anoncoin.dmg
ANONCOIND = anoncoind
ANONCOIN_CLI = anoncoin-cli
ANONCOIN_QT = anoncoin-qt

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
