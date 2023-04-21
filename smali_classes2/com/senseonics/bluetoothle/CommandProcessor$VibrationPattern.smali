.class public final enum Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
.super Ljava/lang/Enum;
.source "CommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/CommandProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseHighAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum GlucoseOutLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum LongAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum MixedVibAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum NoAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

.field public static final enum ShortAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 31
    new-instance v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v1, "ShortAlert"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->ShortAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 32
    new-instance v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v3, "LongAlert"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->LongAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 33
    new-instance v3, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v5, "GlucoseHighAlarm"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseHighAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 34
    new-instance v5, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v7, "GlucoseLowAlarm"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 35
    new-instance v7, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v9, "GlucoseOutLowAlarm"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->GlucoseOutLowAlarm:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 36
    new-instance v9, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v11, "MixedVibAlert"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->MixedVibAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    .line 37
    new-instance v11, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const-string v13, "NoAlert"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->NoAlert:Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 30
    sput-object v13, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->$VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
    .locals 1

    .line 30
    const-class v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
    .locals 1

    .line 30
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->$VALUES:[Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->id:I

    return v0
.end method
