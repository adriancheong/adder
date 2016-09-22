FROM microsoft/dotnet:latest
ENV name Adder
COPY src/$name /root/$name
RUN cd /root/$name && dotnet restore && dotnet build && dotnet publish && cp bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/${name}.dll

