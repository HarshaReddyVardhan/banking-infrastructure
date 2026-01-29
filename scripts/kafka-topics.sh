#!/bin/bash
# ===================================================================
# Banking Microservices - Kafka Topic Creation Script
# ===================================================================
# Creates all required Kafka topics for inter-service communication.
# Run this after Kafka is up: ./kafka-topics.sh
# ===================================================================

KAFKA_HOST=${KAFKA_HOST:-localhost:9092}

echo "Creating Kafka topics on $KAFKA_HOST..."

topics=(
  "security-events"
  "transaction-events"
  "fraud-events"
  "user-events"
  "notification-events"
  "audit-events"
  "aml-events"
  "ledger-events"
  "account-events"
)

for topic in "${topics[@]}"; do
  kafka-topics.sh --bootstrap-server $KAFKA_HOST --create \
    --if-not-exists \
    --topic "$topic" \
    --partitions 3 \
    --replication-factor 1
  echo "✓ Created topic: $topic"
done

echo ""
echo "All topics created successfully!"
echo "To list topics: kafka-topics.sh --bootstrap-server $KAFKA_HOST --list"
