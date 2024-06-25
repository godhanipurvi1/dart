import 'dart:io';

class Customer {
    int custId;
    String custName;
    String custContact;
    List<Product> cart = [];

    Customer({required this.custId, required this.custName, required this.custContact});
}

class Product {
    int proId;
    String proName;
    int proQty;
    double proPrice;

    Product({required this.proId, required this.proName, required this.proQty, required this.proPrice});
}

List<Map<String, dynamic>> products = [
{"id": 1, "name": "tv", "price": 100.0},
{"id": 2, "name": "fridge", "price": 200.0},
{"id": 3, "name": "wine", "price": 300.0},
{"id": 4, "name": "water", "price": 400.0},
{"id": 5, "name": "flowers", "price": 500.0},
];

double calculateDiscount(double totalAmount) {
    if (totalAmount >= 500 && totalAmount < 1500) {
        return totalAmount * 0.1;
    } else if (totalAmount >= 1500 && totalAmount < 3500) {
        return totalAmount * 0.2;
    } else if (totalAmount >= 3500 && totalAmount < 6500) {
        return totalAmount * 0.25;
    } else if (totalAmount >= 6500) {
        return totalAmount * 0.3;
    }
    return 0;
}

void main() {
    List<Customer> customers = [];

    while (true) {
        print("1. Add customer");
        print("2. Start shopping");
        print("3. View bill");
        print("4. Search customers");
        print("5. Exit");

        int choice = int.parse(stdin.readLineSync() ?? "0");

        switch (choice) {
        case 1:
            print("Enter customer ID:");
            int custId = int.parse(stdin.readLineSync() ?? "0");
            print("Enter customer name:");
            String custName = stdin.readLineSync() ?? "";
            print("Enter customer contact:");
            String custContact = stdin.readLineSync() ?? "";

            Customer customer = Customer(custId: custId, custName: custName, custContact: custContact);
            customers.add(customer);
            print("Customer added successfully.");
            break;

        case 2:
            print("Select a customer:");
            for (int i = 0; i < customers.length; i++) {
                print("${i + 1}. ${customers[i].custName}");
            }

            int customerIndex = int.parse(stdin.readLineSync() ?? "0") - 1;
            Customer currentCustomer = customers[customerIndex];

            print("Select a product:");
            for (int i = 0; i < products.length; i++) {
                print("${i + 1}. ${products[i]["name"]}");
            }

            int productIndex = int.parse(stdin.readLineSync() ?? "0") - 1;
            Map<String, dynamic> product = products[productIndex];

            print("Enter quantity:");
            int quantity = int.parse(stdin.readLineSync() ?? "0");

            currentCustomer.cart.add(Product(
                                         proId: product["id"],
                                         proName: product["name"],
                                         proQty: quantity,
                                         proPrice: product["price"],
                                     ));

            print("Product added to cart successfully.");
            break;

        case 3:

            print("Select a customer:");
            for (int i = 0; i < customers.length; i++) {
                print("${i + 1}. ${customers[i].custName}");
            }

            int customerIndex = int.parse(stdin.readLineSync() ?? "0") - 1;
            Customer currentCustomer = customers[customerIndex];

            double totalAmount = 0;
            currentCustomer.cart.forEach((product) {
                totalAmount += product.proQty * product.proPrice;
            });

            double discountAmount = calculateDiscount(totalAmount);
            double finalAmount = totalAmount - discountAmount;

            print("Final Amount: $finalAmount");
            break;

        case 4:
            // search logic 
            break;

        case 5:
            print("Exiting...");
            return;

        default:
            print("Invalid choice. Please enter a valid option (1-5).");
            break;
        }
    }
}