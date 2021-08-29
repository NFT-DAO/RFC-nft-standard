
# https://developers.cardano.org/docs/transaction-metadata/how-to-create-a-metadata-transaction-wallet/

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
        "1337": {
            "map": [
                {
                    "k": {
                        "string": "name"
                    },
                    "v": {
                        "string": "hello world"
                    }
                },
                {
                    "k": {
                        "string": "completed"
                    },
                    "v": {
                        "int": 0
                    }
                }
            ]
        }
    }
}'
