#!/bin/bash
docker compose exec -T shard2_1 mongosh --port 27019 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 3, host : "shard2_1:27019" },
        { _id : 4, host : "shard2_2:27023" },
        { _id : 5, host : "shard2_3:27024" }
      ]
    }
);
EOF