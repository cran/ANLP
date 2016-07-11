library(testthat)
library(ANLP)

test_that("Twitter data length", {
  expect_equal(length(twitter.data),109091)
})
