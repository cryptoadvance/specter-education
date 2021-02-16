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
* Durability of PDF-Backup: Store it redundantly!
* More implications for Multisig

__Resources__:
* [Ben about Multisig-Backups](https://twitter.com/_benkaufman/status/1344686741513449474)

## Operational models
| time   | Form    | remarks |
|--------|---------|---------|
| 1,5h   | L       |         |

* Dis-/Advantages of different quora
    * 3/5 or 2/3 --> depends on availability of personell and amount to store
* Passphrases in order to further split-up
    * In specter you can add the passphrase independently of the mnemonic
    * Not stritcly necessary but might be a good opportunity to split responsibility further up
* Hardwarewallets and supply-chain attacks, the following devices are recommended:
    * Specter-DIY
    * Coldcard (UX is not very convenient)
    * Cobowallet
* Seed-creation Entropy:
  * Specter-DIY has coin-based entropy addition (physical coin-flipping)
  * Add dice-rolls (coldcard / cobowallet v1.2.0)
* Fullnode vs. pruned-nodes
  * pruned-node discouraged (for restore only utxo-scan is not enough for enterprise purposes))
* Operating specter-instances/Core
  * Options:
    * specter/node in the cloud
    * specter/node on laptops (one or many)
    * specter/node on a node-appliance or server (needs Tor hidden Service )
  * Recommendation:
    * One laptop per person with fullnode
      * Recommendation: Mac Book Pro 13 Zoll, 2 TB SSD-HD, fullnode-installation
* Trezor/Physical Security:
    * Storage of the backups/passphrases
    * Recommendation: 
        * Each Backup in it's own Trezor
        * If you use passphrases, use own trezors
  * Recommendation: [Steelplates](http://bitcoinseedbackup.com/)



## Reasonable quora, passphrases, practical Backup-management
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | L/D     |         |

* Which quorum is the correct one for this organisation?
* Which hardwarewallets should be used?
* How are the backups created and custodied?
* Where are specter-instances operated (Laptop/Server/Cloud)?
    * Fullnodes of pruned-nodes?
* Answers: List them here.

And the end of this section an idea for , one or more Quora should have been discussed and roughly placed to store devices and backups should be known.
