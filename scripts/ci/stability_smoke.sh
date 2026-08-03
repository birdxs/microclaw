#!/usr/bin/env bash
set -euo pipefail

echo "[stability-smoke] reliability proof pack"
scripts/ci/reliability_scorecard.sh

echo "[stability-smoke] sandbox fallback behavior"
cargo test --quiet -p microclaw-tools test_router_falls_back_to_host_when_runtime_missing_and_not_required

echo "[stability-smoke] web inflight behavior"
cargo test --quiet test_same_session_concurrency_limited

echo "[stability-smoke] completed"
