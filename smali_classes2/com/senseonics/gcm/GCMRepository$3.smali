.class Lcom/senseonics/gcm/GCMRepository$3;
.super Ljava/lang/Object;
.source "GCMRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gcm/GCMRepository;->postGCMDataMessage(Lcom/senseonics/gcm/GCMDataMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/gcm/GCMResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gcm/GCMRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/gcm/GCMRepository;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/senseonics/gcm/GCMRepository$3;->this$0:Lcom/senseonics/gcm/GCMRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/gcm/GCMResponse;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/senseonics/gcm/GCMResponse;

    invoke-virtual {p0, p1}, Lcom/senseonics/gcm/GCMRepository$3;->call(Lcom/senseonics/gcm/GCMResponse;)V

    return-void
.end method