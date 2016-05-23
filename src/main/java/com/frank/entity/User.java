package com.frank.entity;

public class User {
    private String userId;
    private String userName;
    private String password;
    private String roleId;
    private String roleName;
    private String permissionId;
    private String getPermissionName;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId;
    }

    public String getGetPermissionName() {
        return getPermissionName;
    }

    public void setGetPermissionName(String getPermissionName) {
        this.getPermissionName = getPermissionName;
    }
}
