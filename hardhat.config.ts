import { HardhatUserConfig } from 'hardhat/config';
import '@nomicfoundation/hardhat-toolbox';
import DotEnv from 'dotenv';

DotEnv.config({ path: '.env' });

const {
  ACCOUNT_PRIVATE_KEY = '',
  MAINNET_RPC_URL = '',
  TESTNET_RPC_URL = ''
} = process.env;

const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        version: '0.8.21'
      }
    ]
  },
  defaultNetwork: 'testnet',
  networks: {
    mainnet: {
      url: MAINNET_RPC_URL,
      accounts: [ACCOUNT_PRIVATE_KEY],
      gasPrice: 20000000000
    },
    testnet: {
      url: TESTNET_RPC_URL,
      accounts: [ACCOUNT_PRIVATE_KEY],
      gasPrice: 20000000000
    }
  }
};

export default config;
