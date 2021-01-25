#!/bin/bash -e

swift build -c release
cp .build/release/cpd2xcode /usr/local/bin