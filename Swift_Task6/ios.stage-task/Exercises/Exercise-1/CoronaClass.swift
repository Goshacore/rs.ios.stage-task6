import Foundation

class CoronaClass {
 
     var seats = [Int]()

    let n: Int

     init(n: Int) {
 
        self.n = n
        
        
     }
     
     func seat() -> Int {
        
        if seats.count == 0 {
            seats.append(0)
            
            print(seats)
            return 0
        
        }
        
        if seats.count == 1 {
            if  seats.first == 0 {
                seats.append(n - 1)
                seats.sort()
                
                print(seats)
                return n - 1
               

                
            } else if seats.first! < seats.count - seats.first! {
                seats.append(n - 1)
                seats.sort()
                print(seats)

                return n - 1
                
            } else if seats.first! > seats.count - seats.first! {
                seats.append(0)
                seats.sort()
                print(seats)
                 return 0
            }
        }
        
        
        if seats.count > 1 {
      
        
    
            
            var a = 1
            var count   = 0
            var bb = 0
            
            while a < seats.count {
                let a1   =   seats[a] - seats[a - 1] - 1
                 
             var   a2 =  (a1 - 1) / 2
                if count < a2 {
                    
                    count = a2
                    bb = a - 1
                }
                
                if seats[a] - seats[a - 1] == 1 {
                    
                    bb = a
                    
                }
             a += 1
            }
            
      
            if seats.last! < n - 1 {
                let aa = (n - 1) - seats.last!
                let aa2 = aa - 1
                if count < aa2 {
                    count = aa2
                    bb = a - 1
                }
            }
            
           
            
            var a2 = seats[bb] + count + 1
            
   //------------
            
            if seats.first! > 0 {
                
                let aa2 = seats.first! - 1
                
                if count <= aa2 {
                a2 = 0
                }
                
                
                
            }
            
            
            
            
            seats.append(a2)
            
            seats.sort()
            
            print(seats)
            
            return a2
        }
        
        
        
        
        
     return   0
     }
     
     func leave(_ p: Int) {
        
        
        seats.removeAll(where: { $0 == p })
        
         
     }
}
