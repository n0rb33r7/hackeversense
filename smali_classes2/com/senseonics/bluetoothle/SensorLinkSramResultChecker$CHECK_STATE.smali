.class final enum Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
.super Ljava/lang/Enum;
.source "SensorLinkSramResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CHECK_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

.field public static final enum SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 21
    new-instance v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 22
    new-instance v3, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 23
    new-instance v5, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 19
    sput-object v7, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
    .locals 1

    .line 19
    const-class v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
    .locals 1

    .line 19
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-object v0
.end method
