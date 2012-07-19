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
    template - template branch to start new licenses

For simplicity there are ready-to-use tarballs available for download. See
below for details.

How to use
==========

To update vendor tarballs to use the BUILD-INFO.txt generator please download
one of the tarballs, appropriate for your board, from:

https://github.com/zyga/android-build-info/downloads

Unpack existing vendor binaries, add the build-info directory directly in the
top level structure (right next to vendor/) and package it again. Please
validate the tarball according to the instructions below to ensure it is
correct. You should also ensure that the license is right.

How to validate
===============

Each tarball must correctly pass validation by running the
verify-vendor-tarball script that is present in the master branch.

You can download a released version of this script from:

https://github.com/downloads/zyga/android-build-info/verify-vendor-tarball

You will need python3 to run it, it has no other dependencies.

How to create new licenses
==========================

Start by branching from the template branch.

_IMPORTANT_: You _cannot_ alter build-info/Android.mk in any way. If you think
there is a problem with the Android.mk we provide please open a ticket. If you
just change it directly it will fail to validate and may not be deployed to our
production system.

Change the license and file patterns to implement the policy you want to
enforce. Note that there is no documentation on how this works at this time.
Seek assistance of the linaro-infrastructure team.
