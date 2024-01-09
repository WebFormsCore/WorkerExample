# WebForms in CloudFlare Workers example
This repository contains an example of how to use WebFormsCore in a CloudFlare Worker.

To test the example, visit https://webforms.gerardpw.workers.dev/ in your browser.

To build and deploy this example:

1. Clone emsdk (https://emscripten.org/docs/getting_started/downloads.html)
2. Make sure the `EMSDK` environment variable is set to the emsdk root directory, or change the directory in `build.cmd`
3. Run `build.cmd` to build the WebAssembly module
4. Deploy to CloudFlare Workers using `wrangler deploy`