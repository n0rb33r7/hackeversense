.class public Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InvitePeerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    .line 28
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902a0

    const-string v2, "field \'nicknameEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->nicknameEditText:Landroid/widget/EditText;

    .line 29
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09015b

    const-string v2, "field \'emailEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    .line 30
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f0900c0

    const-string v2, "field \'btnAddEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->btnAddEmail:Landroid/widget/ImageButton;

    .line 31
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090332

    const-string v2, "field \'sendButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerActivity_ViewBinding;->target:Lcom/senseonics/mycircle/invite/InvitePeerActivity;

    .line 41
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->nicknameEditText:Landroid/widget/EditText;

    .line 42
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->emailEditText:Landroid/widget/EditText;

    .line 43
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->btnAddEmail:Landroid/widget/ImageButton;

    .line 44
    iput-object v1, v0, Lcom/senseonics/mycircle/invite/InvitePeerActivity;->sendButton:Landroid/widget/Button;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
