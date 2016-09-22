FROM microsoft/dotnet:latest
COPY src/Adder /root/Adder
RUN cd /root/Adder && dotnet restore && dotnet build && dotnet publish
COPY src/Adder/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Adder.dll

