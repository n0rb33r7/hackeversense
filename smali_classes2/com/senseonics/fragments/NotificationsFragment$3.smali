.class Lcom/senseonics/fragments/NotificationsFragment$3;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 5

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetnotificationsList(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetnotificationsList(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Notification;

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 177
    invoke-virtual {v1}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 181
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetdate(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->formatDateForToolbar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$3;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetnotificationsList(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
