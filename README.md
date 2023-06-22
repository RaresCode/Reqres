
# Testing Reqres Api

This project involves testing the Reqres API using ReadyAPI. Through a combination of various assertions, database CRUD operations, and data matching techniques, the project aims to ensure the API's functionality, performance, and data integrity. ReadyAPI's powerful assertion capabilities will be used to validate HTTP status codes, response SLAs, content inclusion/exclusion, and content matching. Additionally, the project will perform CRUD operations on the associated database using JDBC statements and verify the success and timing of these operations. The captured data will be compared against the API response, ensuring consistency. 

## Readyapi Assertions/Operations

- Valid/Invalid HTTP status codes
- Response SLA
- Contains/Not Contains
- Match Content
- Jdbc Status
- Jdbc timeout
- Datasink


## Testing Process

https://user-images.githubusercontent.com/91252395/152012129-47fe03cd-f50a-40fc-9ca8-1e2b99b5e332.mp4

## Test Report

![result](https://user-images.githubusercontent.com/91252395/152010834-ba2a061c-8efe-463c-838b-db01e5865002.PNG)

## Setup

- Install and configure Readyapi

- Import Rest api project available in Readyapi folder

- Install and configure MySql Server

- Import the self-contained file available in Db folder

- Download JDBC driver/Connector platform independent from
```bash
  https://dev.mysql.com/downloads/connector/j/
```

- Place the driver in C:\Program Files\SmartBear\ReadyAPI-3.20.1\bin\ext

- Restart Ready api

- Click On Databases and modify connection string according to your mysql server information, here is the template:

```bash
  jdbc:mysql://<HOST:127.0.0.1>:<PORT:3306>/<DB>?user=<USER>&password=<PASSWORD>
```
