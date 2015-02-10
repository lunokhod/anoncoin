Anoncoin precompiled binaries - OSX
===================================

[Anoncoin](https://anoncoin.net/) (ANC) is a peer-to-peer digital cryptocurrency that focuses on privacy and anonymity for its users. Created in June 2013, it is the first and only currency to have built-in support for both the I2P darknet and Tor network that conceal the IP address of the user. Anoncoin will soon be implementing Zerocoin, which will allow users to make payments anonymously, without revealing their anoncoin public addresses.

This branch of the [Anoncoin project](https://github.com/Anoncoin/anoncoin) contins the most up-to-date precompiled OSX binaries. This inlcludes the latest stable release, and when available, release candidates and developer builds. Release candidates and developer builds should be used with extreme caution: Please make a backup of your wallet before running these.

**Before using any binary file, you should verify its authenticity. Failing to do so could result in the loss of your entire anoncoin balance.**

How to verify the authenticity of binary files
----------------------------------------------

To verify the authenticity of the binary files, you will need to have ```gpg``` and ```openssl``` installed. The easist way to do this by the following commands


    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install gpg openssl
	rehash

To verify all signatures and checksums, simply run the script

```
verify-sig.sh
```

This script verifies both the detached gpg signatures of the binaries (ending in ```.sig```) and the md5 and sha1 checkums (in the file ```checksums.txt```). You should verify that the email address of the gpg-signer corresponds to the address of one of the Anoncoin developers. 
