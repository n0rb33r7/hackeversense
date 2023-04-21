.class public Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;
.super Landroid/os/AsyncTask;
.source "UserAccountBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "checkAndUpdatePasswordAsynctask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private passWord:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

.field private userName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->userName:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->passWord:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 158
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->passWord:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->-$$Nest$mcheckAndUpdatePassword(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7

    .line 164
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 170
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    .line 172
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 174
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v2, p1, :cond_1

    if-ne v2, v5, :cond_0

    .line 177
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v6, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v6, v6, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "CheckAndUpdatePasswordResult"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 180
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 185
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    const-string v1, ""

    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    .line 190
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    array-length v2, v1

    if-ne v2, v5, :cond_5

    const/4 v2, 0x0

    .line 193
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 194
    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 200
    invoke-static {v3}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    move-result-object v3

    .line 203
    iget-object v6, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->userID:Ljava/lang/String;

    .line 205
    sget-object v1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$CheckAndUpdatePasswordResult:[I

    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, p1, :cond_4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    .line 228
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 229
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_3

    .line 215
    :cond_2
    sget-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    if-ne v3, v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1, p1}, Lcom/senseonics/util/AccountConstants;->setMigrationPasswordUpdated(Z)V

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 222
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_3

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 209
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v1, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 235
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 239
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 240
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_4

    .line 243
    :cond_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->response:Ljava/lang/String;

    if-nez p1, :cond_7

    .line 244
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 245
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_4

    .line 247
    :cond_7
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 248
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 252
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;->this$0:Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->-$$Nest$mdismissProgressDialog(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;)V

    return-void
.end method
