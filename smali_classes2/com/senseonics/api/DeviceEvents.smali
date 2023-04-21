.class public Lcom/senseonics/api/DeviceEvents;
.super Ljava/lang/Object;
.source "DeviceEvents.java"


# instance fields
.field private alertBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alertBytes"
    .end annotation
.end field

.field private algorithmVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "algorithmVersion"
    .end annotation
.end field

.field private deviceID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceID"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceName"
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field private mgBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mgBytes"
    .end annotation
.end field

.field private offsetBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offsetBytes"
    .end annotation
.end field

.field private patientBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "patientBytes"
    .end annotation
.end field

.field private sgBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sgBytes"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/api/DeviceEvents;->deviceType:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/senseonics/api/DeviceEvents;->deviceName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/senseonics/api/DeviceEvents;->deviceID:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/senseonics/api/DeviceEvents;->offsetBytes:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/senseonics/api/DeviceEvents;->sgBytes:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/senseonics/api/DeviceEvents;->mgBytes:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/senseonics/api/DeviceEvents;->patientBytes:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/senseonics/api/DeviceEvents;->alertBytes:Ljava/lang/String;

    const-string p1, "1"

    .line 35
    iput-object p1, p0, Lcom/senseonics/api/DeviceEvents;->algorithmVersion:Ljava/lang/String;

    return-void
.end method
