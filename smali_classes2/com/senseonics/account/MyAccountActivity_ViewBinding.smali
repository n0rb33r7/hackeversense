.class public Lcom/senseonics/account/MyAccountActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyAccountActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/account/MyAccountActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/account/MyAccountActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/senseonics/account/MyAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/account/MyAccountActivity_ViewBinding;-><init>(Lcom/senseonics/account/MyAccountActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/account/MyAccountActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/account/MyAccountActivity_ViewBinding;->target:Lcom/senseonics/account/MyAccountActivity;

    .line 29
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09040c

    const-string v2, "field \'user_image_layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/account/MyAccountActivity;->user_image_layout:Landroid/widget/LinearLayout;

    .line 30
    const-class v0, Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f09040a

    const-string v2, "field \'userImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/senseonics/account/MyAccountActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090409

    const-string v2, "field \'user_display_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/account/MyAccountActivity;->user_display_name:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090161

    const-string v2, "field \'email_label\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/account/MyAccountActivity;->email_label:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090160

    const-string v2, "field \'email\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/account/MyAccountActivity;->email:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090211

    const-string v2, "field \'logoutButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/account/MyAccountActivity;->logoutButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/senseonics/account/MyAccountActivity_ViewBinding;->target:Lcom/senseonics/account/MyAccountActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/senseonics/account/MyAccountActivity_ViewBinding;->target:Lcom/senseonics/account/MyAccountActivity;

    .line 44
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->user_image_layout:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 46
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->user_display_name:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->email_label:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->email:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/senseonics/account/MyAccountActivity;->logoutButton:Landroid/widget/Button;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
