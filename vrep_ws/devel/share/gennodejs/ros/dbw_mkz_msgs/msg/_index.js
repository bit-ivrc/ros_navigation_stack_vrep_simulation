
"use strict";

let TurnSignal = require('./TurnSignal.js');
let ParkingBrake = require('./ParkingBrake.js');
let AmbientLight = require('./AmbientLight.js');
let BrakeCmd = require('./BrakeCmd.js');
let WatchdogCounter = require('./WatchdogCounter.js');
let Misc1Report = require('./Misc1Report.js');
let FuelLevelReport = require('./FuelLevelReport.js');
let TurnSignalCmd = require('./TurnSignalCmd.js');
let Gear = require('./Gear.js');
let BrakeInfoReport = require('./BrakeInfoReport.js');
let SurroundReport = require('./SurroundReport.js');
let BrakeReport = require('./BrakeReport.js');
let TirePressureReport = require('./TirePressureReport.js');
let ThrottleInfoReport = require('./ThrottleInfoReport.js');
let SuspensionReport = require('./SuspensionReport.js');
let SteeringReport = require('./SteeringReport.js');
let ThrottleCmd = require('./ThrottleCmd.js');
let GearReport = require('./GearReport.js');
let WheelSpeedReport = require('./WheelSpeedReport.js');
let TwistCmd = require('./TwistCmd.js');
let HillStartAssist = require('./HillStartAssist.js');
let GearCmd = require('./GearCmd.js');
let Wiper = require('./Wiper.js');
let SteeringCmd = require('./SteeringCmd.js');
let ThrottleReport = require('./ThrottleReport.js');

module.exports = {
  TurnSignal: TurnSignal,
  ParkingBrake: ParkingBrake,
  AmbientLight: AmbientLight,
  BrakeCmd: BrakeCmd,
  WatchdogCounter: WatchdogCounter,
  Misc1Report: Misc1Report,
  FuelLevelReport: FuelLevelReport,
  TurnSignalCmd: TurnSignalCmd,
  Gear: Gear,
  BrakeInfoReport: BrakeInfoReport,
  SurroundReport: SurroundReport,
  BrakeReport: BrakeReport,
  TirePressureReport: TirePressureReport,
  ThrottleInfoReport: ThrottleInfoReport,
  SuspensionReport: SuspensionReport,
  SteeringReport: SteeringReport,
  ThrottleCmd: ThrottleCmd,
  GearReport: GearReport,
  WheelSpeedReport: WheelSpeedReport,
  TwistCmd: TwistCmd,
  HillStartAssist: HillStartAssist,
  GearCmd: GearCmd,
  Wiper: Wiper,
  SteeringCmd: SteeringCmd,
  ThrottleReport: ThrottleReport,
};
