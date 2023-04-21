.class Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;
.super Landroid/os/AsyncTask;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getLastestAppAsynctask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/util/AppUpdateChecker;


# direct methods
.method private constructor <init>(Lcom/senseonics/util/AppUpdateChecker;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;-><init>(Lcom/senseonics/util/AppUpdateChecker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 143
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    .line 144
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    invoke-static {p1}, Lcom/senseonics/util/AppUpdateChecker;->-$$Nest$mgetVersionFile(Lcom/senseonics/util/AppUpdateChecker;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/AppUpdateChecker;->-$$Nest$mdecodeVersionFile(Lcom/senseonics/util/AppUpdateChecker;Ljava/lang/String;Landroid/content/Context;)V

    .line 157
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/senseonics/util/AppUpdateChecker;->-$$Nest$msetCurrentDateTimeToAppUpdateLastCheckedInPreference(Lcom/senseonics/util/AppUpdateChecker;Landroid/content/Context;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    invoke-static {p1, v0}, Lcom/senseonics/util/AppUpdateChecker;->-$$Nest$fputprocessState(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;)V

    return-void
.end method
