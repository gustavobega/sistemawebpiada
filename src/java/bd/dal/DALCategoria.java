package bd.dal;

import bd.entidades.Categoria;
import bd.util.Conexao;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DALCategoria {
    
     public Categoria getCategoria(int cod) {
        Categoria p = null;
        String sql = "select * from categoria where cat_cod=" + cod;
        ResultSet rs = new Conexao().consultar(sql);
        try {
            if (rs.next()) {
                p = new Categoria(rs.getInt("cat_cod"), rs.getString("cat_descricao"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }
     
     public ArrayList<Categoria> getCategoria(String filtro) {
        ArrayList<Categoria> lista = new ArrayList();
        String sql = "select * from categoria";
        if (!filtro.isEmpty()) {
            sql += " where " + filtro;
        }
        sql += " order by cat_descricao";
        ResultSet rs = new Conexao().consultar(sql);
        try {
            while (rs.next()) {
                lista.add(
                        new Categoria(rs.getInt("cat_cod"), rs.getString("cat_descricao")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lista;
    }
}
