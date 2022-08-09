import resolve from "@rollup/plugin-node-resolve";
import scss from "rollup-plugin-scss";

export default {
  input: "app/assets/javascript/application.js",
  output: {
    file: "app/assets/builds/application.js",
    format: "es",
    inlineDynamicImports: true,
    sourcemap: true,
  },
  plugins: [
    resolve(),
    scss({
      sourceMap: true,
    }),
  ],
};
