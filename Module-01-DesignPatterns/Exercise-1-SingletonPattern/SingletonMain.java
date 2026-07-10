public class SingletonMain {

    public static void main(String[] args) {

        Logger firstLogger = Logger.getLogger();
        Logger secondLogger = Logger.getLogger();

        firstLogger.displayLog("System is running.");

        if (firstLogger == secondLogger) {
            System.out.println("Singleton pattern implemented successfully.");
        } else {
            System.out.println("More than one object was created.");
        }
    }
}