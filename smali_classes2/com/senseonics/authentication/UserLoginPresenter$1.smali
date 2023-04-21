.class Lcom/senseonics/authentication/UserLoginPresenter$1;
.super Lcom/senseonics/gen12androidapp/AfterTextChangedTextWatcher;
.source "UserLoginPresenter.java"


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

    .line 47
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/AfterTextChangedTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$1;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {p1}, Lcom/senseonics/authentication/UserLoginPresenter;->-$$Nest$mrefreshLoginButton(Lcom/senseonics/authentication/UserLoginPresenter;)V

    return-void
.end method
