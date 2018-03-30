# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
export PATH=/opt/apache-maven-3.3.9/bin:$PATH
export PATH=$PATH:/usr/local/Cellar/tesseract/3.05.00/include/tesseract
export PATH=$PATH:/usr/local/Cellar/vim/8.0.1200/bin

# added by Anaconda2 4.4.0 installer
export PATH="/Users/cmanlangit/anaconda/bin:$PATH"
