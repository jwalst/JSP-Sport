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
public class Teams {
    
    private String teamcode,teamomschijving;
    
    public Teams(){
        
    }
    
    public Teams(String teamcode, String teamomschijving) {
        this.teamcode = teamcode;
        this.teamomschijving = teamomschijving;
    }

    public String getTeamcode() {
        return teamcode;
    }

    public void setTeamcode(String teamcode) {
        this.teamcode = teamcode;
    }

    public String getTeamomschijving() {
        return teamomschijving;
    }

    public void setTeamomschijving(String teamomschijving) {
        this.teamomschijving = teamomschijving;
    }
}
    
    
    