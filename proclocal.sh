srcdir="/home/holger/DEV/qnonogram-ebuilds"
trgdir="/usr/local/portage/b15/games-puzzle/qnonogram"

cd $srcdir
cp qnonogram-* $trgdir

cd $trgdir
rm Manifest
repoman manifest

cp Manifest $srcdir
cp metadata.xml $srcdir

cd $srcdir
