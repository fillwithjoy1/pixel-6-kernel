# What is this repo about?
A pixel-6-kernel builder for newbies who want to see how to build one. You can obviously follow the Google Developers
Guide to build the kernel, but this repo is for those who want to see how it's done in a more simplified way.

## Kali Nethunter Kernel
_Includes Pixel 6/6a/6 Pro_


This repo also comes with a script built-in to make kali-nethunter for you. But you need to fulfill these heavy
requirements:
- 150GB of free space
- Internet good enough to download 130gb of files
- Repo tool installed [here](https://source.android.com/setup/develop#installing-repo)
- 16GB RAM (24GB+ for Windows)
- Tip: If you are using WSL, make sure you dedicate enough memory to it. You can do this by going to 
C:/Users/<your user>/.wslconfig and setting `memory=16GB`

Ready? Clone the repo and just run this command `"./build_kali_nethunter.sh"`.

_Note: The script compiles for Android 14 QPR3_