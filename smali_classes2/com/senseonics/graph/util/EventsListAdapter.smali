.class public Lcom/senseonics/graph/util/EventsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eventPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 63
    iget-object p3, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/senseonics/graph/util/EventsListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0070

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;-><init>(Lcom/senseonics/graph/util/EventsListAdapter;Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder-IA;)V

    const v0, 0x7f0901cb

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0903ca

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f090173

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/events/EventPoint;

    .line 79
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1}, Lcom/senseonics/graph/util/GraphUtils;->getBitmapForEvent(Lcom/senseonics/events/EventPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_1
    iget-object v0, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v0, Lcom/senseonics/graph/util/EventsListAdapter$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 109
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 103
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_7

    .line 104
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 96
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_7

    .line 98
    :cond_4
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 90
    :cond_5
    iget-object p3, p3, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->eventTypeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/senseonics/events/AlertEventPoint;

    .line 92
    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/senseonics/graph/util/EventsListAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_1
    return-object p2
.end method

.method public setEvent(Lcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter;->eventPoints:Ljava/util/ArrayList;

    return-void
.end method
