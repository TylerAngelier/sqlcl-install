#!/usr/bin/env bash

# check to see if sqlcl zip alredy exists
# if so, cleanup
if [[ -f sqlcl.zip ]]
then
    printf "sqlcl already exists! Removing..."
    rm sqlcl.zip
fi

# check to see if sqlcl dir alredy exists
# if so, cleanup
if [[ -d sqlcl ]]
then
    printf "sqlcl directory already exists! Removing..."
    rm -rf sqlcl
fi

# download sqlcl latest version
curl -s https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-latest.zip -o sqlcl.zip

# unzip file
unzip -q sqlcl.zip

# make the requested directory
mkdir -p "$1"

# move to requested directory
cp -R sqlcl/* "$1"

if [ $? -eq 0 ]; then
    printf "\nSuccess!!\n"
fi

# cleanup downloaded file
if [[ -f sqlcl.zip ]]
then
    rm sqlcl.zip
fi

# cleanup copied directory
if [[ -d sqlcl ]]
then
    rm -rf sqlcl
fi

printf "\nTo run, set a shell alias such as this:\n"
printf "alias sqlcl=\"%sbin/sql\"\n\n" ${1}