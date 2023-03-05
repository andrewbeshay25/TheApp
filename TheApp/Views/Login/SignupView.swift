

import SwiftUI
import RiveRuntime

struct SignupView: View {
    @State var email = ""
    @State var password = ""
    @State var isLoading = false

    let confetti = RiveViewModel(fileName: "confetti", stateMachineName: "State Machine 1")
    let check = RiveViewModel(fileName: "check", stateMachineName: "State Machine 1")
    
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Sign Up")
                .customFont(.largeTitle)
                .foregroundColor(Color("InverseAccentColor"))
            Text("Access to 240+ hours of content. Learn design and code, by building real apps with React and Swift.")
                .foregroundColor(Color("Golden"))
            VStack(alignment: .leading) {
                Text("Email")
                    .customFont(.subheadline)
                    .foregroundColor(Color("InverseAccentColor"))
                TextField("", text: $email)
                    .customTextField(image: Image("Email Icon"))
                    .foregroundColor(Color("AccentColor"))
            }
            VStack(alignment: .leading) {
                Text("Password")
                    .customFont(.subheadline)
                    .foregroundColor(Color("InverseAccentColor"))
                SecureField("", text: $password)
                    .customTextField(image: Image("Password Icon"))
            }
            Button {
                //register()
            } label: {
                HStack {
                    Image(systemName: "arrow.right")
                    Text("Sign Up")
                        .customFont(.headline)
                }
                .largeButton()
            }
            
            HStack {
                Rectangle().frame(height: 1).opacity(0.1)
                Text("OR").customFont(.subheadline2).foregroundColor(Color("InverseAccentColor").opacity(0.3))
                Rectangle().frame(height: 1).opacity(0.1)
            }
            
            Text("Sign up with Email, Apple, Google")
                .customFont(.subheadline)
                .foregroundColor(Color("Golden"))
            
            HStack {
                Image("editedGoogle")
                    .resizable()
                    .frame(width: 75, height: 80)
            }
        }
        .padding(30)
        .background(Color.accentColor)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
        )
        .overlay(
            ZStack {
                if isLoading {
                    check.view()
                        .frame(width: 100, height: 100)
                        .allowsHitTesting(false)
                }
                confetti.view()
                    .scaleEffect(3)
                    .allowsHitTesting(false)
            }
        )
        .padding()
    }
    
    func logIn() {
        isLoading = true
        
        if email != "" { //if there's an email
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                check.triggerInput("Check")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                confetti.triggerInput("Trigger explosion")
                withAnimation {
                    isLoading = false
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation {
                    //show.toggle()
                    // show main screen
                    //sign up successful
                }
            }
        } else {//sign up not successful
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                check.triggerInput("Error")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isLoading = false
            }
        }
    }
    
//    func register(){
//        Auth.auth().createUser(withEmail: email, password: password){ result, error in
//
//            isLoading = true
//
//            if error != nil{
//                print(error!.localizedDescription)
//                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                    check.triggerInput("Error")
//                }
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    isLoading = false
//                }
//            }
//            else{
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    check.triggerInput("Check")
//                }
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    confetti.triggerInput("Trigger explosion")
//                    withAnimation {
//                        isLoading = false
//                    }
//                }
//            }
//        }
//    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
            .preferredColorScheme(.dark)
    }
}
