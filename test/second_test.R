library(testthat)
library(dplyr)
library(readxl)


# source("function.R")
# expect_equal(add_nums(2, 2), 4)
# actual_size <- nrow(random_half_split(iris))
# expect_equal(actual_size, 75)

test_data <- read_excel('test/test_data.xlsx')
max <- test_data %>% filter(object=='max') %>% pull(value)
test_that("max of dataset is less than or equal to 9", {

  expect_lte(max, 9)

})
min <- test_data %>% filter(object=='min') %>% pull(value)
test_that("min of dataset is greater than or equal to 0", {

  expect_gte(min, 0)

})