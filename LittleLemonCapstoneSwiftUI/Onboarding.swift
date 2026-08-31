/*

import SwiftUI

struct Onboarding: View {
    @State private var currentPage = 0
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var showHome = false

    let pages = [
        ("Welcome to Little Lemon",
         "Enjoy delicious Mediterranean food from our family-owned restaurant."),
        ("Fresh & Delicious",
         "Explore our menu of fresh dishes made with traditional recipes and a modern twist."),
        ("Order Your Favorites",
         "Browse our menu, search for dishes, and order your favorite meals.")
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {

                Spacer()

                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)

                Text(pages[currentPage].0)
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)

                Text(pages[currentPage].1)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)

                if currentPage == 2 {
                    VStack(spacing: 12) {
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(.roundedBorder)

                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(.roundedBorder)

                        TextField("Email", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.emailAddress)
                    }
                    .padding(.horizontal, 30)
                }

                Spacer()

                HStack(spacing: 8) {
                    ForEach(0..<3) { index in
                        Circle()
                            .fill(
                                index == currentPage
                                ? Color.green
                                : Color.gray.opacity(0.3)
                            )
                            .frame(width: 9, height: 9)
                    }
                }

                if currentPage < 2 {
                    Button("Next") {
                        currentPage += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.green)
                } else {
                    Button("Register") {
                        registerUser()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.green)
                }

                Spacer()
                    .frame(height: 20)
            }
            .padding()
            .navigationDestination(isPresented: $showHome) {
                Home()
            }
        }
    }

    private func registerUser() {
        guard !firstName.isEmpty,
              !lastName.isEmpty,
              !email.isEmpty else {
            return
        }

        UserDefaults.standard.set(firstName, forKey: "firstName")
        UserDefaults.standard.set(lastName, forKey: "lastName")
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(true, forKey: "isLoggedIn")

        showHome = true
    }
}

*/
import SwiftUI

struct Onboarding: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var showHome = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                Spacer()

                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)

                Text("Welcome to Little Lemon")
                    .font(.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.center)

                Text("Please enter your information to get started.")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)

                VStack(alignment: .leading, spacing: 6) {

                    Text("First Name*")
                        .font(.headline)

                    TextField("", text: $firstName)
                        .textFieldStyle(.roundedBorder)

                    Text("Last Name*")
                        .font(.headline)
                        .padding(.top, 6)

                    TextField("", text: $lastName)
                        .textFieldStyle(.roundedBorder)

                    Text("Email*")
                        .font(.headline)
                        .padding(.top, 6)

                    TextField("", text: $email)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.emailAddress)
                }
                .padding(.horizontal, 30)

                Spacer()

                Button("Register") {
                    registerUser()
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.green)

                Spacer()
                    .frame(height: 20)
            }
            .padding()
            .navigationDestination(isPresented: $showHome) {
                Home()
            }
        }
    }

    private func registerUser() {
        guard !firstName.isEmpty,
              !lastName.isEmpty,
              !email.isEmpty else {
            return
        }

        UserDefaults.standard.set(firstName, forKey: "firstName")
        UserDefaults.standard.set(lastName, forKey: "lastName")
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(true, forKey: "isLoggedIn")

        showHome = true
    }
}

