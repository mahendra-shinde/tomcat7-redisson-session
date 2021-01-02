# Tomcat-Redisson Integration for HTTP Session management

Use this code for building your own "tomcat-7" container with redisson configured as default session-store.

You may use `standalone` redis instances as `single` mode or `multiple instances` as `replicated` mode.

You may optionally choose to `delete` the test-application i have included for testing redis integration with tomcat.

## Notes

- The key prefix is `redisson:tomcat_session:` followed by your session-id
- The environment variables are `REDISHOST` and `REDISPASS` for hostname and password respectively
- The HOSTNAME must begin with redis protocol either `redis://` or `rediss://` and ends with port number

## Video Demonstration

[![Demo on YouTube](https://i9.ytimg.com/vi/0BiZL4suit8/mq1.jpg?sqp=CJChwP8F&rs=AOn4CLDRUcikPB5QuDlxfQSk6nBrJyyW-Q)](https://www.youtube.com/watch?v=0BiZL4suit8)