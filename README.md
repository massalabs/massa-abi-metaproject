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
`wasmv1_transform` is just a piece of rust code that prepend `0x01` to a file and add `_add` to its extension.
```
echo -n -e \\x01 | cat - file.wasm > file.wasm_add
```
Should be equivalent but not tested and don't know the portability over Windows.
