# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils desktop

DESCRIPTION="Nonogram or japanese puzzle based on Qt5"
HOMEPAGE="https://github.com/hoacker0/qnonogram"
SRC_URI="https://github.com/hoacker0/qnonogram/archive/refs/tags/${P}.tar.gz"
S=${WORKDIR}/qnonogram-qnonogram-${PV}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"

DEPEND="${RDEPEND}"

src_configure() {
	eqmake5
}

src_install() {
	dobin ${PN}
	doicon qnonogram.png
	domenu qnonogram.desktop
}
