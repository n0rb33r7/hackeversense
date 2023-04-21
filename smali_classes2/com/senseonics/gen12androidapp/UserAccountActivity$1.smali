.class Lcom/senseonics/gen12androidapp/UserAccountActivity$1;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    if-eqz p2, :cond_2

    .line 67
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgetswitchAutoSync(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 69
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const p2, 0x7f11035b

    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f1102f9

    .line 70
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1, p2, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const/4 v0, 0x0

    .line 73
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v2, 0x7f110031

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f110030

    invoke-virtual {p2, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 72
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$1;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgetswitchAutoSync(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    const-string v0, "AccountEnableAutoSync"

    invoke-static {p1, v0, p2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
