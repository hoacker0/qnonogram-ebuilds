# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake desktop xdg

DESCRIPTION="Nonogram or japanese puzzle based on Qt6"
HOMEPAGE="https://github.com/hoacker0/qnonogram"
SRC_URI="https://github.com/hoacker0/qnonogram/archive/refs/tags/${P}.tar.gz"
S=${WORKDIR}/qnonogram-qnonogram-${PV}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-qt/qtbase:6[gui,widgets]
"

DEPEND="${RDEPEND}"
BDEPEND="
	dev-qt/qtbase:6
"

src_install() {
	cmake_src_install
	doicon qnonogram.png
	domenu qnonogram.desktop
}
