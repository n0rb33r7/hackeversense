.class public Lcom/senseonics/events/WriteNByteResponseReceivedEvent;
.super Ljava/lang/Object;
.source "WriteNByteResponseReceivedEvent.java"


# instance fields
.field private address:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/senseonics/events/WriteNByteResponseReceivedEvent;->address:I

    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/senseonics/events/WriteNByteResponseReceivedEvent;->address:I

    return v0
.end method
