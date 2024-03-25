# Go Project Template

## Directory

```
<home>/
 |-- greetings/
 |-- hello/
 |-- main.go
```

## Run

run `hello.go` in root directory,

```
go run .
```

run `hello` package

```bash
cd hello
```

```bash
go run .
```

## Compile and install

```bash
cd hello
```

compile the code into an executable

```bash
go build
```

run the new `hello` executable

```bash
./hello
```

find Go install path

```bash
go list -f '{{.Target}}'
```

```bash
export PATH=$PATH:/path/to/your/go/bin
```

compile and install the package

```bash
go install
```

run application

```
hello
```

## Module

create 1st module `example.com/greetings`

```bash
mkdir greetings
cd greetings
```

```bash
$ go mod init example.com/greetings
go: creating new go.mod: module example.com/greetings
```

create 2nd module `example.com/hello`

```bash
mkdir hello
cd hello
```

```bash
$ go mod init example.com/hello
go: creating new go.mod: module example.com/hello
```

use local module

```bash
go mod edit -replace example.com/greetings=../greetings
```

`hello/go.mod` will look like this,

```
module example.com/hello

go 1.16

replace example.com/greetings => ../greetings
```

synchronize the example.com/hello module's dependencies

```bash
$ go mod tidy
go: found example.com/greetings in example.com/greetings v0.0.0-00010101000000-000000000000
```

`hello/go.mod` will look like this,

```bash
module example.com/hello

go 1.21.7

replace example.com/greetings => ../greetings

require example.com/greetings v0.0.0-00010101000000-000000000000

```

## Common commands

```bash
go help
```

## Resources

- [Tutorial: Get started with Go](https://go.dev/doc/tutorial/getting-started)
- [Standard Go Project Layout](https://github.com/golang-standards/project-layout)
