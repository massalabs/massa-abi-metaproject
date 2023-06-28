| AS ABI                      | wasmv1 ABI                     | proto                               | comment             | Status                   |
| --------------------------- | ------------------------------ | ----------------------------------- | ------------------- | ------------------------ |
| abort                       | abi_abort                      |                                     |                     | Done                     |
| seed   > as__unsafe_random  |                                | SeedResult                          |                     | TODO                     |
| Date.now                    |                                | DateNowResult                       |                     | TODO (Testnet 25)        |
| console.log                 | xxxxxxxxxxxxxxxxxxx            | ConsolePutResult                    |                     | Don't implement          |
| console.info                | xxxxxxxxxxxxxxxxxxx            | ConsolePutResult                    |                     | Don't implement          |
| console.warn                | xxxxxxxxxxxxxxxxxxx            | ConsolePutResult                    |                     | Don't implement          |
| console.error               | xxxxxxxxxxxxxxxxxxx            | ConsolePutResult                    |                     | Don't implement          |
| console.debug               | xxxxxxxxxxxxxxxxxxx            | ConsolePutResult                    |                     | Don't implement          |
| trace                       | xxxxxxxxxxxxxxxxxxx            | TraceResult                         |                     | Don't implement          |
| process.exit                |                                | ProcessExitResult                   |                     | TODO MAYBE (Test25)      |
| as__print                   | xxxxxxxxxxxxxxxxxxx            | PrintResult                         |                     | Don't implement          |
| as__call                    | abi_call                       | CallResponse                        |                     | Done                     |
| as__get_remaining_gas       |                                | GetRemainingGasResult               |                     | TODO (Thomas)            |
| as__create_sc               | abi_create_sc                  | CreateSCResult                      |                     | Done                     |
| as__set_data                | abi_set_data                   | SetDataResult                       |                     | Done                     |
| as__set_data_for            | abi_set_data                   | SetDataResult                       |                     | Done                     |
| as__get_data                | abi_get_data                   | GetDataResult                       |                     | Done                     |
| as__get_data_for            | abi_get_data                   | GetDataResult                       |                     | Done                     |
| as__delete_data             | abi_delete_data                | DeleteDataResult                    |                     | Done                     |
| as__delete_data_for         | abi_delete_data                | DeleteDataResult                    |                     | Done                     |
| as__append_data             | abi_append_data                | AppendDataResult                    |                     | Done                     |
| as__append_data_for         | abi_append_data                | AppendDataResult                    |                     | Done                     |
| as__has_data                | abi_has_data                   | HasDataResult                       |                     | Done                     |
| as__has_data_for            | abi_has_data                   | HasDataResult                       |                     | Done                     |
| as__get_owned_addresses     |                                | GetOwnedAddressesResult             |                     | TODO (Thomas)            |
| as__get_call_stack          |                                | GetCallStackResult                  |                     | TODO (Thomas)            |
| as__generate_event          | abi_generate_event             | GenerateEventResult                 |                     | impl interface for bytes |
| as__transfer_coins          | abi_transfer_coins             | TransferCoinsResult                 |                     | Done                     |
| as__transfer_coins_for      | abi_transfer_coins             | TransferCoinsResult                 |                     | Done                     |
| as__get_balance             |                                | GetBalanceResult                    |                     | TODO (Léo)               |
| as__get_balance_for         |                                | GetBalanceResult                    |                     | TODO (Léo)               |
| as__hash                    | abi_hash                       | NativeHashResult                    |                     | Done                     |
| as__signature_verify        |                                | VerifyNativeSigResult               |                     | TODO (Thomas)            |
| as__address_from_public_key |                                | NativeAddressFromNativePubKeyResult |                     | TODO (Thomas)            |
| as__validate_address        | abi_check_native_address       | CheckNativeAddressResult            |                     | Done                     |
| as__unsafe_random           |                                | UnsafeRandomResult                  |                     | TODO (Thomas)            |
| as__get_call_coins          |                                | GetCallCoinsResult                  |                     | TODO (Thomas)            |
| as__get_time                | (temps des slots)              | GetNativeTimeResult                 |                     | TODO (Thomas)            |
| as__send_message            | (sc-autonome)                  |                                     |                     | TODO (Thomas)            |
| as__get_current_period      | abi_get_current_slot           | GetCurrentSlotResult                |                     | Done                     |
| as__get_current_thread      | abi_get_current_slot           | GetCurrentSlotResult                |                     | Done                     |
| as__set_bytecode            |                                | SetBytecodeResult                   |                     | TODO (Léo)               |
| as__set_bytecode_for        |                                | SetBytecodeForResult                |                     | TODO (Léo)               |
| as__get_op_keys             | (prefix as argument)           | GetOpKeysResult                     |                     | TODO (Léo)               |
| as__get_keys                | (prefix as argument)           | GetKeysResult                       |                     | TODO (Léo)               |
| as__get_keys_for            | (prefix as argument)           | GetKeysForResult                    |                     | TODO (Léo)               |
| as__has_op_key              |                                | HasOpKeyResult                      |                     | TODO (Léo)               |
| as__get_op_data             |                                | GetOpDataResult                     |                     | TODO (Léo)               |
| as__get_bytecode            |                                | GetBytecodeResult                   |                     | TODO (Léo)               |
| as__get_bytecode_for        |                                | GetBytecodeForResult                |                     | TODO (Léo)               |
| as__local_call              | abi_local_call                 | LocalCallResponse                   | working need update | Done                     |
| as__local_execution         |                                | LocalExecutionResponse              |                     | TODO (Thomas)            |
| as__caller_has_write_access |                                | CallerHasWriteAccessResult          |                     | TODO (Thomas)            |
| as__function_exists         | abi_function_exists            | FunctionExistsResult                | working need update | Done                     |
| as__hash_sha256             | abi_hash_sha256                | HashSha256Result                    |                     | Done                     |
|                             | abi_check_native_pubkey        | CheckNativePubKeyResult             |                     | Done (JF todo Test)      |
|                             | abi_check_native_sig           | CheckNativeSigResult                |                     | Done (JF todo Test)      |
|                             | abi_check_native_hash          | CheckNativeHashResult               |                     | Done (JF todo Test)      |
|                             | abi_check_native_amount        | CheckNativeAmountResult             |                     | Done (JF todo Test)      |
|                             | abi_add_native_amounts         | AddNativeAmountsResult              |                     | Done (JF todo Test)      |
|                             | abi_sub_native_amounts         | SubNativeAmountsResult              |                     | Done (JF todo Test)      |
|                             | abi_mul_native_amount          | MulNativeAmountResult               |                     | Done (JF todo Test)      |
|                             | abi_div_rem_native_amount      | ScalarDivRemNativeAmountResult      |                     | Done (JF todo Test)      |
|                             | abi_div_rem_native_amounts     | DivRemNativeAmountResult            |                     | Done (JF todo Test)      |
|                             | abi_native_amount_to_string    | NativeAmountToStringResult          |                     | Done (JF todo Test)      |
|                             | abi_native_amount_from_string  | NativeAmountFromStringResult        |                     | Done (JF todo Test)      |
|                             |                                | CheckedAddNativeTimeResult          |                     |                          |
|                             |                                | CheckedSubNativeTimeResult          |                     |                          |
|                             |                                | CheckedMulNativeTimeResult          |                     |                          |
|                             |                                | CheckedScalarDivRemNativeTimeResult |                     |                          |
|                             |                                | CheckedDivRemNativeTimeResult       |                     |                          |
|                             |                                | CompareNativeTimeResult             |                     |                          |
|                             |                                | CompareNativeAddressResult          |                     |                          |
|                             |                                | CompareNativePubKeyResult           |                     |                          |
|                             |                                | CompareNativeSigResult              |                     |                          |
|                             |                                | CompareNativeAmountResult           |                     |                          |
|                             | abi_hash_keccak256             | Keccak256Result                     |                     | Done                     |
|                             |                                | VerifyEvmSigResult                  |                     | TODO (Thomas)            |
|                             |                                | VerifyBlsSingleSigResult            |                     | TODO (Testnet 25)        |
|                             |                                | VerifyBlsMultiSigResult             |                     | TODO (Testnet 25)        |
