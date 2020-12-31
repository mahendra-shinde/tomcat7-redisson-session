# Tomcat-Redisson Integration for HTTP Session management

Use this code for building your own "tomcat-7" container with redisson configured as default session-store.

You may use `standalone` redis instances as `single` mode or `multiple instances` as `replicated` mode.

You may optionally choose to `delete` the test-application i have included for testing redis integration with tomcat.

## Notes

- The key prefix is `redisson:tomcat_session:` followed by your session-id
- The environment variables are `REDISHOST` and `REDISPASS` for hostname and password respectively
- The HOSTNAME must begin with redis protocol either `redis://` or `rediss://` and ends with port number
