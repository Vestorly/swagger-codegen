#!/bin/sh

#
# This script will build all the clients. To execute it, run bin/vestory from the base directory
#

declare -a arr=('ruby' 'android'  'java'  'jaxrs' 'nodejs' 'objc' 'scalatra' 'scala' 'dynamic-html' 'html' 'swagger' 'tizen' 'php'  'python', 'csharp')
declare -a arr=('python')

# for i in "${arr[@]}"
# do
# 	java -jar modules/swagger-codegen-distribution/target/swagger-codegen-distribution-2.1.1-M1.jar  \
# 		 -i http://developers.vestorly.com/v1/api-docs  \
# 		 -l $i   -o ../clients/v2/$i
#
# done
#
#
# for i in "${arr[@]}"
# do
# 	java -jar modules/swagger-codegen-distribution/target/swagger-codegen-distribution-2.1.1-M1.jar  \
# 		 -i http://developers.vestorly.com/v2/api-docs  \
# 		 -l $i   -o ../clients/v2/$i
#
# done




for i in "${arr[@]}"
do
	java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate  \
		 -i http://developers.vestorly.com/v2/swagger.json  \
		 -l $i   -o ../clients/v2/$i

done

