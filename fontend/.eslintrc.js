// https://eslint.org/docs/user-guide/configuring

module.exports = {
  root: true,
  parserOptions: {
    parser: 'babel-eslint'
  },
  env: {
    browser: true,
  },
  "globals": {
    "document": true,
    "localStorage": true,
    "window": true,
    "ActiveXObject": true
  }, // 增加全局变量，防止报'ActiveXObject' is not defined类似的错误
  // https://github.com/vuejs/eslint-plugin-vue#priority-a-essential-error-prevention
  // consider switching to `plugin:vue/strongly-recommended` or `plugin:vue/recommended` for stricter rules.
  extends: ['plugin:vue/essential', 'airbnb-base'],
  // required to lint *.vue files
  plugins: [
    'vue'
  ],
  // check if imports actually resolve
  settings: {
    'import/resolver': {
      webpack: {
        config: 'build/webpack.base.conf.js'
      }
    }
  },
  // add your custom rules here
  rules: {
    // don't require .vue extension when importing
    'import/extensions': ['error', 'always', {
      js: 'never',
      vue: 'never'
    }],
    // disallow reassignment of function parameters
    // disallow parameter object manipulation except for specific exclusions
    'no-param-reassign': ['error', {
      props: true,
      ignorePropertyModificationsFor: [
        'state', // for vuex state
        'acc', // for reduce accumulators
        'e' // for e.returnvalue
      ]
    }],
    // allow optionalDependencies
    'import/no-extraneous-dependencies': ['error', {
      optionalDependencies: ['test/unit/index.js']
    }],
    // allow debugger during development
    'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    "no-const-assign": 2,//禁止修改const声明的变量
    "no-dupe-keys": 2,//在创建对象字面量时不允许键重复 {a:1,a:1}
    "no-mixed-spaces-and-tabs": [2, false],//禁止混用tab和空格
    "no-redeclare": 2,//禁止重复声明变量
    "no-trailing-spaces": 1,//一行结束后面不要有空格
    "no-undef": 1,//不能有未定义的变量
    'linebreak-style': 'off',
    'no-console': 'off',// 可以使用console
    "no-var": 0,//禁用var，用let和const代替
    "comma-dangle": ["error", "never"],// 去除验证尾部逗号
    "no-alert": 0,//禁止使用alert confirm prompt
    'max-len': ["error", { "code": 220 }],//去除最大行数长度限制
    "arrow-parens": 0,//箭头函数用小括号括起来
    "arrow-spacing": 0//=>的前/后括号
  }
}
