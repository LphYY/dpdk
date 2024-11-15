#!/bin/bash


function clean_history_build() {
	echo "clean history result..."
	rm -rf $PWD/build

}

function build() {
	meson build --cross-file $PWD/config/x86/x86-64_bare_metal_linux_gcc
	cd build && ninja
	ninja install
}

function main() {
	clean_history_build
	build
	echo "end to build dpdk!"
}

main
