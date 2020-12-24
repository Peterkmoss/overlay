EAPI=7

EGIT_REPO_URI="https://github.com/Peterkmoss/qMarkdown.git"

inherit git-r3

DESCRIPTION="A simple QT-based markdown viewer"
HOMEPAGE="https://github.com/Peterkmoss/qMarkdown"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-util/cmake-3.1
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwebengine:5
	dev-qt/qtwebchannel:5
	dev-qt/qtwebview:5
	media-fonts/roboto
	"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	cmake .
	emake
}

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install
}
