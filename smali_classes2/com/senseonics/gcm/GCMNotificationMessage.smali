.class public Lcom/senseonics/gcm/GCMNotificationMessage;
.super Ljava/lang/Object;
.source "GCMNotificationMessage.java"


# instance fields
.field private notification:Lcom/senseonics/gcm/GCMNotification;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/senseonics/gcm/GCMNotification;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/senseonics/gcm/GCMNotificationMessage;->to:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/senseonics/gcm/GCMNotificationMessage;->notification:Lcom/senseonics/gcm/GCMNotification;

    return-void
.end method
