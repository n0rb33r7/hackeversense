.class final enum Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND$66;
.super Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;
.source "CommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;-><init>(Ljava/lang/String;ILcom/senseonics/bluetoothle/CommandProcessor$COMMAND-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/senseonics/bluetoothle/CommandProcessor$COMMAND$66-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND$66;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/os/Bundle;)Lcom/senseonics/bluetoothle/Request;
    .locals 0

    .line 400
    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    return-object p1
.end method
