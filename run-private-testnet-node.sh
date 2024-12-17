#!/bin/bash

# Add Aura key to keystore
echo "Inserting Aura key into keystore..."
/usr/local/bin/vola-node key insert --chain private-testnet \
    --scheme Sr25519 --suri "$AURA_SURI" --key-type aura --password "$KEYSTORE_PASSWORD"

# Add Grandpa key to keystore
echo "Inserting Grandpa key into keystore..."
/usr/local/bin/vola-node key insert --chain private-testnet \
    --scheme Ed25519 --suri "$AURA_SURI" --key-type gran --password "$KEYSTORE_PASSWORD"

# Run the node
echo "Starting the node..."
exec /usr/local/bin/vola-node --validator --chain private-testnet --port "$PORT" --rpc-port "$RPC_PORT" \
    --rpc-methods safe --name "$NODE_NAME" --node-key "$NODE_KEY" $EXTRA_ARGS