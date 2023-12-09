
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
  var answer:Int64 = -1
  var sum = 0
  
  for index in 1...count {
    sum += index * price
  }

  answer = Int64(sum > money ? (sum - money) : 0)

  return answer
}