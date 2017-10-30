module.exports = {
    env: {
        node: true,
        browser: true,
        jquery: true,
        es6: true,
    },
    parser: "babel-eslint",
    extends: "eslint:recommended",
    parserOptions: {
        ecmaVersion: 2016,
        sourceType: "module",
    },
    rules: {
        // enable additional rules
        indent: ["error", 4],
        "linebreak-style": ["error", "unix"],
        quotes: ["error", "double"],
        semi: ["error", "always"],
        // override default options for rules from base configurations
        "comma-dangle": [2, "always-multiline"],
        "no-cond-assign": ["error", "always"],

        // disable rules from base configurations
        "no-console": "off",
    },
};
