# Vola Node Docker

This repository contains scripts for easy orchestration of the Vola Node.

## Requirement

- Docker Compose

## How to run?

- Clone repo
- Copy .env.example to .env and update .env file.
- Run `docker compose up`

## Envs

- **AURA_SURI**: Specifies the SURI for generating Aura keys. This should be 32 bytes in hex format (0x-prefixed with 64 additional 0-f bytes). Eg: `0x1bbae82623cd6e7475cfd80f59da9f0e2b65597a8e681d60b7eb2a5353d64097`

- **GRAN_SURI**: Specifies the SURI for generating Grandpa keys. This should be 32 bytes in hex format (0x-prefixed with 64 additional 0-f bytes). Can be same as _AURA_SURI_. Eg: `0x1bbae82623cd6e7475cfd80f59da9f0e2b65597a8e681d60b7eb2a5353d64097`

- **NODE_NAME**: The name of the node. This is used to identify your node within the network.

- **NODE_KEY**: Secret key to use for p2p networking. The value is parsed as a hex-encoded Ed25519 32 byte secret key (64 hex chars).Eg: `5c507c46d949698a3ff6ae2e5cc9808b26b3b33c0623440dc4c563c1a0d0b2be`

- **KEYSTORE_PASSWORD**: The password used to unlock the node's keystore.

- **PORT**: The port number used for the node's peer-to-peer network communication (default is 30333).

- **RPC_PORT**: The port number for remote procedure calls (RPC), which is used for interacting with the node (default is 9944).

Ensure that these variables are properly configured to match your environment and security requirements.

## Generate SURI and Node Key

To generate SURI uri for aura and grandpa keys:

```bash
docker run --rm -it volanetwork/vola-node key generate
```

The secret seed is the required SURI.

To generate node key:

```bash
docker run --rm -it volanetwork/vola-node key generate-node-key
```

The second value is the required node key.
