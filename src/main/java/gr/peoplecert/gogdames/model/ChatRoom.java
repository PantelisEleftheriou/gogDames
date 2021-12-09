/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr.peoplecert.gogdames.model;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author IoanChatz
 */
@Entity
@Table(name = "chat_room")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChatRoom.findAll", query = "SELECT c FROM ChatRoom c"),
    @NamedQuery(name = "ChatRoom.findByChatId", query = "SELECT c FROM ChatRoom c WHERE c.chatId = :chatId"),
    @NamedQuery(name = "ChatRoom.findByChatInfo", query = "SELECT c FROM ChatRoom c WHERE c.chatInfo = :chatInfo"),
    @NamedQuery(name = "ChatRoom.findByChatName", query = "SELECT c FROM ChatRoom c WHERE c.chatName = :chatName")})
public class ChatRoom implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "chat_id")
    private Integer chatId;
    @Column(name = "chat_info")
    private String chatInfo;
    @Column(name = "chat_name")
    private String chatName;
    @OneToMany(mappedBy = "chatId")
    private Set<Message> messageSet;
    @OneToMany(mappedBy = "chatId")
    private Set<Participant> participantSet;

    public ChatRoom() {
    }

    public ChatRoom(Integer chatId) {
        this.chatId = chatId;
    }

    public Integer getChatId() {
        return chatId;
    }

    public void setChatId(Integer chatId) {
        this.chatId = chatId;
    }

    public String getChatInfo() {
        return chatInfo;
    }

    public void setChatInfo(String chatInfo) {
        this.chatInfo = chatInfo;
    }

    public String getChatName() {
        return chatName;
    }

    public void setChatName(String chatName) {
        this.chatName = chatName;
    }

    @XmlTransient
    public Set<Message> getMessageSet() {
        return messageSet;
    }

    public void setMessageSet(Set<Message> messageSet) {
        this.messageSet = messageSet;
    }

    @XmlTransient
    public Set<Participant> getParticipantSet() {
        return participantSet;
    }

    public void setParticipantSet(Set<Participant> participantSet) {
        this.participantSet = participantSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (chatId != null ? chatId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChatRoom)) {
            return false;
        }
        ChatRoom other = (ChatRoom) object;
        if ((this.chatId == null && other.chatId != null) || (this.chatId != null && !this.chatId.equals(other.chatId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gr.peoplecert.gogdames.domain.ChatRoom[ chatId=" + chatId + " ]";
    }
    
}
