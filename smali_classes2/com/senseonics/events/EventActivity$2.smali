.class Lcom/senseonics/events/EventActivity$2;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/EventActivity;

.field final synthetic val$date:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p2, p0, Lcom/senseonics/events/EventActivity$2;->val$date:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iput-object p1, v0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    .line 161
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$2;->val$date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, v0, Lcom/senseonics/events/EventActivity;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/senseonics/events/EventActivity$2;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-static {v0, v1}, Lcom/senseonics/util/TimeProvider;->formatDate(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
