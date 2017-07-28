FROM httpd:2.4
RUN echo "<html><body><h1>B</h1>Apple works!</body></html>" > /usr/local/apache2/htdocs/index.html
