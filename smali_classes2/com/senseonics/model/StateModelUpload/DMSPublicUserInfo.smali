.class public Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;
.super Ljava/lang/Object;
.source "DMSPublicUserInfo.java"


# instance fields
.field private OptoutFlag:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OptoutFlag"
    .end annotation
.end field

.field private SensorID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SensorID"
    .end annotation
.end field

.field private SensorInsertionDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InsertionDate"
    .end annotation
.end field

.field private TxID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransmitterID"
    .end annotation
.end field

.field private TxSoftwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FirmwareVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;->TxID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;->TxSoftwareVersion:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;->SensorID:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;->SensorInsertionDate:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;->OptoutFlag:Ljava/lang/Integer;

    return-void
.end method
