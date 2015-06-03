#!/bin/sh

#
# This script will build all the clients
#

declare -a arr=('ruby' 'android'  'java'  'jaxrs' 'nodejs' 'objc' 'scalatra' 'scala' 'dynamic-html' 'html' 'swagger' 'tizen' 'php'  'python')

for i in "${arr[@]}"
do
    java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate  \
         -i http://127.0.0.1:3000/apidocs  \
         -l $i   -o ~/clients/v3.0.1/$i

done
