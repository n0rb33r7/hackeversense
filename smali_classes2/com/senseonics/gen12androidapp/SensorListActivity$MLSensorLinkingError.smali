.class public final enum Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
.super Ljava/lang/Enum;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLSensorLinkingError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 110
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "IncompatibleSensorFile"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 111
    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v3, "NotConnectedToWifi"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 112
    new-instance v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v5, "ServerError"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 113
    new-instance v5, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v7, "UnableToDownloadSensorFile"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 114
    new-instance v7, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v9, "TransmitterError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 115
    new-instance v9, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v11, "IncompatibleFWVersion"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 116
    new-instance v11, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v13, "SyncTransmitterTimeFailure"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 117
    new-instance v13, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v15, "None"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 109
    sput-object v15, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 109
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 109
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object v0
.end method
