# Prueba: SQL Server 2017 — anterior al mecanismo non-root/permissions_check.sh
# que introdujo Microsoft en 2019+. 2019 y 2022 fallaron idéntico en Render
# ("Operation not permitted" al ejecutar sqlservr) tanto root como no-root,
# con y sin disco — esto prueba si el binario/arranque de 2017 evita lo que
# sea que esté bloqueando el sandbox de Render.
FROM mcr.microsoft.com/mssql/server:2017-latest
