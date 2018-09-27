#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

GASHD=${GASHD:-$BINDIR/gashd}
GASHCLI=${GASHCLI:-$BINDIR/gash-cli}
GASHTX=${GASHTX:-$BINDIR/gash-tx}
GASHQT=${GASHQT:-$BINDIR/qt/gash-qt}

[ ! -x $GASHD ] && echo "$GASHD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
GASHVER=($($GASHCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for gashd if --version-string is not set,
# but has different outcomes for gash-qt and gash-cli.
echo "[COPYRIGHT]" > footer.h2m
$GASHD --version | sed -n '1!p' >> footer.h2m

for cmd in $GASHD $GASHCLI $GASHTX $GASHQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${GASHVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${GASHVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
