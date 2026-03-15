#!/usr/bin/env opt/render/bin/bash

# Exit on error
set -o errexit

echo "📦 Installing root dependencies..."
npm install

echo "🔌 Installing backend dependencies..."
cd backend && npm install
cd ..

echo "🎨 Installing frontend dependencies..."
cd frontend && npm install

echo "🏗️ Building frontend..."
npm run build
cd ..

echo "✅ Build complete!"
