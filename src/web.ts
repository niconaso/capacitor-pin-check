import { WebPlugin } from "@capacitor/core";
import { PinCheckPlugin } from "./definitions";

export class PinCheckWeb extends WebPlugin implements PinCheckPlugin {
  constructor() {
    super({
      name: "PinCheck",
      platforms: ["web"]
    });
  }

  async isSecure(): Promise<{ isSecure: boolean }> {
    return Promise.resolve({
      isSecure: false
    });
  }
}

const PinCheck = new PinCheckWeb();

export { PinCheck };

import { registerWebPlugin } from "@capacitor/core";
registerWebPlugin(PinCheck);
