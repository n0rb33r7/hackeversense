.class Lcom/senseonics/authentication/UserLoginPresenter$7;
.super Ljava/lang/Object;
.source "UserLoginPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/authentication/UserLoginPresenter;

.field final synthetic val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 84
    new-instance v4, Lcom/senseonics/authentication/UserLoginPresenter$7$1;

    invoke-direct {v4, p0}, Lcom/senseonics/authentication/UserLoginPresenter$7$1;-><init>(Lcom/senseonics/authentication/UserLoginPresenter$7;)V

    .line 92
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const v1, 0x7f11015f

    const v2, 0x7f1100c8

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f1100ca

    const v7, 0x7f1100c9

    invoke-interface/range {v0 .. v7}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showDialogWithCustomStackedButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    return-void
.end method
