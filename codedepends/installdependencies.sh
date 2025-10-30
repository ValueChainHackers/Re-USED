#!/usr/bin/env bash
set -e

echo "🔧 Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

echo "📦 Installing dependencies..."
sudo apt install -y \
  curl \
  git \
  build-essential \
  libssl-dev \
  libreadline-dev \
  zlib1g-dev \
  libsqlite3-dev \
  libyaml-dev \
  libxml2-dev \
  libxslt1-dev \
  libffi-dev \
  nodejs \
  npm

echo "💎 Installing Ruby via APT..."
sudo apt install -y ruby-full

echo "✅ Verifying Ruby installation..."
ruby -v
gem -v

echo "📦 Installing Bundler..."
sudo gem install bundler

echo "📦 Installing common Ruby gems..."
sudo gem install rake jekyll rails rubocop

echo "🧹 Cleaning up gem cache..."
sudo gem cleanup

echo "✨ Installation complete!"
echo "Ruby version: $(ruby -v)"
echo "Bundler version: $(bundle -v)"
