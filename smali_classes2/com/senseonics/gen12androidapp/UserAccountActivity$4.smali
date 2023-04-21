.class Lcom/senseonics/gen12androidapp/UserAccountActivity$4;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->setupBtnSyncOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 153
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 155
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->btnSync:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f1102fd

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadAllStateModelInfo()V

    .line 162
    new-instance p1, Lcom/senseonics/uploadData/DMSUploadTaskREST;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 165
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getSyncDaysFromPreference()I

    move-result v0

    mul-int/lit8 v3, v0, 0x18

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v4, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v5, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v7, v6, Lcom/senseonics/gen12androidapp/UserAccountActivity;->commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/util/DMSTaskCallback;Lcom/senseonics/view/CommonErrorHandler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 169
    invoke-virtual {p1, v0}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 182
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 183
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/UserAccountActivity;->btnSync:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    const v1, 0x7f1102fb

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$4;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$mhideProgressDialog(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V

    :goto_0
    return-void
.end method
