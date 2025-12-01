# loch ![Build Status](https://github.com/chanryu/loch/actions/workflows/cmake.yml/badge.svg)

__loch__ is a C++ implementation of [Lox](http://www.craftinginterpreters.com/the-lox-language.html), the language featured in the book [Crafting Interpreters](http://www.craftinginterpreters.com/).

__loch__ is a purely educational project for myself and thus it won't be very useful for building real-world applications. However, if you're another reader of the book and implementing Lox in C++, you may find __loch__ an interesting reference. While it's fully _C++ish_, I tried to make it as close as possible to the book's __jlox__ implementation in terms of identifiers in the code such as class, variable and function names. It should be easy to follow along with the book.

Aside form the techniques explained the book such as Recursive Descent Parsing and Tree-Walk Interpretation, __loch__ implements Mark-and-Sweep Garbage Collection.

## Running loch

While I don't want to spend more time on supporting other environments than my MacBook, the following instructions would work for most Posix-compatible environments with minimal (if not none) tweaks where [CMake](https://cmake.org), bash and a decent C++17 compiler are available.

### Setup project

Once you've cloned the repo, you should run the configuration script to setup the project. It will generate Posix-compatible makefiles via CMake.

```bash
$ ./configure.sh    # pass "--debug" if that's what you want
```

### Build

As mentioned earlier, we use CMake to build the probject. The following command will do that for you:
```bash
$ make -C build    # it's just a convenient wrapper around `cmake --build`    
```

If everthing goes well, you should have an executable `loch` under the `build` directory.

### Test

While I didn't put much effort on creating tests, __loch__ is fully compatible with __jlox__. This means I can just reuse __jlox__'s comprehensive test suites. The following Python script runs the full __jlox__ test suites imported from [the Crafting Interpreters repo](https://github.com/munificent/craftinginterpreters).

```bash
$ tool/run-test.py
```

## Directory layout

- `build/` - Intermediate files and other build output go here. Not committed to Git.
- `src/` – Most of the C++ source files.
- `test/` - Test suite files imported from the Crafting Interpreters repo.
- `tool/` - Mostly, Python scripts for generating files and unit testing.
