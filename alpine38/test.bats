@test "Can build Alpine 3.8" {
  run docker build ./
  [ $status -eq 0 ]
}
