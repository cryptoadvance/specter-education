# Multisignature and its challenges
At the end of this section, the participants should have an idea about the challenges of multisig, different operational and deployment options and maybe have some tentative setup preferences. 
The final decision does not need to happen yet, though (only after the pratical part).


## Backing up a multisignature
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | WL      |         |

* Collecting devices
* Creating the wallet
* The Specter-backup-PDF
* Durability of the PDF backup: Store it redundantly!
* More implications for Multisig

__Resources__:
* [Ben about Multisig-Backups](https://twitter.com/_benkaufman/status/1344686741513449474)

## Operational models
| time   | Form    | remarks |
|--------|---------|---------|
| 1.5h   | L       |         |

* Dis-/advantages of different quora
    * 3/5 or 2/3 --> depends on staff availability and the amount to store
* Passphrases in order to further split-up
    * You can add the passphrase independently of the mnemonic
    * Not strictly necessary but might be a good opportunity to further share responsibility
* Hardware wallets, the following devices are recommended:
    * Specter-DIY
    * Coldcard (UX is not very convenient)
    * Cobo Vault
* Seed creation:
  * Specter DIY can add user entropy (coin flipping)
  * Add dice rolls (Coldcard / Cobo Vault v1.2.0)
* Full node vs. pruned nodes
  * Pruned node not recommended (not enough for enterprise purposes)
* Operating Specter instances/Core node
  * Options:
    * Specter/node in the cloud
    * Specter/node on laptops (one or many)
    * Specter/node on a node-appliance or server (needs Tor hidden service)
  * Recommendation:
    * One laptop per person with fullnode
      * Recommendation: Mac Book Pro 13 Zoll, 2 TB SSD-HD, full node installation
* Physical security and vaults:
    * Storage of the backups/passphrases
    * Recommendation: 
        * Each Backup in its own vault or at least a small locker
        * If you use passphrases, use additional vaults/lockers for them
  * Recommendation: [Steelplates](http://bitcoinseedbackup.com/)



## Reasonable quora, passphrases, practical backup management
| time   | Form    | remarks |
|--------|---------|---------|
| 1h     | L/D     |         |

* Which quorum is the correct one for the organisation?
* Which hardware wallets should be used?
* How are the backups created and stored?
* Where are Specter instances operated (laptop/server/cloud)?
    * Full nodes of pruned-nodes?
* Answers: List them here.

At the end of this section, some quora setups should have been discussed and ideas to store devices and backups should have been developed.
