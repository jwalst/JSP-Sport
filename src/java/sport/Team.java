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

public class Team {

    private Connection con = new Connection();
    private TConnection dbc = con.getConnection();
    private ArrayList<Teams> lijst;

    /**
     * Deze constructor maakt de klasse Leden met 1 Lid in de ArrayList dat is
     * het Lid met de spelerscode die in de String spelerscode staat
     */
    public Team(String teamcode) {
        String query = "SELECT * FROM team Where teamcode = ?";
        lijst = new ArrayList<Teams>();

        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.first();
            Teams t = new Teams();
            t.setTeamcode(rs.getString("teamcode"));
            t.setTeamomschijving(rs.getString("teamomschrijving"));
            lijst.add(t);

        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }

    public Team() {
        String query = "SELECT * FROM team";
        lijst = new ArrayList<Teams>();
        dbc.makeQuery(query);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.beforeFirst();
            while (rs.next()) {
                Teams t = new Teams();
                t.setTeamcode(rs.getString("teamcode"));
                t.setTeamomschijving(rs.getString("teamomschrijving"));
                lijst.add(t);
            }
        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }

    public int Insert(String teamcode, String teamomschrijving) {
        int i = 0;
        String query = "Insert into team Values(?,?)";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode, teamomschrijving);

        System.out.println(query);
        if (dbc.sendQuery() == -1) {
            i = 0;
        } else {
            i = 1;
        }
        return i;
    }

    public int Delete(String teamcode) {
        int i = 0;
        String query = "Delete from team where teamcode =?";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamcode);

        System.out.println(query);
        if (dbc.sendQuery() == -1) {
            i = 0;
        } else {
            i = 1;
        }
        return i;
    }

    public int Wijzig(String teamcode, String teamomschrijving) {
        int i = 0;
        String query = "UPDATE team SET teamomschrijving =? where teamcode =?";
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, teamomschrijving, teamcode);

        //System.out.println(query)
        System.out.println(dbc.toString());
        if (dbc.sendQuery() == -1) {
            i = 0;
        } else {
            i = 1;
        }
        return i;
    }

    public String getLijst() {
        String s = "";

        for (Teams t : lijst) {
            s += "<tr>";
            s += "<td>" + t.getTeamcode() + "</td>";
            s += "<td>" + t.getTeamomschijving() + "</td>";
            s += "<td><button onclick=\"location.href='team.jsp?teamcode=" + t.getTeamcode() + "'\">View</button></td>";
            s += "<td><button onclick=\"location.href='wijzigteamformulier.jsp?teamcode=" + t.getTeamcode() + "'\">Wijzig</button></td>";
            s += "<td><button onclick=\"location.href='deleteteamformulier.jsp?teamcode=" + t.getTeamcode() + "'\">Delete</button></td>";
            s += "</tr>";
        }
        return s;
    }

    public String getSelect() {
        String s = "";

        for (Teams t : lijst) {
            s += "<option value='" + t.getTeamcode() + "'>" + t.getTeamcode() + "</option>";
        }
        return s;
    }
    
    public String getTeamspelerbutton(){
        String s = "";

        for (Teams t : lijst) {
        s += "<button onclick=\"location.href='voegteamspelertoe.jsp?teamcode=" + t.getTeamcode() + "'\">Voeg speler toe in dit team</button></td>";
        //s += "<button onclick=\"location.href='wijzigteamformulier.jsp?teamcode=" + t.getTeamcode() + "'\">Wijzig</button></td>";
        //s += "<button onclick=\"location.href='deleteteamformulier.jsp?teamcode=" + t.getTeamcode() + "'\">Delete</button></td>";
        }
        return s;
    }

    public String getGegevens() {
        String s = "";

        for (Teams t : lijst) {
            s += "<tr>";
            s += "<td><strong>Teamcode:</strong> </td><td>" + t.getTeamcode() + "</td>";
            s += "</tr><tr>";
            s += "<td><strong>Teamomschrijving:</strong> </td><td>" + t.getTeamomschijving() + "</td>";
            s += "</tr>";
        }
        return s;
    }

    public String getTeamnaam() {
        String s = "";

        for (Teams t : lijst) {
                s += "<tr>";
                s += "<td>Teamcode:</td><td>" + t.getTeamcode() + "</td>";
                s += "</tr>";
        }
        return s;
    }
}
