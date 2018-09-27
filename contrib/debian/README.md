
Debian
====================
This directory contains files used to package gashd/gash-qt
for Debian-based Linux systems. If you compile gashd/gash-qt yourself, there are some useful files here.

## gash: URI support ##


gash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install gash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your gashqt binary to `/usr/bin`
and the `../../share/pixmaps/gash128.png` to `/usr/share/pixmaps`

gash-qt.protocol (KDE)

