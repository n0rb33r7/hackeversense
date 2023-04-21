.class Lcom/senseonics/account/UserProfilePresenter$6;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->getDeleteImageListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->access$000(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$fgetbitmapUtil(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/util/BitmapUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/util/BitmapUtil;->convertBitmapToPngBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v1}, Lcom/senseonics/account/UserProfilePresenter;->access$100(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v1}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->showProgress()V

    .line 127
    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$fgetrepository(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserProfileRepository;

    move-result-object v1

    new-instance v2, Lcom/senseonics/account/UserProfilePresenter$6$1;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/account/UserProfilePresenter$6$1;-><init>(Lcom/senseonics/account/UserProfilePresenter$6;Ljava/lang/String;)V

    new-instance v3, Lcom/senseonics/account/UserProfilePresenter$6$2;

    invoke-direct {v3, p0}, Lcom/senseonics/account/UserProfilePresenter$6$2;-><init>(Lcom/senseonics/account/UserProfilePresenter$6;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/senseonics/account/UserProfileRepository;->uploadProfileImage(Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method
