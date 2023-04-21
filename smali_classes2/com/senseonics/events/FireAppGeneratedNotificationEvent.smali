.class public Lcom/senseonics/events/FireAppGeneratedNotificationEvent;
.super Ljava/lang/Object;
.source "FireAppGeneratedNotificationEvent.java"


# instance fields
.field private messageCode:Lcom/senseonics/util/TransmitterMessageCode;

.field private notes:Ljava/lang/String;

.field private show:Z


# direct methods
.method public constructor <init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->messageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 12
    iput-object p2, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->notes:Ljava/lang/String;

    .line 13
    iput-boolean p3, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->show:Z

    return-void
.end method


# virtual methods
.method public getMessageCode()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->messageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public shouldShow()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->show:Z

    return v0
.end method
