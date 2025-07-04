# 🦄 ponysay ✨

*Friendship is magic... and so is your terminal!*

![Rainbow Dash saying hello](http://i.imgur.com/xOJbE.png)

Welcome to the most magical corner of your command line! `ponysay` brings the wonder of Equestria straight to your terminal, transforming boring old text into delightful pony conversations. It's like `cowsay`, but instead of a cow, you get adorable ponies from My Little Pony: Friendship is Magic! 🌈

> *"Today your terminal, tomorrow the world!"* — Rainbow Dash (probably)

## 🎭 What Makes This Special?

This is the **actively maintained** fork of ponysay that actually works! While the original repository has been taking a long nap in the digital meadow, we've been busy:
- 🔧 **Fixed Python 3 compatibility** (no more cryptic errors!)
- 🚀 **Modernized installation** (works on today's systems)
- 💝 **Added love and care** (ponies deserve the best!)
- 🌟 **Regular updates** (because friendship never ends)

## 🏃‍♀️ Quick Gallop (Installation)

### 🍺 The Easy Way (Homebrew)
```bash
brew install ponysay
```
*That's it! Magic! ✨*

### 🔨 The Adventure Way (From Source)
```bash
git clone https://github.com/jcpsimmons/ponysay.git
cd ponysay
python3 setup.py --freedom=partial install
```

### 🧪 Test Your Installation
```bash
ponysay "Friendship is magic!"
```

If you see a cute pony saying your message, congratulations! You've successfully brought magic to your terminal! 🎉

## 🎪 Let the Show Begin!

### 🎭 Basic Pony Magic
```bash
# Random pony with your message
ponysay "Hello, Equestria!"

# Choose your favorite pony
ponysay -f twilight "Learning is fundamental!"
ponysay -f pinkie "PARTY TIME!"
ponysay -f rarity "Darling, you look fabulous!"

# Get a random quote from the show
ponysay -q

# Specific pony quote
ponysay -q fluttershy
```

### 🌙 Thoughtful Ponies
```bash
# Use ponythink for thought bubbles instead of speech
ponythink "I wonder what's for dinner..."
ponythink -f luna "The night is so peaceful..."
```

### 📜 See All Your Pony Friends
```bash
# List all available ponies
ponysay -l

# List ponies with quotes (they'll be highlighted!)
ponysay -L
```

## 🎨 Customize Your Stable

### 🌅 Morning Magic (Terminal Startup)
Add some daily enchantment by putting this in your `~/.bashrc` or `~/.zshrc`:

```bash
# Random pony fortune every time you open terminal
fortune | ponysay

# Or just a simple greeting
ponysay "Welcome back to the magic!"
```

### 🎭 TTY Compatibility
For the old-school terminal experience:

```bash
if [ "$TERM" = "linux" ]; then
    function ponysay() {
        exec ponysay "$@"
        # Add color palette reset here if needed
    }
fi
```

## 🌈 The Magical Pony Gallery

Our stable includes all your favorite characters:

**🦄 Main Characters:**
- `twilight` - The studious princess
- `rainbow` - The lightning-fast pegasus
- `pinkie` - The party pony extraordinaire
- `rarity` - The glamorous fashionista
- `applejack` - The hardworking farm pony
- `fluttershy` - The gentle animal lover

**🌟 And Many More:**
- `celestia` & `luna` - The royal sisters
- `discord` - The spirit of chaos
- `derpy` - Everyone's favorite mail pony
- `spike` - The loyal dragon assistant
- Plus over 200 other characters!

## 🛠️ For the Tech-Savvy Ponies

### 📦 Dependencies
- **Python 3.6+** (because even ponies need modern technology)
- **coreutils** (for terminal magic detection)
- **texinfo** (for the comprehensive manual)

### 🔍 Troubleshooting
```bash
# Test if everything is working
./dependency-test.sh

# Get help from the ponies
ponysay -h
man 6 ponysay
```

### 🎯 Freedom Levels
- `--freedom=partial` - All ponies welcome! (default)
- `--freedom=strict` - Only completely free ponies

## 🤔 Frequently Asked Pony Questions

**Q: Help! My ponies look all jumbled up!**
A: Try a different monospaced font like 'Liberation Mono' or 'Consolas'. Ponies need proper spacing to look their best! 

**Q: Can I add my OC (Original Character)?**
A: While we focus on show characters, we love creativity! Open an issue and let's chat!

**Q: This is the most amazing thing ever!**
A: That's not a question, but we agree! Spread the magic! ✨

**Q: Does this work on Windows?**
A: Through WSL (Windows Subsystem for Linux) or Cygwin! Even Windows deserves ponies.

## 🎉 Join the Herd!

Found a bug? Want to add a feature? Have a favorite pony quote we're missing? 

- 🐛 **Report Issues:** [GitHub Issues](https://github.com/jcpsimmons/ponysay/issues)
- 💡 **Share Ideas:** We love hearing from the community!
- 🎁 **Contribute:** Pull requests are always welcome!

## 📜 Legal Magic

This project is licensed under GPL-3.0-or-later. My Little Pony: Friendship is Magic is © Hasbro. We're just spreading the friendship! 

---

*Made with 💖 and a sprinkle of magic*

**Remember:** Friendship isn't just magic—it's also in your terminal! 🦄✨

```bash
ponysay "Thanks for using ponysay!"
```
