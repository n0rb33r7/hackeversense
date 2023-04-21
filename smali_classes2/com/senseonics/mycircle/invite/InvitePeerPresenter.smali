.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "InvitePeerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;",
        ">;"
    }
.end annotation


# static fields
.field static final ACCOUNT_EMAIL_USED:I = 0x3

.field static final EMAIL_SENT:I = 0x0

.field static final MAX_LIMIT_REACHED:I = 0x1

.field static final MEMBER_ALREADY_EXISTS:I = 0x2

.field static final SERVER_ERROR:I = -0x1


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

.field private validator:Lcom/senseonics/util/EmailValidator;


# direct methods
.method static bridge synthetic -$$Nest$mhandleInvitationFailure(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleInvitationFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInvitationResult(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleInvitationResult(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendClicked(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerRepository;Lcom/senseonics/util/EmailValidator;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/model/MyCircleModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

    .line 45
    iput-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->validator:Lcom/senseonics/util/EmailValidator;

    .line 46
    iput-object p3, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 47
    iput-object p4, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private handleInvitationFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 126
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->updateViewOnError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private handleInvitationResult(Ljava/lang/Integer;)V
    .locals 6

    .line 93
    iget-boolean v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attached:Z

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->hideProgress()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f110340

    const v2, 0x7f110343

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f110174

    const v2, 0x7f110179

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f1101cd

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f110184

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f11017c

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;

    invoke-direct {v4, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f1102d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->validator:Lcom/senseonics/util/EmailValidator;

    invoke-virtual {v0, p2}, Lcom/senseonics/util/EmailValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f110174

    const v2, 0x7f110179

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setInviteButtonEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showProgress()V

    .line 79
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->repository:Lcom/senseonics/mycircle/invite/InvitePeerRepository;

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;

    invoke-direct {v1, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$3;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    new-instance v2, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;

    invoke-direct {v2, p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/senseonics/mycircle/invite/InvitePeerRepository;->inviteToCircle(Ljava/lang/String;Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void

    .line 68
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    const v1, 0x7f110174

    const v2, 0x7f110175

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method private showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;",
            ")V"
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120234

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 178
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 179
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const p2, 0x7f11001f

    .line 180
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;

    invoke-direct {v1, p0, p3, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;[Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateViewOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->hideProgress()V

    .line 132
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    new-instance v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$2;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    invoke-interface {p1, v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setupViews(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;Landroid/content/Context;)V
    .locals 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    const/16 p2, 0x7532

    if-ne p1, p2, :cond_9

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 144
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    .line 145
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    new-array v7, v2, [Ljava/lang/String;

    aput-object p3, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string p3, "data1"

    .line 151
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 153
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const v4, 0x7f110214

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    .line 159
    invoke-interface/range {v3 .. v8}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p2, :cond_2

    .line 164
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_2

    .line 169
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v0, :cond_9

    goto :goto_3

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_4

    .line 164
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v2, :cond_5

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v0, :cond_6

    .line 170
    invoke-direct {p0, p5, p1, p4}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    goto :goto_1

    .line 168
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setEmailText(Ljava/lang/String;)V

    .line 172
    :cond_6
    :goto_1
    throw p3

    :catch_0
    if-eqz p2, :cond_7

    .line 164
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_8

    .line 168
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setEmailText(Ljava/lang/String;)V

    goto :goto_4

    .line 169
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v0, :cond_9

    .line 170
    :goto_3
    invoke-direct {p0, p5, p1, p4}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V

    :cond_9
    :goto_4
    return-void
.end method
