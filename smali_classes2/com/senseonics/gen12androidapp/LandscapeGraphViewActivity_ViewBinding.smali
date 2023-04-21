.class public Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LandscapeGraphViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903cf

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f090355

    const-string v2, "field \'spinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    .line 31
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f09033a

    const-string v2, "field \'shareImageButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    .line 32
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0902e6

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 33
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901a1

    const-string v2, "field \'layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    .line 43
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    .line 45
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    .line 46
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
