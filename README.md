# Supply Chain & Data Auditing

An Ethereum DApp that demonstrates a Supply Chain flow between a Seller and Buyer. The user story is similar to any commonly used supply chain process. A Seller can add items to the inventory system stored in the blockchain. A Buyer can purchase such items from the inventory system. Additionally a Seller can mark an item as Shipped, and similarly a Buyer can mark an item as Received.

## SupplyChain contract

<a href="https://rinkeby.etherscan.io/address/0xB8eB51696C71DB081909908fcFC36C17C65B2c64">Click here</a> to view the SupplyChain contract on etherscan

The contract <a href="https://rinkeby.etherscan.io/address/0xB8eB51696C71DB081909908fcFC36C17C65B2c64#code">code</a> has been verified and it is visible on `rinkeby.etherscan.io`

## The DApp User Interface

![truffle test](screenshots/Product_overview.jpg)

![truffle test](screenshots/Farm_details.jpg)

![truffle test](screenshots/Product_details.jpg)

![truffle test](screenshots/Transaction_history.jpg)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

### Installing

A step by step series of examples that tell you have to get a development environment running

#### Clone this repository:

```
git clone https://github.com/DineshBS44/Product-Supply-Chain
```

Change directory to `supply-chain` folder and install all requisite npm packages (as listed in `package.json`):

```
cd supply-chain
npm install
```

#### Launch Ganache:

```
ganache-cli -m "<Seed Phrase>"
```

or

```
truffle develop
```

#### Your terminal should look something like this:

![truffle test](screenshots/ganache-cli.jpg)

#### In a separate terminal window, Compile smart contracts:

```
truffle compile
```

#### Your terminal should look something like this:

![truffle test](screenshots/truffle_compile.jpg)

This will create the smart contract artifacts in folder `build\contracts`.

Migrate smart contracts to the locally running blockchain, ganache-cli:

```
truffle migrate
```

Or, Migrate smart contracts to the Rinkeby Test Network:

```
truffle migrate --reset --network rinkeby
```

#### Your terminal should look something like this:

![truffle test](screenshots/truffle_migrate.jpg)

#### Verify the code for the smart contract using Etherscan API through the command

`truffle run verify SupplyChain --network rinkeby --license MIT`

#### Test smart contracts:

```
truffle test
```

All 10 tests should pass.

![truffle test](screenshots/truffle_test.jpg)

In a separate terminal window, launch the DApp:

```
npm run dev
```

## Built With

- [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
- [IPFS](https://ipfs.io/) - IPFS is the Distributed Web | A peer-to-peer hypermedia protocol
  to make the web faster, safer, and more open.
- [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.

## Libraries/services used

- **ganache-cli** - For running a local blockchain mostly used for testing purposes
- **dotenv** - For managing data in .env files
- **truffle-hdwallet-provider** - Used to create a provider using Seed phrase(Mnemonic) and Infura RPC URL to connect to the Rinkeby Test Network
- **web3** - To interact with the deployed smart contract either on Ganache or Rinkeby test network
- **mocha & chai** - To test the smart contracts written in solidity
- **lite-server** - To host the DApp on the server
- **truffle-plugin-verify** - To verify the smart contract code on Etherscan using its API
- **Etherscan** - View and keep track of transactions happening around a smart contract as well as view its code, read and write stuff to it
- **Remix** - To compile, deploy and test smart contracts on the Javascript VM
- **Metamask** - Ethereum wallet which is connected to the DApp
- **Infura** - For getting the API endpoint to connect to the Etherem network without having to run a full node
- **IPFS** - To make the DApp completely decentralized, the DApp and all its files are hosted to IPFS
- **Truffle** - Framework used to write, compile, test and deploy smart contracts with ease along with the frontend of the DApp.

## Commands in IPFS to host the project to IPFS

Make sure IPFS-cli is installed

##### Add all the files to IPFS using the command

`ipfs add -r Product-Supply-Chain`

Now the whole project can be view using this <a href="https://ipfs.io/ipfs/QmcFzmx6j7QYvSEuSXUSZrdVR5tcU6p1NWwk9HS93vW9k4">link</a>
The IPFS hash used to store the project folder is QmcFzmx6j7QYvSEuSXUSZrdVR5tcU6p1NWwk9HS93vW9k4

##### To publish the DApp to incorporate changes to be viewed using the same hash, the commands used are

`ipfs daemon`

In an different terminal window, execute the following command to publish

`ipfs name publish QmcFzmx6j7QYvSEuSXUSZrdVR5tcU6p1NWwk9HS93vW9k4`

Use https://gateway.ipfs.io/ipfs/QmcFzmx6j7QYvSEuSXUSZrdVR5tcU6p1NWwk9HS93vW9k4 to see the published project on IPFS

### Additional details

The `transaction hash` and `contract address` for the smart contracts deployed to the Rinkeby Test Network are

##### FarmerRole.sol

- **transaction hash** - 0x92105d3ff48a8a63e16e7f694f2989d00218f85a4f922c215eed68d7237aaab0
- **contract address** - 0xA6bde78Ed2D8eF4d82425e481fb4094B1Cd3C462

##### DistributorRole.sol

- **transaction hash** - 0xf903b17cf938ce45cf4e66914cdb4f376f4bd21c3f74d2341fd15ab67e6a292c
- **contract address** - 0x01dAE76C3AF54F77D9bf1d51437f4b82dF4dD7D1

##### RetailerRole.sol

- **transaction hash** - 0xff73bc83785f384acb2e03078fe17eadb94279ca41f303dd7edab7533ca8f16a
- **contract address** - 0xD451de7349c89674C8043f32b858Ec072E22D131

##### ConsumerRole.sol

- **transaction hash** - 0xebbf29e0a7cc09fecd98ba8bcc442e7eaeff3125e8fb21992322c71208aad643
- **contract address** - 0x6d17CdcaeB9c49Bda9810dD4C8e8DF6F21893C84

##### SupplyChain.sol

- **transaction hash** - 0x77f39a47869690c5534704f10141d1860e166c570ddaafde78c19703a69d3e61
- **contract address** - 0xB8eB51696C71DB081909908fcFC36C17C65B2c64

### Some versions of Frameworks and Libraries used in this project are

- **Truffle version** - 5.3.14
- **Solidity version** - 0.8.6
- **Node JS version** - 14.16.1
- **truffle-hdwallet-provider version** - 1.0.17
- **web3 version** - 1.4.0

### An example Transaction History

A product has been tracked through the supply chain and these transactions can be viewed on <a href="https://rinkeby.etherscan.io/">rinkeby.etherscan.io</a>

The Transactio hashes are

- **Harvested** - 0x92a3a10b852ab26efb94088f1c3a9212211ab978f37e03ac37fcc9b6af715466
- **Processed** - 0x368eb35fac9807c16b4d3bad77ec9d72f34ae56c384fe84ae1193bee03e73b0d
- **Packed** - 0x50c3c0b5fa691d955c1e4eafd94ac91082d66d5e353b837378b4b5a902245009
- **ForSale** - 0x50bb804da55f9cc3adf53dfc1cb640aaf6deb30ded7799629c085ec5a1f9a998
- **Sold** - 0xdb99ffd9f6d2ac59f6fccd2349e9a3f0dbfcb262c0f1d0ccf3ddf61797338374
- **Shipped** - 0x94e0465d803053ce0d0811891cba91c08cfc0701a6ac83dc7a6fc65309114c06
- **Received** - 0x2da6ce670bff2cec745e919c0b61e08ec983a8d24564dea0f4f4526d8cbf8710
- **Purchased** - 0x25ea83867bfce70a3ea296b448aca4db1b836eb2bccff2ab93711419ee57d3c8

## UML Diagrams for Coffee Supply Chain

![truffle test](screenshots/activity_diagram.jpg)

![truffle test](screenshots/sequence_diagram.jpg)

![truffle test](screenshots/state_chart_diagram.jpg)

![truffle test](screenshots/class_diagram.jpg)

## Developer

<table>
<tr align="center">
<td>
Dinesh B S
<p align="center">
<img src = "https://i.ibb.co/kxLPy5G/dinesh-pic.jpg" width="150" height="150" alt="Dinesh B S (Insert Your Image Link In Src">
</p>
<p align="center">
<a href = "https://github.com/DineshBS44"><img src = "http://www.iconninja.com/files/241/825/211/round-collaboration-social-github-code-circle-network-icon.svg" width="36" height = "36"/></a>
<a href = "https://www.linkedin.com/in/dinesh-b-s-197983192/">
<img src = "http://www.iconninja.com/files/863/607/751/network-linkedin-social-connection-circular-circle-media-icon.svg" width="36" height="36"/>
</a>
</p>
</td>
</tr>
  </table>

## License

Licensed under MIT License : https://opensource.org/licenses/MIT

<br>
<br>
