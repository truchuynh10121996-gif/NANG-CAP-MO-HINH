#!/bin/bash
# Script chạy Streamlit Credit Risk App

echo "🚀 Starting Credit Risk Application..."
echo "📊 Branch: $(git branch --show-current)"
echo "📍 Location: $(pwd)"
echo ""
echo "⚙️  Performance Mode available in sidebar:"
echo "   ⚡ Nhanh - DPI 80, Figsize 70%"
echo "   🎨 Cân bằng - DPI 100, Figsize 85% (Khuyến nghị)"
echo "   🖼️  Chất lượng cao - DPI 150, Figsize 100%"
echo ""
echo "🔑 Remember to configure GEMINI_API_KEY in .streamlit/secrets.toml"
echo ""
echo "▶️  Starting Streamlit..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

streamlit run ED.py
