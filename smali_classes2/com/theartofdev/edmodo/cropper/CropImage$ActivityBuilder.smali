.class public final Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityBuilder"
.end annotation


# instance fields
.field private final mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

.field private final mSource:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    .line 459
    new-instance p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/CropImage$1;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 464
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 472
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 473
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 474
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mSource:Landroid/net/Uri;

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 476
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public setActivityMenuIconColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAllowCounterRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    return-object p0
.end method

.method public setAllowFlipping(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowFlipping:Z

    return-object p0
.end method

.method public setAllowRotation(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    return-object p0
.end method

.method public setAspectRatio(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 656
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    .line 657
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setAutoZoomEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    return-object p0
.end method

.method public setBorderCornerColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    return-object p0
.end method

.method public setBorderCornerLength(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    return-object p0
.end method

.method public setBorderCornerOffset(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    return-object p0
.end method

.method public setBorderCornerThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    return-object p0
.end method

.method public setBorderLineColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    return-object p0
.end method

.method public setBorderLineThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    return-object p0
.end method

.method public setCropMenuCropButtonIcon(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    return-object p0
.end method

.method public setCropMenuCropButtonTitle(Ljava/lang/CharSequence;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public setFixAspectRatio(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public setFlipHorizontally(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    return-object p0
.end method

.method public setFlipVertically(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    return-object p0
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public setGuidelinesColor(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    return-object p0
.end method

.method public setGuidelinesThickness(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    return-object p0
.end method

.method public setInitialCropWindowPaddingRatio(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    return-object p0
.end method

.method public setInitialCropWindowRectangle(Landroid/graphics/Rect;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setInitialRotation(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    return-object p0
.end method

.method public setMaxCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 771
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    return-object p0
.end method

.method public setMaxZoom(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    return-object p0
.end method

.method public setMinCropResultSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 760
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    return-object p0
.end method

.method public setMinCropWindowSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 749
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    return-object p0
.end method

.method public setMultiTouchEnabled(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    return-object p0
.end method

.method public setNoOutputImage(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    return-object p0
.end method

.method public setOutputCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setOutputCompressQuality(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    return-object p0
.end method

.method public setOutputUri(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRequestedSize(II)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 826
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestedSize(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 836
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p2, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 837
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p3, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    return-object p0
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public setShowCropOverlay(Z)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    return-object p0
.end method

.method public setSnapRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    return-object p0
.end method

.method public setTouchRadius(F)Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    return-object p0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xcb

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1

    .line 516
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 537
    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 506
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityBuilder;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
