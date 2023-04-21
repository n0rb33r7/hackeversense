.class public Lcom/theartofdev/edmodo/cropper/CropImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;


# instance fields
.field private mCropImageUri:Landroid/net/Uri;

.field private mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private updateMenuItemIconColor(Landroid/view/Menu;II)V
    .locals 1

    .line 335
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 341
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 342
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AIC"

    const-string p3, "Failed to update menu item color"

    .line 344
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected cropImage()V
    .locals 9

    .line 263
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getOutputUri()Landroid/net/Uri;

    move-result-object v3

    .line 267
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual/range {v2 .. v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->saveCroppedImageAsync(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)V

    :goto_0
    return-void
.end method

.method protected getOutputUri()Landroid/net/Uri;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 288
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_1

    const-string v0, ".jpg"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_2

    const-string v0, ".png"

    goto :goto_0

    :cond_2
    const-string v0, ".webp"

    :goto_0
    const-string v1, "cropped"

    .line 294
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create temp file for output image"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 10

    .line 317
    new-instance v9, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 319
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 322
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 323
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 324
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 325
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 327
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 328
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string p2, "CROP_IMAGE_EXTRA_RESULT"

    .line 329
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 201
    invoke-static {p0, p3}, Lcom/theartofdev/edmodo/cropper/CropImage;->getPickImageResultUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    .line 205
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage;->isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 207
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 185
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 186
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/theartofdev/edmodo/cropper/R$layout;->crop_image_activity:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setContentView(I)V

    .line 60
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->cropImageView:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 62
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    if-nez p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage;->isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 78
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->isExplicitCameraPermissionRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.permission.CAMERA"

    .line 70
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 74
    :cond_3
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->startPickImageActivity(Landroid/app/Activity;)V

    .line 87
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 89
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    .line 90
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$string;->crop_image_activity_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$menu;->crop_image_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 117
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 118
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v0, :cond_1

    .line 120
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowFlipping:Z

    if-nez v0, :cond_2

    .line 124
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_flip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 128
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    if-eqz v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AIC"

    const-string v4, "Failed to read menu crop drawable"

    .line 138
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    if-eqz v2, :cond_5

    .line 142
    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 144
    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    .line 146
    sget v2, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_flip:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    if-eqz v0, :cond_5

    .line 148
    sget v0, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-direct {p0, p1, v0, v2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    :cond_5
    return v1
.end method

.method public onCropImageComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;)V
    .locals 1

    .line 256
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->getSampleSize()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_crop:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->cropImage()V

    return v2

    .line 160
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_left:I

    if-ne v0, v1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->rotateImage(I)V

    return v2

    .line 164
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_rotate_right:I

    if-ne v0, v1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->rotateImage(I)V

    return v2

    .line 168
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_flip_horizontally:I

    if-ne v0, v1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->flipImageHorizontally()V

    return v2

    .line 172
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/theartofdev/edmodo/cropper/R$id;->crop_image_menu_flip_vertically:I

    if-ne v0, v1, :cond_4

    .line 173
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->flipImageVertically()V

    return v2

    .line 176
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    return v2

    .line 180
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_1

    .line 222
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p3, p3, v0

    if-nez p3, :cond_0

    .line 226
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p3, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_0

    .line 228
    :cond_0
    sget p2, Lcom/theartofdev/edmodo/cropper/R$string;->crop_image_activity_no_permissions:I

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 229
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResultCancel()V

    :cond_1
    :goto_0
    const/16 p2, 0x7db

    if-ne p1, p2, :cond_2

    .line 236
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->startPickImageActivity(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onSetImageUriComplete(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    if-nez p3, :cond_1

    .line 243
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget-object p2, p2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_2

    .line 247
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mOptions:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iget p2, p2, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setRotatedDegrees(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 250
    invoke-virtual {p0, p1, p3, p2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 102
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 108
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    .line 109
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$OnCropImageCompleteListener;)V

    return-void
.end method

.method protected rotateImage(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->mCropImageView:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->rotateImage(I)V

    return-void
.end method

.method protected setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xcc

    .line 305
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 306
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    return-void
.end method

.method protected setResultCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->finish()V

    return-void
.end method
