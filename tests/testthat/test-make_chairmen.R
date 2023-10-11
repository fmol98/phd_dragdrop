test_that("duos for chairmen are made correctly", {
  chairmen <- make_chairmen(tytgat_aio)
  expect_equal(ncol(chairmen), 2)
  expect_equal(nrow(chairmen), 6)
})
