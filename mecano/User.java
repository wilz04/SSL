package mecano;

import java.sql.*;
import java.util.Date;
import javax.swing.JOptionPane;

public class User extends MyConnection {
  
  private String _id;
  
  public User() {
    super();
    _id = null;
  }
  
  public boolean login(String id, String pwd) {
    _id = pwd;
    try {
      PreparedStatement query = me.prepareStatement("select * from clientes where id = '" + pwd + "'");
      ResultSet rs = query.executeQuery();
      if (rs.next()) {
        return true;
      }
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null, "User.login: " + e.toString(), "Mecano", JOptionPane.INFORMATION_MESSAGE);
    }
    return false;
  }
  
  public ResultSet getInfo() {
    try {
      PreparedStatement query = me.prepareStatement("select cxcliente.numcuenta, tiposcuentas.nombre, cxcliente.saldo from clientes, cxcliente, tiposcuentas where clientes.id = cxcliente.id and tiposcuentas.idtipo = cxcliente.idtipo and clientes.id = '" + _id + "'");
      return query.executeQuery(); 
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null, "User.login: " + e.toString(), "Mecano", JOptionPane.INFORMATION_MESSAGE);
    }
    return null;
  }
  
  public void exit() {
    try {
      close();
    } catch (Exception e) {
      //JOptionPane.showMessageDialog(null, "User.exit: " + e.toString(), "Mecano", JOptionPane.INFORMATION_MESSAGE);
    }
  }
  
}
