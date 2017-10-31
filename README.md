##windows hard link command
mklink /H link target
##locations of files
_vimrc : */vim folder
git_prompt.sh: C:\Program Files\Git\etc\profile.d


##TODO
added autohotkey (https://autohotkey.com/) script to handle window snapping to vertical monitor (https://gist.github.com/AWMooreCO/1ef708055a11862ca9dc - advanced window snap)

http://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/
7. Highlighting the search using GREP_OPTIONS

As grep prints out lines from the file by the pattern / string you had given, if you wanted it to highlight which part matches the line, then you need to follow the following way.

When you do the following export you will get the highlighting of the matched searches. In the following example, it will highlight all the this when you set the GREP_OPTIONS environment variable as shown below.

$ export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'
