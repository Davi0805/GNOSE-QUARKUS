package com.example.quarkusapi.model;

public class RedisCompanies {
    private Id id;
    private String permission;

    public Id getId() {
        return id;
    }

    public void setId(Id id) {
        this.id = id;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    @Override
    public String toString() {
        return "RedisCompanies{" +
                "id=" + id +
                ", permission='" + permission + '\'' +
                '}';
    }

    public static class Id {
        private long userId;
        private long companyId;

        public long getUserId() {
            return userId;
        }

        public void setUserId(long userId) {
            this.userId = userId;
        }

        public long getCompanyId() {
            return companyId;
        }

        public void setCompanyId(long companyId) {
            this.companyId = companyId;
        }

        @Override
        public String toString() {
            return "Id{" +
                    "userId=" + userId +
                    ", companyId=" + companyId +
                    '}';
        }
    }
}
