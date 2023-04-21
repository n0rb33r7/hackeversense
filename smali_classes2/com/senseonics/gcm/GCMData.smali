.class public Lcom/senseonics/gcm/GCMData;
.super Ljava/lang/Object;
.source "GCMData.java"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/senseonics/gcm/GCMData;->title:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/senseonics/gcm/GCMData;->body:Ljava/lang/String;

    return-void
.end method
