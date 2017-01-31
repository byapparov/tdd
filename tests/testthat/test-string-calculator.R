context("Numbers calculation function unit tests")


test_that("Test that sum of numbers gives expected result", {
  res <- sumStringNumbers("")
  expect_identical(res, as.integer(0))
  
  res <- sumStringNumbers("1")
  expect_identical(res, as.integer(1))
  
  res <- sumStringNumbers("1,2")
  expect_identical(res, as.integer(3))

  res <- sumStringNumbers("1,2,3,4")
  expect_identical(res, as.integer(10))
  
  res <- sumStringNumbers("1,2,3\n4")
  expect_identical(res, as.integer(10))
  
  res <- sumStringNumbers("//;\n1;2")
  expect_identical(res, as.integer(3))
  
  expect_error(sumStringNumbers("-1"), "Negative numbers not allowed:")
  
  res <- sumStringNumbers("1002,2,4")
  expect_identical(res, as.integer(6))
  
})

