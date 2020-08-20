package bd.dal;

import bd.entidades.Pessoa;
import bd.util.Conexao;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DALPessoa {
    
    public boolean salvar(Pessoa p) {
        String sql = "insert into pessoa (pes_nome,pes_login,pes_senha) values ('$1','$2','$3')";
        sql = sql.replace("$1", p.getNome());
        sql = sql.replace("$2", p.getLogin());
        sql = sql.replace("$3", p.getSenha());
        return new Conexao().manipular(sql);
    }

    public boolean alterar(Pessoa p) {
        String sql = "update pessoa set pes_nome='$1', pes_login='$2', pes_senha='$3' where pes_cod=" + p.getCod();
        sql = sql.replace("$1", p.getNome());
        sql = sql.replace("$2", p.getLogin());
        sql = sql.replace("$3", p.getSenha());
        return new Conexao().manipular(sql);
    }

    public boolean apagar(int id) {
        return new Conexao().manipular("delete from pessoa where pes_cod=" + id);
    }

    public Pessoa getPessoa(int cod) {
        Pessoa p = null;
        String sql = "select * from pessoa where pes_cod=" + cod;
        ResultSet rs = new Conexao().consultar(sql);
        try {
            if (rs.next()) {
                p = new Pessoa(rs.getInt("pes_cod"), rs.getString("pes_nome"), rs.getString("pes_login"), rs.getString("pes_senha"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }

    public ArrayList<Pessoa> getPiada(String filtro) {
        ArrayList<Pessoa> lista = new ArrayList();
        DALCategoria dalc = new DALCategoria();
        String sql = "select * from pessoa";
        if (!filtro.isEmpty()) {
            sql += " where " + filtro;
        }
        ResultSet rs = new Conexao().consultar(sql);
        try {
            while (rs.next()) {
                lista.add(
                        new Pessoa(rs.getInt("pes_cod"), rs.getString("pes_nome"), rs.getString("pes_login"), rs.getString("pes_senha")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lista;
    }
}
