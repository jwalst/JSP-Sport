package sport;

/**
 * Deze klasse verzorgt de verbinding met de MySQL database School.
 *
 * @author Ton van Beuningen
 * @version 23-09-2008
 */
import java.sql.Statement;
import tconnection.TConnection;

public class Connection {

    String vendor, host, user, password, database;
    Lid sport;
    TConnection dbc;

    /**
     * Deze constructor geeft de waarde aan de eigenschappen van de klasse en
     * legt vervolgens de verbinding met de database school.
     */
    public Connection() {
        this.vendor = "MySQL";
        this.host = "localhost";
        this.user = "school";
        this.password = "school";
        this.database = "sportj";
        this.dbc = new TConnection(this.vendor, this.host,
                this.database, this.user, this.password);
    }

    /**
     * Deze methode geeft de verbinding terug.
     *
     * @return de verbinding met de database school.
     */
    public String getConnError() {
        return this.dbc.getConnError();
    }

    /**
     * Deze methode sluit de verbinding met de database school.
     *
     * @return -1 als de verbinding met de database niet gesloten kan worden,
     * elke andere waarde betekent dat de verbinding gesloten is.
     */
    public int closeConnection() {
        return dbc.closeDbConnection();
    }

    public TConnection getConnection() {
        return dbc;
    }
}
