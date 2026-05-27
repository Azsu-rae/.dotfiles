
# `set` is a bash builtin that controls shell behavior and manages variables/positional parameters.
#
# **Behavior flags** (`-` enables, `+` disables):
# - `-e` — exit on error
# - `-u` — treat unset variables as errors
# - `-x` — print each command before executing (debug mode)
# - `-o pipefail` — catch pipe failures
# - `-o noclobber` — prevent `>` from overwriting files
#
# **View current settings:**
# ```bash
# set -o        # shows all options and their state
# ```
#
# **View all variables and functions:**
# ```bash
# set           # prints everything in the current shell environment
# ```
#
# **Set positional parameters:**
# ```bash
# set -- "a" "b" "c"
# echo $1  # a
# echo $2  # b
# ```
#
# The `--` is a convention meaning "end of flags, rest are arguments."
#
# Most common use in scripts is just the strict mode combo at the top:
# ```bash
# set -euo pipefail
# ```


# -sfn
# s -> symbolic:
# create a symbolic link (symlink) instead of a hard link
# f -> force:
# remove the destination file if it already exists
# n -> no dereference:
# treat the destination symlink as a normal file instead of following it

# the -p means parents.
#
# It does two useful things:
#
# Creates parent directories automatically if they don't exist.
# Doesn't error if the directory already exists.

# read -p "prompt" var — displays a prompt and stores the input in var.
# Common flags:
#
# -p — inline prompt text
# -s — silent input (for passwords)
# -n 1 — read only 1 character (no Enter needed)
# -t 5 — timeout after 5 seconds

