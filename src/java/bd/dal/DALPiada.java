package bd.dal;

import bd.entidades.Piada;
import bd.util.Conexao;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DALPiada {
    
     public boolean salvar(Piada p) {
        String sql = "insert into piada (pia_titulo,pia_texto,cat_cod,pes_cod,pia_pontos) values ('$1','$2','$3','$4','$5')";
        sql = sql.replace("$1", p.getTitulo());
        sql = sql.replace("$2", p.getTexto());
        sql = sql.replace("$3", p.getCat().getCod()+"");
        sql = sql.replace("$4", p.getPes().getCod()+"");
        sql = sql.replace("$5", p.getPontos()+"");
        return new Conexao().manipular(sql);
    }

    public boolean alterar(Piada p) {
        String sql = "update piada set pia_titulo='$1', pia_texto='$2', cat_cod='$3', pes_cod='$4', pia_pontos='$5' where pia_cod=" + p.getCod();
        sql = sql.replace("$1", p.getTitulo());
        sql = sql.replace("$2", p.getTexto());
        sql = sql.replace("$3", p.getCat().getCod()+"");
        sql = sql.replace("$4", p.getPes().getCod()+"");
        sql = sql.replace("$5", p.getPontos()+"");
        return new Conexao().manipular(sql);
    }

    public boolean apagar(int id) {
        return new Conexao().manipular("delete from piada where pia_cod=" + id);
    }

    public Piada getPiada(int cod) {
        Piada p = null;
        DALCategoria dalc = new DALCategoria();
        DALPessoa dalp = new DALPessoa();
        String sql = "select * from piada where pia_cod=" + cod;
        ResultSet rs = new Conexao().consultar(sql);
        try {
            if (rs.next()) {
                p = new Piada(rs.getInt("pia_cod"), rs.getString("pia_titulo"), rs.getString("pia_texto"), dalc.getCategoria(rs.getInt("cat_cod")), dalp.getPessoa(rs.getInt("pes_cod")),rs.getInt("pia_pontos"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }

    public ArrayList<Piada> getPiada(String filtro) {
        ArrayList<Piada> lista = new ArrayList();
        DALCategoria dalc = new DALCategoria();
        DALPessoa dalp = new DALPessoa();
        String sql = "select * from piada";
        if (!filtro.isEmpty()) {
            sql += " where " + filtro;
        }
        ResultSet rs = new Conexao().consultar(sql);
        try {
            while (rs.next()) {
                lista.add(
                        new Piada(rs.getInt("pia_cod"), rs.getString("pia_titulo"), rs.getString("pia_texto"), dalc.getCategoria(rs.getInt("cat_cod")), dalp.getPessoa(rs.getInt("pes_cod")),rs.getInt("pia_pontos")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lista;
    }
}
