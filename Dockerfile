FROM microsoft/dotnet:latest
COPY src/Adder/ /root/
RUN ["dotnet", "restore", "src/Adder/"] 
RUN ["dotnet", "build", "src/Adder/"] 
RUN ["dotnet", "publish", "src/Adder/"] 
COPY src/Adder/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Adder.dll

