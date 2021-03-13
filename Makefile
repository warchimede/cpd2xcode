install:
	swift build -c release
	install .build/release/cpd2xcode /usr/local/bin/cpd2xcode