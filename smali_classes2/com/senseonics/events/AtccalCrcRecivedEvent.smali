.class public Lcom/senseonics/events/AtccalCrcRecivedEvent;
.super Ljava/lang/Object;
.source "AtccalCrcRecivedEvent.java"


# instance fields
.field private crc:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/senseonics/events/AtccalCrcRecivedEvent;->crc:I

    return-void
.end method


# virtual methods
.method public getCrc()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/senseonics/events/AtccalCrcRecivedEvent;->crc:I

    return v0
.end method
