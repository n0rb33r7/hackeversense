.class public Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;
.super Ljava/lang/Object;
.source "BatteryMonitorThresholdDto.java"


# instance fields
.field private tempThreshModeChange:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TempThreshModeChange"
    .end annotation
.end field

.field private tempThreshWarn:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TempThreshWarn"
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->userId:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->tempThreshWarn:Ljava/lang/Integer;

    .line 16
    iput-object p3, p0, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->tempThreshModeChange:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getTempThreshModeChange()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->tempThreshModeChange:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTempThreshWarn()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->tempThreshWarn:Ljava/lang/Integer;

    return-object v0
.end method
