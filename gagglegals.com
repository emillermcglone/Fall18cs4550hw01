#Attribution http://www.ccs.neu.edu/home/ntuck/courses/2018/01/cs4550/notes/01-intro/notes.html

server {
        listen 80;
        listen [::]:80;

        root /home/emily/www/hw01.gagglegals.com;

        index index.html;

        server_name hw01.gagglegals.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
