/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sport;

/**
 *
 * @author jeffrey
 */
public class Teamspeler {
    private String teamcode,spelerscode;
    
    public Teamspeler(){
        
    }
    public Teamspeler(String teamcode, String spelerscode) {
        this.teamcode = teamcode;
        this.spelerscode = spelerscode;
    }

    public String getTeamcode() {
        return teamcode;
    }

    public void setTeamcode(String teamcode) {
        this.teamcode = teamcode;
    }

    public String getSpelerscode() {
        return spelerscode;
    }

    public void setSpelerscode(String spelerscode) {
        this.spelerscode = spelerscode;
    }
}
