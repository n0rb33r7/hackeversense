.class public Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;-><init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090409

    const-string v2, "field \'user_display_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->user_display_name:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a1

    const-string v2, "field \'nickname_label\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nickname_label:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090161

    const-string v2, "field \'email_label\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email_label:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09033c

    const-string v2, "field \'shareMyData_label\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData_label:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901df

    const-string v2, "field \'invitations_sent_label\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitations_sent_label:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a0

    const-string v2, "field \'nicknameValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nicknameValue:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090160

    const-string v2, "field \'email\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901de

    const-string v2, "field \'invitationDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitationDate:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f09033b

    const-string v2, "field \'shareMyData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    .line 39
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09040b

    const-string v2, "field \'image_name_container\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->image_name_container:Landroid/widget/RelativeLayout;

    .line 40
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090378

    const-string v2, "field \'switchContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->switchContainer:Landroid/widget/RelativeLayout;

    .line 41
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090303

    const-string v2, "field \'removeButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    .line 42
    const-class v0, Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f09040a

    const-string v2, "field \'userImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p2, p1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity_ViewBinding;->target:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    .line 52
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->user_display_name:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nickname_label:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email_label:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData_label:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitations_sent_label:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nicknameValue:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitationDate:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    .line 61
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->image_name_container:Landroid/widget/RelativeLayout;

    .line 62
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->switchContainer:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    .line 64
    iput-object v1, v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
