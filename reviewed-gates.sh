set -euo pipefail
set -euo pipefail
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru fix --workflow strict --verify --format edn
calcit calcit.cirru test --tag unit --require-match
calcit calcit.cirru analyze weak-types --only deprecated-call --summary-only --format json | jq -e '.data.summary.calls == 0'
calcit calcit.cirru js
VITE_BASE_URL=./ yarn vite build --base=./
node --test scripts/prompt-render.test.mjs scripts/typed-reel-render.test.mjs
