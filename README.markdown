# Templates for Ps-Experiment

This include [Roswell](https://github.com/snmsts/roswell) templates of [ps-experiment](https://github.com/eshamster/ps-experiment) that extends [Parenscript](https://common-lisp.net/project/parenscript).

----

## Usage
### Some extended notations

On shell.

```bash
$ git clone https://github.com/eshamster/templates-ps-experiment.git
$ cd templates-ps-experiment/simple
$ ros template import
$ cd ~/.roswell/local-projects
$ ros init simple-ps-experiment sample-pse # "sample-pse" is your project name
$ cd sample-pse
$ ros install qlot
$ qlot install
```

On REPL.

```lisp
> (ql:register-local-projects)
> (ql:quickload :sample-pse)
> (sample-pse:start)
```

Then, you can access to `http://localhost:5000/` by your browser.

Note: The codes for `ps-experiment` is `~/.roswell/local-projects/sample-pse/js.lisp`.

## Author

* eshamster (hamgoostar@gmail.com)

## Copyright

Copyright (c) 2018 eshamster (hamgoostar@gmail.com)
