.class public Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyCircleActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/mycircle/home/MyCircleActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/home/MyCircleActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/senseonics/mycircle/home/MyCircleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;-><init>(Lcom/senseonics/mycircle/home/MyCircleActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/mycircle/home/MyCircleActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090241

    const-string v2, "field \'membersList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901e0

    const-string v2, "field \'inviteList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090376

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 32
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901f4

    const-string v2, "field \'inviteButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090240

    const-string v2, "field \'membersLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersLabel:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901df

    const-string v2, "field \'invitationsSentLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->invitationsSentLabel:Landroid/widget/TextView;

    const v0, 0x7f090242

    const-string v1, "field \'membersDivider\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersDivider:Landroid/view/View;

    const v0, 0x7f0901e1

    const-string v1, "field \'inviteDivider\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleActivity_ViewBinding;->target:Lcom/senseonics/mycircle/home/MyCircleActivity;

    .line 46
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersList:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteList:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 49
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteButton:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersLabel:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->invitationsSentLabel:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->membersDivider:Landroid/view/View;

    .line 53
    iput-object v1, v0, Lcom/senseonics/mycircle/home/MyCircleActivity;->inviteDivider:Landroid/view/View;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
