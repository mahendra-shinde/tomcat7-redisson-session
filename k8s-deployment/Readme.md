# Deploying Tomcat-7 with Redisson-Session as Stateless application.

> This demo assumes that you have REDIS cluster setup either locally or on-cloud. 

## Steps
1.  Make sure you have either BUILT your own docker image using this repository or use my pre-built image with sample session test application `mahendrshinde/tomcat-redisson-session:latest`

2.  Now, open `deploy.yaml` file and update line 18 to use your custom image.

3.  Now, open `config.yaml` file and update `line 6 & 7`  to use your own REDIS Host and password

4.  Optionally, Update `service.yaml` to change port mapping and service type.

5.  Deploy all YAML files using KUBECTL

    ```
    $ kubectl apply -f .
    $ kubectl get po
    $ kubectl get svc
    ```

6.  Now, access the sample application using external-ip of service `myapp`

    Example: `http://localhost:9000`
    