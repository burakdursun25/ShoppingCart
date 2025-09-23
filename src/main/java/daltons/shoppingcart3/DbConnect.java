package daltons.shoppingcart3;

public class DbConnect {
    private static final String URL = "jdbc:mysql://database-1.c94ascqc2oh1.eu-north-1.rds.amazonaws.com:3306/shoppingcart";
    private static final String USER = "yk38";
    private static final String PASSWORD = "dMbUaPc2QVswfvDfSHN8";

    public static String getURL() {
        return URL;
    }

    public static String getUSER() {
        return USER;
    }

    public static String getPASSWORD() {
        return PASSWORD;
    }
}
