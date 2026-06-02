# SBox - A sandbox command runner

This is a simple wrapper script around
[bubblewrap](https://github.com/containers/bubblewrap) that lets you easily run
commands sandboxed with some minimal readonly access to necessary directories
on a per-command basis. For example, if you run `sbox vim file.txt`, it will
have readonly access to `~/.vimrc`, but will not have access to `~/.ssh`. If
you run `sbox ssh example.com`, it will have access to `~/.ssh` and not
`~/.vimrc`.

`sbox` will always have read-write access to the *current* directory.

## LLMs

One intended use case is for sandboxing coding agents. You shouldn't have to
trust the company that makes the coding agent to not snoop around in your
`~/.ssh` directory or read the code in other repositories. So, you can prevent
that happening using `sbox claude`, `sbox gemini`, etc. to limit the agents to
only working in the current directory, while still allowing some basic readonly
access to other parts of your filesystem like `/usr/local/bin`, etc.
