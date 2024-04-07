# conkyConfiguracion
## Instalacion
Instalar conky en tu distribución

Las dependecias son: ffmpeg playerctl para el reproductor de spotify y jq & awk para consultar el precio del bitcoin. Quizas el monitor de gpuAMD tiene alguna dependecia (hwinfo), pero aun tengo que revisarlo

Una vez con todo instalado descomprime el contenido en una carpeta y ejecuta el script start.sh

## Configuración
en start.sh se lanzan los scripts de conky por lo que deberías descomentar los que vayas a usar de igual manera tienes que cambiar la ruta para el visualizador de spotify 
sh $HOME/.conky/spotify-conky/start.sh
como puedes ver yo cree una carpeta oculta llamada conky con todos los archivos

Obviamente te recomiendo cambiar gap_y de cada script para que lo encages mejor en cada pantalla, asi como las diferentes opciones de cpu, red en funcion de tu equipo.

## Capturas
![imagen](https://user-images.githubusercontent.com/21121575/180258501-b0467b3a-1936-418b-b4cc-a793b32e51fc.png)
![imagen](https://user-images.githubusercontent.com/21121575/180258670-58d821e4-befe-47e9-b896-9fae72c3d298.png)
![imagen](https://user-images.githubusercontent.com/21121575/180258764-5ff1dfff-0798-4009-900c-7dba8049b2f6.png)


## Credits
De de aqui saque el monitor de precio bitcoin,
https://github.com/Kosteron/Conky

De este saque el grueso de mi script, aunque parece que ya no esta disponible... pero bueno
https://www.reddit.com/r/Conkyporn/comments/kd1r2f/my_conky_configuration_for_ubuntu/

Por lo general es una configuración bastante generica y me inspire en otras muchas
https://github.com/dm2912/conky
https://github.com/Frequential/conky-configuration
https://github.com/ZvonimirKucis/conky

Aquí tenemos como hacer dinámico los colores de la temperatura, tengo la impresión de que falla a partir de los 100ºC pero mejor no llegar ahí
https://www.youtube.com/watch?v=ItZAMXO-FIA

la infromación de spotify la saque de: 
https://github.com/Rayzr522/now-clocking
autoría total de @gamehelp16 and @Rayzr522, yo solo le quite las opciones, de otros reporductores lo simplifique a un script. para ver los otros reproductores dipsonibles lo teneis en su github
