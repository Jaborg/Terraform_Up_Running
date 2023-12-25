#!/bin/bash

cat > index.html <<EOF
<h1>Im in church</h1>
<img src="https://images.unsplash.com/photo-1548625149-fc4a29cf7092?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2h1cmNofGVufDB8fDB8fHww" alt="Unsplash Image">
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &