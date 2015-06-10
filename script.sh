#!/bin/sh

#
# This script will build all the clients
#

declare -a arr=('android'  'csharp' 'dynamic-html' 'html' 'java'  'jaxrs' 'nodejs' 'objc' 'php' 'python' 'ruby' 'scala' 'scalatra' 'swagger' 'tizen')

for i in "${arr[@]}"
do
    java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate  \
         -i http://127.0.0.1:3000/apidocs  \
         -l $i   -o ~/Clients/v2/$i

done
