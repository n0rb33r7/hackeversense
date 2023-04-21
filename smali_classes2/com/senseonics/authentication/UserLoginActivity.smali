.class public Lcom/senseonics/authentication/UserLoginActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "UserLoginActivity.java"

# interfaces
.implements Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;


# instance fields
.field createAccountHyperlink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field declineAccountHyperLink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090113
    .end annotation
.end field

.field deleteAccountHyperlink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090116
    .end annotation
.end field

.field forgotPasswordHyperlink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field loginButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090210
    .end annotation
.end field

.field password:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field presenter:Lcom/senseonics/authentication/UserLoginPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field username:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->presenter:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->presenter:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->detach()V

    return-void
.end method

.method public getProvidedPassword()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvidedUsername()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadNextPage()V
    .locals 3

    .line 66
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    .line 67
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v0, 0x10008000

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v1}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Lcom/senseonics/authentication/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    .line 55
    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f080095

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v0}, Lcom/senseonics/authentication/UserLoginActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 60
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "WasPaused"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/authentication/UserLoginActivity;->wasPaused:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 183
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget-boolean v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->wasPaused:Z

    const-string v1, "WasPaused"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public openCreateAccount()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AccountConstants;->OpenCreateAccountURL(Landroid/content/Context;)V

    return-void
.end method

.method public openForgotPassword()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AccountConstants;->OpenForgotPasswordURL(Landroid/content/Context;)V

    return-void
.end method

.method public setLoginButtonEnabled(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setUsernameText(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 117
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    new-instance v1, Lcom/senseonics/authentication/UserLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/authentication/UserLoginActivity$1;-><init>(Lcom/senseonics/authentication/UserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {v0, p6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object p6, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p6, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    const/4 p6, 0x2

    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 130
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    new-instance p6, Lcom/senseonics/authentication/UserLoginActivity$2;

    invoke-direct {p6, p0}, Lcom/senseonics/authentication/UserLoginActivity$2;-><init>(Lcom/senseonics/authentication/UserLoginActivity;)V

    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p6

    or-int/lit8 p6, p6, 0x8

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 141
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p6

    or-int/lit8 p6, p6, 0x8

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 142
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->deleteAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p6

    or-int/lit8 p6, p6, 0x8

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 143
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->declineAccountHyperLink:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p6

    or-int/lit8 p6, p6, 0x8

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 145
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->deleteAccountHyperlink:Landroid/widget/TextView;

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->deleteAccountHyperlink:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->declineAccountHyperLink:Landroid/widget/TextView;

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->declineAccountHyperLink:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {p2, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-boolean p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->wasPaused:Z

    if-eqz p2, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object p2, p0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
