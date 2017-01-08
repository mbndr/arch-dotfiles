# Arch-Dotfiles
These are my early stage dotfiles for my Arch Linux system.  
I'm very new to the Arch stuff and currently only testing stuff.  

```bash
git clone https://github.com/probandula/arch-dotfiles
cd arch-dotfiles
./install
```
The script copies all files to your home directory. If a file or folder already exists it asks for overwriting 
or ignoring the specific file.  
If you only want to update one specific file, call the script like this: `./install .bashrc`.

All files in the folder will be copied, except the install script itself, this `README.md` and the `/other` 
folder. There other configurations for another directory can be stored.

**The script maybe has to work recursively (I'll see in the future)**
