manutd_legend :: Int -> String

manutd_legend 7 = "Eric Cantona"
manutd_legend 10 = "Wayne Rooney"
manutd_legend 11 = "Ryan Giggs"
manutd_legend _ = "No Legend"

factorial :: Int -> Int

factorial 0 = 1
factorial x = x * factorial (x - 1)
