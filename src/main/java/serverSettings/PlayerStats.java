package serverSettings;

public class PlayerStats {
    private String loginName;
    private String ipAddress;
    private int numAttempts = 0;

    public PlayerStats(String loginName, String ipAddress, int numAttempts) {
        this.loginName = loginName;
        this.ipAddress = ipAddress;
        this.numAttempts = numAttempts;
    }

    public String getLoginName() {
        return loginName;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public int getNumAttempts() {
        return numAttempts;
    }

    public void setNumAttempts(int numAttempts) {
        this.numAttempts = numAttempts;
    }

    public void incrementNumAttempts(){
        numAttempts++;
    }
}
