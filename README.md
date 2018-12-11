# Testing env for {neo4r}

This Docker runs tests on `{neo4r}`. 

It's mainly designed for internal use, but if ever you want to run them:

If you've git-cloned the project:

```
docker build -t neo4rtesting .
docker run -v ~/results:/home/testenv  neo4rtesting
```

