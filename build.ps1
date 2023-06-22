#$MODULES="massa-proto-rs","massa-proto-as","massa-rust-sc-sdk","massa-rust-sc-examples","as_abi_protobuf","massa-sc-runtime"
#$MODULES="massa-proto-rs","massa-proto-as","as_abi_protobuf","massa-sc-runtime"
$MODULES="massa-proto-rs","as_abi_protobuf","massa-sc-runtime"

function build {
    switch ($args[0]) {
        "massa-proto-as" {
            npm run asbuild_windows
        }
        "as_abi_protobuf" {
            npm run all
        }
        "massa-proto-rs" {
            cargo build --features tonic-build
        }
        "massa-rust-sc-examples" {
            cargo make wasm
        }
        "massa-rust-sc-sdk" {
            cargo build
        }
        "massa-sc-runtime" {
            cargo build
        }
        default {
            Write-Output "Unknown module $_"
            return 1
        }
    }
}

foreach ($d in $MODULES) {
    pushd .
    cd $d
    Write-Output ""
    Write-Output "***" $(pwd)
    build $d

    if ($LASTEXITCODE -ne 0) {
        Write-Output "### Error building $d"
        exit 1
    }
    else {
        Write-Output "!!! Successfully built $d"
    }
    popd
}
