#include "Komu-Core/Komu-Core.hpp"

#include "gtest/gtest.h"

TEST(MathTest, Basic) { EXPECT_EQ(2 + 2, 4); }

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
