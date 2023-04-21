.class Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$1;
.super Ljava/lang/Object;
.source "SensorLinkWriteCalDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step3_checkCrc_Retry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$1;->this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$1;->this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->-$$Nest$mstep3_checkCrc(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V

    return-void
.end method
