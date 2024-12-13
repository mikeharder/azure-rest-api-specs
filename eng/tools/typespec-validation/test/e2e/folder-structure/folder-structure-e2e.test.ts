import { describe, it } from "vitest";
import { FolderStructureRule } from "../../../src/rules/folder-structure.js";
import { strict as assert } from "node:assert";
import { join } from "node:path";
import { TsvRunnerHost } from "../../../src/tsv-runner-host.js";
import { TsvRunnerTestHost } from "../../tsv-runner-test-host.js";

const repoRoot = join(__dirname, "..", "..", "..", "..", "..", "..");

describe("folder-structure-e2e", function () {
  it("should fail if tspconfig has incorrect extension", async function () {
    let host = new TsvRunnerTestHost(__dirname);
    const result = await new FolderStructureRule().execute(
      host,
      join(__dirname, "specification", "tspconfig-yml", "TspConfig.Yml"),
    );
    assert(result.errorOutput);
    assert(result.errorOutput.includes("Invalid config file"));
  });

  it("should succeed with Contoso.WidgetManager", async function () {
    let host = new TsvRunnerHost();

    const result = await new FolderStructureRule().execute(
      host,
      join(repoRoot, "specification", "contosowidgetmanager", "Contoso.WidgetManager"),
    );

    assert.equal(result.errorOutput || "", "");
    assert(result.success);
  });

  it("should succeed with Contoso.Management", async function () {
    let host = new TsvRunnerHost();

    const result = await new FolderStructureRule().execute(
      host,
      join(repoRoot, "specification", "contosowidgetmanager", "Contoso.Management"),
    );

    assert.equal(result.errorOutput || "", "");
    assert(result.success);
  });
});
