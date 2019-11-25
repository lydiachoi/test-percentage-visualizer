# test-percentage-visualizer

Summary: A visualizer tool to display testing related information per commits. The tool currently only works with JavaScript repos using Jest.

# Visualizer Setup & Tool Usage

1. Clone and cd into the repo
2. Run the command `./compute-testing-info <repo-path>`
3. If you do not have it, install Python to your system
4. Once Python is installed, in a terminal run `python -m http.server 1337` (or another port of choice) to start a local http server
5. In a NEW terminal run `start <browser> http://localhost:<port>/<path_to_html_file>` on Windows, `open <browser> http://localhost:<port>/<path_to_html_file>` on MacOS, or `browser http://localhost:<port>/<path_to_html_file>` on Linux. For example, `start firefox http://localhost:1337/visualization/commit-versus-teststatus.html` will open the test status (pass/fail) visualization in Firefox on Windows
6. Interact with the visualization!

##### NOTE: Since the libraries are called by the browser, you will need an active internet connection.

# Project Details 

## The Intent of our Visualisation 
The original task we set out to solve was to help facilitate the strenuous process of testing, making information more visual and informative to everyone. We wanted the tool to be able to keep track/log information throughout the lifetime of the repo, from the first commit to present day. 

## The Original Design
The original visualization consisted of two graphs:
  1. Line graph to output lines of code per commit, visualizing the percentage of test code over all lines of code. 
  2. Bar graph to output number of passed tests over total number of tests over time

### The Outcome of Prototype Testing
The prototype testing concluded that the information was lackluster; programmers felt that the graphs weren't able to produce enough relevant information for them to care. If someone were to use the tool, it would not only have to produce more information as a whole, but more relevant information. 

Also, we realized that if a repo had way too many commits, the graphs would be rendered useless since the plot plots and bars would be squished and small, and the details became undistinguishable. 

So we scrapped the first test altogether, modified existing tests and create a new test for more relevance. We also decided to provide the ability to skip commits. 

## The New Design
The new visualization consists of the following graphs:
  1. A bar graph showing each of the coverage types (line, statement, branch, and function) for each commit
  2. A coverage line graph of the same information as above, for easier legibility
  3. A bar graph showing memory information &lt;shannon to describe&gt;

### The Outcome of End-User Testing
The final design includes the following features:
  - 2 distinct graphs showing memory information and test coverage
  - an optional second numerical argument passed to grab every x commit to sample in the graph: `./compute-testing-info <repo-path> [<subsample-freq>]`

