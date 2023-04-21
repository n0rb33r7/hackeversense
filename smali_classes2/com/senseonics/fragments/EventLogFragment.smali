.class public Lcom/senseonics/fragments/EventLogFragment;
.super Lcom/senseonics/fragments/NotificationsFragment;
.source "EventLogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/senseonics/fragments/NotificationsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addSelection()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->selections:Ljava/util/ArrayList;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_5
    :goto_0
    new-instance v1, Lcom/senseonics/fragments/EventLogFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/EventLogFragment$2;-><init>(Lcom/senseonics/fragments/EventLogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 91
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_6
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
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

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v1, Lcom/senseonics/fragments/EventLogFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/EventLogFragment$3;-><init>(Lcom/senseonics/fragments/EventLogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/EventLogFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 45
    new-instance v0, Lcom/senseonics/fragments/EventLogFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/fragments/EventLogFragment$1;-><init>(Lcom/senseonics/fragments/EventLogFragment;Lcom/senseonics/util/NotificationsAdapter;)V

    return-object v0
.end method

.method public initData()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 136
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list1:Ljava/util/ArrayList;

    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 138
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list2:Ljava/util/ArrayList;

    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 140
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list3:Ljava/util/ArrayList;

    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 142
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list4:Ljava/util/ArrayList;

    new-array v0, v3, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 144
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/senseonics/fragments/EventLogFragment;->getList(Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->list5:Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->addSelection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    .line 147
    iget-object v0, p0, Lcom/senseonics/fragments/EventLogFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/NotificationsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c007a

    const/4 p3, 0x0

    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/EventLogFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/senseonics/fragments/NotificationsFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/senseonics/fragments/EventLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method
