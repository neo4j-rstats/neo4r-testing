# Testing env for {neo4r}

This Docker runs tests on `{neo4r}`. 

```
docker build -t neo4rtesting .
docker run -v ~/results:/home/testenv  neo4rtesting
```