public class SearchDemo {


    public static Product linearSearch(Product[] products, int id) {
        for (int i = 0; i < products.length; i++) {
            if (products[i].productId == id) {
                return products[i];
            }
        }
        return null;
    }


    public static Product binarySearch(Product[] sortedProducts, int id) {
        int low = 0, high = sortedProducts.length - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            if (sortedProducts[mid].productId == id) {
                return sortedProducts[mid];
            } else if (sortedProducts[mid].productId < id) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        Product[] products = {
                new Product(103, "Laptop", "Electronics"),
                new Product(101, "Shoes", "Footwear"),
                new Product(105, "Watch", "Accessories"),
                new Product(102, "Phone", "Electronics"),
                new Product(104, "Bag", "Fashion")
        };


        Product result1 = linearSearch(products, 102);
        System.out.println("Linear Search Result: " + result1);


        Product[] sortedProducts = products.clone();
        java.util.Arrays.sort(sortedProducts, (a, b) -> a.productId - b.productId);

        Product result2 = binarySearch(sortedProducts, 104);
        System.out.println("Binary Search Result: " + result2);
    }
}