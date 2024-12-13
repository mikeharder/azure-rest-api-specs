import { describe, it } from "vitest";
import { FolderStructureRule } from "../../../src/rules/folder-structure.js";
import { strict as assert } from "node:assert";
import { join } from "node:path";
import { TsvRunnerHost } from "../../../src/tsv-runner-host.js";

describe("folder-structure-e2e", function () {
  it("should fail if tspconfig has incorrect extension", async function () {
    let host = new TsvRunnerHost();
    const result = await new FolderStructureRule().execute(
      host,
      join(__dirname, "specification", "tspconfig-yml", "TspConfig.Yml"),
    );
    assert(result.errorOutput);
    assert(result.errorOutput.includes("Invalid config file"));
  });
});
