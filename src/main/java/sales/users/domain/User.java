package sales.users.domain;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import sales.roles.domain.Role;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * Created by taras on 29.07.15.
 */
@Entity
@Table(name="users")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.NONE, getterVisibility = JsonAutoDetect.Visibility.NONE, setterVisibility = JsonAutoDetect.Visibility.NONE)
public class User implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @JsonProperty
    private Long id;

    @Column(name = "password", columnDefinition = "VARCHAR(100)")
    @JsonProperty
    private String password;

    @Column(name = "first_name", columnDefinition = "VARCHAR(255)")
    @JsonProperty
    private String firstName;

    @Column(name = "last_name", columnDefinition = "VARCHAR(255)")
    @JsonProperty
    private String lastName;

    @ManyToOne(targetEntity = City.class)
    @JoinColumn(name = "city", referencedColumnName = "id")
    @JsonProperty
    private City city;

    @Column(name = "email", columnDefinition = "VARCHAR(60) UNIQUE")
    @JsonProperty
    private String email;

    @Column(name = "phoneNumber", columnDefinition = "VARCHAR(13)")
    @JsonProperty
    private String phoneNumber;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "creationDate", nullable = false)
    @JsonProperty
    private Date creationDate;

    @PrePersist
    private void onCreateUserInstance() {
        creationDate = new Date();
    }

    @ManyToOne(targetEntity = Role.class)
    @JoinColumn(name = "role", referencedColumnName = "id")
    @JsonProperty
    private Role role;

    public User() {
    }

    public User(String password, String firstName, String lastName, City city, String email, String phoneNumber, Date creationDate, Role role) {
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.creationDate = creationDate;
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String secondName) {
        this.lastName = secondName;
    }

    public City getAddress() {
        return city;
    }

    public void setAddress(City city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getDate() {
        return creationDate;
    }

    public void setDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Role getRole() {
        return role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address='" + city + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", creationDate" + creationDate + '\'' +
                ", role=" + role +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
