EAPI=7

EGIT_REPO_URI="https://github.com/jesseduffield/lazygit.git"

inherit git-r3

DESCRIPTION="A simple terminal UI for git commands"
HOMEPAGE="https://github.com/jesseduffield/lazygit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-lang/go
	"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	go install
}
