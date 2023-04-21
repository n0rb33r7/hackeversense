.class public final enum Lcom/senseonics/bluetoothle/CommandError;
.super Ljava/lang/Enum;
.source "CommandError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/CommandError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum USBOnly:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum Unused:Lcom/senseonics/bluetoothle/CommandError;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 4
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "NotAllowed"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

    .line 5
    new-instance v1, Lcom/senseonics/bluetoothle/CommandError;

    const-string v4, "Unused"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/bluetoothle/CommandError;->Unused:Lcom/senseonics/bluetoothle/CommandError;

    .line 6
    new-instance v4, Lcom/senseonics/bluetoothle/CommandError;

    const-string v6, "InvalidCommandCode"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

    .line 7
    new-instance v6, Lcom/senseonics/bluetoothle/CommandError;

    const-string v8, "InvalidCRC"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/senseonics/bluetoothle/CommandError;->InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

    .line 8
    new-instance v8, Lcom/senseonics/bluetoothle/CommandError;

    const-string v10, "InvalidMessageLength"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    .line 9
    new-instance v10, Lcom/senseonics/bluetoothle/CommandError;

    const-string v12, "BufferOverflow"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/senseonics/bluetoothle/CommandError;->BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

    .line 10
    new-instance v12, Lcom/senseonics/bluetoothle/CommandError;

    const-string v14, "InvalidCommandArgument"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

    .line 11
    new-instance v14, Lcom/senseonics/bluetoothle/CommandError;

    const-string v13, "SensorReadError"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/senseonics/bluetoothle/CommandError;->SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

    .line 12
    new-instance v13, Lcom/senseonics/bluetoothle/CommandError;

    const-string v15, "LowBatteryError"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/senseonics/bluetoothle/CommandError;->LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

    .line 13
    new-instance v15, Lcom/senseonics/bluetoothle/CommandError;

    const-string v11, "SensorHardwareFailure"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/senseonics/bluetoothle/CommandError;->SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 14
    new-instance v11, Lcom/senseonics/bluetoothle/CommandError;

    const-string v9, "TransmitterHardwareFailure"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/senseonics/bluetoothle/CommandError;->TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 15
    new-instance v9, Lcom/senseonics/bluetoothle/CommandError;

    const-string v7, "SensorUnableToBeLinked"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/senseonics/bluetoothle/CommandError;->SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

    .line 16
    new-instance v7, Lcom/senseonics/bluetoothle/CommandError;

    const-string v5, "TransmitterIsBusy"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/bluetoothle/CommandError;->TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

    .line 17
    new-instance v5, Lcom/senseonics/bluetoothle/CommandError;

    const-string v3, "InvalidRecordNumberRange"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

    .line 18
    new-instance v3, Lcom/senseonics/bluetoothle/CommandError;

    const-string v2, "InvalidRecord"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 19
    new-instance v2, Lcom/senseonics/bluetoothle/CommandError;

    const-string v7, "CorruptRecord"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/bluetoothle/CommandError;->CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 20
    new-instance v7, Lcom/senseonics/bluetoothle/CommandError;

    const-string v5, "CriticalFaultError"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/bluetoothle/CommandError;->CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

    .line 21
    new-instance v5, Lcom/senseonics/bluetoothle/CommandError;

    const-string v3, "CRCErrorLogicalBlock"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/bluetoothle/CommandError;->CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

    .line 22
    new-instance v3, Lcom/senseonics/bluetoothle/CommandError;

    const-string v2, "AccessDenied"

    move-object/from16 v21, v5

    const/16 v5, 0x13

    invoke-direct {v3, v2, v7, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/bluetoothle/CommandError;->AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

    .line 23
    new-instance v2, Lcom/senseonics/bluetoothle/CommandError;

    const-string v7, "USBOnly"

    move-object/from16 v22, v3

    const/16 v3, 0x14

    invoke-direct {v2, v7, v5, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/bluetoothle/CommandError;->USBOnly:Lcom/senseonics/bluetoothle/CommandError;

    .line 24
    new-instance v7, Lcom/senseonics/bluetoothle/CommandError;

    const-string v5, "NoDataAvailable"

    move-object/from16 v23, v2

    const/16 v2, 0x15

    invoke-direct {v7, v5, v3, v2}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/bluetoothle/CommandError;->NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

    .line 25
    new-instance v5, Lcom/senseonics/bluetoothle/CommandError;

    const-string v3, "GlucoseBlinded"

    move-object/from16 v24, v7

    const/16 v7, 0x16

    invoke-direct {v5, v3, v2, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/bluetoothle/CommandError;->GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v3, 0x16

    new-array v3, v3, [Lcom/senseonics/bluetoothle/CommandError;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    aput-object v5, v3, v2

    .line 3
    sput-object v3, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/bluetoothle/CommandError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/CommandError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/CommandError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/CommandError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return v0
.end method
