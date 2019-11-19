# test-percentage-visualizer
Visualizer tool to display testing related information per commits. The tool currently only works with JavaScript repos using Jest.

# Visualizer Setup & Tool Usage
1. Clone and cd into the repo
2. Run the command `./git-iterate <repo-path> <output-file>`
  - If the output file doesn't exist, a new file will be create. If it exists, it will be completely overwritten

# NOTE: Since the libraries are called by the browser, you will need an active internet connection.
3. OPTION 1: Open the Viz HTML file directly with Microsoft Edge. Interact with the visualization!
-OR-
3. OPTION 2: Install python into you the system.
4. Once python is installed, on your terminal, call: `python -m http.server 1337` (or any port you want) to initiate a local http server.
5. Open a NEW terminal, and call: `start <browser> http://localhost:1337/<path_to_html_file>` in the URL. For example, `start firefox http://localhost:1337/<path_to_html_file>`. This will open your browser of choice with the visualization.
6. Interact with the visualization!