Meta project to work on Massa ABI

clone me with:
```bash
git clone --recurse-submodules <repo_name>
```

update with:
```bash
git submodule update --init --recursive [--force] --remote
```

build with:
```bash
./build.sh
```

required before building:
```bash
curl https://get.wasmer.io -sSfL | sh

cd as_abi_protobuf && npm install

cargo install fd-find

wasmv1_transform (secret project held by @jfm)
```
