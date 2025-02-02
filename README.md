# Supply chain & data auditing

This repository contains an Ethereum DApp that demonstrates a Supply Chain flow between a Seller and Buyer. The user story is similar to any commonly used supply chain process. A Seller can add items to the inventory system stored in the blockchain. A Buyer can purchase such items from the inventory system. Additionally a Seller can mark an item as Shipped, and similarly a Buyer can mark an item as Received.

The DApp User Interface when running should look like...

![truffle test](images/ftc_product_overview.png)

![truffle test](images/ftc_farm_details.png)

![truffle test](images/ftc_product_details.png)

![truffle test](images/ftc_transaction_history.png)

## Implementation notes

Framework and versions used:
- Truffle v5.4.26 (core: 5.4.26)
- Solidity - 0.8.0 (solc-js)
- Node v16.13.1
- Web3.js v1.5.3

## Proof of Work
### Contract Unit Tests
![solidty unit tests](images/solitidy_test_results.png)

### Deployed Contract on Rinkeby Test Network: 0x2C4696cBC4abBfB3B0401AEF4A80f684398cF6a0
![created contract in rinkeby](images/etherscan_rinkeby_contract.png)
- Contract Address 0x2C4696cBC4abBfB3B0401AEF4A80f684398cF6a0 on rikeby network
- Deployment Transaction 0x699f5c29674dca55a15dd374b2ff57427cdb5bbeb515b4ac6f1adb24d6ac88a5
- [Contract on Eitherscan](https://rinkeby.etherscan.io/address/0x2c4696cbc4abbfb3b0401aef4a80f684398cf6a0)

### frontend transaction history (on local network)
![transaction history on local host](images/contend_transaction_history.png)

## UML Diagrams
### Activity Diagram
![activity diagram](images/uml_activity.jpg)
### Sequence Diagram
![sequence diagram](images/uml_sequence.jpg)
### State Diagram
![state diagram](images/uml_state.jpg)
### Class Diagram
![class diagram](images/uml_contracts.jpg)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

```
Give examples (to be clarified)
```

### Installing

> The starter code is written for **Solidity v0.4.24**. At the time of writing, the current Truffle v5 comes with Solidity v0.5 that requires function *mutability* and *visibility* to be specified (please refer to Solidity [documentation](https://docs.soliditylang.org/en/v0.5.0/050-breaking-changes.html) for more details). To use this starter code, please run `npm i -g truffle@4.1.14` to install Truffle v4 with Solidity v0.4.24. 

A step by step series of examples that tell you have to get a development env running

Clone this repository:

```
git clone https://github.com/udacity/nd1309/tree/master/course-5/project-6
```

Change directory to ```project-6``` folder and install all requisite npm packages (as listed in ```package.json```):

```
cd project-6
npm install
```

Launch Ganache:

```
ganache-cli -m "spirit supply whale amount human item harsh scare congress discover talent hamster"
```

Your terminal should look something like this:

![truffle test](images/ganache-cli.png)

In a separate terminal window, Compile smart contracts:

```
truffle compile
```

Your terminal should look something like this:

![truffle test](images/truffle_compile.png)

This will create the smart contract artifacts in folder ```build\contracts```.

Migrate smart contracts to the locally running blockchain, ganache-cli:

```
truffle migrate
```

Your terminal should look something like this:

![truffle test](images/truffle_migrate.png)

Test smart contracts:

```
truffle test
```

All 10 tests should pass.

![truffle test](images/truffle_test.png)

In a separate terminal window, launch the DApp:

```
npm run dev
```

## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [IPFS](https://ipfs.io/) - IPFS is the Distributed Web | A peer-to-peer hypermedia protocol
to make the web faster, safer, and more open.
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.


## Authors

See also the list of [contributors](https://github.com/your/project/contributors.md) who participated in this project.

## Acknowledgments

* Solidity
* Ganache-cli
* Truffle
* IPFS
