# test-percentage-visualizer

Visualizer tool to display testing related information per commit. The tool currently only works with JavaScript repos using Jest.

# Visualizer Setup & Tool Usage

1. `Clone` and `cd` into the repo
2. Run the command `./compute-testing-info <repo-path> [<subsample-freq = 1>]` on a supported JavaScript project repo of your choice

## Note: because the libraries are called by the browser, you will need an active internet connection

3. If you do not have it, install Python to your system
4. Once Python is installed, in a terminal run `python -m http.server 1337` (or another port of choice) to start a local http server
5. In a NEW terminal run `start <browser> http://localhost:<port>/<path_to_html_file>` on Windows, `open <browser> http://localhost:<port>/<path_to_html_file>` on MacOS, or `browser http://localhost:<port>/<path_to_html_file>` on Linux. For example, `start firefox http://localhost:1337/visualization/commit-versus-teststatus.html` will open the test status (pass/fail) visualization in Firefox on Windows
6. Interact with the visualization!

# Implementation Notes
