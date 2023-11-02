# BF - A <a href="https://en.wikipedia.org/wiki/brainfuck" target="_blank">Brainfuck</a> Interpreter
A <a href="https://en.wikipedia.org/wiki/brainfuck" target="_blank">Brainfuck</a> Interpreter written in <a href="https://en.wikipedia.org/wiki/python" target="_blank">Python</a> to help with easy execution and debugging* of brainfuck code. This interpreter is designed to have an incredibly lightweight profile.

<i>* debugging tools have not yet been added</i>
## Installation for Linux
```shell
sudo apt update && sudo apt upgrade -y && sudo apt install wget python ; wget https://raw.githubusercontent.com/SuperArcherG/BF/master/bf.py && wget https://raw.githubusercontent.com/SuperArcherG/BF/master/installBF.sh && sudo sh installBF.sh && rm installBF.sh bf.py
```
## How to use

Once installed, you can just type `bf` in your command line to run the code.
`bf help` will show you the proper usage, outputting `Usage: python3 main.py <file_path> <cell_count> <output_type (0: Decimal, 1: Text)>`

`<file_path>` Enter the file path of the script. The file extension doesn't matter but traditionally `bf` or `b` are used. The file needs to be a plain text UTF-8 file.
`<cell_count>` Determines the amount of cells or memory to use. Most programs don't need that much, but traditionally the default is `30000`, but default values have not been implemented yet.
`<output_type>` Has two states, 0 and 1. 0 is decimal output, whereas the `.` function outputs the raw decimal value of the cell. 1 is text output, which I believe follows traditional ASCII.

If you have cloned the repo, there is a hello world script built-in <a href="https://github.com/SuperArcherG/BF/blob/master/Demos/HelloWorld.bf">Demos/HelloWorld.bf</a>
You can run it as follows:
```shell
bf Demos/HelloWorld.bf 100 1
```


I plan to implement more output types and an extended version of bf in the interpreter in the future.

### Dev Notes
The program skips any non-recognized characters in the script, but weird characters can cause issues sometimes.
The program is not capable of recognizing infinite loops yet and will continue indefinitely. `Ctrl + c` force stops the program
The script is saved at `/usr/local/bin/bf` and a link is created to `/usr/bin/bf`
