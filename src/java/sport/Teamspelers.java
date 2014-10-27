/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sport;

import java.math.BigDecimal;
import java.util.ArrayList;
import tconnection.TConnection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Teamspelers {

    private Connection con = new Connection();
    private TConnection dbc = con.getConnection();
    private ArrayList<Teamspeler> lijst;

    /**
     * Deze constructor maakt de klasse Leden met 1 Lid in de ArrayList dat is
     * het Lid met de spelerscode die in de String spelerscode staat
     */
    public Teamspelers() {
        String query = "SELECT * FROM teamspeler";
        lijst = new ArrayList<Teamspeler>();
        dbc.makeQuery(query);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.beforeFirst();
            while (rs.next()) {
                Teamspeler tm = new Teamspeler();
                tm.setTeamcode(rs.getString("teamcode"));
                tm.setSpelerscode(rs.getString("spelerscode"));
                lijst.add(tm);
            }
        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }
    
    public Teamspelers(String teamcode) {
        String query = "SELECT * FROM teamspeler Where teamcode = ?";
        lijst = new ArrayList<Teamspeler>();

        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();
        System.out.println(dbc);
        try {
            rs.beforeFirst();
            while(rs.next()){
            Teamspeler tm = new Teamspeler();
            tm.setTeamcode(rs.getString("teamcode"));
            tm.setSpelerscode(rs.getString("spelerscode"));
            lijst.add(tm);
            }

        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }
        System.out.println(lijst);
    }
    
    public Teamspelers(String spelerscode, String loll) {
        String query = "SELECT * FROM teamspeler Where spelerscode = ?";
        lijst = new ArrayList<Teamspeler>();

        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelerscode);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();
        System.out.println(dbc);
        try {
            rs.beforeFirst();
            while(rs.next()){
            Teamspeler tm = new Teamspeler();
            tm.setTeamcode(rs.getString("teamcode"));
            tm.setSpelerscode(rs.getString("spelerscode"));
            lijst.add(tm);
            }

        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }
        System.out.println(lijst);
    }

    

    public int Insert(String teamcode, String spelerscode) {
        int i = 0;
        String query = "Insert into teamspeler Values(?,?)";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode, spelerscode);

        System.out.println(dbc);
        if (dbc.sendQuery() == -1) {
            i = 0;
            
        } else {
            i = 1;
        }
        return i;
    }
    
    public int Deletespeler (String spelerscode) {
        int i = 0;
        String query = "Delete from teamspeler where spelerscode=?";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelerscode);

        System.out.println(dbc);
        if (dbc.sendQuery() == -1) {
            i = 0;
            
        } else {
            i = 1;
        }
        return i;
    }
    
    public int Deleteteam(String teamcode) {
        int i = 0;
        String query = "Delete from teamspeler where teamcode=?";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode);

        System.out.println(dbc);
        if (dbc.sendQuery() == -1) {
            i = 0;
            
        } else {
            i = 1;
        }
        return i;
    }
    
    public String getSpelerscode() {
        String s = "";
        s += "<tr><td><strong>Spelers in dit team:</strong></td><td>";
        for (Teamspeler tm : lijst) {
            s += "<a href='persoon.jsp?spelercode=" + tm.getSpelerscode() +"'>"+ tm.getSpelerscode() +"</a><br>";          
        }
        s +="</td></tr>";
        return s;
    }
    
    public String getTeamcode() {
        String s = "";
        s += "<tr><td><strong>Teams waar deze speler in zit:</strong></td><td>";
        for (Teamspeler tm : lijst) {
            s += "<a href='team.jsp?teamcode=" + tm.getTeamcode()+"'>"+ tm.getTeamcode() +"</a><br>";         
        }
        s += "</td></tr>";
        return s;
    }
    public String editTeamspeler(String teamcode) {
        String s = "";
        for(Teamspeler tm : lijst){
            if (tm.getTeamcode().equals(teamcode)) {
                s += "<tr>";
                s += "<td>Teamcode</td>";
                s += "<td>"+tm.getTeamcode()+"</td>";
                s += "</tr>";
            }
        break;
        }
        return s;
    }
    
}
