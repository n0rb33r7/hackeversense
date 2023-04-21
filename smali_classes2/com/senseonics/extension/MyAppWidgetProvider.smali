.class public Lcom/senseonics/extension/MyAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MyAppWidgetProvider.java"


# instance fields
.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private postUpdate(Landroid/content/Context;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/senseonics/extension/MyAppWidgetProvider;->eventBus:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->inject(Ljava/lang/Object;)V

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/senseonics/extension/MyAppWidgetProvider;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/UpdateExtensionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/UpdateExtensionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 21
    invoke-direct {p0, p1}, Lcom/senseonics/extension/MyAppWidgetProvider;->postUpdate(Landroid/content/Context;)V

    return-void
.end method
