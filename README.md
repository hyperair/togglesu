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
`togglesu` again to make su show up. When `su` is hidden, it is named `sureal`.


How it works
------------

`togglesu` makes a copy of your `/system/bin` and `/system/xbin` directories in
`/system/bin.hidesu` and `/system/xbin/hidesu` respectively. In these
directories, `su` is renamed to `sureal`. `togglesu` also drops a script into
`/system/xbin/` and `/system/xbin.hidesu`.

To hide su, `/system/bin.hidesu` and `/system/xbin.hidesu` are bind-mounted on
top of their respective bin directories, causing `su` to apparently vanish. To
re-enable su, the two directories are unmounted.


Why
---

I liked the idea of Magisk, but the installation procedure for CyanogenMod
(which needs to be rerun on every ROM upgrade) is cumbersome and time consuming.

TODO
----

 - [ ] Drop a script into `/system/addons.d` to support dirty flashes without
   requiring a reinstall of the zip.
