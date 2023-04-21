.class public Lcom/senseonics/calReminder/CalReminderPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "CalReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private manager:Lcom/senseonics/calReminder/CalReminderManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/senseonics/calReminder/CalReminderPresenter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateScheduleAndRefreshReminder1View(Lcom/senseonics/calReminder/CalReminderPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->updateScheduleAndRefreshReminder1View()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScheduleAndRefreshReminder2View(Lcom/senseonics/calReminder/CalReminderPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->updateScheduleAndRefreshReminder2View()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/calReminder/CalReminderManager;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 35
    iput-object p3, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/calReminder/CalReminderPresenter;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/calReminder/CalReminderPresenter;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private getReminder1CheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 94
    new-instance v0, Lcom/senseonics/calReminder/CalReminderPresenter$1;

    invoke-direct {v0, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$1;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-object v0
.end method

.method private getReminder1TimeLayoutClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 116
    new-instance v0, Lcom/senseonics/calReminder/CalReminderPresenter$3;

    invoke-direct {v0, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$3;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-object v0
.end method

.method private getReminder2CheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 105
    new-instance v0, Lcom/senseonics/calReminder/CalReminderPresenter$2;

    invoke-direct {v0, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$2;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-object v0
.end method

.method private getReminder2TimeLayoutClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 140
    new-instance v0, Lcom/senseonics/calReminder/CalReminderPresenter$4;

    invoke-direct {v0, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$4;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-object v0
.end method

.method private getTimeText(II)Ljava/lang/String;
    .locals 2

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 164
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 165
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 166
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private refreshReminder1View()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;

    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 70
    invoke-virtual {v1}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Enabled()Z

    move-result v1

    .line 71
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder1CheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 72
    invoke-virtual {v3}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Hour()I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    invoke-virtual {v4}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Minute()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/senseonics/calReminder/CalReminderPresenter;->getTimeText(II)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;->refreshReminder1View(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method private refreshReminder2View()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;

    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 77
    invoke-virtual {v1}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Enabled()Z

    move-result v1

    .line 78
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder2CheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 79
    invoke-virtual {v3}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Hour()I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    invoke-virtual {v4}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Minute()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/senseonics/calReminder/CalReminderPresenter;->getTimeText(II)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;->refreshReminder2View(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method private refreshView()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshReminder1View()V

    .line 65
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshReminder2View()V

    return-void
.end method

.method private updateScheduleAndRefreshReminder1View()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    invoke-virtual {v0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    .line 84
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshReminder1View()V

    return-void
.end method

.method private updateScheduleAndRefreshReminder2View()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->manager:Lcom/senseonics/calReminder/CalReminderManager;

    invoke-virtual {v0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    .line 89
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshReminder2View()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder1TimeLayoutClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder2TimeLayoutClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 43
    invoke-interface {p1, v0, v1}, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;->setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshView()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;

    invoke-virtual {p0, p1}, Lcom/senseonics/calReminder/CalReminderPresenter;->attach(Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 53
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->refreshView()V

    return-void
.end method
