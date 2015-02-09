#!/bin/sh

#
# This script will generate all of the vestorly apis
#

java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l python -o vestorly/python
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l objc -o vestorly/objectivec
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l php -o vestorly/php
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l java -o vestorly/java
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l scala -o vestorly/scala
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l android -o vestorly/android
java -DdebugSwagger -cp ./target/*:./target/lib/* com.wordnik.swagger.codegen.Codegen -i http://developers.vestorly.com/api-docs -l nodejs -o vestorly/javascript
