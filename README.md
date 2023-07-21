### Нужно сбилдить с посощью следуюущей команды

```sudo docker build --tag stocks_products .```

### Затем нужно запустить контейнер

```sudo docker run -d -p 8000:8000 --name stocks_products_2 stocks_products```