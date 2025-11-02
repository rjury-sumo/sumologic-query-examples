# Sumo Logic Search Viewers

Interactive web-based viewers for Sumo Logic search queries.

## Available Viewers

- **[Log Searches Viewer](logs-search-viewer.html)** - Browse and search log queries
- **[Metric Searches Viewer](metrics-search-viewer.html)** - Browse and search metric queries

## Quick Start

### Option 1: Local Viewing

From the project root directory, run:

```bash
python3 -m http.server 8000
```

Then open in your browser:
```
http://localhost:8000/docs/logs-search-viewer.html
http://localhost:8000/docs/metrics-search-viewer.html
```

### Option 2: GitHub Pages

These pages work automatically when served via GitHub Pages. Enable GitHub Pages in your repository settings and point it to the `/docs` folder.

## Features

- 🔍 **Search**: Global search across all fields
- 🎯 **Filter**: Column-specific filtering
- 📊 **Sort**: Click headers to sort
- 📋 **Copy**: Click any query to copy to clipboard
- 📥 **Export**: Download filtered results as CSV
- 💾 **Persistence**: Remembers your preferences
- 📱 **Responsive**: Works on mobile devices
