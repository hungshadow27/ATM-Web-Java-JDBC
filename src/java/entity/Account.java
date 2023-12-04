/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Hung Ngu
 */
public class Account {
    private String id;
    private String user;
    private String pass;
    private String pin;
    private String name;
    private String balance;

    public Account() {
    }

    public Account(String id, String user, String pass,String pin, String name, String balance) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.pin = pin;
        this.name = name;
        this.balance = balance;
    }
    public String getBalance() {
        return balance;
    }
    public String getId() {
        return id;
    }
    public String getPin() {
        return pin;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }
    public void setBalance(String balance) {
        this.balance = balance;
    }
    public void setPin(String pin) {
        this.pin = pin;
    }
    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", name=" + name + '}';
    }
    
}
