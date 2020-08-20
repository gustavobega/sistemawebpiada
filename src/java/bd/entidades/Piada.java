package bd.entidades;

public class Piada {
    private int cod;
    private String titulo;
    private String texto;
    private Pessoa pes;
    private int pontos;
    private Categoria cat;

    public Piada(){}
    
    public Piada(int cod, String titulo, String texto, Categoria cat, Pessoa pes,int pontos) {
        this.cod = cod;
        this.titulo = titulo;
        this.texto = texto;
        this.cat = cat;
        this.pes = pes;
        this.pontos = pontos;
    }
    
    public Piada(String titulo, String texto, Categoria cat, Pessoa pes,int pontos) {
        this.titulo = titulo;
        this.texto = texto;
        this.cat = cat;
        this.pes = pes;
        this.pontos = pontos;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public Categoria getCat() {
        return cat;
    }

    public void setCat(Categoria cat) {
        this.cat = cat;
    }

    public Pessoa getPes() {
        return pes;
    }

    public void setPes(Pessoa pes) {
        this.pes = pes;
    }

    public int getPontos() {
        return pontos;
    }

    public void setPontos(int pontos) {
        this.pontos = pontos;
    }
    
    @Override
    public String toString() {
        return texto;
    }
    
}
