import ICRC3 "mo:icrc3-mo";
import Principal "mo:base/Principal";

module {
  public let defaultConfig = func(caller : Principal) : ICRC3.InitArgs {
    ?{
      maxActiveRecords = 4000;
      settleToRecords = 2000;
      maxRecordsInArchiveInstance = 5_000_000;
      maxArchivePages = 62500; //allows up to 993 bytes per record
      archiveIndexType = #Stable;
      maxRecordsToArchive = 10_000;
      archiveCycles = 2_000_000_000_000; //two trillion
      archiveControllers = ??[Principal.fromText("p5mpn-lgd4x-logst-tftlf-ocwbj-b53ah-5mgue-b665z-lv63u-mmvdj-iqe")];
      supportedBlocks = [];
    };
  };
};
