context("Hello function unit tests")


test_that("Hello function logs message", {
  expect_message(hello(), "ello")
  expect_message(hello(), "hi")

})
