## Testing

You can test the endpoints manually:

```bash
# Health check endpoint
curl http://localhost:8080/health

# Valid auth request
curl -H "x-pretest: valid-token" http://localhost:8080/auth

# Invalid auth request
curl -H "x-pretest: wrong-token" http://localhost:8080/auth

# Missing header (should return 401)
curl http://localhost:8080/auth
```

For start and stop, you may use start.sh and stop.sh for start and stop respectively