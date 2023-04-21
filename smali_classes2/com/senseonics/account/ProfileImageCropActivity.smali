.class public Lcom/senseonics/account/ProfileImageCropActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "ProfileImageCropActivity.java"

# interfaces
.implements Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;


# static fields
.field public static final IMAGE_URI:Ljava/lang/String; = "IMAGE_URI"


# instance fields
.field bitmapUtil:Lcom/senseonics/util/BitmapUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field cancelButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ca
    .end annotation
.end field

.field chooseButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

.field cropImageViewContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fb
    .end annotation
.end field

.field presenter:Lcom/senseonics/account/ProfileImageCropPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->presenter:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/account/ProfileImageCropPresenter;->attach(Lcom/senseonics/account/ProfileImageCropPresenter$SelectProfileImageView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->presenter:Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {v0}, Lcom/senseonics/account/ProfileImageCropPresenter;->detach()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/BitmapUtil;->deleteProfileImage(Landroid/content/Context;)V

    .line 73
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 42
    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 45
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {v0, p0, p1}, Lcom/senseonics/util/BitmapUtil;->getImageContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public prepareImage()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImageAsync()V

    return-void
.end method

.method public setup(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropActivity;->chooseButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropActivity;->cropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method
