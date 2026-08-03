# Langfuse Tracing

MicroClaw exports OpenTelemetry traces and can send them to Langfuse. A complete agent run appears as `agent_run`, with model and tool work represented by child spans such as `llm_generation` and `tool_execution`.

## Configure

Create a Langfuse project, copy its public and secret keys, and add:

```yaml
observability:
  service_name: "microclaw-agent"
  otlp_tracing_enabled: true
  langfuse_host: "https://cloud.langfuse.com"
  langfuse_public_key: "pk-lf-..."
  langfuse_secret_key: "sk-lf-..."
  otlp_tracing_max_queue_size: 8192
  otlp_tracing_max_export_batch_size: 512
  otlp_tracing_scheduled_delay_ms: 5000
```

For a self-hosted deployment, set `langfuse_host` to the reachable host root, such as `http://127.0.0.1:3000`. Do not append a UI route or OTLP API path.

Restart MicroClaw after changing the configuration, then send a new test message.

## Verify

Start with focused debug logs:

```sh
RUST_LOG=info,microclaw_observability=debug,opentelemetry_sdk=info microclaw start
```

Confirm that the exporter initializes and a trace span reaches the OpenTelemetry SDK. In Langfuse, check that a new `agent_run` contains `llm_generation` and `tool_execution` children and that token usage is non-zero after a real model response.

## Common issues

- **Wrong host:** use only the Langfuse host root.
- **Local proxy interception:** add the host to `NO_PROXY` and `no_proxy`.
- **Container networking:** `127.0.0.1` inside MicroClaw's container does not point to a host-side Langfuse process.
- **No new traces:** restart MicroClaw and send a fresh request; historical traces are not backfilled.
- **Excessive SDK logs:** keep `opentelemetry_sdk=info` while raising only `microclaw_observability` to debug.

For metrics, span structure, and adapter design, see the [observability architecture](architecture.md) and [metrics reference](metrics.md).
