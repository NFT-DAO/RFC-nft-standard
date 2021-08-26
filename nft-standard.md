
# NFT Sstandard

## TODO

1. find a RFC to copy boilerplate from
2. List folks on standard development, Me, Jessie, Jagagesh
3. write a "justification" docuent with examples
4. ipfs/s3 storage for data
5. .zip file w/ set of fiels
6. non-mutable data
7. mutable data
8. progressive NFT


# Non Fungable Token Standard

## Abstract

This document describes a standard for Non-Fungable Tokens (NFTs)
and the data associated with the tokens.  NFTs are an asset that
is managed and trasfered on a blockchain like Cardano or Ethereum.
There are existing standards for the token, how to create the token
and h ow to transfer ownership of the token itself.  For example
in the Ethereum system this is the ERC-721 and ERC-1155 standard
for the how tokens are minted and transfered.  The token by itself
is not very uself.  The tiken is a represenation of some set of
data, the "asset", that is the item or items of value.  Thisa asset
may be digital, as in a set of digital data or may be both a digital
and a physical world asset.  An example of an asse tthat is both
ditigal and in the phisical world would be a NFT that is a title
to a specific area of land.  The title is a digital document but
the land is in the real world.   This standard is to address the
storage and attributes of the digital data that is associated with
the NFT.

THe proposed algorythm and format takes into accountg multiple different formats for the storage of the associateed data
and the fact that more th an one single file will need to bve repsresented in the assocaiated data.

## Table of Contents

1. Introduction
	- Scope
	- Background
2. Notation and Terms
3. Storage Format
4. Storage Validation
5. Indexing of Data
6. Security Considerations
	- Non-Encrypted Data
	- Encrypted Data
7. Addition of Fungible data
8. References

Appendix A. Sample Data
Appendix B. JSON-schema Validation


