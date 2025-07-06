# Homebrew Tap for Fantastical CLI

This is a Homebrew tap for the `fantastical-cli` tool, which provides a command-line interface for adding events to Fantastical using natural language.

## Installation

First, tap this repository:

```bash
brew tap jasoncausey/fantastical-cli
```

Then install the CLI tool:

```bash
brew install fantastical-cli
```

## Usage

After installation, you can use the `fantastical-cli` command to add events to Fantastical:

```bash
# Add a simple event
fantastical-cli "Meeting with John tomorrow at 3pm"

# Add an event with notes
fantastical-cli "Doctor appointment on Friday 3pm" --notes "Remember to bring insurance card."

# Add an event to a specific calendar
fantastical-cli "Team standup Monday at 9am" --calendar "Work"

# Show the Fantastical UI before adding (instead of adding immediately)
fantastical-cli "Lunch with Sarah next Tuesday at noon" --gui
```

## Requirements

- macOS (required for Fantastical integration)
- Fantastical 3 installed
- Python 3.12 or later (automatically handled by Homebrew)

## About

This tool uses Fantastical's URL scheme to add events, allowing you to quickly create calendar events from the command line using natural language descriptions.

For more information, visit the [project repository](https://github.com/jasoncausey/fantastical-cli).
