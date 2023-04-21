.class final enum Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
.super Ljava/lang/Enum;
.source "SensorLinkWriteCalDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WRITE_DATA_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

.field public static final enum SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 37
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 38
    new-instance v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v3, "STEP_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 39
    new-instance v3, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v5, "STEP_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 40
    new-instance v5, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v7, "STEP_3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 41
    new-instance v7, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v9, "SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 42
    new-instance v9, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const-string v11, "FAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 36
    sput-object v11, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
    .locals 1

    .line 36
    const-class v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
    .locals 1

    .line 36
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-object v0
.end method
