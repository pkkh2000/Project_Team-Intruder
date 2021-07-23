## Command to make Containor for the connection of Front end and Back end 

```
docker run -itd --name WebPk -p 1999:80 -v  /home/harrypotter/Desktop/webcode:/var/www/html -v /home/harrypotter/Desktop/web_backend:/var/www/cgi-bin/ pkkh2000/httpd:v1
```

### Update the containor with the restart policy

```
docker update --restart always WebPk
```


### Get insude the container
```
docker exec -it WebPk bash
```


### Give the execute permissions to the backend file
Note:-Kindly use the name that are used in the backend folder
```
chmod +x apache.py cmd.py 
```


