import java.sql.*;
import mecano.*;

class Main {
  
  public static void main(String args[]) {
    User user = new User();
    if (user.login("", "04")) {
      System.out.println("Si");
      ResultSet rs = user.getInfo();
      try {
        while (rs.next()) {
          System.out.println(rs.getString("numcuenta"));
          System.out.println(rs.getString("nombre"));
          System.out.println(rs.getString("saldo"));
        }
      } catch (Exception e) {
        System.out.println(e);
      }
    } else {
      System.out.println("No");
    }
    user.exit();
    }

}
