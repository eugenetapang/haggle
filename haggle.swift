"SPORT CLOTHES" app:

swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Username and Password fields
                VStack(spacing: 20) {
                    TextField("Username", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    SecureField("Password", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    Button(action: {
                        // Login action
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Forgot password action
                    }) {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {
                            // Signup action
                        }) {
                            Text("Signup")
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                // Popular Clothes Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("The Most Popular Clothes Sport Today")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ProductView(imageName: "shoes", productName: "Shoes", price: "$400")
                            ProductView(imageName: "shirt", productName: "Shirt", price: "$150")
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle("Sport Clothes", displayMode: .inline)
        }
    }
}

struct ProductView: View {
    var imageName: String
    var productName: String
    var price: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(8)
            
            Text(productName)
                .font(.headline)
            
            Text(price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

Here's the complete process with the provided code:

swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Username and Password fields
                VStack(spacing: 20) {
                    TextField("Username", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    SecureField("Password", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    
                    Button(action: {
                        // Login action
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Forgot password action
                    }) {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {
                            // Signup action
                        }) {
                            Text("Signup")
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                // Popular Clothes Section
                VStack(alignment: .leading, spacing: 20) {
                    Text("The Most Popular Clothes Sport Today")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ProductView(imageName: "shoes", productName: "Shoes", price: "$400")
                            ProductView(imageName: "shirt", productName: "Shirt", price: "$150")
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle("Sport Clothes", displayMode: .inline)
        }
    }
}

struct ProductView: View {
    var imageName: String
    var productName: String
    var price: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(8)
            
            Text(productName)
                .font(.headline)
            
            Text(price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

Thank you for the screenshot! Based on this design, I'll provide you with the corresponding SwiftUI code for the screen.

swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Header with icons
                HStack {
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                    HStack(spacing: 16) {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.horizontal)
                
                // Title
                Text("The Most Popular\nClothes Sport Today")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Search bar
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: .constant(""))
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                }
                .padding(.horizontal)
                
                // Products grid
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ProductView(imageName: "shoes1", productName: "Shoes", price: "$400")
                        ProductView(imageName: "shirt", productName: "Shirt", price: "$150")
                        ProductView(imageName: "shoes2", productName: "Shoes", price: "$400")
                        ProductView(imageName: "watch", productName: "Watch", price: "$1500")
                    }
                    .padding()
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProductView: View {
    var imageName: String
    var productName: String
    var price: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(8)
            
            Text(productName)
                .font(.headline)
            
            Text(price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


### Explanation:
1. *Header*: Added a horizontal stack (HStack) with icons for the bag, sliders, and bell.
2. *Title*: A Text view displaying the title.
3. *Search Bar*: A HStack containing a search icon and a TextField for the search functionality.
4. *Products Grid*: A ScrollView containing a grid of products using LazyVGrid for a responsive layout.
5. *ProductView*: A custom view for displaying product images, names, and prices.


Sure! Here is the SwiftUI code for the provided screen design:

swift
import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Header with icons
                HStack {
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                    HStack(spacing: 16) {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.horizontal)

                // Product image
                Image("shoes1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                // Product details
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Shoes")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Text("$400.00")
                            .font(.title)
                            .foregroundColor(.blue)
                    }

                    Text("Price drop in 1:15")
                        .foregroundColor(.gray)
                    
                    Text("Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions")
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("Taylor Stephens")
                            .font(.headline)
                        Spacer()
                        HStack {
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            Text("300 Sales")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    // Buttons
                    HStack(spacing: 20) {
                        Button(action: {
                            // Buy now action
                        }) {
                            Text("BUY NOW")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            // Watch action
                        }) {
                            Text("WATCH")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}


### Explanation:
1. *Header*: Added a HStack with icons for the bag, sliders, and bell.
2. *Product Image*: Displaying the product image with Image and setting it to fit the available space.
3. *Product Details*: A vertical stack (VStack) containing the product name, price, countdown text, description, seller information, and rating.
4. *Buttons*: Two buttons for "Buy Now" and "Watch," styled with colors and padding.

Adjust the image names, text, and other details to match your specific requirements. If you need further customization, let me know!

Sure! Here's the code to implement a countdown timer that changes the price once the timer runs out:

### SwiftUI View with Timer and Price Update

swift
import SwiftUI

struct ProductDetailView: View {
    @State private var timeRemaining = 75 // Countdown time in seconds
    @State private var price = 400.00
    @State private var priceDropped = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Header with icons
                HStack {
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                    HStack(spacing: 16) {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.horizontal)

                // Product image
                Image("shoes1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                // Product details
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Shoes")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Text("$\(String(format: "%.2f", price))")
                            .font(.title)
                            .foregroundColor(.blue)
                    }

                    if timeRemaining > 0 {
                        Text("Price drop in \(timeString(time: timeRemaining))")
                            .foregroundColor(.gray)
                            .onAppear(perform: startTimer)
                    } else {
                        Text("Price dropped!")
                            .foregroundColor(.red)
                    }
                    
                    Text("Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions")
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("Taylor Stephens")
                            .font(.headline)
                        Spacer()
                        HStack {
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            Text("300 Sales")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    // Buttons
                    HStack(spacing: 20) {
                        Button(action: {
                            // Buy now action
                        }) {
                            Text("BUY NOW")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            // Watch action
                        }) {
                            Text("WATCH")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                timer.invalidate()
                if !self.priceDropped {
                    self.price = 300.00 // Update to new price
                    self.priceDropped = true
                }
            }
        }
    }

    func timeString(time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}


### Explanation:
1. *State Variables*:
   - timeRemaining: The countdown time in seconds.
   - price: The current price of the product.
   - priceDropped: A boolean to check if the price has already been dropped.

2. *Product Details View*:
   - Displays product information, including the price and a countdown timer.
   - Once the timer reaches zero, the price is updated to a new lower value, and "Price dropped!" is displayed.

3. *Timer Functionality*:
   - startTimer(): Starts the countdown timer and updates the time remaining every second.
   - When the time reaches zero, the price is updated, and the timer is invalidated.

4. *Time Formatting*:
   - timeString(time:): Converts the remaining time into a minutes and seconds format.

You can customize the initial countdown time and the new price as needed. This code sets up a basic countdown timer and updates the UI once the timer expires.

Here's how you can implement a SwiftUI app that allows users to upload a product with a description, set the price, and add a countdown timer that will drop the price once the timer runs out.

### Step-by-Step Implementation

1. *Create a Product Model*
2. *Build a Form to Input Product Details*
3. *Display the Product with Countdown Timer and Price Drop*

### 1. Product Model

Create a Swift file named Product.swift to define your product model.

swift
import Foundation

struct Product: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var initialPrice: Double
    var finalPrice: Double
    var countdown: Int // Countdown time in seconds
}


### 2. Input Form for Product Details

Create a view where users can input product details.

swift
import SwiftUI

struct ProductInputView: View {
    @State private var name = ""
    @State private var description = ""
    @State private var initialPrice = ""
    @State private var finalPrice = ""
    @State private var countdown = ""

    @Binding var products: [Product]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Product Details")) {
                    TextField("Product Name", text: $name)
                    TextField("Description", text: $description)
                    TextField("Initial Price", text: $initialPrice)
                        .keyboardType(.decimalPad)
                    TextField("Final Price", text: $finalPrice)
                        .keyboardType(.decimalPad)
                    TextField("Countdown (seconds)", text: $countdown)
                        .keyboardType(.numberPad)
                }

                Button(action: addProduct) {
                    Text("Add Product")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("Add Product")
        }
    }

    private func addProduct() {
        guard let initialPrice = Double(initialPrice),
              let finalPrice = Double(finalPrice),
              let countdown = Int(countdown) else { return }

        let newProduct = Product(
            name: name,
            description: description,
            initialPrice: initialPrice,
            finalPrice: finalPrice,
            countdown: countdown
        )

        products.append(newProduct)
        clearForm()
    }

    private func clearForm() {
        name = ""
        description = ""
        initialPrice = ""
        finalPrice = ""
        countdown = ""
    }
}


### 3. Display the Product with Countdown Timer and Price Drop

Create a view to display the products and implement the countdown logic.

swift
import SwiftUI

struct ProductListView: View {
    @State private var products = [Product]()

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(products) { product in
                        ProductRowView(product: product)
                    }
                }
                .listStyle(PlainListStyle())

                NavigationLink(destination: ProductInputView(products: $products)) {
                    Text("Add New Product")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationBarTitle("Products")
        }
    }
}

struct ProductRowView: View {
    let product: Product

    @State private var timeRemaining: Int
    @State private var currentPrice: Double

    init(product: Product) {
        self.product = product
        self._timeRemaining = State(initialValue: product.countdown)
        self._currentPrice = State(initialValue: product.initialPrice)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(product.name)
                .font(.headline)
            Text("$\(String(format: "%.2f", currentPrice))")
                .font(.subheadline)
                .foregroundColor(.blue)

            if timeRemaining > 0 {
                Text("Price drop in \(timeString(time: timeRemaining))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .onAppear(perform: startTimer)
            } else {
                Text("Price dropped!")
                    .font(.subheadline)
                    .foregroundColor(.red)
            }

            Text(product.description)
                .font(.body)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }

    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                timer.invalidate()
                self.currentPrice = self.product.finalPrice
            }
        }
    }

    private func timeString(time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
}


### Main Application File

Update your ContentView.swift to display the ProductListView.

swift
import SwiftUI

@main
struct YourAppName: App {
    var body: some Scene {
        WindowGroup {
            ProductListView()
        }
    }
}


### Run the Project

1. Open Xcode and create a new SwiftUI project.
2. Replace the default content with the code provided above.
3. Add the necessary assets and adjust the code to fit your project structure.
4. Build and run the project on a simulator or device.

This setup allows users to input product details, set initial and final prices, and specify a countdown timer. The product price will automatically drop to the final price once the timer reaches zero.

Sure! Below is the code to add functionalities for watching/saving a product and buying a product now. This example assumes you are using SwiftUI and includes a mock purchase process.

### Updated Product Model

First, update the Product model to include fields for whether the product is saved and a unique identifier for purchase:

swift
import Foundation

struct Product: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var initialPrice: Double
    var finalPrice: Double
    var countdown: Int // Countdown time in seconds
    var isSaved: Bool = false
}


### ProductRowView

Update the ProductRowView to include "Watch" and "Buy Now" buttons:

swift
import SwiftUI

struct ProductRowView: View {
    @State var product: Product
    @State private var timeRemaining: Int
    @State private var currentPrice: Double

    init(product: Product) {
        self._product = State(initialValue: product)
        self._timeRemaining = State(initialValue: product.countdown)
        self._currentPrice = State(initialValue: product.initialPrice)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(product.name)
                    .font(.headline)
                Spacer()
                Button(action: {
                    product.isSaved.toggle()
                }) {
                    Image(systemName: product.isSaved ? "heart.fill" : "heart")
                        .foregroundColor(product.isSaved ? .red : .gray)
                }
            }

            Text("$\(String(format: "%.2f", currentPrice))")
                .font(.subheadline)
                .foregroundColor(.blue)

            if timeRemaining > 0 {
                Text("Price drop in \(timeString(time: timeRemaining))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .onAppear(perform: startTimer)
            } else {
                Text("Price dropped!")
                    .font(.subheadline)
                    .foregroundColor(.red)
            }

            Text(product.description)
                .font(.body)
                .foregroundColor(.gray)

            HStack {
                Button(action: buyNow) {
                    Text("Buy Now")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: watchProduct) {
                    Text("Watch")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }

    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                timer.invalidate()
                self.currentPrice = self.product.finalPrice
            }
        }
    }

    private func timeString(time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }

    private func buyNow() {
        // Implement the logic for purchasing the product.
        print("Buying \(product.name) for $\(currentPrice)")
    }

    private func watchProduct() {
        // Implement the logic for watching the product.
        product.isSaved.toggle()
        print("\(product.isSaved ? "Watching" : "Unwatching") \(product.name)")
    }
}


### Main Application File

Ensure the main application file displays the ProductListView.

swift
import SwiftUI

@main
struct YourAppName: App {
    var body: some Scene {
        WindowGroup {
            ProductListView()
        }
    }
}


### Product List View

Make sure the ProductListView contains the updated product list and navigation to add products.

swift
import SwiftUI

struct ProductListView: View {
    @State private var products = [Product]()

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(products) { product in
                        ProductRowView(product: product)
                    }
                }
                .listStyle(PlainListStyle())

                NavigationLink(destination: ProductInputView(products: $products)) {
                    Text("Add New Product")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationBarTitle("Products")
        }
    }
}


### Running the Project

1. Open Xcode and create a new SwiftUI project.
2. Replace the default content with the code provided above.
3. Add the necessary assets and adjust the code to fit your project structure.
4. Build and run the project on a simulator or device.

This setup allows users to upload products with a description, set prices, add a countdown timer, save/watch products, and buy products immediately.

Here’s how you can create an iOS app using SwiftUI that allows users to create profiles, view and buy products, and upload and sell products. This involves setting up different views and navigation within the app.

### User Model

First, define a User model to store user information.

swift
import Foundation

struct User: Identifiable {
    let id = UUID()
    var name: String
    var email: String
    var isSeller: Bool
    var products: [Product]
}


### User Profile View

Create a view for the user profile where they can see their products if they are a seller.

swift
import SwiftUI

struct UserProfileView: View {
    @State var user: User

    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .padding()
            
            Text(user.name)
                .font(.title)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.gray)

            if user.isSeller {
                Text("Your Products")
                    .font(.headline)
                    .padding(.top)

                List(user.products) { product in
                    ProductRowView(product: product)
                }
                .listStyle(PlainListStyle())

                NavigationLink(destination: ProductInputView(user: $user)) {
                    Text("Add New Product")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
        }
        .padding()
    }
}


### Product Input View

Modify the ProductInputView to accept a user and add the product to their list.

swift
struct ProductInputView: View {
    @Binding var user: User
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var initialPrice: String = ""
    @State private var finalPrice: String = ""
    @State private var countdown: String = ""

    var body: some View {
        Form {
            Section(header: Text("Product Information")) {
                TextField("Name", text: $name)
                TextField("Description", text: $description)
                TextField("Initial Price", text: $initialPrice)
                    .keyboardType(.decimalPad)
                TextField("Final Price", text: $finalPrice)
                    .keyboardType(.decimalPad)
                TextField("Countdown (seconds)", text: $countdown)
                    .keyboardType(.numberPad)
            }

            Button(action: addProduct) {
                Text("Add Product")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .navigationBarTitle("Add Product")
    }

    private func addProduct() {
        guard let initialPrice = Double(initialPrice),
              let finalPrice = Double(finalPrice),
              let countdown = Int(countdown) else { return }

        let newProduct = Product(name: name, description: description, initialPrice: initialPrice, finalPrice: finalPrice, countdown: countdown)
        user.products.append(newProduct)
    }
}


### Product List View with User Profiles

Update the ProductListView to allow navigation to user profiles.

swift
struct ProductListView: View {
    @State private var products = [Product]()
    @State private var users = [User]()

    var body: some View {
        NavigationView {
            VStack {
                List(products) { product in
                    ProductRowView(product: product)
                }
                .listStyle(PlainListStyle())

                NavigationLink(destination: UserProfileView(user: $users.first(where: { $0.isSeller }) ?? User(name: "New User", email: "user@example.com", isSeller: true, products: []))) {
                    Text("View Profile")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationBarTitle("Products")
        }
    }
}


### Main Application

Ensure the main application file initializes the ProductListView.

swift
import SwiftUI

@main
struct YourAppName: App {
    var body: some Scene {
        WindowGroup {
            ProductListView()
        }
    }
}


### User Authentication and Database

For a complete app, you would need user authentication and a database to store user and product information. You can use Firebase or another backend service to handle user authentication and data storage.

### Swift Package Manager

Add necessary packages for handling user authentication and database services through Swift Package Manager.

This setup includes the basic structure for allowing users to create profiles, view and buy products, and upload and sell products. It assumes you have a working knowledge of SwiftUI and basic iOS development.


