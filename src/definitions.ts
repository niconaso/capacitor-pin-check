declare module "@capacitor/core" {
  interface PluginRegistry {
    PinCheck: PinCheckPlugin;
  }
}

export interface PinCheckPlugin {
  isSecure(): Promise<{isSecure: boolean}>;
}
