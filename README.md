##### Installation

First, checkout the development branch

```
git checkout -b develop_2.0 origin/develop_2.0
```

```
mvn clean package
```

Next, re-build the codebase using MVM:

```
mvn
```

Now that the code is build, you can generate the API documentation by running the following command:

```
bin/make-vestorly-apis.sh
```

And the client libs are chillin in the `vestorly` directory:

```
drwxr-xr-x   9 josephmisiti  staff  306 Feb  8 21:24 .
drwxr-xr-x   6 josephmisiti  staff  204 Feb  8 21:24 javascript
drwxr-xr-x   4 josephmisiti  staff  136 Feb  8 21:24 android
drwxr-xr-x   4 josephmisiti  staff  136 Feb  8 21:24 scala
drwxr-xr-x   4 josephmisiti  staff  136 Feb  8 21:24 java
drwxr-xr-x   9 josephmisiti  staff  306 Feb  8 21:23 php
drwxr-xr-x   4 josephmisiti  staff  136 Feb  8 21:23 objectivec
drwxr-xr-x  13 josephmisiti  staff  442 Feb  8 21:23 ..
drwxr-xr-x   8 josephmisiti  staff  272 Feb  8 21:23 python
```