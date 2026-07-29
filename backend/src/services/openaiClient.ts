import OpenAI, { toFile } from 'openai';

// Keep the CommonJS-backed SDK behind a local ESM boundary so services and
// Node's test-module mocks behave consistently across supported Node versions.
export { toFile };
export default OpenAI;
