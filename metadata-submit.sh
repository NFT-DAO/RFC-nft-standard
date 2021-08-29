

curl --request POST \
  --url http://localhost:1337/v2/wallets/5076b34c6949dbd150eb9c39039037543946bdce/transactions \
  --header 'Content-Type: application/json' \
  --data '{
    "passphrase": "test123456",
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
        "721": {
            "map": [
                {
                    "k": {
                        "string": "nft_hash"
                    },
                    "v": {
                        "string": "xyzzy"
                    }
                },
                {
                    "k": {
                        "string": "nft_uri"
                    },
                    "v": {
                        "string": "https://xyzzy.com/xyzzy.zip"
                    }
                },
                {
                    "k": {
                        "string": "policy_id"
                    },
                    "v": {
                        "string": "pppppppppppp"
                    }
                },
                {
                    "k": {
                        "string": "asset_name"
                    },
                    "v": {
                        "string": "uuuuuuuuuuuuuuuuu"
                    }
                },
                {
                    "k": {
                        "string": "nft_version"
                    },
                    "v": {
                        "string": "v1.0.0"
                    }
                },
                {
                    "k": {
                        "string": "mutable_data"
                    },
                    "v": {
                        "string": "https://xyzzy.com/xyzzy_mutable.zip"
                    }
                }
            ]
        }
    }
}'
