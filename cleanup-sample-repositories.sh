#!/bin/bash

if [[ -d "repos/secret-santa-sms-a" ]]; then
    cd repos/secret-santa-sms-a
    git checkout master && git reset version-1.0 --hard && git push -f
    git push origin --delete my-branch
    git push origin --delete improve-tests
    cd ../..
fi

rm -rf repos/
