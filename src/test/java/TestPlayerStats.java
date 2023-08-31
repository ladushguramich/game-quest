import org.junit.jupiter.api.Test;
import serverSettings.PlayerStats;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestPlayerStats {
    @Test
    public void testGetLoginName() {
        PlayerStats playerStats = new PlayerStats("TestName", "0.0.0.0.0.0.0.1", 0);
        assertEquals("TestName", playerStats.getLoginName());
    }

    @Test
    public void testGetIpAddress() {
        PlayerStats playerStats = new PlayerStats("TestName", "0.0.0.0.0.0.0.1", 0);
        assertEquals("0.0.0.0.0.0.0.1", playerStats.getIpAddress());
    }

    @Test
    public void testGetNumAttempts() {
        PlayerStats playerStats = new PlayerStats("TestName", "0.0.0.0.0.0.0.1", 5);
        assertEquals(5, playerStats.getNumAttempts());
    }

    @Test
    public void testGetIncrementNumAttempts() {
        PlayerStats playerStats = new PlayerStats("", "", 5);
        playerStats.incrementNumAttempts();
        assertEquals(6, playerStats.getNumAttempts());
    }


}
