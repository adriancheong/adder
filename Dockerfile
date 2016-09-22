FROM microsoft/dotnet:latest
ENV name Adder
COPY src/$name /root/$name
RUN cd /root/$name && dotnet restore && dotnet build && dotnet publish
RUN cp -rf /root/Adder/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Adder.dll
