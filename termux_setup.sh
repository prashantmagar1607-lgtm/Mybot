#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "🔧 Starting Termux setup..."
sleep 1

# Update system
pkg update -y
pkg upgrade -y


# Essential utilities only
pkg install -y \
  git \
  wget \
  curl \
  openssh \
  clang \
  make \
  pkg-config

# Python setup
pkg install -y python
pip install --upgrade pip setuptools wheel

# Cleanup
pkg autoremove -y
pkg clean

# Verify
echo ""
echo "✅ Installed versions:"
python --version
pip --version
git --version

cat << EOF

🎉 Termux setup complete!

EOF