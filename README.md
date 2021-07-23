## Command to make Containor for the connection of Front end and Back end 

```
docker run -itd --name WebPk -p 1999:80 -v  /home/harrypotter/Desktop/webcode:/var/www/html -v /home/harrypotter/Desktop/web_backend:/var/www/cgi-bin/ pkkh2000/httpd:v1
```
