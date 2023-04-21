.class public Lcom/senseonics/events/TestCommandResponseReceivedEvent;
.super Ljava/lang/Object;
.source "TestCommandResponseReceivedEvent.java"


# instance fields
.field private data:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/senseonics/events/TestCommandResponseReceivedEvent;->data:[I

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/senseonics/events/TestCommandResponseReceivedEvent;->data:[I

    return-object v0
.end method
