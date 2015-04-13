##### Installation

First, checkout the development branch

```
git checkout -b develop_2.0 origin/develop_2.0
```

Now, lets sync the branches to get the latest changes:

```
	git remote add upstream git@github.com:swagger-api/swagger-codegen.git
	git fetch upstream
```

First on `master`:

```
	git checkout master
	git merge upstream/master
```

Second on `develop_2.0`, the branch we are working on:

```
	git checkout develop_2.0
	git merge upstream/develop_2.0
```

Next, run my build script

```
	./rebuild-codegen
```

Finally, to regenerate the APIs, run this script

```
bin/vestorly.sh
```

You will need to modified the `-o` parameter to be specific to your local hard drive:

```
-o /Users/josephmisiti/mathandpencil/projects/vestorly/clients/v2/$i
```