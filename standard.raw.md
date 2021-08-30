
# CIP 25 - NFT Metadata Standard

## Contents

0. Authors
0. Support
1. Abstract
- Motivation
- Considerations
2. Specification
3. On Chain Structure
4. File Structure
5. Retrieve valid metadata for a specific token
6. Update metadata link for a specific token
7. Backward Compatibility
8. References
9. Appendix
- Example Transaction creation of NFT
- JSON Schema for Validation of index.json
- Usage Examples
10. Copyright

## Authors

Prof Philip Schlump, Assistant Director, University of Wyoming Center for Blockchain and Digital Innovation, email:pschlump@uwyo.edu

Andrew Andrew Thornhill, TODO-your-title, email:andrew@itconsult.ge


## Support

Work on this standard is supported by NFT-DAO, LLC and funds from the Cardano Catalyst Fund.


## Abstract

This proposal defines a NFT Metadata Standard for Native Tokens on
the Cardano chain and the file format for storage of off-chain
digital assets associated with the NFT.




### Motivation

Tokens on Cardano are a part of the ledger. Unlike on Ethereum,
where metadata can be attached to a token through a smart contract,
this isn't possible on Cardano because tokens are native and Cardano
uses a UTxO ledger, which makes it hard to directly attach metadata
to a token. So the link to the metadata needs to be established
differently.  By using Cardano's ability to send metadata as a part of a transaction,
the necessary linkage between a transaction and the NFT's metadata can be
established.

Given a token in a EUTXOma ledger, we can ask “where did this token
come from?” Since tokens are always created in specific forging
operations, we can always trace them back through their transaction
graph to their origin.

(Section 4.1 in the paper: https://hydra.iohk.io/build/5400786/download/1/eutxoma.pdf)




### Considerations

That being said, we have unique metadata link to a token and can
always prove that with 100% certainty. No one else can manipulate
the link except if the policy allows it to (update mechanism).

Since the cost of the transaction is determined by the size of the
transaction the amount of data stored on chain is minimized.

Also digital assists are not assumed to be single files or a
small set of data or a single image.  NFTs have a clear application
in tying real world data to on chain tokens.  For example the use of
NFTs in tracking weld certifications for bridges would combine
engendering specifications with video of the weld and x-ray images.
Another example of a NFT would be piano concerto with a `.mp3` file containing
the music and the sheet music as a `.pdf`.



## Specification

This is the registered transaction_metadatum_label value

transactionmetadatumlabel	description
721	NFT or 1155 NFT Metadata

## On Chain Structure

The structure allows for multiple token mints, also with different policies, in a single transaction.
This data must comply with the CBOR data representation used in Cardano.

```
    "metadata": {
		"1155": {
			"Policy_ID": {
				"nft0": {
					"name": "NFT 0",
					"payload": "URI-of-file",
					"hash": "sha256-hash-of-file"
				},
				...
			},
			...
			"version": "1.0.0"
		}
	}
```

The "1155" is a CBOR data key and referes to the ERC-1155 standard NFT token specification.  It is a constant string.

The "Policy_ID" is the rules for minting and burning of this kind of token.

"nft0" is a unique name within this set of tokens describing the minted item.

"name" is a unique name that more fully describe the NFT.

"payload" is the URI of a place to get the off-chain storage for the token.   The format of the off chain storage is specified
in the next section.

"hash" is the sha256 hash of the off chain storage.   It is commonly used as part of the URI to uniquely identify the stored data.

"version" is a version number for this set of tokens and is a reserved constant.  Tokens can not be named "version".





TODO TODO TODO TODO TODO TODO TODO TODO 
    
Retrieve valid metadata for a specific token
As mentioned above this metadata structure allows to have either one token or multiple tokens with also different policies in a single mint transaction. A third party tool can then fetch the token metadata seamlessly. It doesn't matter if the metadata includes just one token or multiple. The proceedure for the third party is always the same:

Find the latest mint transaction with the label 721 in the metadata of the specific token
Lookup the 721 key
Lookup the Policy Id of the token
Lookup the Asset name of the token
You end up with the correct metadata for the token
Update metadata link for a specific token
Using the latest mint transaction with the label 721 as valid metadata for a token allows to update the metadata link of this token. As soon as a new mint transaction is occurring including metadata with the label 721, the metadata link is considered updated and the new metadata should be used. This is only possible if the policy allows to mint or burn the same token again.

## File Structure

The set of files comprising the digital asset for the NFT is combined into a single .zip file with 
an index.json added that describes the attributes of this NFT.

The file contains a JSON file, `index.json`.

```
	{
		"Name": "NFT 0",
		"FilesHash": "sha256-hash-of-concatenated-file-Hash",
		"Title": "",
		"Description": "",
		"Creator": "",
		"CreationTimestamp": "",
		"Location": {
			{ "latitude": 42.43,, "longitude": -109.31 }
		},
		"RepFile": 0,
		"AdditionalData": {
			"name": "value",
			"name1": "value1"
		},
		"Files": [
			{
				"MimeType":
				"OrigialFileName":
				"FileDescription":
				"FileName":
				"Hash": "sha256-hash-of-file"
			}
		]
	}
```

## Backward Compatibility

To keep NFT metadata compatible with changes coming up in the future, we use the version property. Version 1.0.0 is used in the current metadata structure of this CIP. 

## References

- Mime type: https://tools.ietf.org/html/rfc6838.
- JSON file Standard: https://www.reddit.com/r/CardanoDevelopers/comments/mkhlv8/nft_metadata_standard/
- CIP about reserved labels: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0010/CIP-0010.md
- EIP-721: https://eips.ethereum.org/EIPS/eip-721
- URI: https://tools.ietf.org/html/rfc3986, https://tools.ietf.org/html/rfc2397
- ERC-1155 Standard: https://eips.ethereum.org/EIPS/eip-1155
- CBOR data Standard: https://datatracker.ietf.org/doc/html/rfc8610
- JSON Schema: https://json-schema.org/draft/2020-12/schema


## Appendix

### Example Transaction creation of NFT

TODO

### JSON Schema for Validation of index.json

The followin is the JSON Schema for validation of the index.json file in the .zip archives.

```
m4_include(json-file-schema.json)
```

### Usage Examples

TODO

## Copyright

This CIP is licensed under CC-BY-4.0.


