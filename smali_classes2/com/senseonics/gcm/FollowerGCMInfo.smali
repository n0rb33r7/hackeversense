.class public Lcom/senseonics/gcm/FollowerGCMInfo;
.super Ljava/lang/Object;
.source "FollowerGCMInfo.java"


# instance fields
.field private deviceGCMRegCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceGCMRegCode"
    .end annotation
.end field

.field private deviceSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceSerialNumber"
    .end annotation
.end field

.field private platformID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PlatformID"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field private userID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->userID:Ljava/lang/Integer;

    .line 19
    iput-object p2, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceSerialNumber:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceGCMRegCode:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->status:Ljava/lang/Integer;

    .line 22
    iput-object p5, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->platformID:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDeviceGCMRegCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceGCMRegCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformID()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->platformID:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserID()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->userID:Ljava/lang/Integer;

    return-object v0
.end method
