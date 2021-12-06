/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr.peoplecert.gogdames.domain;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author IoanChatz
 */
@Entity
@Table(name = "participant")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Participant.findAll", query = "SELECT p FROM Participant p"),
    @NamedQuery(name = "Participant.findByParticipantId", query = "SELECT p FROM Participant p WHERE p.participantId = :participantId")})
public class Participant implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "participant_id")
    private Integer participantId;
    @JoinColumn(name = "chat_id", referencedColumnName = "chat_id")
    @ManyToOne
    private ChatRoom chatId;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private User userId;

    public Participant() {
    }

    public Participant(Integer participantId) {
        this.participantId = participantId;
    }

    public Integer getParticipantId() {
        return participantId;
    }

    public void setParticipantId(Integer participantId) {
        this.participantId = participantId;
    }

    public ChatRoom getChatId() {
        return chatId;
    }

    public void setChatId(ChatRoom chatId) {
        this.chatId = chatId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (participantId != null ? participantId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Participant)) {
            return false;
        }
        Participant other = (Participant) object;
        if ((this.participantId == null && other.participantId != null) || (this.participantId != null && !this.participantId.equals(other.participantId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gr.peoplecert.gogdames.domain.Participant[ participantId=" + participantId + " ]";
    }
    
}
