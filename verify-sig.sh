#!/bin/bash

MD5 = openssl dgst -md5
SHA1 = openssl dgst -sha1

DMG = Anoncoin.dmg
ANONCOIND = anoncoind
ANONCOIN_CLI = anoncoin-cli
ANONCOIN_QT = anoncoin-qt

gpg --verify $DMG 
gpg --verify $ANONCOIND
gpg --verify $ANONCOIN_CLI 
gpg --verify $ANONCOIN_QT

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
if [$status==0]
then
	echo "Checksums are identical"
else
	echo "Checksums are NOT identical!"
fi
