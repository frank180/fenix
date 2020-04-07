PKG_NAME="gstreamer_aml"
PKG_VERSION="201fb8997e55d6422970e4383f66e129252a8cc3"
PKG_SHA256="417a9a36ae4490934f2f3f447fdd1a415655bb6aee5704a5a8a2631e9d7ad3d8"
PKG_SOURCE_DIR="gstreamer_aml-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/gstreamer_aml"
PKG_URL="https://github.com/numbqq/gstreamer_aml/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="gstreamer_aml"
PKG_SOURCE_NAME="gstreamer_aml-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/gstreamer_aml
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/gstreamer_aml/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/gstreamer_aml
}
