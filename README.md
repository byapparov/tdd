## Algorithm Options

### String Calculator

Logic: http://osherove.com/tdd-kata-1/

### Bowling Game

Rules: http://slocums.homestead.com/gamescore.html

### Roman Numbers

Rules: http://www.novaroma.org/via_romana/numbers.html

## Set up

1. Clone repository from github:

```shell
git clone git@github.com:byapparov/tdd.git
```

2. Open project in Rstudio


3. Install testthat and devtools packages in Rstudio:

```R
install.packages(c('testthat', 'devtools'))
# choose yes in all prompts
```

4. Run tests
  * Via Rstudio console: `devtools::test()`
  * Via **Build -> More -> Test Package** (shortcut: `⇧⌘T`)


## Assertions

Explore functions available in `testthat` package to check your code:

```R
?expect_equal
?expect_gte
?expect_true
?expect_message
```
