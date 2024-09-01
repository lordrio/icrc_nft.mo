# Changelog

# v0.2.2

Update mops for ICRC-7 and ICRC-37 to fix token_of bug https://github.com/PanIndustrial-Org/icrc_nft.mo/issues/3

# v0.1.1

Update mops

# v0.1.0

Initial Release

added
`if (owner.owner != transferFromArgs.from.owner) return #ok(#Err(#Unauthorized)); //only the owner can spend;`
on `private func transfer_token<system>(caller : Principal, transferFromArgs : TransferFromArg) : Result.Result<TransferFromResult, Text> {`

removed `// what stupid is this?! // return #ok(Vec.toArray(results));`
on `public func transfer<system>(caller : Principal, transferFromArgs : [TransferFromArg]) : Result.Result<[?TransferFromResult], Text> {`
