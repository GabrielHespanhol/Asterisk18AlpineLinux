# Docker small image - Asterisk Alpine Linux 

### Projeto criado para estudo de asterisk e validações com o modulo res_prometheus.

#### Imagem docker para testes e validações com asterisk 18 LTS.
#### Imagem com configuração básica inicial, não deve ser utilizada em produção.
#### Está habilitado o /metrics para utilização do prometheus.



## Para executar o container utilize o seguinte comando: 
```
$ docker run --name myasterisk -d -p 5060:5060 myimagename
```

### Para executar o container com o expose das metricas do prometheus utilize o seguinte comando:

```
$ docker run --name myasterisk -d -p 5060:5060 -p 8088:8088 myimagename
```