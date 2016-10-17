togglesu
==========

`togglesu` is a minimal su binary hiding script for circumventing SafetyNet and
its users (notably Pokemon Go) on custom ROMs.


Installation
------------

Run `make` to generate `togglesu.zip`. Then just flash it via TWRP after
flashing your firmware zip.


Usage
-----

After installing `togglesu`, open a terminal and run `togglesu` to hide su. Run
`togglesu` again to re-enable `su`. When `su` is hidden, it is named `sureal`.


How it works
------------

During installation, `togglesu` moves `/system/xbin/su` to
`/system/xbin/sureal`, and the symlink `/system/xbin/su -> sureal` is created.

When disabling or re-enabling su, the `/system/bin/su` and `/system/xbin/su`
symlinks are deleted and re-created respectively. `/system` is remounted rw for
the duration of the operation.

Why
---

I liked the idea of Magisk, but the installation procedure for CyanogenMod
(which needs to be rerun on every ROM upgrade) is cumbersome and time consuming.

TODO
----

 - [ ] Drop a script into `/system/addons.d` to support dirty flashes without
   requiring a reinstall of the zip.
