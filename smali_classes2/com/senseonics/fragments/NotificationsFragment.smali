.class public Lcom/senseonics/fragments/NotificationsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "NotificationsFragment.java"


# static fields
.field public static final GROUP_1:I = 0x16

.field public static final GROUP_2:I = 0x21

.field public static final GROUP_3:I = 0x2c

.field public static final GROUP_4:I = 0x37

.field public static final GROUP_5:I = 0x42


# instance fields
.field protected adapter:Lcom/senseonics/util/NotificationsAdapter;

.field private batteryAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private batteryNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected currentSelectedDate:Ljava/util/Calendar;

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private date:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected list1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected list5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field protected maxDate:Ljava/util/Calendar;

.field protected minDate:Ljava/util/Calendar;

.field protected noStatisticsLayout:Landroid/widget/RelativeLayout;

.field private notificationsList:Landroid/widget/ListView;

.field protected selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabView:Lcom/senseonics/util/TabView;

.field private yellowAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdate(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsList(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/fragments/NotificationsFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addSelection()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_4
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_5
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 359
    :cond_6
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    :cond_7
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 362
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 365
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 368
    :cond_9
    :goto_0
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$11;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$11;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 386
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 388
    :cond_a
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public checkIfSelectionsIsEmpty()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/senseonics/util/NotificationsAdapter;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    return-object v0
.end method

.method protected getAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$12;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$12;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 420
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method protected getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 431
    iget-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 432
    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 434
    iget-object v2, v0, Lcom/senseonics/fragments/NotificationsFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 436
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    move-object/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v16, v1

    .line 434
    invoke-virtual/range {v2 .. v16}, Lcom/senseonics/db/DatabaseManager;->getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 451
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 115
    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/fragments/NotificationsFragment$1;-><init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/NotificationsAdapter;)V

    return-object v0
.end method

.method public initData()V
    .locals 7

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->list1:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 299
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list2:Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 307
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list3:Ljava/util/ArrayList;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list4:Ljava/util/ArrayList;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->list5:Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 317
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v1, v0

    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->yellowAlertList:Ljava/util/ArrayList;

    new-array v0, v5, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 327
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryAlertList:Ljava/util/ArrayList;

    new-array v0, v4, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 333
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/senseonics/fragments/NotificationsFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->batteryNotificationList:Ljava/util/ArrayList;

    .line 338
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->addSelection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    .line 339
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->minDate:Ljava/util/Calendar;

    .line 130
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->maxDate:Ljava/util/Calendar;

    const v0, 0x7f0902a3

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090384

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/TabView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const v0, 0x7f0902b5

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    .line 137
    new-instance v0, Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    invoke-virtual {v2}, Lcom/senseonics/util/TabView;->getDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/NotificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    .line 138
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/NotificationsFragment;->getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/NotificationsFragment$2;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    .line 163
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    .line 165
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    const v0, 0x7f0903a7

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    .line 168
    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$3;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    .line 188
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/senseonics/util/dialogs/DateDialogManager;->onDateSelected(Ljava/util/Calendar;)V

    const v1, 0x7f0900b9

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 191
    new-instance v1, Lcom/senseonics/fragments/NotificationsFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/fragments/NotificationsFragment$4;-><init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$5;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->allTabClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$6;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab1ClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$7;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$7;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab2ClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$8;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$8;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab3ClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$9;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$9;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab4ClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragment$10;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragment$10;-><init>(Lcom/senseonics/fragments/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TabView;->tab5ClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    invoke-virtual {p1}, Lcom/senseonics/util/TabView;->performClick()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c007e

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V

    .line 78
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const p3, 0x7f090391

    invoke-virtual {p2, p3}, Lcom/senseonics/util/TabView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/high16 p3, 0x41200000    # 10.0f

    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 80
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment;->tabView:Lcom/senseonics/util/TabView;

    const p3, 0x7f090379

    invoke-virtual {p2, p3}, Lcom/senseonics/util/TabView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    .line 81
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 0

    .line 464
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 0

    .line 456
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SyncingProgressUpdateEvent;)V
    .locals 0

    .line 472
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 111
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->initData()V

    .line 96
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateForToolbar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment;->notificationsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_1
    return-void
.end method
