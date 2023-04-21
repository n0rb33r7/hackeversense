.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;
.super Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;
.source "DMSStateModelAppInfo2.java"


# instance fields
.field private AutoSync:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AutoSync"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;Ljava/lang/Integer;)V
    .locals 7

    .line 10
    iget-object v1, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOS:Ljava/lang/String;

    iget-object v2, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->DeviceType:Ljava/lang/String;

    iget-object v4, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppOSVersion:Ljava/lang/String;

    iget-object v5, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->AppActive:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;->CountryLanguage:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;->AutoSync:Ljava/lang/Integer;

    return-void
.end method
