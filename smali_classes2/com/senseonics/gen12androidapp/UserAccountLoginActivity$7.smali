.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayLoginSuccessDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 223
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p1, 0x10008000

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
