# specter-training

Let's make small composable parts and give them a reasonable content-description + a rough time estimate.

## About Formats
For trainings, it's quite important to specify the prerequisites the participants need to fullfill and also manage expectations of what they can expect.
The Format of the unit gives a better understanding:
* Lecture (L): Slides consumption only. For some content, it might be beneficial if the participants can visit websites.
* Browser (B): The user needs to have access to a browser to do some small reading or a tiny exercise
* Workshop-light (WL): The user needs a QR-code based hardware-wallet and a laptop. The specter-instance/fullnode is hosted by cryptoadvance.
* Workshop-full (WF): The user needs a unix-based Laptop (Mac/Linux) in order to install software and a pruned node (10GB free diskpace necessary) 
* Discussion (D): The organisation needs to make decisions. Guided discussion.

# Bitcoin 101
After this section, you have a rough idea about the history of Bitcoin and it's major actors. You can assess the work of the miners and position it in the overall Ecosystem.

## Bitcoin Fundamentals - History, Technical Components, Scarcity, Mining, Ledger (1h)
| time | Format  | remarks |
|------|---------|---------|
| 1h   | L       |         |

* Bitcoin timetable from cypherpunk to now
* economics (scarcity in one graph)
* Mining blocks, the race for a hash, mempool and transaction selection
* Blocks consists of transactions: A Ledger
* Understanding the difficulty adjustment and the halfening
* Adoption cycles through halvening events
* Scarcity in other shitcoins?

Resources:
* 

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



Resources:
* https://brainwalletx.github.io/#sign for creating single addresses and signing/verifying messages

## The ledger, transactions, change-addresses and understanding inputs/outputs
| time   | Form    | remarks |
|--------|---------|---------|
| 30mins | L/B     |         |

* The anatomy of the blockchain: chained blocks consisting of transactions
* the anatomy of a transaction: we can only consume whole inputs, therefore change-addresses
* Example of a bitcoin-transaction

Resources:
* [signing/verifying txs](https://brainwalletx.github.io/#tx)


## From a single address to HD-Wallets, derivation pathes and address-types
| time   | Form    | remarks |
|--------|---------|---------|
| 30mins | L/B     |         |

* Problem with single addresses
* Solution: Generating new addresses out of a master-seed
* The 12 word Mnemonic
* the passphrase
* The resulting seed
* Get to you wallets: derivation pathes

Resources:
* https://iancoleman.io/bip39/

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

Resources:
* [#SmartCustody](http://bit.ly/SmartCustodyBookV101) by Christopher Allen and Shannon Appelcline

# SingleSig Pennytest
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

Resources:
* Specter-cloud
* https://coinfaucet.eu/en/btc-testnet/

# Multisignature and it's challenges
At the end the of this section, the participants should have an idea about the challenges of multisig, different operational and deployment options and maybe have preferences in one or the other direction.
The final decision does not need to happen yet but after the pratical part.


## Backing up a multisignature
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | WL      |         |

* Collecting Devices
* Creating the wallet
* The Specter-Backup-PDF
* More implications for Multisig

Resources:
* https://twitter.com/_benkaufman/status/1344686741513449474

## Operational models
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | L       |         |

* Dis-/Advantages of different quora
* Hardwarewallets and supply-chain attacks
* Fullnode vs. pruned-nodes
* passsphrases for multisig? Rather not.
* Operating specter-instances
  * specter/node in the cloud
  * specter/node on laptops (one or many)
  * specter/node on a node-appliance or server

## Reasonable quora, passphrases, practical Backup-management
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | L/D     |         |

* Which quorum is the correct one for this organisation?
* Which hardwarewallets should be used?
* How are the backups created and custodied?
* Where are specter-instances operated (Laptop/Server/Cloud)?
  * Fullnodes of pruned-nodes?

And the end of this section an idea for , one or more Quora should have been discussed and roughly placed to store devices and backups should be known.

# Getting Real - a production setup
| time   | Form    | remarks |
|--------|---------|---------|
| 3h     | WF/D    |         |

This is a kind of generic description and needs to be adjusted with the decisions discussed in former units.

- Set up fresh laptops / server
- Download & setup pruned Bitcoin Core nodes
- Download & setup Specter Desktop
- HWWs setup - Update firmware - test transactions?

- Generate & Writedown Keys
- Add devices to Specter Desktop instances
- Create Multisig Wallet
- Send penny test to multisig wallet
- Backup Keys on Steelplates

- Delete/wipe Multisig & Device on Desktop
- Recover keys from steelplates
- Send pennytest from Multisig Wallet
- Repeat recovery process?

- Download Multisig-Backup-PDF, and put on USB & Paper
- Prepare Security-Tamper-Proof-Bags with Steelplates & Multisig backups.
- Additional copies of multisig backups to store where?
- Where to store the backups? BayernLB? Degussa safe desposit boxes?

# Open Questions
- What kind of computers? 
- How many instances of Specter? Hosted? Each user one instance?
- Which hardware wallets? Specter, Cobo...but Coldcard?
- Key generation? Dices? On device?
- Key tests - How to check if the keys still work?
- On a daily operational basis: Who keeps the HWWs with the private keys, and where?