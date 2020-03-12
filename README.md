# summon-conjurcli

[Summon](https://github.com/conjurinc/summon) provider that wraps the Conjur CLI.

This is a simple bash script that wraps the call to the Conjur CLI and implements the
Summon provider interface.

* On success, returns the variable's value on stdout and exit code 0.
* On failure, returns an error message on stderr and non-0 exit code.

## Usage

1. Grab the [latest release](https://github.com/conjurinc/summon/releases) of Summon
2. Place `conjurcli.sh` somewhere on your system.
3. Run summon, specifying the path to this provider.

! You must have the [Conjur CLI](https://developer.conjur.net/cli) installed for this to work.

*Example*

```sh-session
$ summon -p ./conjurcli.sh --yaml 'SECRET_KEY: ci/aws/secret_access_key' printenv SECRET_KEY
AKIAPEJYFMKL8VZD5QKA
```

Here we are grabbing an AWS key by providing secrets.yml inline and printing the environment
variable Summon exports.


## Contributing

We welcome contributions of all kinds to this repository. For instructions on how to get started and descriptions of our development workflows, please see our [contributing
guide][contrib].

[contrib]: CONTRIBUTING.md
