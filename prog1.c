alert tcp $EXTERNAL_NET any -> $SQL_SERVERS $ORACLE_PORTS\      
(msg: "ORACLE create database attempt:;\ 
flow: to_server, established; content: "create database"; nocase;\      
classtype: protocol-command-decode;)