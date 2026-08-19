# Prueba: forzar root en vez del usuario no-root "mssql" que trae la imagen
# oficial por defecto (2019+). El contenedor falla al arrancar en Render
# ("Operation not permitted" al ejecutar sqlservr como mssql) tanto con
# 2019 como con 2022, con y sin disco montado — esto prueba si el problema
# es específico del usuario no-root o algo más profundo del sandbox de Render.
FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
