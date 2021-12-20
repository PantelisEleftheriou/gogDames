package gr.peoplecert.gogdames.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "player_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PlayerTable.findAll", query = "SELECT p FROM PlayerTable p"),
    @NamedQuery(name = "PlayerTable.findByPlayerNo", query = "SELECT p FROM PlayerTable p WHERE p.playerNo = :playerNo"),
    @NamedQuery(name = "PlayerTable.findByPlayerId", query = "SELECT p FROM PlayerTable p WHERE p.playerId = :playerId"),
    @NamedQuery(name = "PlayerTable.findByPlayerName", query = "SELECT p FROM PlayerTable p WHERE p.playerName = :playerName"),
    @NamedQuery(name = "PlayerTable.findByPlayerScore", query = "SELECT p FROM PlayerTable p WHERE p.playerScore = :playerScore"),
    @NamedQuery(name = "PlayerTable.findByPlayerTableOrder", query = "SELECT p FROM PlayerTable p WHERE p.playerTableOrder = :playerTableOrder")})
public class PlayerTable implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "player_no")
    private Integer playerNo;
    @Column(name = "player_id")
    private Integer playerId;
    @Column(name = "player_name")
    private String playerName;
    @Column(name = "player_score")
    private String playerScore;
    @Column(name = "player_table_order")
    private String playerTableOrder;

    public PlayerTable() {
    }

    public PlayerTable(Integer playerNo) {
        this.playerNo = playerNo;
    }

    public Integer getPlayerNo() {
        return playerNo;
    }

    public void setPlayerNo(Integer playerNo) {
        this.playerNo = playerNo;
    }

    public Integer getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Integer playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getPlayerScore() {
        return playerScore;
    }

    public void setPlayerScore(String playerScore) {
        this.playerScore = playerScore;
    }

    public String getPlayerTableOrder() {
        return playerTableOrder;
    }

    public void setPlayerTableOrder(String playerTableOrder) {
        this.playerTableOrder = playerTableOrder;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (playerNo != null ? playerNo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PlayerTable)) {
            return false;
        }
        PlayerTable other = (PlayerTable) object;
        if ((this.playerNo == null && other.playerNo != null) || (this.playerNo != null && !this.playerNo.equals(other.playerNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gr.peoplecert.gogdames.domain.PlayerTable[ playerNo=" + playerNo + " ]";
    }
    
}
