.class public Lcom/senseonics/gcm/GCMDataMessage;
.super Ljava/lang/Object;
.source "GCMDataMessage.java"


# instance fields
.field private data:Lcom/senseonics/gcm/GCMData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private priority:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMData;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/senseonics/gcm/GCMDataMessage;->to:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/senseonics/gcm/GCMDataMessage;->priority:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/senseonics/gcm/GCMDataMessage;->data:Lcom/senseonics/gcm/GCMData;

    return-void
.end method
