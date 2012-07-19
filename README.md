About
=====

This repository contains the implementation of Linaro's protection
system for Android binary downloads (aka the BUILD-INFO.txt system)

Each branch of this repository (apart from master) is a ready-to-use version
for a particular environment:

    open - no restrictions on users, no EULA
    restricted - openid restrictions (only certain users allowed), no EULA
    origen - no restrictions on users, samsung EULA required to download
    snowball - no restrictions on users, ST-E EULA required to download

How to use
==========

Each branch of this repository other than master is meant to be applied
directly over the vendor tarball. Each vendor tarball must thus have the new
'build-info' directory.

You *cannot* alter build-info/Android.mk in any way.

You can and should change the license to something that is valid for your
binaries. The license is present in build-info/BUILD-INFO.txt. 

How to validate
===============

Each tarball must correctly pass validation by running the
verify-vendor-tarball script that is present in the master branch.
