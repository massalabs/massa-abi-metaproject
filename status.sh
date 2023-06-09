for d in massa-proto-rs massa-proto-as massa-rust-sc-* as_abi_protobuf massa-sc-runtime ; do
	cd $d
	echo ""
	echo "***" $(pwd)
	#git remote -v
	echo -ne "\t"
	git branch -l | rg "^\*"
	git status -s
	cd ..
done
