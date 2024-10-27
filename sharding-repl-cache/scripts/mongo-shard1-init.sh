#!/bin/bash
docker compose exec -T shard1_1 mongosh --port 27018 <<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard1_1:27018" },
        { _id : 1, host : "shard1_2:27021" },
        { _id : 2, host : "shard1_3:27022" }
      ]
    }
);
EOF