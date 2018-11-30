package br.com.caelum.jdbc.dao;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.jdbc.modelo.Contato;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ContatoDao {

    private Connection connection;

    public ContatoDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public ContatoDao(Connection connection) {
        this.connection = connection;
    }
    
    public void adiciona(Contato contato) {
        StringBuilder sql = new StringBuilder();
        sql.append("insert into contatos (nome,email,endereco,data_nascimento) values (?,?,?,?) ");
        try (PreparedStatement stmt = connection.prepareStatement(sql.toString())) {
            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getEmail());
            stmt.setString(3, contato.getEndereco());
            stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void altera(Contato contato) {
        StringBuilder sql = new StringBuilder();
        sql.append("update contatos set nome=?, email=?, endereco=?,data_nascimento=? where id=? ");

        try (PreparedStatement stmt = connection.prepareStatement(sql.toString())) {
            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getEmail());
            stmt.setString(3, contato.getEndereco());
            stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
            stmt.setLong(5, contato.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void remove(Contato contato) {
        try(PreparedStatement stmt = connection.prepareStatement("delete from contatos where id=? ")) {
            stmt.setLong(1, contato.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Contato> getLista() {
        try {
            List<Contato> contatos = new ArrayList<>();
            try (PreparedStatement stmt = this.connection.prepareStatement("select * from contatos"); ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Contato contato = new Contato();
                    contato.setId(rs.getLong("id"));
                    contato.setNome(rs.getString("nome"));
                    contato.setEmail(rs.getString("email"));
                    contato.setEndereco(rs.getString("endereco"));
                    Calendar data = Calendar.getInstance();
                    data.setTime(rs.getDate("data_nascimento"));
                    contato.setDataNascimento(data);
                    contatos.add(contato);
                }
            }
            return contatos;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
