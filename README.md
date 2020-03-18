![StandardRB](https://github.com/andrewmcodes/pruner/workflows/StandardRB/badge.svg)
![Tests](https://github.com/andrewmcodes/pruner/workflows/Tests/badge.svg)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/andrewmcodes/pruner">
    <img src="https://repository-images.githubusercontent.com/235921931/1c26a800-3e2c-11ea-802c-68edb79fc033" alt="Logo">
  </a>

  <h2 align="center">Pruner</h2>

  <p align="center">
    A small Ruby Gem to help you delete Git branches.
  </p>
</p>

<hr/>

- [Notice](#notice)
- [Demo](#demo)
- [Installation](#installation)
- [Usage](#usage)
  - [Example](#example)
    - [Step 1](#step-1)
    - [Step 2](#step-2)
    - [Step 3](#step-3)
    - [Step 4](#step-4)
- [Development](#development)
- [Contributing](#contributing)
  - [Coding Standards](#coding-standards)
- [Code of Conduct](#code-of-conduct)
- [License](#license)

## Notice

This implementation is a bit naive so **be careful**. If you select the current branch you have checked out, the gem will **not** delete it.

## Demo

[![asciicast](https://asciinema.org/a/x94EQbQe3GauDzErwJf3Rq1Kl.svg)](https://asciinema.org/a/x94EQbQe3GauDzErwJf3Rq1Kl)

## Installation

```sh
gem install pruner
```

## Usage

Inside of a repository working directory:

```sh
pruner
```

A multiselect prompt will appear. Use the arrow keys to move between branch names, and hit the spacebar on branches you want to delete. When you have finished making your selections, hit <kbd>Enter</kbd>.

The gem will then delete your branches! It's as easy as that.

### Example

#### Step 1

Run the `pruner` command.

```sh
➜ pruner
```

#### Step 2

Use the spacebar to select the branches you want to delete and hit <kbd>Enter</kbd>.

```sh
➜ pruner

==== Select branches to delete ====
 test_1, test_2, test_3
  ⬡ master
  ⬢ test_1
  ⬢ test_2
‣ ⬢ test_3
```

#### Step 3

Type <kbd>Y</kbd> and then hit <kbd>Enter</kbd>.

```sh
➜ pruner

==== Select branches to delete ====
 test_1, test_2, test_3

==== Are you sure you want to delete these branches? ====
→ (Y/n) Y
```

#### Step 4

The branches will be deleted and the output will look like the output below.

```sh
➜ pruner

==== Select branches to delete ====
 test_1, test_2, test_3

==== Are you sure you want to delete these branches? ====
→ Yes

==== Deleting Branches ====
- test_1
- test_2
- test_3

==== Branches Deleted ====
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andrewmcodes/pruner. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/andrewmcodes/pruner/blob/master/CODE_OF_CONDUCT.md).

### Coding Standards

This project uses [Standard](https://github.com/testdouble/standard) to minimize bike shedding related to code formatting.

## Code of Conduct

Everyone interacting in the Pruner project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/andrewmcodes/pruner/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
