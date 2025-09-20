#!/bin/bash

# Script to update CSS loading strategy in all HTML files
# This implements the optimal CSS loading with critical CSS inline

CRITICAL_CSS='    <!-- Critical CSS Inline for Optimal Performance -->
    <style>
    /* Critical above-the-fold styles */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { font-family: -apple-system, BlinkMacSystemFont, '\''Segoe UI'\'', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif; line-height: 1.6; color: #ffffff; background-color: #000000; }
    .container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }
    .navbar { position: fixed; top: 0; width: 100%; background: rgba(0,0,0,0.95); backdrop-filter: blur(10px); z-index: 1000; padding: 1rem 0; border-bottom: 1px solid rgba(255,255,255,0.1); }
    .nav-container { display: flex; justify-content: space-between; align-items: center; max-width: 1200px; margin: 0 auto; padding: 0 20px; }
    .nav-logo a { font-size: 2rem; font-weight: 700; color: #ffffff; background: linear-gradient(135deg, #4F7CFF 0%, #3B5FE6 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    .nav-menu { display: flex; list-style: none; align-items: center; gap: 2rem; }
    .nav-menu a { color: #ffffff; font-weight: 500; padding: 0.5rem 0; }
    .service-hero { background: #000000; color: white; padding: 200px 0 100px; text-align: center; }
    .service-hero h1 { font-size: 3.5rem; margin-bottom: 1.5rem; font-weight: 800; color: #ffffff; }
    .hero-description { font-size: 1.2rem; margin-bottom: 2.5rem; opacity: 0.9; color: #ffffff; }
    h1, h2, h3, h4, h5, h6 { font-weight: 700; line-height: 1.2; margin-bottom: 1rem; color: #ffffff; }
    h1 { font-size: 3.5rem; } h2 { font-size: 2.5rem; } h3 { font-size: 1.8rem; }
    p { margin-bottom: 1rem; line-height: 1.7; color: #ffffff; }
    a { color: #ffffff; text-decoration: none; transition: all 0.3s ease; }
    .cta-btn { padding: 1rem 2rem; font-size: 1.1rem; font-weight: 600; border-radius: 6px; text-decoration: none; display: inline-block; transition: all 0.3s ease; border: 2px solid; box-sizing: border-box; min-width: 200px; text-align: center; }
    .cta-btn.primary { background: #ffffff; color: #000000; border-color: #000000; }
    .cta-btn.primary:hover { background: #000000; color: #ffffff; border-color: #ffffff; transform: translateY(-2px); }
    .cta-btn.secondary { background: transparent; color: #ffffff; border-color: #ffffff; }
    .cta-btn.secondary:hover { background: #ffffff; color: #000000; transform: translateY(-2px); }
    </style>
    
    <!-- Optimal CSS Loading Strategy -->
    <!-- Preload non-critical CSS for fast loading -->
    <link rel="preload" href="css/non-critical.css" as="style" onload="this.onload=null;this.rel='\''stylesheet'\''">
    <noscript><link rel="stylesheet" href="css/non-critical.css"></noscript>'

LOCATION_CSS='    <!-- Critical CSS Inline for Optimal Performance -->
    <style>
    /* Critical above-the-fold styles */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { font-family: -apple-system, BlinkMacSystemFont, '\''Segoe UI'\'', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif; line-height: 1.6; color: #ffffff; background-color: #000000; }
    .container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }
    .navbar { position: fixed; top: 0; width: 100%; background: rgba(0,0,0,0.95); backdrop-filter: blur(10px); z-index: 1000; padding: 1rem 0; border-bottom: 1px solid rgba(255,255,255,0.1); }
    .nav-container { display: flex; justify-content: space-between; align-items: center; max-width: 1200px; margin: 0 auto; padding: 0 20px; }
    .nav-logo a { font-size: 2rem; font-weight: 700; color: #ffffff; background: linear-gradient(135deg, #4F7CFF 0%, #3B5FE6 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    .nav-menu { display: flex; list-style: none; align-items: center; gap: 2rem; }
    .nav-menu a { color: #ffffff; font-weight: 500; padding: 0.5rem 0; }
    .service-hero { background: #000000; color: white; padding: 200px 0 100px; text-align: center; }
    .service-hero h1 { font-size: 3.5rem; margin-bottom: 1.5rem; font-weight: 800; color: #ffffff; }
    .hero-description { font-size: 1.2rem; margin-bottom: 2.5rem; opacity: 0.9; color: #ffffff; }
    h1, h2, h3, h4, h5, h6 { font-weight: 700; line-height: 1.2; margin-bottom: 1rem; color: #ffffff; }
    h1 { font-size: 3.5rem; } h2 { font-size: 2.5rem; } h3 { font-size: 1.8rem; }
    p { margin-bottom: 1rem; line-height: 1.7; color: #ffffff; }
    a { color: #ffffff; text-decoration: none; transition: all 0.3s ease; }
    .cta-btn { padding: 1rem 2rem; font-size: 1.1rem; font-weight: 600; border-radius: 6px; text-decoration: none; display: inline-block; transition: all 0.3s ease; border: 2px solid; box-sizing: border-box; min-width: 200px; text-align: center; }
    .cta-btn.primary { background: #ffffff; color: #000000; border-color: #000000; }
    .cta-btn.primary:hover { background: #000000; color: #ffffff; border-color: #ffffff; transform: translateY(-2px); }
    .cta-btn.secondary { background: transparent; color: #ffffff; border-color: #ffffff; }
    .cta-btn.secondary:hover { background: #ffffff; color: #000000; transform: translateY(-2px); }
    </style>
    
    <!-- Optimal CSS Loading Strategy -->
    <!-- Preload non-critical CSS for fast loading -->
    <link rel="preload" href="../css/non-critical.css" as="style" onload="this.onload=null;this.rel='\''stylesheet'\''">
    <noscript><link rel="stylesheet" href="../css/non-critical.css"></noscript>'

echo "Updating CSS loading strategy in all HTML files..."

# Update root level HTML files
for file in *.html; do
    if [[ -f "$file" && "$file" != "index.html" && "$file" != "ceramic-coating.html" && "$file" != "interior-detailing.html" ]]; then
        echo "Updating $file..."
        sed -i.bak 's|<link rel="stylesheet" href="css/main.css">|'"$CRITICAL_CSS"'|g' "$file"
    fi
done

# Update location HTML files
for file in locations/*.html; do
    if [[ -f "$file" ]]; then
        echo "Updating $file..."
        sed -i.bak 's|<link rel="stylesheet" href="../css/main.css">|'"$LOCATION_CSS"'|g' "$file"
    fi
done

echo "CSS loading strategy updated in all HTML files!"
echo "Backup files created with .bak extension"
