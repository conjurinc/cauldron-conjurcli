# cauldron-conjurcli

[Cauldron](https://github.com/conjurinc/cauldron) provider that wraps the Conjur CLI.

This is a simple bash script that wraps the call to the Conjur CLI and implements the
Cauldron provider interface.

* On success, returns the variable's value on stdout and exit code 0.
* On failure, returns an error message on stderr and non-0 exit code.

## Usage

1. Grab the [latest release](https://github.com/conjurinc/cauldron/releases) of Cauldron
2. Place `conjurcli.sh` somewhere on your system.
3. Run cauldron, specifying the path to this provider.

! You must have the [Conjur CLI](https://developer.conjur.net/cli) installed for this to work.

*Example*

```sh-session
$ cauldron -p ./conjurcli.sh --yaml 'SECRET_KEY: ci/aws/secret_access_key' printenv SECRET_KEY
AKIAPEJYFMKL8VZD5QKA
```

Here we are grabbing an AWS key by providing secrets.yml inline and printing the environment
variable Cauldron exports.
