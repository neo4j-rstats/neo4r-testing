Sys.sleep(20)
git2r::clone("https://github.com/neo4j-rstats/neo4r.git", "neo4r", branch = "testing-env")
library(neo4r)
con <- neo4j_api$new(url = "http://localhost:7474",  user = "neo4j", password = "neo4j")
ping <- con$ping() 
while (ping != 200){
  timestamp()
  cat("No connection\n")
  Sys.sleep(3)
  ping <- con$ping() 
}

testdown::test_down("neo4r/", open = FALSE)
file.copy("neo4r/tests/testdown/", "/home/testenv", recursive = TRUE)