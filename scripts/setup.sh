#!/bin/bash
echo "Installing Sisyphus Configuration..."

# 1. Clone/Pull
if [ -d "sisyphus-config" ]; then
    cd sisyphus-config
    git pull
else
    git clone https://github.com/Tinycute00/sisyphus-config.git
fi

# 2. Setup Aliases (Optional)
echo "Setup complete. Review 'persona/behavior.md' for operating instructions."
