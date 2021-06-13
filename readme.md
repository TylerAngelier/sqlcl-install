# sqlCL Setup

This script will grab the latest version of [Oracle's sqlCL](https://www.oracle.com/database/technologies/appdev/sqlcl.html) and install it to a path that you specify.

# How to use

Running this script is quite easy. Simply determine a path you'd like to install the sqlcl application in and supply that directory to the script.

```bash
git clone git@github.com:trangelier/sqlcl-install.git
cd sqlcl-install
./run.sh ~/development/oracle/
```

Don't forget to set a shell alias in your `.bashrc` or `.zshrc` file such as this:

```bash
alias sqlcl="/Users/tylerangelier/development/oracle/"
```

# My Setup

I like to create a folder named `oracle` in my home directory. This is where I store all the tools, wallets and configuration files for the Oracle databases I use. I'll generally have a directory structure like this:

```
${HOME}
    oracle
        network
            admin
                tnsnames.ora
        sqlcl
        wallets
```