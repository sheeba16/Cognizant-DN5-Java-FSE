import java.util.HashMap;
import java.util.Map;

public class FinancialForecasting {

    public static double futureValue(double presentValue, double growthRate, int years) {
        if (years == 0) {
            return presentValue;
        }
        return futureValue(presentValue, growthRate, years - 1) * (1 + growthRate);
    }

    static Map<Integer, Double> memo = new HashMap<>();

    public static double futureValueMemo(double presentValue, double growthRate, int years) {
        if (years == 0) {
            return presentValue;
        }
        if (memo.containsKey(years)) {
            return memo.get(years);
        }
        double result = futureValueMemo(presentValue, growthRate, years - 1) * (1 + growthRate);
        memo.put(years, result);
        return result;
    }

    public static void main(String[] args) {
        double presentValue = 10000;
        double growthRate = 0.08;
        int years = 5;

        double result1 = futureValue(presentValue, growthRate, years);
        System.out.println("Future Value (simple recursion): " + result1);

        double result2 = futureValueMemo(presentValue, growthRate, years);
        System.out.println("Future Value (memoized): " + result2);
    }
}