#!/bin/bash
MODULES="massa-proto-rs massa-proto-as massa-rust-sc-sdk massa-rust-sc-examples as_abi_protobuf massa-sc-runtime"

function build() {
	case $1 in
	massa-proto-as)
		npm run asbuild
		;;
	as_abi_protobuf)
		npm run all
		;;
	massa-proto-rs)
		cargo build --features tonic-build
	  ;;
	massa-rust-sc-examples) 
		cargo make wasm
		;;
	# ;& means fall through to the next case (bash 4 specific)
	massa-rust-sc-sdk) ;& 
	massa-sc-runtime)
		cargo build
		;;
	*)
		echo "Unknown module $1"
		return 1
		;;
	esac
}

for d in $MODULES; do
	pushd . >/dev/null
	cd $d
	echo ""
	echo "***" $(pwd)
	build "$d"

	if [[ $? -ne 0 ]]; then
		echo "### Error building $d"
		exit 1
	else
		echo "!!! Successfully built $d"
	fi
	popd
done
