import UIKit

DispatchQueue.main.async {
    foo()
}

DispatchQueue.global(qos: .userInitiated).async {
    foo()
}

func foo(){
    
}
