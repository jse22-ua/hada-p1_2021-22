
## Cliente-servidor
Existe uno o varios clientes y un servidor esperando una petición de esos clientes. 

```
Cliente -> Servidor
```

## Monolito 

Por ejemplo, las páginas hechas con wordpress. Se componen de un servidor y una base de datos como mucho. 

``Usuario -> WP -> BD``

El problema es cuando varios usuarios  acceden a este monolito el servidor se sobresatura y cae la aplicacion.


```
User ->
User -> serv WP -> BD
User ->
 ...

```

Para mejorar escalabilidad y alta disponibilidad. Añadimos balanceadores de carga para distribuir las peticiones. Esto mejora la alta disponibilidad. Para mejorar la escalabilidad es poner varios servidores, varios balanceadores, varias bases de datos. Esto permite que si cae uno de ellos, hay otro para reemplazarlo.

![[Pasted image 20240917094000.png]]

Sigue siendo un monolito pero si entrara mucha gente, se caería.
Para esto usamos la auto escalabilidad, donde tendremos un monitor que al llegar x porcentaje de carga, clona un servidor. Además si el servidor está teniendo una baja carga (por ejemplo, un 10%), se elimina un servidor (que no se está utilizando porque interferiría en el trabajo).


## Peer to Peer (p2p)

Torrent, Blockchain, no se

## MiddleWare

### Productor Consumidor
Existen productores y consumidores 

``User -> Productor -> MOM <- Consumidor -> DB``

Un usuario hace una petición al productor, este deja un mensaje en el middleware y el consumidor lo recibe, lo sintetiza y lo guarda en la base de datos. 

![[Pasted image 20240917102007.png]]

### Publicador suscriptor

Un unico publicador, muchos subscriptores

```
Publicador -> MOM <- Suscriptor 
				  <- Suscriptor 
				  <- Suscriptor
						...
```


### Por ejemplo Instagram

Tu como usuarios quieres subir imágenes o reels o videos. Pues tu eres el usuario, el productor sería "subir reel" y el consumidor  "Publicar reel". Es decir, el productor se encarga de coger el reel, hacer sus procesos y lo mete en el MOM (middleware) y cuando el consumidor este libre coge el reel y la publica, la mete en la base de datos. 

![[Pasted image 20240917102457.png]]

## Clúster y Grid

### Diferencia entre un clúster y Grid
El clúster el Hardware y el Software son homogéneos 


