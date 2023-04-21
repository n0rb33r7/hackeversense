.class public Lcom/senseonics/calReminder/CalReminderReceivedEvent;
.super Ljava/lang/Object;
.source "CalReminderReceivedEvent.java"


# instance fields
.field private requestCode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/senseonics/calReminder/CalReminderReceivedEvent;->requestCode:I

    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/senseonics/calReminder/CalReminderReceivedEvent;->requestCode:I

    return v0
.end method
