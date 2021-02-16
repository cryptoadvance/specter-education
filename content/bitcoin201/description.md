# Bitcoin 201

Here we you learn "where the money is stored". Public-Private key cryptography is the foundation and transactions in the blockchain is how money get transfered from one to the other.
Coming from the individual addresses, you'll learn about Hirarchical Deterministic Wallets and how it relates to the secret you have to finally protect: the seed.
We'll learn about different 

## Public-/Private key cryptography
| time   | Form    | remarks |
|--------|---------|---------|
| 30mins | L/B     |         |

* symmetric and asymmetric encryption
* Attestation as special case for asymetric encryption
* Imagine a crypto-bank: transactions-signing

__Resources__:

* [brainwallet](https://brainwalletx.github.io/#sign) for creating single addresses and signing/verifying messages

## The ledger, transactions, change-addresses and understanding inputs/outputs
| time   | Form    | remarks |
|--------|---------|---------|
| 30mins | L/B     |         |

* The anatomy of the blockchain: chained blocks consisting of transactions
* the anatomy of a transaction: we can only consume whole inputs, therefore change-addresses
* Example of a bitcoin-transaction

__Resources__:

* [signing/verifying txs](https://brainwalletx.github.io/#tx)


## HD-Wallets, derivation pathes and address-types
| time   | Form    | remarks |
|--------|---------|---------|
| 30mins | L/B     |         |

* Problem with single addresses
* Solution: Generating new addresses out of a master-seed
* The 12 word Mnemonic
* the passphrase
* The resulting seed
* Get to you wallets: derivation pathes

__Resources__:

* [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

## Security, Risk-management and Opsec
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | L       |         |

* Reasons for Hardwarewallets: Security
* Reasons for Multisig: Resilience
* Reasons for your own fullnode: Privacy
* Reasons for different vendor-multisig: Supply chain-attacks
* Running Internet-connected stuff: Security first
* Reasons to get paranoid:
    * [laser-microphones](https://en.wikipedia.org/wiki/Laser_microphone)
    * [god-mode-unlocked](https://www.youtube.com/watch?v=_eSAF_qT_FY)
    * [supply-chain-attacks](https://en.wikipedia.org/wiki/Supply_chain_attack)
* Risk-modeling:
    * Loss by Acts of God
    * Loss by Computer Error
    * Loss by Crime/Theft
    * Loss by Crime/OtherAttacks
    * Loss by Government
    * Loss by Misstakes
    * Privacy related problems
* Practical physical security:
    * Steelplates 
    * Security-Tamper-Proof-Bags

__Resources__:

* [#SmartCustody](http://bit.ly/SmartCustodyBookV101) by Christopher Allen and Shannon Appelcline

## SingleSig Pennytest
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | WL      |         |

A specter-diy is needed for this exercise.

* Creating a seed
  * additional entropy
  * passphrase?!
* Importing the device into specter-desktop
* Creating the wallet
  * the backup-PDF
* Creating/verifying receive-addresses
* Receiving funds (confirmations)
* Sending transactions 
* RBF and "Child pays for parent"

__Resources__:

* Specter-cloud
* https://coinfaucet.eu/en/btc-testnet/