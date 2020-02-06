import { WebPlugin } from "@capacitor/core";
import { PinCheckPlugin } from "./definitions";
export declare class PinCheckWeb extends WebPlugin implements PinCheckPlugin {
    constructor();
    isSecure(): Promise<{
        isSecure: boolean;
    }>;
}
declare const PinCheck: PinCheckWeb;
export { PinCheck };
