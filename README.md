Anoncoin precompiled binaries - OSX
===================================

[Anoncoin](https://anoncoin.net/) (ANC) is a peer-to-peer digital cryptocurrency that focuses on privacy and anonymity for its users. Created in June 2013, it is the first and only currency to have built-in support for both the I2P darknet and Tor network that conceal the IP address of the user. Anoncoin will soon be implementing Zerocoin, which will allow users to make payments anonymously, without revealing their anoncoin public addresses.

This branch of the [Anoncoin project](https://github.com/Anoncoin/anoncoin) contins the most up-to-date precompiled OSX binaries. This inlcludes the latest stable release, as well as release candidates that are still undergoing testing.

**Before using any binary file, you should verify its authenticity. Failing to do so could result in the loss of your entire anoncoin balance.**

First, verify the pgp signature of the binary file by using the following command:

```
gpg --verify filename.asc
```

If the verification is successful, ensure that the email address of the signer corresponds to the email address of one of the Anoncoin developers.

Second, verify the binary file fingerprint by calculating its md5 and sha1 fingerprint and compare this with the value provided in the file ```filename.checksum```. Depending on the software that is installed on your system, this could be accomplished by using one of the following commands:

```
shasum filename.checksum<br />
openssl dgst -sha1filename.checksum<br />
openssl dgst -md5 filename.checksum<br />
md5 filename.checksum<br />
md5sum filename.checksum
```

Finally, ensure that the github commit was tagged and signed with the pgp key of one of the developers.
