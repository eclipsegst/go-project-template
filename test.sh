#!/bin/bash -ue

modules=("greetings" "hello")

for mod in "${modules[@]}"
do
    echo "Testing $mod..."
    (cd "$mod" && go test ./...)
done
