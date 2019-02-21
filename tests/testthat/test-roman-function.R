context("Roman function unit tests")


describe("romanToInteger", {
  it("Empty string returns zero", {
    expect_equal(romanToInteger(""), 0)
  })

  it("Converts small numbers", {
    for (x in c("I", "II" ,"III")) {
      expect_equal(romanToInteger(x), nchar(x))
    }

    expect_error(romanToInteger("IIII"))
  })

  it("Works with numbers under 10", {
    expect_equal(romanToInteger("V"), 5)
    expect_equal(romanToInteger("IV"), 4)
    expect_equal(romanToInteger("VII"), 7)
    expect_equal(romanToInteger("IX"), 9)
    expect_equal(romanToInteger("X"), 10)
  })

  it("Works with numbers under 50", {
    expect_equal(romanToInteger("XI"), 11)
    expect_equal(romanToInteger("XIII"), 13)
    expect_equal(romanToInteger("XIV"), 14)
    expect_equal(romanToInteger("XXXIX"), 39)
  })

  it("Works with large numbers", {
    expect_equal(romanToInteger("CCCLXIX"), 369)
  })
})
