var a = [Int]()

print("Enter number of Values ::")
var n = Int(readLine()!) ?? 0

print("Enter Values :: ")
for i in 0...n-1 {
  a.append(Int(readLine()!) ?? 0)  
}

var max = a[0], max2 = 0
for i in 1...n-1 {
  if(max<a[i]) {
    max2=max
    max=a[i]
  }
  else if(max2<a[i] && a[i] != max) {
    max2=a[i]
  }
}

if max2==0 {
  print("Not Found.")    
}
else {
  print("Value :: \(max2)")
}