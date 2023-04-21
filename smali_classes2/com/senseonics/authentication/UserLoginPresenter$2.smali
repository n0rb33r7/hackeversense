.class Lcom/senseonics/authentication/UserLoginPresenter$2;
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


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$2;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$2;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p1}, Lcom/senseonics/authentication/UserLoginPresenter;->-$$Nest$mcreateAccount(Lcom/senseonics/authentication/UserLoginPresenter;)V

    return-void
.end method
