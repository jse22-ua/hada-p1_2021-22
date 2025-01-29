Una clase o módulo solo debe tener una única responsabilidad. Las clases deben cambiar por una única razón. Si exista más de una posibilidad de cambio, no tiene una única responsabilidad.

Para Martin *responsabilidad* = *razón de cambio*.
Esos términos son bastante ambiguos y dependen del nivel de abstracción y depende del nivel de abstracción que se le aplique. 

A ver puede ser más flexible, no pasa nada si tiene dos o tres responsabilidades. Si somos demasiado estrictos podemos acabar con un #sobre-arquitectura que es el otro extremo.

Como decía Kevlin Henney en su charla *Solid Deconstruction* un ejemplo de diseño malo que no cumple la [[Single Responsability o Responsabilidad única]] es el típico *package* o módulo de `Uti`l`
Donde se incluyen una mezcla de clases varias.

Otro ejemplo que no cumple la [[Single Responsability o Responsabilidad única]] es:

| Rectangle        |
| ---------------- |
| + draw()         |
| + area(): double |
La clase rectángulo tiene dos funcionalidades, la de calcular de realizar cálculos geométricos y la de representarlo gráficamente.

No es correcto incluir ambas responsabilidades en una misma clase. Es mejor separarlas.


| Rectangle |     | Geometric Rectangle |
| --------- | --- | ------------------- |
| + draw()  | ->  | +area(): double     |

Dos clases la de Rectángulo y la Rectángulo geométrico, relacionadas entre ellas.

Otra buena filosofía es la de UNIX que crea comandos que hacen una única cosa y pueden combinarse usando tuberías

