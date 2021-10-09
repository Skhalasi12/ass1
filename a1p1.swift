enum eo:Error{
  case negative

  var message : String{
    switch self{
      case .negative:return "negetive number not accept"
    }
  }
}


func oddeven(no:Int)throws ->Int{
  if no < 0{
    throw eo.negative;
  }
  if (no % 2 == 0){
    return 0
  }else{
      return 1
  }
}
do{
 
   let num = try oddeven(no:-10)
  if (num == 0){  
    print("Num is Even")
  }
  else{
    print("Num is Odd")
  }
}catch{
    if let err = error as? eo{
      print(err.message)
    }
}