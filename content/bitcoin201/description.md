# Bitcoin 201 for Wallet Operators

Coming from the individual addresses, you'll learn about hierarchical deterministic wallets and how all this relates to the secret you have to protect at the end of the day: the seed.
We'll learn about different ***what?***

## From the seed to your wallet - theory
| time   | form    | remarks |
|--------|---------|---------|
| 30min  | L       |         |

* Problem with single addresses
* Solution: HD wallets
* Understanding address types, derivation paths
* Understanding xpubs

__Resources__:

* [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

## From the mnemonic to your wallet - practice
| time   | form    | remarks |
|--------|---------|---------|
| 30min  | L/B     |         |

* The 12 word mnemonic
* The passphrase
* The resulting seed
* From your seed to your wallet: derivation paths in practice

__Resources__:

* [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

## Security, risk management and opsec
| time   | form    | remarks |
|--------|---------|---------|
| 1h     | L       |         |

* Reasons for hardware wallets: security
* Reasons for multisig: resilience
* Reasons for your own fullnode: privacy
* Reasons for different vendor-multisig: supply chain-attacks
* Running internet connected-stuff: security first
* Reasons to pay attention:
    * [laser-microphones](https://en.wikipedia.org/wiki/Laser_microphone)
    * [god-mode-unlocked](https://www.youtube.com/watch?v=_eSAF_qT_FY)
    * [supply-chain-attacks](https://en.wikipedia.org/wiki/Supply_chain_attack)
* Risk modeling:
    * Loss by acts of god
    * Loss by computer error
    * Loss by crime/theft/other attacks
    * Loss by seizure
    * Loss by mistakes
    * Privacy related problems
* Practical physical security:
    * Steel plates 
    * Tamper proof-bags
* Bitcoin10X security! ***Link or what do you want to say here?***
* Conclusion for enterprises: Multi vendor-multisig with Specter Desktop and Bitcoin Core.

__Resources__:

* [Smart Custody](http://bit.ly/SmartCustodyBookV101) by Christopher Allen and Shannon Appelcline
* [Bitcoin10x security guide](https://btcguide.github.io/) by Michael Flaxman

## SingleSig penny test
| time   | form    | remarks |
|--------|---------|---------|
| 1h     | WL      |         |

A Specter DIY is needed for this exercise.

* Creating a seed
  * Additional entropy
  * Passphrase
* Importing the device into Specter Desktop
* Creating the wallet
  * The backup-PDF
* Creating/verifying receive addresses
* Receiving funds (confirmations)
* Sending transactions 
* RBF and "Child pays for parent"

__Resources__:

* Specter Cloud
* https://coinfaucet.eu/en/btc-testnet/