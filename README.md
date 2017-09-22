Simple Chef Cookbook to setup go lang toolchain on linux

https://golang.org/doc/install

It sets up a couple of go ENV vars as well

## How to use?

Post `kitchen converge`

```
 $ kitchen login
Last login: Fri Sep 22 04:51:24 2017 from 10.0.2.2
[vagrant@ipt1 ~]$ which go 
/usr/local/go/bin/go
[vagrant@ipt1 ~]$ go version
go version go1.9 linux/amd64
[vagrant@ipt1 ~]$ cd $GOPATH/src/hello
[vagrant@ipt1 hello]$ go run hello.go 
hello, world
[vagrant@ipt1 hello]$
```
