for d in massa-proto-rs massa-proto-as massa-rust-sc-* as_abi_protobuf massa-sc-runtime; do
	cd $d
	echo ""
	echo "***" $(pwd)
	#git remote -v
	echo -ne "\t"
	git branch -l | rg "^\*"
	git status -s
	cd ..
done

check_proto_rev() {
	# check that every modules use the same revision of massa-proto
	PROTO_REV=$(git submodule foreach --recursive --quiet 'echo $sm_path $(git rev-parse HEAD)' | grep "massa-proto " | sort -u)
	PROTO_REV_CHECK=$(echo $PROTO_REV | wc -l)
	if [ $PROTO_REV_CHECK -ne "1" ]; then
		echo $PROTO_REV
		echo "are diverging"
	else
		echo "ok"
	fi
}
