package com.green.user.vo;

public class UserVo {
    // Fields
    private Long id;
    private String name;
    private String userId;
    private String password;
    private String gender;
    private String email;
    private String birthdate;
    private String carManufacturer;
    private String carModel;

    // Constructor
    public UserVo() {
    }

    public UserVo(Long id, String name, String userId, String password, String gender, String email, String birthdate,
            String carManufacturer, String carModel) {
        super();
        this.id = id;
        this.name = name;
        this.userId = userId;
        this.password = password;
        this.gender = gender;
        this.email = email;
        this.birthdate = birthdate;
        this.carManufacturer = carManufacturer;
        this.carModel = carModel;
    }

    // Getter and Setter methods
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getCarManufacturer() {
        return carManufacturer;
    }

    public void setCarManufacturer(String carManufacturer) {
        this.carManufacturer = carManufacturer;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    // toString
    @Override
    public String toString() {
        return "UserVo [id=" + id + ", name=" + name + ", userId=" + userId + ", password=" + password + ", gender="
                + gender + ", email=" + email + ", birthdate=" + birthdate + ", carManufacturer=" + carManufacturer
                + ", carModel=" + carModel + "]";
    }
}
