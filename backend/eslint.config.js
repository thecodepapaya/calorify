import js from '@eslint/js';
import tseslint from '@typescript-eslint/eslint-plugin';
import globals from 'globals';

export default [
  {
    ignores: ['coverage/**', 'dist/**', 'src/protos/**'],
  },
  js.configs.recommended,
  ...tseslint.configs['flat/recommended'],
  {
    files: ['**/*.ts'],
    languageOptions: {
      ecmaVersion: 2022,
      sourceType: 'module',
      globals: globals.node,
    },
    rules: {
      // This codebase intentionally uses `any` at Fastify/protobuf adapter
      // boundaries. Type safety for application code is enforced by `tsc`.
      '@typescript-eslint/no-explicit-any': 'off',
      '@typescript-eslint/explicit-function-return-type': 'off',
      '@typescript-eslint/no-unused-vars': ['error', { argsIgnorePattern: '^_' }],
      '@typescript-eslint/preserve-caught-error': 'off',
      'preserve-caught-error': 'off',
    },
  },
];
