.class Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;
.super Ljava/util/TimerTask;
.source "SensorLinkWriteCalDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerExpiredTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;


# direct methods
.method private constructor <init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;->this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;-><init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;->this$0:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->-$$Nest$mcomplete(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;Ljava/lang/Boolean;)V

    return-void
.end method
