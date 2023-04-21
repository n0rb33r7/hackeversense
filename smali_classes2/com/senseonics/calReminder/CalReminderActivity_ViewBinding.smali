.class public Lcom/senseonics/calReminder/CalReminderActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CalReminderActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/calReminder/CalReminderActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/calReminder/CalReminderActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/senseonics/calReminder/CalReminderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/calReminder/CalReminderActivity_ViewBinding;-><init>(Lcom/senseonics/calReminder/CalReminderActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/calReminder/CalReminderActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderActivity_ViewBinding;->target:Lcom/senseonics/calReminder/CalReminderActivity;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902fc

    const-string v2, "field \'reminder1TextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TextView:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0902fb

    const-string v2, "field \'reminder1Switch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1Switch:Landroid/widget/Switch;

    .line 30
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902fd

    const-string v2, "field \'reminder1TimeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeLayout:Landroid/widget/RelativeLayout;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902fe

    const-string v2, "field \'reminder1TimeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeTextView:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090300

    const-string v2, "field \'reminder2TextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TextView:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0902ff

    const-string v2, "field \'reminder2Switch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2Switch:Landroid/widget/Switch;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090301

    const-string v2, "field \'reminder2TimeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeLayout:Landroid/widget/RelativeLayout;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090302

    const-string v2, "field \'reminder2TimeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderActivity_ViewBinding;->target:Lcom/senseonics/calReminder/CalReminderActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/senseonics/calReminder/CalReminderActivity_ViewBinding;->target:Lcom/senseonics/calReminder/CalReminderActivity;

    .line 45
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TextView:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1Switch:Landroid/widget/Switch;

    .line 47
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeLayout:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2Switch:Landroid/widget/Switch;

    .line 51
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeLayout:Landroid/widget/RelativeLayout;

    .line 52
    iput-object v1, v0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeTextView:Landroid/widget/TextView;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
