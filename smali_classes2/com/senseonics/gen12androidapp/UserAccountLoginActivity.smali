.class public Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;
.super Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.source "UserAccountLoginActivity.java"


# instance fields
.field private Tag:Ljava/lang/String;

.field private tvCreateAccount:Landroid/widget/TextView;

.field private tvForgotPassword:Landroid/widget/TextView;

.field private tvUserNameOrEmail:Landroid/widget/TextView;

.field private txtPassword:Landroid/widget/EditText;

.field private txtUserName:Landroid/widget/EditText;

.field private txtUserNameCover:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgettxtPassword(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtUserName(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettxtUserNameCover(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;-><init>()V

    const-string v0, "DMS(UALoginActivity)"

    .line 25
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method private displayLoginSuccessDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    :cond_0
    new-instance v0, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance p2, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;

    invoke-direct {p2, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$7;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {p1, p0, v0, p2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    .line 239
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private findViewsForAccountInfo()V
    .locals 1

    const v0, 0x7f09016c

    .line 109
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    const v0, 0x7f09016b

    .line 110
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    const v0, 0x7f09016a

    .line 111
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    const v0, 0x7f0903e6

    .line 112
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    const v0, 0x7f0903ec

    .line 113
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    const v0, 0x7f0903f1

    .line 114
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvUserNameOrEmail:Landroid/widget/TextView;

    return-void
.end method

.method private setupTvCreateAccountAndTvForgotPassword()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'#\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</a> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvCreateAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$4;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$5;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$5;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 246
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->resetBtnTextDismissProgressDialog()V

    return-void
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 176
    sget-object p2, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$8;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const p2, 0x7f110340

    .line 198
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f110343

    .line 199
    invoke-virtual {p0, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const p2, 0x7f11017b

    .line 191
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f11017a

    .line 192
    invoke-virtual {p0, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const v0, 0x7f110191

    .line 180
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1, p3}, Lcom/senseonics/util/AccountConstants;->setAccountLoggedIn(Z)V

    .line 185
    iget-object p3, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountUserName"

    invoke-virtual {p3, v2, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p3, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userID:Ljava/lang/String;

    const-string v2, "AccountUserID"

    invoke-virtual {p3, v2, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p3, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountUserPassword"

    invoke-virtual {p3, v2, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v0

    .line 203
    :goto_0
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne p1, v0, :cond_2

    .line 204
    invoke-direct {p0, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayLoginSuccessDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->initializeLayout(I)Landroid/view/View;

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080095

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, v1, v1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewsForAccountInfo()V

    .line 39
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->findViewForBtnSync()V

    .line 42
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->tvUserNameOrEmail:Landroid/widget/TextView;

    const v2, 0x7f1100f3

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/util/AccountConstants;->getCoveredUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserNameCover:Landroid/widget/EditText;

    new-instance v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$1;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 75
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtUserName:Landroid/widget/EditText;

    new-instance v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$2;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 87
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->txtPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$3;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupTvCreateAccountAndTvForgotPassword()V

    .line 99
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->setupBtnSyncOnClickEvent()V

    .line 100
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "force_logout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110124

    .line 104
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setupBtnSyncOnClickEvent()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;->btnSync:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity$6;-><init>(Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
