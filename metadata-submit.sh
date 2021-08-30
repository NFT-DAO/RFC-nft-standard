#!/bin/bash

curl --request POST \
  --url http://localhost:1337/v2/wallets/5076b34c6949dbd150eb9c39039037543946bdce/transactions \
  --header 'Content-Type: application/json' \
  --data '{
    "passphrase": "password123",
    "payments": [
        {
            "address": "addr_test1qpg2eglv9gf2rksvdj53t6ajfgzkycaadlt2fatjyn4etpze0592agqpwraqajx2dsu2sxj64uese5s4qum293wuc00q6hnhqq",
            "amount": {
                "quantity": 1000000,
                "unit": "lovelace"
            }
        }
    ],
    "metadata": {
		"1155": {
			"cbc34df5cb851e6fe5035a438d534ffffc87af012f3ff2d4db94288b": {
				"nft0": {
					"name": "NFT 0",
					"uri": "https://ipfs.io/ipfs/QmUrNv5yofTVJcCZS0Wa7YBd4ppzvpLDx9a6iVwp3Tp29b/d3b71a414945ff13ee4e2b21697ab6ff9a4ff140d63dcdb7b914d46e300d6597.zip",
					"hash": "d3b71a414945ff13ee4e2b21697ab6ff9a4ff140d63dcdb7b914d46e300d6597" 
				},
				"nft1": {
					"name": "NFT 1",
					"uri": "http://nft-metadata-storeage.s3.amazonaws.com/2db31c4b604cac43817e19f174a6d3fa1c12a4c9df5e9b82dbedf63df14f355d.zip", 
					"hash": "2db31c4b604cac43817e19f174a6d3fa1c12a4c9df5e9b82dbedf63df14f355d"
				}
			}
		}
    }
}'

