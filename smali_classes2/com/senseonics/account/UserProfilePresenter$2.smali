.class Lcom/senseonics/account/UserProfilePresenter$2;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;

.field final synthetic val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$2;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    iput-object p2, p0, Lcom/senseonics/account/UserProfilePresenter$2;->val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$2;->val$view:Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$2;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {v0}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$mgetDeleteImageListener(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->showProfileImageSelector(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    return-void
.end method
