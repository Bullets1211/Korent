package com.korent.entity;

import javax.persistence.*;

/**
 * Created by lei on 2015/8/25.
 */

@Entity
@Table(name="notify")
public class Notification {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="nid")
    private Integer id;

    @Column(name="ToId",nullable=false)
    private Integer ToId;                //�����Լ�¼Ҫ��˭����֪ͨ��Ϊ�û���id

    @Column(name="content",length =255,nullable=false)
    private String content;              //����֪ͨ������

    @Column(name="status",nullable=false)
    private Integer status;              //��Ϣ��״̬��Ĭ��Ϊ0δ�����Ѷ�Ϊ1

    public Notification() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getToId() {
        return ToId;
    }

    public void setToId(Integer toId) {
        ToId = toId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


}
