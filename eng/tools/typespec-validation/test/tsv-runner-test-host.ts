import { TsvRunnerHost } from "../src/tsv-runner-host.js";

export class TsvRunnerTestHost extends TsvRunnerHost {
  _gitRoot: string;

  constructor(gitRoot: string) {
    super();
    this._gitRoot = gitRoot;
  }

  async gitRoot(_folder: string): Promise<string> {
    return Promise.resolve(this.normalizePath(this._gitRoot));
  }
}