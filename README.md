# nvim-markdown-grammarly
Minimal nvim all lua config for Markdown with Grammarly

## Requirements

- clone [znck/grammarly](https://github.com/znck/grammarly)
- run the commands to install and build:
  ```bash
  pnpm install
  pnpm run build
  ```
- run the pnpmm test and verify that markdown passes
  ```bash
  pnpm test
  ```
  ```response
  > @ test /home/droscigno/GitHub/grammarly
  > jest

   PASS  packages/grammarly-richtext-encoder/test/markdown.test.ts
    markdown
      ✓ encode (76 ms)
      ✓ decode (1 ms)

  Test Suites: 1 passed, 1 total
  Tests:       2 passed, 2 total
  Snapshots:   2 passed, 2 total
  Time:        0.344 s, estimated 2 s
  Ran all test suites.
  ```
- find the binary file `grammarly-languageserver` in a subdir of the `znck/grammarly` repo
  ```bash
  find . | grep "bin\/grammarly-languageserver"
  ```
  ```response
  ./extension/node_modules/.bin/grammarly-languageserver
  ```
  Run the languageserver to make sure it starts:
  ```bash
  ./extension/node_modules/.bin/grammarly-languageserver --stdio
  ```
  ```response
  Content-Length: 85
  
  {"jsonrpc":"2.0","method":"window/logMessage","params":{"type":4,"message":"Ready!"}}^C
  ```

- remove $HOME/.config/nvim
- link this repo to $HOME/.config/nvim
- edit my_config.lua and set the grammarly LSP cmd (using the one you just built in the znck dir)
- edit a markdown file. You should see marks in the far left column indicating grammar and spelling errors. Navigate through the errors with `]d`

