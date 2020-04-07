PKG_NAME="mali_examples_aml"
PKG_VERSION="3eab3850719060114c07aa2794287d271002b9b0"
PKG_SHA256="a770e12fdcd4795fffa92955f48dabe1790e7998b3e139456f0eeee118e3c0eb"
PKG_SOURCE_DIR="mali_examples_aml-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/mali_examples_aml"
PKG_URL="https://github.com/numbqq/mali_examples_aml/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Mali OpenGL ES 2.0 examples."
PKG_SOURCE_NAME="mali_examples_aml-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali_examples_aml
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali_examples_aml/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali_examples_aml
}
