.class Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;
.super Ljava/lang/Object;
.source "UserAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupBtnSyncOnClickEvent()V
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

    .line 137
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 141
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtUserName(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtUserName(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtUserName(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtPassword(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const v1, 0x7f110174

    .line 150
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    const v1, 0x7f110177

    .line 154
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    .line 157
    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 160
    new-instance p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtUserName(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    invoke-static {v3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->-$$Nest$fgettxtPassword(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v3}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;-><init>(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 162
    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 165
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;->this$0:Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    :goto_0
    return-void
.end method
