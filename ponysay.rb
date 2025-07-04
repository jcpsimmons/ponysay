class Ponysay < Formula
  desc "Cowsay but with ponies"
  homepage "https://github.com/jcpsimmons/ponysay"
  url "https://github.com/jcpsimmons/ponysay/archive/refs/tags/v3.0.4-fixed.tar.gz"
  sha256 "04cee8330a3592a28ccc9d4e5dcbf2f33e4360bdba4cb950c076381e21df1fe1"
  license "GPL-3.0-or-later"
  head "https://github.com/jcpsimmons/ponysay.git", branch: "master"

  depends_on "python@3.12"
  depends_on "texinfo"

  def install
    ENV.prepend_path "PATH", Formula["python@3.12"].opt_libexec/"bin"
    
    # Set up Python paths for the build
    python3 = Formula["python@3.12"].opt_bin/"python3"
    
    system python3, "setup.py", "--freedom=partial", "build"
    
    # Fix the shebang in the ponysay.install file
    inreplace "ponysay.install", "#!/usr/bin/env python", "#!#{python3}"
    
    # Install the main executable
    bin.install "ponysay.install" => "ponysay"
    chmod 0755, bin/"ponysay"
    
    # Install shell completions
    bash_completion.install "completion/bash-completion.ponysay.install" => "ponysay"
    zsh_completion.install "completion/zsh-completion.ponysay.install" => "_ponysay"
    fish_completion.install "completion/fish-completion.ponysay.install" => "ponysay.fish"
    
    # Install ponies and related data
    (share/"ponysay").install "ponies"
    (share/"ponysay").install "ttyponies"
    (share/"ponysay").install "quotes" if File.exist?("quotes")
    (share/"ponysay").install "balloons"
    
    # Install UCS map if it exists
    if File.exist?("share/ucsmap")
      (share/"ponysay").install "share/ucsmap" => "ucsmap"
    end
    
    # Install man page
    man6.install "manuals/manpage.6.install" => "ponysay.6"
    
    # Create symlinks for additional commands
    bin.install_symlink "ponysay" => "ponythink"
  end

  def caveats
    <<~EOS
      Ponysay (fixed version) has been installed. Try running:
        ponysay "Hello, world!"
      
      To use ponythink (thought bubbles instead of speech bubbles):
        ponythink "Deep thoughts"
      
      To see available ponies:
        ponysay -l
        
      To get random pony quotes:
        ponysay -q
    EOS
  end

  test do
    system bin/"ponysay", "test message"
    system bin/"ponythink", "test thought"
    system bin/"ponysay", "-l"
    system bin/"ponysay", "-h"
  end
end