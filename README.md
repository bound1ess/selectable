# Selectable

It's like HTML's select tag, but for Bash scripts.

![](http://i.imgur.com/QuTooOd.png)

*Just to give you an idea of what it is like.*

## Installation

Just run these commands in your terminal:

```shell
git clone https://github.com/bound1ess/selectable.git && cd selectable
./build-selectable
```

### Requirements

Selectable works perfectly on my machine.

```shell
bash --version
# GNU bash, version 4.3.11(1)-release (x86_64-pc-linux-gnu)

ruby -v
# ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-linux]
```

## Usage

Use `Arrow Up` and `Arrow Down` to make a choice, 
then confirm it by pressing either `Arrow Left` or `Arrow Right`.

Instructions on how to integrate Selectable in your project can be found when running 
`build-selectable` binary.

You can also use `build-selectable-auto` if you don't want to interact with the program. 
Check out `examples/auto.sh`.

## Examples

```shell
# First of all, clone the repository and "cd" into it as was shown above.
./build-examples && cd examples; ls
./<what you chose>/selectable.sh
```

## License

The MIT license (see `LICENSE` file).
