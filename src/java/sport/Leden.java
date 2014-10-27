/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sport;

import java.util.ArrayList;
import tconnection.TConnection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Leden {

    private Connection con = new Connection();
    private TConnection dbc = con.getConnection();
    private ArrayList<Lid> lijst;

    /**
     * Deze constructor maakt de klasse Leden met 1 Lid in de ArrayList dat is
     * het Lid met de spelerscode die in de String spelerscode staat
     */
    
    public Leden(String spelercode) {
        String query = "SELECT * FROM speler Where spelerscode = ?  order by spelersnr";
        lijst = new ArrayList<Lid>();

        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelercode);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.first();
            Lid l = new Lid();
            l.setSpelerscode(rs.getString("spelerscode"));
            l.setSpelersnr(rs.getString("spelersnr"));
            l.setRoepnaam(rs.getString("roepnaam"));
            l.setTussenvoegsels(rs.getString("tussenvoegsels"));
            l.setAchternaam(rs.getString("achternaam"));
            l.setAdres(rs.getString("adres"));
            l.setPostcode(rs.getString("postcode"));
            l.setWoonplaats(rs.getString("woonplaats"));
            l.setTelefoon(rs.getString("telefoon"));
            l.setGeboortedatum(rs.getString("geboortedatum"));
            lijst.add(l);

        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }
    
    public Leden() {
        String query = "SELECT * FROM speler order by spelersnr ASC";

        lijst = new ArrayList<Lid>();

        dbc.makeQuery(query);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.beforeFirst();
            while (rs.next()) {
                Lid l = new Lid();
                l.setSpelerscode(rs.getString("spelerscode"));
                l.setSpelersnr(rs.getString("spelersnr"));
                l.setRoepnaam(rs.getString("roepnaam"));
                l.setTussenvoegsels(rs.getString("tussenvoegsels"));
                l.setAchternaam(rs.getString("achternaam"));
                l.setAdres(rs.getString("adres"));
                l.setPostcode(rs.getString("postcode"));
                l.setWoonplaats(rs.getString("woonplaats"));
                l.setTelefoon(rs.getString("telefoon"));
                l.setGeboortedatum(rs.getString("geboortedatum"));
                lijst.add(l);
            }
        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }
    
    public Leden(int spelernr) {
        String query = "SELECT * FROM speler Where spelersnr = ?";
        lijst = new ArrayList<Lid>();

        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelernr);
        if (dbc.sendQuery() == -1) {
            return;
        }

        ResultSet rs = dbc.getResultSet();

        try {
            rs.first();
            Lid l = new Lid();
            l.setSpelerscode(rs.getString("spelerscode"));
            l.setSpelersnr(rs.getString("spelersnr"));
            l.setRoepnaam(rs.getString("roepnaam"));
            l.setTussenvoegsels(rs.getString("tussenvoegsels"));
            l.setAchternaam(rs.getString("achternaam"));
            l.setAdres(rs.getString("adres"));
            l.setPostcode(rs.getString("postcode"));
            l.setWoonplaats(rs.getString("woonplaats"));
            l.setTelefoon(rs.getString("telefoon"));
            l.setGeboortedatum(rs.getString("geboortedatum"));
            lijst.add(l);

        } catch (SQLException se) {

        } catch (NullPointerException ne) {

        }

    }
    
    public int wijzig(String spelercode, int spelernr, String roepnaam, String tussenvoegsel,
           String achternaam, String adres, String postcode,String woonplaats, String telefoon,
           String geboortedatum) {
        
        int i = 0;
        String query = "UPDATE speler SET spelersnr=?,roepnaam=?,tussenvoegsels=?,achternaam=?,"
                + "adres=?,postcode=?,woonplaats=?,telefoon=?,geboortedatum=?"
                + " WHERE spelerscode=?";
        
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelernr);
        dbc.insertIntoQuery(2, roepnaam, tussenvoegsel,achternaam,adres,
                               postcode,woonplaats,telefoon,geboortedatum,spelercode);
        
        System.out.println(dbc.toString());
        if (dbc.sendQuery() == -1) {
            i = 0;
        }
        else{
            i = 1;
        }
        
        return i;
    }
    
    public int Delete(String spelercode) {
        
        int i = 0;
        String query = "Delete from speler where spelerscode = ?";

        
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelercode);
        
        System.out.println(dbc.toString());
        if (dbc.sendQuery() == -1) {
            i = 0;
        }
        else{
            i = 1;
        }
        
        return i;
    }
    
    public int Insert(String spelercode, int spelernr, String roepnaam, String tussenvoegsel,
           String achternaam, String adres, String postcode,String woonplaats, String telefoon,
           String geboortedatum) {
        
        int i = 0;
        String query = "Insert into speler Values(?,?,?,?,?,?,?,?,?,?)";
        
        dbc.makeQuery(query);
        dbc.insertIntoQuery(1, spelercode);
        dbc.insertIntoQuery(2, spelernr);
        dbc.insertIntoQuery(3, roepnaam, tussenvoegsel,achternaam,adres,
                               postcode,woonplaats,telefoon,geboortedatum,spelercode);
        
        System.out.println(dbc.toString());
        if (dbc.sendQuery() == -1) {
            i = 0;
        }
        else{
            i = 1;
        }
        
        return i;
    }

    

    public String editLid(String spelerscode) {
        String s = "";

        for (Lid l : lijst) {
            if (l.getSpelerscode().equals(spelerscode)) {
                s += "<tr>";
                s += "<td>Spelersnummer</td>";
                s += "<td><input type=\"number\" name=\"spelernr\" value=\"" + l.getSpelersnr() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Roepnaam</td>";
                s += "<td><input type=\"text\" name=\"roepnaam\" value=\"" + l.getRoepnaam() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Tussenvoegsels</td>";
                s += "<td><input type=\"text\" name=\"tussenvoegsel\" value=\"" + l.getTussenvoegsels() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Achternaam</td>";
                s += "<td><input type=\"text\" name=\"achternaam\" value=\"" + l.getAchternaam() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Adres</td>";
                s += "<td><input type=\"text\" name=\"adres\" value=\"" + l.getAdres() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Postcode</td>";
                s += "<td><input type=\"text\" name=\"postcode\" value=\"" + l.getPostcode() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Woonplaats</td>";
                s += "<td><input type=\"text\" name=\"woonplaats\" value=\"" + l.getWoonplaats() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Telefoon</td>";
                s += "<td><input type=\"text\" name=\"telefoon\" value=\"" + l.getTelefoon() + "\" /></td>";
                s += "</tr>";
                s += "<tr>";
                s += "<td>Geboortedatum</td>";
                s += "<td><input type=\"date\" name=\"geboortedatum\" value=\"" + l.getGeboortedatum() + "\" /></td>";
                s += "</tr>";
            }
        }
        return s;
    }

    /**
     * Dit kijkt de ArrayList door en Voor elke Lid in de lijst en maakt een row
     * van een table aan met alle gegevens
     *
     * @return String voor table
     */
    public String editLijst() {
        String s = "";

        for (Lid l : lijst) {
            s += "<tr>";
            s += "<td>" + l.getSpelerscode() + "</td>";
            s += "<td>" + l.getSpelersnr() + "</td>";
            s += "<td>" + l.getRoepnaam() + "</td>";
            s += "<td>" + l.getTussenvoegsels() + "</td>";
            s += "<td>" + l.getAchternaam() + "</td>";
            s += "<td>" + l.getAdres() + "</td>";
            s += "<td>" + l.getPostcode() + "</td>";
            s += "<td>" + l.getWoonplaats() + "</td>";
            s += "<td>" + l.getTelefoon() + "</td>";
            s += "<td>" + l.getGeboortedatum() + "</td>";
            s += "<td><button onclick=\"location.href='persoon.jsp?spelercode=" + l.getSpelerscode() + "'\">View</button></td>";
            s += "<td><button onclick=\"location.href='wijzig/wijziglidformulier.jsp?spelercode=" + l.getSpelerscode() + "'\">Wijzigen</button></td>";
            s += "<td><button onclick=\"location.href='verwijder/deletelidformulier.jsp?spelercode=" + l.getSpelerscode() + "'\">Delete</button></td>";
            s += "</tr>";

        }
        return s;
    }

    public String getLijst() {
        String s = "";

        for (Lid l : lijst) {
            s += "<tr>";
            s += "<td>" + l.getSpelerscode() + "</td>";
            s += "<td>" + l.getSpelersnr() + "</td>";
            s += "<td>" + l.getRoepnaam() + "</td>";
            s += "<td>" + l.getTussenvoegsels() + "</td>";
            s += "<td>" + l.getAchternaam() + "</td>";
            s += "<td>" + l.getAdres() + "</td>";
            s += "<td>" + l.getPostcode() + "</td>";
            s += "<td>" + l.getWoonplaats() + "</td>";
            s += "<td>" + l.getTelefoon() + "</td>";
            s += "<td>" + l.getGeboortedatum() + "</td>";
            s += "</tr>";

        }
        return s;
    }

    public String getGegevens() {
        String s = "";

        for (Lid l : lijst) {
            s += "<tr>";
            s += "<td>Spelercode</td><td>" + l.getSpelerscode() + "</td></tr>";
            s += "<tr><td>Spelernr</td><td>" + l.getSpelersnr() + "</td></tr>";
            s += "<tr><td>Roepnaam</td><td>" + l.getRoepnaam() + "</td></tr>";
            s += "<tr><td>Tussenvoegsel</td><td>" + l.getTussenvoegsels() + "</td></tr>";
            s += "<tr><td>Achternaam</td><td>" + l.getAchternaam() + "</td></tr>";
            s += "<tr><td>Adres</td><td>" + l.getAdres() + "</td></tr>";
            s += "<tr><td>Postcode</td><td>" + l.getPostcode() + "</td></tr>";
            s += "<tr><td>Woonplaats</td><td>" + l.getWoonplaats() + "</td></tr>";
            s += "<tr><td>Telefoon</td><td>" + l.getTelefoon() + "</td></tr>";
            s += "<tr><td>Geboortedatum</td><td>" + l.getGeboortedatum() + "</td></tr>";
            s += "</tr>";

        }
        return s;
    }

    public String getSelect() {
        String s = "";

        for (Lid l : lijst) {
            s += "<option value='" + l.getSpelerscode() + "'>" + l.getSpelerscode() + "</option>";
        }
        return s;
    }
}
