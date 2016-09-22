FROM microsoft/dotnet:latest
COPY src/Adder/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Adder.dll

