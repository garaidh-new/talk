# These are some files #

## Web server ##

If you don't already have the go.mod file, do 

`go mod init course`

Then do 

`CGO_ENABLED=0 go build .`

This should create a binary called simply webserver. Check it is executable
`ls -l webserver
-rwxr-xr-x 1 garaidh users 6449828 Nov 28 14:24 webserver*`

## Dockerfile

Check the contents of Dockerfile, it copies the webserver binary into a distroless/scratch container.
You can switch between them by commenting out the FROM lines
eg to change it to distroless
    #FROM scratch
    FROM gcr.io/distroless/static-debian11

Build your container
    docker build -t scratch:latest .

Then run the docker container by typing
    docker run --name scratchy -it -p80:80 scratch:latest


## README

This file


