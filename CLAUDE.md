# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Ponysay is a reimplementation of cowsay that displays ponies from My Little Pony: Friendship is Magic instead of cows. The program displays ASCII art ponies saying user-provided text in speech/thought balloons.

## Common Commands

### Building and Installation
- **Build**: `python3 setup.py --freedom=partial build`
- **Install**: `sudo python3 setup.py --freedom=partial install`
- **Private install**: `python3 setup.py --freedom=partial --private install`
- **Check dependencies**: `./dependency-test.sh`
- **Clean build files**: `python3 setup.py clean`

### Basic Usage
- **Run ponysay**: `ponysay "message"`
- **Use specific pony**: `ponysay -f pinkie "message"`
- **Random quote**: `ponysay -q`
- **List ponies**: `ponysay -l`
- **Help**: `ponysay -h`

## Architecture Overview

### Core Components
- **`src/ponysay.py`**: Main entry point and Ponysay class
- **`src/backend.py`**: Core backend functionality for rendering
- **`src/balloon.py`**: Speech/thought balloon handling
- **`src/common.py`**: Shared utilities and constants
- **`src/argparser.py`**: Command-line argument parsing
- **`src/lists.py`**: Pony listing and management
- **`src/metadata.py`**: Pony metadata handling

### Data Structure
- **`ponies/`**: Standard xterm-compatible pony files
- **`ttyponies/`**: TTY-optimized pony files
- **`extraponies/`**: Additional ponies (may have licensing restrictions)
- **`extrattyponies/`**: TTY versions of extra ponies
- **`ponyquotes/`**: Character quotes from the show
- **`balloons/`**: Different balloon styles (speech, thought, etc.)

### Build System
- **`setup.py`**: Main build/install script with extensive configuration options
- **`completion/`**: Shell auto-completion scripts
- **`manuals/`**: Documentation in various formats

### Freedom Levels
The project supports two installation modes:
- `--freedom=strict`: Only free ponies (no licensing restrictions)
- `--freedom=partial`: All ponies including those with licensing restrictions

### Key Files
- Pony files use `.pony` extension and contain ASCII art with metadata
- Quotes are stored in numbered files per character (e.g., `pinkie.0`, `pinkie.1`)
- UCS mapping in `share/ucsmap` for Unicode character handling

### Testing
- Use `dependency-test.sh` to verify all dependencies are installed
- The project includes validation for pony file freedom status
- Test basic functionality with `ponysay "test message"`