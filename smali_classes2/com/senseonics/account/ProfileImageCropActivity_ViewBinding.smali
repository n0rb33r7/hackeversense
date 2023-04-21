.class public Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileImageCropActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/account/ProfileImageCropActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/account/ProfileImageCropActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/senseonics/account/ProfileImageCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;-><init>(Lcom/senseonics/account/ProfileImageCropActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/account/ProfileImageCropActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    .line 28
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    const v1, 0x7f0900fa

    const-string v2, "field \'cropImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 29
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900fb

    const-string v2, "field \'cropImageViewContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageViewContainer:Landroid/widget/LinearLayout;

    .line 30
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900ca

    const-string v2, "field \'cancelButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    .line 31
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900dd

    const-string v2, "field \'chooseButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/senseonics/account/ProfileImageCropActivity_ViewBinding;->target:Lcom/senseonics/account/ProfileImageCropActivity;

    .line 41
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 42
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageViewContainer:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    .line 44
    iput-object v1, v0, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
